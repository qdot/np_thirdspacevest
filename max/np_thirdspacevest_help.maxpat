{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 513.0, 247.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 513.0, 247.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "fpic",
					"patching_rect" : [ 202.0, 146.0, 124.0, 95.0 ],
					"pic" : "Untitled:/Users/qdot/Documents/smallvestcollage.png",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "By Nonpolynomial Labs \nhttp://www.nonpolynomial.com\n\nMore info on libnifalcon at http://www.github.com/qdot/libthirdspacevest",
					"linecount" : 5,
					"fontsize" : 10.0,
					"patching_rect" : [ 299.0, 61.0, 206.0, 64.0 ],
					"id" : "obj-100",
					"bgcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "np_thirdspacevest",
					"fontsize" : 18.0,
					"patching_rect" : [ 344.0, 5.0, 161.0, 27.0 ],
					"id" : "obj-61",
					"bgcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect to and control a TN Games Third Space Vest Haptic Device",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 299.0, 32.0, 206.0, 29.0 ],
					"id" : "obj-62",
					"bgcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "np_thirdspacevest is a Max/Pd external for controlling the TN Games Third Space Vest haptic device using libthirdspacevest. It can send effects to any of the 8 air cells on the vest",
					"linecount" : 5,
					"fontsize" : 10.0,
					"patching_rect" : [ 327.0, 125.0, 178.0, 64.0 ],
					"id" : "obj-79",
					"bgcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bangs on successful commands",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 30.0, 207.0, 153.0, 34.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Deflate cell 1",
					"fontsize" : 12.0,
					"patching_rect" : [ 124.0, 146.0, 82.0, 20.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send impact of 10 to cell 1. Cells are 0-7, impact 0-255. ",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 117.0, 109.0, 160.0, 34.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stop I/O Thread and close device",
					"fontsize" : 12.0,
					"patching_rect" : [ 76.0, 85.0, 188.0, 20.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Open device at index (w/ multiple connected devices) and start I/O Thread",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 74.0, 46.0, 223.0, 34.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Open first device found and start I/O Thread",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 43.0, 6.0, 150.0, 34.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start 0",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 24.0, 47.0, 44.0, 18.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 9.0, 207.0, 20.0, 20.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "effect 1 0",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 61.0, 146.0, 60.0, 18.0 ],
					"id" : "obj-5",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "effect 1 10",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 49.0, 110.0, 66.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 40.0, 85.0, 33.0, 18.0 ],
					"id" : "obj-3",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 9.0, 7.0, 34.0, 18.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "np_thirdspacevest",
					"outlettype" : [ "symbol" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 9.0, 175.0, 108.0, 20.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
