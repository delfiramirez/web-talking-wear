import System.Objects. * ;
        import mx.events.EventDispatcher;
        import mx.utils.Delegate;
        import flash.filters.GlowFilter;
        import mx.transitions.easing. * ;
        import com.mosesSupposes.fuse. * ;
        import com.segonquart. * ;
//-------------------------------
//Security and Stage globals
//-------------------------------
        System.security.allowDomain ("http://www.talking-wear.com");
        Stage.showMenu = false;
        Stage.scaleMode = "noScale";
        _global.showRedrawRegions (false);
//-------------------------------
//Acesibility Methods
//http://www.w3.org/TR/WCAG20-TECHS/FLASH25.html
//-------------------------------

        if (System.capabilities.hasAccessibility) {
	  eshop._accProps = new Object();
	  eshop._accProps.name = "Talking Wear Soft Skin";
	  eshop_accProps.description = " Soft Skin Protection"
	  entrar_mc._accProps.name ="Welcome - Enter";
	  titol_mc._accProps.name="Talking Wear";
	  softsk_mc._accProps.name ="Soft Skin Protection";
	  menuI._accProps.name ="Navigation Menu";
	  lat1_mc._accProps.name ="";
	  lat2_mc._accProps.name ="";
	  lat3_mc._accProps.name ="";
	  lat4_mc._accProps.name ="";
	  
	  
	  disseny_txt._accProps.name ="T-shirt Model";
	  color_txt._accProps.name ="T-shirt Colour";
	  texte07_txt._accProps.name ="007 Style";
	  
	  
	  wallpaper_mc._accProps.name ="Free Wallpaper";
	  
	  
	  // TODO next items 
	  
	  Accessibility.updateProperties();
}

if (_accProps == undefined)
        {
        eshop._accProps:Object = new Object();
                }





//-------------------------------
//Main App
//-------------------------------

function initTWApp ():Void
        {
        if (MovieClip (root).currentFrame == 1)
                {
                #include "as/main/frame1.as"
                        }
        if (MovieClip (root).currentFrame == 2)
                {
                #include "as/main/frame2.as"
                        }
        if (MovieClip (root).currentFrame == 3)
                {
                #include "as/main/frame3.as"
                        }
        if (MovieClip (root).currentFrame == 4)
                {
                #include "as/main/frame4.as"
                        }
        }


initTWApp ();
// Copyright Delfi Ramirez @ Segonquart Studio HQ  2007.