import com.segonquart. *
        //
                function onPreloaderOut ():Void
                {
                    preloader_mc.removeEventListener ("onPreloaderOut",this);
                    nextFrame ();
                }

        preloader_mc.addEventListener ("onPreloaderOut",this);
        preloader_mc.startPreload (this);
        stop ();