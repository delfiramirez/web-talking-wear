#include "includes/idiomes.as"

import System.Objects.*;
import flash.filters.GlowFilter;
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;
//Thanks Moses...and respect ;-)
import com.segonquart.*;
//-------------------------------
ZigoEngine.simpleSetup (Shortcuts, PennerEasing);
ZigoEngine.register (PennerEasing, Shortcuts, FuseFMP, FuseItem);
//-------------------------------


var m03:MovieClip;
var o3:MovieClip;
var cp:TextField;
/*Form */
var formulari_mc:MovieClip;
/*Inputs Fields */
var cp:MovieClip;
/*Button */
var ok_mc:MovieClip;
var contact_mc:MovieClip;
var gf:GlowFilter = new GlowFilter (0xBEE47E, 100, 3, 3, 5, 3, false, false);


function initialState ():Void
{
	
		m03.alphaTo (100, 2.2, "easeOutBounce");
		m03._brightOffset = 100;
		m03.brightOffsetTo (0, 1, 'easeInBack', .2);
		m03.o3.tw.alphaTo (100, 2, "easeOutQuad", 2.3);
		m03.o3.tw._scale = 40;
		m03.o3.tw.scaleTo (100, 1, 'easeOutElastic');
		ok_mc._visible = true;
		ok_mc.filters = [gf];
		ok_mc._alphaTo (100, 1, "linear");
		ok_mc._scale = 20;
		ok_mc.scaleTo (25, 1, "easeInOutBounce");
}



function transformElementsUI ():Void{
	
		this.onRollOver = this.pOver;
		this.onRollOut = this.pOut;
		this.onPress =this.pPress;
		
}

function pPress():Void{
		ok_mc.fadeOut ();
		_parent.formulari_mc.slideTo (600, '0', "easeInOutBack");
		_parent.contact_txt._visible = false;
		_parent.mail_txt._visible = false;
};

function pOver():Void{
	
		addEventListener (this, "onPress");
		ok_mc.scaleTo (60, 2, 'easeOutBounce');
		
		ok_mc.onEnterFrame = function ():Void
		{
			if (gf.blurX < 20)
			{
				gf.blurX++;
				gf.blurY++;
			}
			else
			{
				delete this.onEnterFrame;
			}
			this.filters = [gf];
		};
};

function pOut():Void{
	
		ok_mc.onEnterFrame = function ()
		{
			this.filters = [gf];
			if (gf.blurX > 3)
			{
				gf.blurX--;
				gf.blurY--;
			}
			else
			{
				delete this.onEnterFrame;
			}
		};
};

initialState();
transformElementsUI();
stop();
