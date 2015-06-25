String.prototype.removeTextFieldSpaces = function():Void
{
		var t = this;
		while (t.charAt(0) == " ") {
			t = t.substring(1, t.length);
		}
		while (t.charAt(t.length-1) == " ") {
			t = t.substring(0, t.length-1);
		}
		return t;
};