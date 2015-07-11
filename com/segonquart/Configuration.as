import mx.events.EventDispatcher;
import mx.utils.Delegate;
class com.segonquart.Configuration extends MovieClip
{
	public var addListener:Function;
	public var addEventListener:Function;
	public var removeEventListener:Function;
	static var URLAPP:String = "http://www.talking-wear.com";
	static var POLICY:String = "http://segonquart.net/crossdomain.xml";
	public function Configuration ()
	{
		Stage.addListener (this);
		mx.events.EventDispatcher.initialize (this);
	}
	public function init (m:MovieClip)
	{
		this.m = m;
		m.config ();
	}
	static function config ():Void
	{
		System.security.allowDomain (URLAPP);
		System.security.loadPolicyFile (POLICY);
		Stage.showMenu = false;
		Stage.scaleMode = "noScale";
		_global.showRedrawRegions (false);
	}
}
