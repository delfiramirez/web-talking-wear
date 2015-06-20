	
import mx.transitions.easing.*;
import com.mosesSupposes.fuse.*;

class idiomesAnimation extends Movieclip
        {

  	private var arrayLang_arr:Array = new Array ("cat", "es", "en", "fr");


			function idiomesAnimation():Void
		{
			this.stop();
			this.onEnterFrame = this.enterSlide;
				
		}
		
	
	private function enterSlide()
                {
			
			arrayLang_arr[0].slideTo('0', '-40', 0.6, 'easeInOutBack', 1);
			arrayLang_arr[1].slideTo('0', '-40', 0.8, 'easeInOutBack', 1.1);
			arrayLang_arr[2].slideTo('0', '-40', 0.9, 'easeInOutBack', 1.2);
			arrayLang_arr[3].slideTo('0', '-40', 1, 'easeInOutBack', 1.3);
			
		}

	public function IdiomesColour()
		{
			
			this.onRelease = this arrayColour;
			
			target = this.arrayLang_arr[i];
			target._tint = 0x8DC60D;
			
			return this;
			
		}
		
	private function arrayColour()
		{
			
			for ( var:i ; arrayLang_arr[i] <4; i++)
			{
				this.colorTo("#628D22", 0.3, "easeOutCirc");
				_parent.colorTo('#4b4b4b', 1, 'linear', .2);
					
			}
				
		}
			
		
	}
		
	
