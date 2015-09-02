import mx.events.EventDispatcher;
import mx.utils.Delegate;
var historia_txt:String = "";
var baixa_mc:MovieClip;
var puja_mc:MovieClip;
var buttonsUI:Array = new Array ("puja_mc", "baixa_mc");


var textScrollListener:Object = new Object ();

textScrollListener.click = function (e:Object):Void 
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
	var Privat:LoadVars = new LoadVars ();
	Privat.load ("/assets/tendes.txt?ver=" + Math.floor (Math.random () * 777));
	Privat.onLoad = function ()
	{
		this.historia_txt.setTextFormat (formatText);
		this.historia_txt.htmlText = this.Privat;
		this.play ();
	};
	buttonsUI[i].addEventListener ("click", textScrollListener);
	formatText ();
	this.stop ();
}
function initFrame4 ():Void
{
	onEnterFrame = startTextApp;
	EventDispatcher.initialize (this);
}
initFrame4 ();
