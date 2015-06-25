
var esContact:String = "_Contacto";
var esSend:String = "Enviar Email!";
var enContact:String = "_Contact";
var enSend:String = "Send Email!";
var frContact:String = "_Contact";
var frSend:String = "Envoyer Email!";
var caContact:String = "_Contacte";
var caSend:String = "Enviar Email!";

if (System.capabilities.language == "en" || System.capabilities.language == "fr")
{
	this.contact_txt.text = enContact;
	this.ok_mc.send_txt.text = enSend;
	this.contact_txt.kerning = 0.7;
}
if (System.capabilities.language == "es")
{
	this.contact_txt.text = esContact;
	this.ok_mc.send_txt.text = esSend;
}
else
{
	this.contact_txt.text = caContact;
	this.ok_mc.send_txt.text = caSend;
}


