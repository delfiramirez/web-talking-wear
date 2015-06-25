
import mx.events.EventDispatcher;

var historia_txt:String = "";
var baixa_mc:MovieClip;
var puja_mc:MovieClip;
var buttonsUI:Array = new Array ("puja_mc", "baixa_mc");

var formatText:TextFormat = new TextFormat(); 

var textScrollListener = new Object();


textScrollListener.click = function(e){

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
		this.updateAfterEvent;
	}
	
}

function oOut ():Void
{
	var i:Number;
	for (var i = 0; i < buttonsUI.length; i++)
	{
		pressing = false;
		this.updateAfterEvent;
	}
}

}

function formatText():Void
{
this.historia_txt.html = true;
this.historia.htmlText = true;
this.historia_txt.wordWrap = true;
this.historia_txt.multiline = true;
}


function startTextApp ():Void
{
	buttonsUI[i].addEventListener("click", textScrollListener);
	formatText();
	this.stop ();
};

var Privat = new LoadVars ();
Privat.load ("/assets/tendes.txt");
Privat.onLoad = function ()
{
	this.historia_txt.setTextFormat(formatText);
	this.historia_txt.htmlText = this.Privat;
	this.play ();
};



function init():Void{
	
onEnterFrame = startTextApp;

}

init();

