var esContact:String = "_Contacto";
        var esSend:String = "Enviar Email!";
        var enContact:String = "_Contact";
        var enSend:String = "Send Email!";
        var frContact:String = "_Contact";
        var frSend:String = "Envoyer Email!";
        var caContact:String = "_Contacte";
        var caSend
:String = "Enviar Email!";
        //
        contact_txt._accProps:Object = new Object();
        send_txt._accProps
:Object = new Object();
        //
        if (System.capabilities.language == "en" || System.capabilities.language == "de")
    {
        this.contact_txt.text = enContact;
        this.ok_mc.send_txt.text = enSend;
        this.contact_txt.kerning = 0.7;
        //
        this.contact_txt._accProps.name = enContact;
        this.send_txt._accProps.name = enSend;
        Accessibility.updateProperties ();
    }

if (System.capabilities.language == "fr")
    {
        this.contact_txt.text = frContact;
        this.ok_mc.send_txt.text = frSend;
        //
        this.contact_txt._accProps.name = frContact;
        this.send_txt._accProps.name = frSend;
        Accessibility.updateProperties ();
    }
if (System.capabilities.language == "es")
    {
        this.contact_txt.text = esContact;
        this.ok_mc.send_txt.text = esSend;

        this.contact_txt._accProps.name = esContact;
        this.send_txt._accProps.name = esSend;
        Accessibility.updateProperties ();

    } else
    {
        this.contact_txt.text = caContact;
        this.ok_mc.send_txt.text = caSend;
        //
        this.contact_txt._accProps.name = caContact;
        this.send_txt._accProps.name = caSend;
        Accessibility.updateProperties ();
    }
