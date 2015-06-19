	
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;

class menuColouridiomes extends MoviieClip
		
	{
		public var cat, es, en ,fr:MovieClip;
		public var arrayLang_arr:Array = new Array ("cat", "es", "en", "fr");
		
			
		function menuColourIdiomes ():Void
		
		{
			
		this.onRollOver = this.mOver;
		this.onRollOut = this.mOut;
		this.onRelease =this.mOver;
			
		}

		private function mOver()
		
		{
			
                arrayLang_arr[i].colorTo("#95C60D", 0.3, "easeOutCirc");
			
		}

		private function mOut()
		
		{
			
                arrayLang_arr[i].colorTo("#010101", 0.3, "easeInCirc");
			
		}
		
	}
