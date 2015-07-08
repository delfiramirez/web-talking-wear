var appName = "talkingwear";


function app(name)

{

    if (navigator.appName.indexOf("Microsoft") != -1)
    {

        return window[name];
    } 
    
    else
    {
        return document[name];
    }

}
function destaca(destacado)

{

    app(appName).setVariable("destacado", destacado);
}

function delfi_flash()
{

    if ((navigator.appName == "Netscape") && (parseFloat(navigator.appVersion) < 8))
    {

        document.write('<EMBED src="index.swf" wmode="transparent" quality="best" bgcolor="transparent" WIDTH="100%" HEIGHT="100%" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer" swliveconnect=true id="talkingwear" name="talkingwear" title=""></EMBED><br>');
    } 
    
    else
    {
        document.write('<OBJECT CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" WIDTH="100%" HEIGHT="100%" CODEBASE="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,16,0" ID="talkingwear" title=""><PARAM NAME="MOVIE" VALUE="index.swf"><PARAM NAME="WMODE" VALUE="TRANSPARENT"><PARAM NAME="QUALITY" VALUE="best"><PARAM NAME="SCALE" VALUE="SHOWALL"><EMBED NAME="talkingwear" SRC="index.swf" WIDTH="776" HEIGHT="424" QUALITY="best" SCALE="SHOWALL" swLiveConnect="true" PLUGINSPAGE="http://www.macromedia.com/go/flashplayer/" title=""></EMBED></OBJECT><br>');
    }
}