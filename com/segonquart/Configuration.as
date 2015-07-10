import flash.display.MovieClip;
import flash.display.Stage;
import flash.System.security.*;

class Configuration extends MovieClip
{

	
	function configuration():Void
	{
		System.security.allowDomain ("http://www.talking-wear.com");
		Stage.showMenu = false;
		Stage.scaleMode = "noScale";
		_global.showRedrawRegions (false);
	}
}
