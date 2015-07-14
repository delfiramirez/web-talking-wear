import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;

class menuColouridiomes extends MovieClip
		
	{
		public var cat, es, en ,fr:MovieClip;
		public var arrayLang_arr:Array = new Array ("cat", "es", "en", "fr");
		
			
	public function menuColourIdiomes ()
		{
			
		this.onRollOver = this.mOver;
		this.onRollOut = this.mOut;
		this.onRelease =this.mOver;
			
		}

		private function mOver()
		{
			var i:Number;
			
				for (var i = 0; i < arrayLang_arr.length; i++)
				{
	                		arrayLang_arr[i].colorTo("#95C60D", 0.3, "easeOutCirc");
	                	]
				
		}

		private function mOut()
		{
			var i:Number;
			
				for (var i = 0; i < arrayLang_arr.length; i++)
				{
			                arrayLang_arr[i].colorTo("#010101", 0.3, "easeInCirc");
	                	}
				
		}
		
	}
