import System.Objects.*;

import mx.events.EventDispatcher;
import mx.utils.Delegate;

import flash.filters.GlowFilter;
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;
import.com.segonquart.*;

System.security.allowDomain ("http://www.talking-wear.com");
Stage.showMenu = false;
Stage.scaleMode = "noScale";
_global.showRedrawRegions (false);


function initTWApp ():Void
{
	if (MovieClip (root).currentFrame == 1)
	{
		#include "as/main/frame1.as"
	}
	if (MovieClip (root).currentFrame == 2)
	{
		#include "as/main/frame2.as"
	}
	if (MovieClip (root).currentFrame == 3)
	{
		#include "as/main/frame3.as"
	}
	if (MovieClip (root).currentFrame == 4)
	{
		#include "as/main/frame4.as"
	}
}
initTWApp ();

// Copyright Delfi Ramirez @ Segonquart Studio HQ  2007.