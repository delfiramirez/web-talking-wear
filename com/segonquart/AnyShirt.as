import flash.display.MovieClip;
class com.segonquart.anyShirt extends MovieClip
{
	function AnyShirt (theTarget:MovieClip)
	{
		this._parent.theTarget.removeMovieClip ();
	}
}
