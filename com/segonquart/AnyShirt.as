import flash.display.MovieClip;

class com.segonquart.AnyShirt extends MovieClip
{
	public function AnyShirt (theTarget:MovieClip)
	{
		this._parent.theTarget.removeMovieClip ();
	}
}
