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