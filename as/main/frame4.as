var historia_txt:String = "";
var baixa_mc:MovieClip;
var puja_mc:MovieClip;
var buttonsUI:Array = new Array ("puja_mc", "baixa_mc");
this.historia_txt.html = true;
this.historia.htmlText = true;
this.historia_txt.wordWrap = true;
this.historia_txt.multiline = true;
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
	}
}
function oOut ():Void
{
	var i:Number;
	for (var i = 0; i < buttonsUI.length; i++)
	{
		pressing = false;
	}
}
this.onEnterFrame = function ()
{
	buttonsUI[i].oOver ();
	this.stop ();
};
var Private_lv = new LoadVars ();
Private_lv.load ("/assets/tendes.txt");
Private_lv.onLoad = function ()
{
	this.historia_txt.htmlText = this.Privat;
	this.play ();
	textScroll ();
};
