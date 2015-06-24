import com.segonquart.*

stop ();
function onPreloaderOut ()
{
	preloader_mc.removeEventListener ("onPreloaderOut", this);
	nextFrame();
}

preloader_mc.addEventListener ("onPreloaderOut", this);
preloader_mc.startPreload (this);