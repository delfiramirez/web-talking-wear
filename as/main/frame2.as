#include "includes/texte.as"
#include "includes/idiomes.as"


import mx.events.EventDispatcher;
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;
import com.segonquart.*;

var menuI:MovieClip;
var logos_mc:MovieClip;
var james_mc:MovieClip;
var wallpaper_mc:MovieClip;
var botiga_mc:MovieClip;
var bonus_mc:MovieClip;
var m01:MovieClip;
var m02:MovieClip;
var v3:MovieClip;
var tapar:MovieClip;
var disseny_txt:String;
var disseny2_txt:String;
var colors_txt:String;
var colors2_txt:String;
var texte07_txt:String;

var i :Number;
var levelStand:Array = new Array( "m01", "m02");
var sublevelStand:Array = new Array( "o1", "o2");
var tshirtsCollection: Array = new Array ( "abruce", "a7m2", "afly", "afly2", "any", "any2", "amachine", "apop", "apop2");



function hideUIelements ():Void
{
		var k:Number;
		for (var k = 0; k <tshirtsCollecion.length; k++)
		{
		this._parent.levelStand[i].sublevelStand[i].removeMovieClip ();
		}
		
		form_mc.unloadMovie ("contacte.swf");
		this.softsk_mc.scaleTo (0, 1.5, 'easeOutSine');
		this.softsk_mc.alphaTo (0, 1.5, 'linear');
		if (this.softsk_mc._alpha == 0)
		{
			this.softsk_mc._visible = false;
		}
}

function seeUIelements():Void{

		this.bonus_mc.fadeIn ();
		this.botiga_mc.tintTo ("#4A8618", 100, 2, "easeOutSine");
		this.b1.tintTo ('#E8F4DA', 100, "easeOutSine");
		this.marcMenu_mc.tintTo ('#99CC33', 1, 'linear', .2);
		
		this.texte07_txt._visible = true;
		this.texte07_txt._alpha = 0;
		this.texte07_txt.text = "_col·lecció #07";
		this.wallpaper_mc._width = 776;
		this.wallpaper_mc._height = 318;
		this.menuI._visible = false;
		this.menuI._alpha = 0;
		this.m02._alpha = 100;
		this.m01._alpha = 100;
		this.m02._visible = true;
		this.m01._visible = true;
		this.tapar._visible = true;
		this.v3._visible = true;
		this.logos_mc._visible = false;
		this.logos_mc._alpha = 0;
		this.disseny_txt.text = " ";
		this.colors_txt.text = " ";
		this.disseny2_txt.text = " ";
		this.colors2_txt.text = " ";

}

function OOSeven ():Void
{
		this.enabled = 0;
		this._parent.james_mc.alphaTo (100, 2, "easeOutQuint", .3);
		this._parent.james_mc.loadMovie ("bond.swf", 5);
		this._parent.texte07_txt._visible = true;
		this._parent.texte07_txt.colorTo ('#508F1E', 1, 'linear', .2);
		this._parent.lat1_mc.tintTo ('#95C60D', 1, 'linear');
		this._parent.lat4_mc.tintTo ('#95C60D', 1, 'linear');
		this._parent.v3.tintTo ('#95C60D', 1, 'easeOutBack');
		this._parent.marcMenu_mc.tintTo ('#508F1E', 1, 'linear', .2);
};

function anyShirt ():Void
{
		this._parent.bonus_mc.removeMovieClip ();
}

function menuLateral ():Void
{
		lat1_mc.addEventListener ("onMenuRelease", this);
		lat2_mc.addEventListener ("onMenuRelease", this);
		lat3_mc.addEventListener ("onMenuRelease", this);
		lat4_mc.addEventListener ("onMenuRelease", this);
}

function onMenuRelease (e:Object):Void
{
		switch (e.target)
		{
		case lat1_mc :
			gotoAndStop_mc (3);
			this._parent.bonus_mc.enabled = 1;
			this._parent.texte07_txt.textColor = 0xE7F3DB;
			this._parent.texte07_txt.fadeIn ();
			this._parent.texte07_txt._visible = true;
			//
			this._parent.m01.slideTo ('0', '-50', 1.2, 'easeInOutBack');
			this._parent.m02.slideTo (707, '-50', .7, 'easeInOutBack', 1.2);
			this._parent.menul._visible = true;
			this._parent.menul.alphaTo (100, 1, "linear", 0.2);
			//
			this._parent.james_mc.removeMovieClip ("bonus_mc7");
			this._parent.james_mc.unloadMovie (5);
			this._parent.m01.o1.oo1.tintTo ("#000000", 100, "easeOutSine", .3);
			this._parent.m02.o2.oo2.tintTo ("#AA1C16", 100, "easeOutSine", .3);
			borrar ();
			break;
		case lat2_mc :
			gotoAndStop_mc (5);
			this.anyShirt ();
			this._parent.james_mc.removeMovieClip ();
			this._parent.james_mc.unloadMovie (5);
			this._parent.menuI.alphaTo (0, 1, "easeInOutBack");
			this._parent.texte07_txt._visible = false;
			break;
		case lat3_mc :
			gotoAndStop_mc (4);
			this._parent.menuI.alphaTo (0, 1, "easeInOutBack");
			this._parent.texte07_txt._visible = false;
			borrar ();
			break;
		case lat4_mc :
			prevFrame ();
			this._parent.texte07_txt._visible = false;
			borrar ();
			break;
		}
}

function entraLateral ():Void
{
		lat1_mc.slideTo ('86', '0', 0.6, 'easeInOutBack');
		lat2_mc.slideTo ('86', '0', 0.8, 'easeInOutBack', 0.3);
		lat3_mc.slideTo ('86', '0', 0.9, 'easeInOutBack', 0.4);
		lat4_mc.slideTo ('86', '0', 1, 'easeInOutBack', 0.5);
		menuLateral ();
}

function initFrame2():Void
{
	onEnterFrame = hideUIelements;
	onEnterFrame = startFrameUI;
	entraLateral ();
	bonus_mc.onRelease = OOSeven;
	this.stop ();
}

initFrame2();
