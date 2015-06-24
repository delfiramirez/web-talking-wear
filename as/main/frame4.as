
var historia_txt:String ="";
var baixa_mc:MovieClip;
var puja_mc:MovieClip;

var buttonsUI:Array = new Array ("puja_mc", "baixa_mc");

this.historia_txt.html = true;
this.historia.htmlText =true;
this.historia_txt.wordWrap = true;
this.historia_txt.multiline = true;

this.onEnterFrame = function ():Void
{
    buttonsUI[i].oOver();
    this.stop();
};

function textScroll():Void
{
	this.onPress = this.oOut;
	this.onRollOver =this.oOver;
	this.onRollOut = this.oOut;
	this.onRelease = this.oOut;
};

function oOver():Void
{
	pressing = true;
	movement = -1;
};
function oOut():Void
{
	pressing = false;
};

var Private_lv = new LoadVars ();

Private_lv.load ("/assets/tendes.txt");

Private_lv.onLoad = function ():Void
{
	this.historia_txt.htmlText = this.Privat;
	this.play ();
	textScroll();
};



