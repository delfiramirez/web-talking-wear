import flash.display.MovieClip;
class com.segonquart.anyShirt extends MovieClip
{
	function anyShirt (theTarget:MovieClip)
	{
		this._parent.theTarget.removeMovieClip ();
	}
}
