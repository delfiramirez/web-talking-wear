import flash.display.MovieClip;
import flash.display.Stage;
import flash.System.security.*;
class com.segonquart.Configuration extends MovieClip
{
	public function configuration ():Void
	{
		System.security.allowDomain ("http://www.talking-wear.com");
		Stage.showMenu = false;
		Stage.scaleMode = "noScale";
		_global.showRedrawRegions (false);
	}
	static function config ():Void
	{
		var twoQT = new com.segonquart.config.Configuration();
	}
}
