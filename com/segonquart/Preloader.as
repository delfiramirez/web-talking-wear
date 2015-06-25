class Preloader extends MovieClip{

	private var target_mc:MovieClip;
        private var progress_mc:MovieClip;
        private var pct_str:String;
        private var dispatchEvent:Function;
        public var addEventListener:Function;
        public var removeEventListener:Function;
	
	
        function Preloader()
	{
        mx.events.EventDispatcher.initialize(this);
        }

	public function startPreload(t:MovieClip)
	{
	target_mc = t;
        this.gotoAndPlay("IN");
	}

	private function onAnimateIn()
	{
	this.stop();
        this.onEnterFrame = this.checkLoadProgress;
	}

	private function checkLoadProgress()
	{
	var bl = target_mc.getBytesLoaded();
        var bt = target_mc.getBytesTotal();
        var pct = bl / bt;
        var cf = progress_mc._currentframe;
        var tf = progress_mc._totalframes;
        var f = Math.ceil(tf * pct);
		if (f > cf)
		{
		progress_mc.play();
		} 
		else
		{
		progress_mc.stop();
		}

		this.pct_str = (Math.round(cf / tf * 100)).toString();
		
        if (bt > 20 && bl == bt && cf == tf && progress_mc)
		{
		onPreloadComplete();
		}
	}

	private function onPreloadComplete()
	{
	this.onEnterFrame = null;
        this.gotoAndPlay("OUT");
	}

	private function onAnimateOut()
	{
	this.stop();
        dispatchEvent({target:this, type:'onPreloaderOut'});
	}
}
