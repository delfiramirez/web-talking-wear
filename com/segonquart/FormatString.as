class com.segonquart.FormatString
{
	public var historia_txt:String;
	public function FormatString ()
	{
		twearFormat ();
	}
	private function twearFormat ()
	{
		this.onEnterFrame = formatTextFunction;
		return this;
	}
	private function formatTextFunction (st:String):String
	{
		var formatText:TextFormat = new TextFormat ();
		var st:String = this.historia_txt;
		st.html = true;
		st.htmlText = true;
		st.wordWrap = true;
		st.multiline = true;
	}
}
