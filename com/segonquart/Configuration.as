class com.segonquart.Configuration extends MovieClip
{
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
		System.security.allowDomain ("http://www.talking-wear.com");
		System.security.loadPolicyFile ("http://segonquart.net/crossdomain.xml");
		Stage.showMenu = false;
		Stage.scaleMode = "noScale";
		_global.showRedrawRegions (false);
	}
}
