       var esContact:String = "_Contacto";
        var esSend:String = "Enviar Email!";
        var enContact:String = "_Contact";
        var enSend:String = "Send Email!";
        var frContact:String = "_Contact";
        var frSend:String = "Envoyer Email!";
        var caContact:String = "_Contacte";
        var caSend:String = "Enviar Email!";
	
	var ok_mc:MovieClip;
	var form:MovieClip;
        //
        var contact_txt._accProps:Object = new Object();
        var send_txt._accProps :Object = new Object();
        //
        if (System.capabilities.language == "en" || System.capabilities.language == "de")
    {
        this.contact_txt.text = enContact;
        this.ok_mc.send_txt.text = enSend;
        this.contact_txt.kerning = 0.7;
        //
        this.contact_txt._accProps.name = enContact;
        this.contact_txt._accProps.description = "your email";
        this.send_txt._accProps.name = enSend;
	    	this.form.correo_txt.text = "Introduiu  e-mail";
	this.form.nombre_txt.text = "Introduiu nom o empresa";
	this.form.body_txt.text = "Missatge a enviar";
	this.nom_txt.text = "NAME/ EMPRESA";
	this.mail_txt.text = "E-MAIL";
	this.message_txt.text = "MESSAGE";
        Accessibility.updateProperties ();
    }

if (System.capabilities.language == "fr")
    {
        this.contact_txt.text = frContact;
        this.ok_mc.send_txt.text = frSend;
        //
        this.contact_txt._accProps.name = frContact;
        this.contact_txt._accProps.description = "votre email";
        this.send_txt._accProps.name = frSend;
	    	this.form.correo_txt.text = "Introduiu  e-mail";
	this.form.nombre_txt.text = "Introduiu nom o empresa";
	this.form.body_txt.text = "Missatge a enviar";
	this.nom_txt.text = "NOM / EMPRESA";
	this.mail_txt.text = "E-MAIL";
	this.message_txt.text = "MESSAGE";
        Accessibility.updateProperties ();
    }
if (System.capabilities.language == "es")
    {
        this.contact_txt.text = esContact;
        this.ok_mc.send_txt.text = esSend;
        //
        this.contact_txt._accProps.name = esContact;
        this.contact_txt._accProps.description = "su email";
        this.send_txt._accProps.name = esSend;
	    	this.form.correo_txt.text = "Introduiu  e-mail";
	this.form.nombre_txt.text = "Introduiu nom o empresa";
	this.form.body_txt.text = "Missatge a enviar";
	this.nom_txt.text = "NOMBRE / EMPRESA";
	this.mail_txt.text = "E-MAIL";
	this.message_txt.text = "MENSAJE";
        Accessibility.updateProperties ();
    }
else
    {
        this.contact_txt.text = caContact;
        this.ok_mc.send_txt.text = caSend;
        //
        this.contact_txt._accProps.name = caContact;
        this.contact_txt._accProps.description = "el vostre email";
        this.send_txt._accProps.name = caSend;
	    	this.form.correo_txt.text = "Introduiu  e-mail";
	this.form.nombre_txt.text = "Introduiu nom o empresa";
	this.form.body_txt.text = "Missatge a enviar";
	this.nom_txt.text = "NOM / EMPRESA";
	this.mail_txt.text = "E-MAIL";
	this.message_txt.text = "MISSATGE";
	//
        Accessibility.updateProperties ();
    }