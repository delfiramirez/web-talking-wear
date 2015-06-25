import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;

	class menuIdiomes extends MovieClip
	
	{
		public var fr:MovieClip;
		
		public function menuIdiomes ()
		{
			this.onRollOver = this.over;
			this.onRollOut = this.out;
			this.onRelease =this.over;
		}
		
		private function over ()
		{
			fr.colorTo ("#95C60D", 0.3, "easeOutCirc");
		}
		
		private function out ()
		{
			fr.colorTo ("#010101", 0.3, "easeInCirc");
		}
		

	}
