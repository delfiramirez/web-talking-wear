#include "includes/idiomes.as"
//Segonquart Studio 2007. Steal it with respect , honey ;-)
//-------------------------------
//Imports
//-------------------------------
import System.Objects.*;
import flash.filters.GlowFilter;
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;
//Thanks Moses...and respect ;-)
//-------------------------------
ZigoEngine.simpleSetup (Shortcuts, PennerEasing);
ZigoEngine.register (PennerEasing, Shortcuts, FuseFMP, FuseItem);
Stage.scaleMode = "noScale";
//-------------------------------
//Variables
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

var gf:GlowFilter = new GlowFilter (0xBEE47E, 100, 3, 3, 5, 3, false, false);


function initialState ():Void
{
	
	this.m03.alphaTo (100, 2.2, "easeOutBounce");
	this.m03._brightOffset = 100;
	this.m03.brightOffsetTo (0, 1, 'easeInBack', .2);
	this.m03.o3.tw.alphaTo (100, 2, "easeOutQuad", 2.3);
	this.m03.o3.tw._scale = 40;
	this.m03.o3.tw.scaleTo (100, 1, 'easeOutElastic');
	this.ok_mc._visible = true;
	this.ok_mc.filters = [gf];
	this.ok_mc._alphaTo (100, 1, "linear");
	this.ok_mc._scale = 20;
	this.ok_mc.scaleTo (25, 1, "easeInOutBounce");
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
