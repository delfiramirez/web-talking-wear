

import mx.events.EventDispatcher;
import flash.filters.*;
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;
//Thanks Moses...and respect ;-)
import com.segonquart.*;


//-------------------------------
ZigoEngine.simpleSetup (Shortcuts, PennerEasing);
ZigoEngine.register (PennerEasing, Shortcuts, FuseFMP, FuseItem);
//-------------------------------

var click_mc:MovieClip;
var entrar_mc:MovieClip;
var ok_mc:MovieClip;
var v1, v2, v3, b1, b2:MovieClip;
var m01:MovieClip;
var m02:MovieClip;
var botiga_mc:MovieClip;
var marcMenu_mc:MovieClip;
var softsk_mc:MovieClip;



function initUI ():Void
{
	this.ok_mc._visible = false;
	this.texte07_txt._visible = false;
	this.entrar_mc._alpha = 0;
	this.marcMenu_mc._alpha = 0;
	this.m02._alpha = this.m01._alpha = this.softsk_mc._alpha = 0;
	this.v3._visible = false;
	this.softsk_mc.scale = 0;
	this.m01.o1.oo1.tintTo ("#000000", 100, "easeOutSine", .3);
	this.m02.o2.oo2.tintTo ("#AA1C16", 100, "easeOutSine", .3);
	this.m01.fadeIn ();
	this.m02.fadeIn ();
	//Fuse.openGroup ();
	this.titol_mc.Blur_blur = 0;
	this.titol_mc.Blur_blurXTo ('100', .25, 'easeOutSine', .75, {cycles:2});
	this.titol_mc.slideTo (160, 75, 0.6, 'easeInOutQuint', .5);
	this.softsk_mc.alphaTo (100, 1.7, 'easeInOutQuint', 1.5);
	this.softsk_mc.scaleTo (190, 2, 'easeOutSine', 1.6);
	//Fuse.closeGroup ();
	this.titol_mc.Blur_blur = 0;
	this.softsk_mc._alpha = 100;
	this.sound_mc.loadMovie ("so.swf", 55);
	//Fuse.closeAndStart ();
	this.botiga_mc.tintTo ("#4A8618", 100, 2, "easeOutSine");
	this.marcMenu_mc.tintTo ('#508F1E', 1, 'linear', .2);
	this.top_mc.tintTo ('#DCEECA', 1, 'easeOutBack', .2);
	this.v1.tintTo ('#508F1E', 1, 'easeInBack', .2);
	this.titol_mc.tintTo ('#508F1E', 1.4, 'easeOutBack', .2);
	this.b2.slideTo ('0', '0', 1, "linear");
	this.b2.tintTo ('#E7F3DB', 100, "easeOutSine");
	enterShopButton ();
	this.onEnterFrame = null;
}

function enterShopButton ():Void
{
	this.entrar_mc.alphaTo (100, 2, "easeOutQuad", 2.3);
	this.entrar_mc._brightOffset = 100;
	this.entrar_mc._scale = 50;
	this.entrar_mc.brightOffsetTo (0, 4);
	this.entrar_mc.scaleTo (100, 3, 'easeOutElastic', 2.5);
	this.entrar_mc.DropShadow_alpha = 0.6;
	//m01
	this.m01.alphaTo (100, 2, "easeOutCirc", 2.3);
	this.m01.slideTo (649, 306, .7, 'easeInOutQuint', 1.2);
	//m02
	this.m02.alphaTo (100, 1.6, "easeOutQuad", .5);
	this.m02._brightOffset = 100;
	this.m02._scale = 50;
	this.m02.brightOffsetTo (0, 3);
	this.m02.slideTo (707, 293, .7, 'easeInOutQuint', 1.2);
	this.m02.scaleTo (113, .6, 'easeOutQuad', .5);
}

var enterEshopListener = new Object ();
enterEshopListener.click = function (e)
{
	var entrar = getTimer () + 1500;
	this.entrar_mc = target;
	target.onRollOver = function ():Void 
	{
		addEventListener (this, "onPress");
		this.click_mc.tintTo ("#4A8618", 100, "easeOutSine");
		this.scaleTo (110, 2, 'easeOutBounce');
		this.DropShadow_distanceTo (3, .9, "easeOutBounce");
	};
	target.onRollOut = function ():Void 
	{
		_parent.click_mc.tintTo ("#FF0000", 100, "easeOutElastic");
		this.scaleTo (100, 1, 'easeInBack');
		this.DropShadow_distanceTo (0, 2, "easeOutBounce");
	};
	target.onPress = function ():Void 
	{
		this.Blur_blur = 0;
		this.Blur_blurXTo ('100', .25, 'easeOutSine', {cycles:1});
		this.alphaTo (0, 0.3, 'easeInOutQuint', .5);
		_parent.down.tintTo ("#DCEECA", 100, "easeOutSine", .3);
		_parent.v2.tintTo ("#95C60D", 100, "easeOutSine");
		_parent.marcMenu_mc.fadeIn ();
		_parent.titol_mcM.fadeOut () + 10000;
		if (getTimer () > entrar)
		{
			nextFrame ();
		}
		else
		{
			delete this.entrar;
		}
		this.removeEventListener ();
	};
};

function initFrame1 ():Void
{
	onEnterFrame = initUI;
	this.addEventListener ("click", enterShopListener);
	EventDispatcher.initialize (this);
}

initFrame1 ();
