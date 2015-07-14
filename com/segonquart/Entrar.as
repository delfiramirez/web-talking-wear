import mx.events.EventDispatcher;
import mx.utils.Delegate;
import mx.transitions.easing.*;
import flash.filters.GlowFilter;
import com.mosesSupposes.fuse.*;

class com.segonquart.Entrar extends MovieClip
{
	public var click_mc:MovieClip;
	public var entrar_mc:MovieClip;
	public var down:MovieClip;
	public var ok_mc:MovieClip;
	public var v1, v2, v3, b1, b2:MovieClip;
	public var m01:MovieClip;
	public var m02:MovieClip;
	public var botiga_mc:MovieClip;
	public var marcMenu_mc:MovieClip;
	public var addEventListener:Function;
	public var removeEventListener:Function;
	public function Entrar ()
	{
		mx.events.EventDispatcher.initialize (this);
	}
	private function initAppFrame1 ()
	{
		var m= enter_mc;
		this.m = m;
		m.timeToEnter();
		this.onRollOver = this.eOver;
		this.onRollOut = this.eOut;
		this.onPress = this.ePress;
		
	}
	private function eOver (m:MovieClip)
	{
		click_mc.tintTo ("#4A8618", 100, "easeOutSine");
		m.scaleTo (110, 2, 'easeOutBounce');
		m.DropShadow_distanceTo (3, .9, "easeOutBounce");
		addEventListener (this, "onPress");
	}
	private function eOut (m:MovieClip)
	{
		click_mc.tintTo ("#FF0000", 100, "easeOutElastic");
		m.scaleTo (100, 1, 'easeInBack');
		m.DropShadow_distanceTo (0, 2, "easeOutBounce");
	}
	private function ePress (m:MovieClip)
	{
		m.Blur_blur = 0;
		m.Blur_blurXTo ('100', .25, 'easeOutSine', {cycles:1});
		m.alphaTo (0, 0.3, 'easeInOutQuint', .5);
		down.tintTo ("#DCEECA", 100, "easeOutSine", .3);
		v2.tintTo ("#95C60D", 100, "easeOutSine");
		marcMenu_mc.fadeIn ();
		titol_mcM.fadeOut () + 10000;
		removeEventListener (this, "onPress");
	}
      private function timeToEnter (m:MovieClip)
	{
		var entrar:Number = getTimer () + 1500;
		m.onRelease = function ()
		{
			if (getTimer () > entrar)
			{
				nextFrame ();
			}
			else
			{
				this.onEnterFrame = null;
			}
		};
	}
}
