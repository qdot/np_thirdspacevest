/*
 * Implementation file for Third Space Vest Max/Pd External
 *
 * Copyright (c) 2010 Kyle Machulis/Nonpolynomial Labs <kyle@nonpolynomial.com>
 *
 * More info on Nonpolynomial Labs @ http://www.nonpolynomial.com
 *
 * Repo at http://www.github.com/qdot/np_thirdspacevest
 *
 * Example code from flext tutorials. http://www.parasitaere-kapazitaeten.net/ext/flext/
 */

// include flext header
#include <flext.h>
#include <deque>
#include "thirdspacevest/thirdspacevest.h"

// check for appropriate flext version
#if !defined(FLEXT_VERSION) || (FLEXT_VERSION < 400)
#error You need at least flext version 0.4.0
#endif


class np_thirdspacevest:
	// inherit from basic flext class
	public flext_base
{
	// obligatory flext header (class name,base class name)
	FLEXT_HEADER(np_thirdspacevest,flext_base)

	// Same as boost ScopedMutex, just using flext's mutex class.
	class ScopedMutex
	{
		ScopedMutex() {}

	public:
		ScopedMutex(ThrMutex& tm)
		{
			m = &tm;
			m->Lock();
		}

		~ScopedMutex()
		{
			m->Unlock();
		}
	private:
		ThrMutex* m;
	};

public:
	// constructor
	np_thirdspacevest() :
		m_tsvDevice(thirdspacevest_create()),
		m_shouldRun(false)
	{
		AddInAnything("Command Input");
		AddOutBang("Bangs on successful connection/command");
		FLEXT_ADDMETHOD_(0, "start", start);
		FLEXT_ADDMETHOD_(0, "stop", stop);
		FLEXT_ADDMETHOD_(0, "count", count);
		FLEXT_ADDMETHOD(0, anything);

		post("Third Space Vest External v0.1");
		post("by Nonpolynomial Labs (http://www.nonpolynomial.com)");
		post("Updates at http://www.github.com/qdot/np_thirdspacevest");
		post("Compiled on " __DATE__ " " __TIME__);
	} 

	virtual ~np_thirdspacevest()
	{
		if(m_shouldRun)
		{
			stop();
		}
		thirdspacevest_delete(m_tsvDevice);
	}
	
protected:
	typedef std::pair<int,int> EffectPair;
	thirdspacevest_device* m_tsvDevice;
	std::deque< EffectPair > m_effectQueue;
	ThrMutex m_effectMutex;
	bool m_shouldRun;
	
	void anything(const t_symbol *msg,int argc,t_atom *argv)
	{				
		if(!strcmp(msg->s_name, "effect"))
		{
			if(!m_shouldRun)
			{
				post("np_thirdspacevest - Vest needs to be opened before effects can be sent");
				return;
			}
			if(argc != 2)
			{
				post("np_thirdspacevest - Effect requires 2 arguments (speed and index)");
				return;
			}
			int index = GetInt(argv[0]);
			int speed = GetInt(argv[1]);
			addEffectToQueue(index, speed);
			ToOutBang(0);
			return;
		}
		post("np_thirdspacevest - Not a valid np_thirdspacevest message: %s", msg->s_name);
	}

	void stop()
	{
		m_shouldRun = false;
		StopThreads();
		ToOutBang(0);
	}
	
	void count()
	{
		post("np_thirdspacevest - thirdspacevests Connected to System: %d", thirdspacevest_get_count(m_tsvDevice));
		ToOutBang(0);
	}
	
	void addEffectToQueue(int index, int speed)
	{
		ScopedMutex m(m_effectMutex);
		m_effectQueue.push_front(EffectPair(index, speed));
	}
	
	void start()
	{
		if(m_tsvDevice->_is_open)
		{
			Lock();
			post("np_thirdspacevest - Thread already running");
			Unlock();
			return;
		}

		post("np_thirdspacevest - Opening first device");
		int ret = thirdspacevest_open(m_tsvDevice, 0);

		m_shouldRun = true;
		std::pair<int, int> current_effect;
		while(m_shouldRun)
		{
			if(m_effectQueue.size() == 0)
			{
				Sleep(.01);
				continue;
			}
			{
				ScopedMutex m(m_effectMutex);
				current_effect = m_effectQueue.back();
				m_effectQueue.pop_back();
			}
			thirdspacevest_send_effect(m_tsvDevice, current_effect.first, current_effect.second);
		}
		thirdspacevest_close(m_tsvDevice);
		Lock();
		post("np_thirdspacevest - Exiting thread loop");
		Unlock();
	}

	
private:
	FLEXT_CALLBACK_A(anything)
	FLEXT_THREAD(start)
	FLEXT_CALLBACK(count)
	FLEXT_CALLBACK(stop)
};

FLEXT_NEW("np_thirdspacevest", np_thirdspacevest)



