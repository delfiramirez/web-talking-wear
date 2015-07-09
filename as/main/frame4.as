import mx.events.EventDispatcher;
import mx.utils.Delegate;
var historia_txt:String = "";
var baixa_mc:MovieClip;
var puja_mc:MovieClip;
var buttonsUI:Array = new Array ("puja_mc", "baixa_mc");

var textScrollListener = new Object ();


textScrollListener.click = function (e:Object)
{
	function textScroll ():Void
	{
		this.onPress = this.oOut;
		this.onRollOver = this.oOver;
		this.onRollOut = this.oOut;
		this.onRelease = this.oOut;
	}
	function oOver ():Void
	{
		var i:Number;
		for (var i = 0; i < buttonsUI.length; i++)
		{
			pressing = true;
			movement = -1;
			this.removeEventListener ();
			
		}
	}
	function oOut ():Void
	{
		var i:Number;
		for (var i = 0; i < buttonsUI.length; i++)
		{
			pressing = false;
			this.removeEventListener ();
			
		}
	}
};
function startTextApp ():Void
{
	buttonsUI[i].addEventListener ("click", textScrollListener);
	formatText ();
	this.stop ();
}

#initclip

var formatText:TextFormat = new TextFormat ();

function formatText ():Void
{
	this.historia_txt.html = true;
	this.historia.htmlText = true;
	this.historia_txt.wordWrap = true;
	this.historia_txt.multiline = true;
}

var Privat:LoadVars = new LoadVars ();
Privat.load ("/assets/tendes.txt?ver=" + Math.floor (Math.random () * 777));
Privat.onLoad = function ()
{
	this.historia_txt.setTextFormat (formatText);
	this.historia_txt.htmlText = this.Privat;
	this.play ();
};
#endinitclip

function initFrame4 ():Void
{
	onEnterFrame = startTextApp;
	EventDispatcher.initialize (this);
}
initFrame4 ();