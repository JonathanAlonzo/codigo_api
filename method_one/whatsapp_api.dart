import 'package:flutter/material.dart';
//we going to import the WhatsApp package
import 'package:whatsapp/whatsapp.dart';

class BtnWhatsAppApi extends StatefulWidget {
  const BtnWhatsAppApi({super.key});

  @override
  State<BtnWhatsAppApi> createState() => _BtnWhatsAppApiState();
}

class _BtnWhatsAppApiState extends State<BtnWhatsAppApi> {

  //We need to initialize the setup of WhatsApp
  @override
  void initState(){
    super.initState();
    whatsapp.setup(
      //here we gona set the parameters that we got on Facebook for Developers
      accessToken: 'EAAGFY3CDCccBAGZC2IOU4zUIE2flvD2F8t6bk6DUf6u5VAUWRq36qKhThk8BqVqzcgCgClPjAgFNwaIIX8bTPWZB7RdiSZAjVAv4Jzih4wtBlviHIreCx6664uOJurWo0WrqQmkj4rmZAp1Tl0OmTvmHINaedi7vimnl4JahAyX9rRDR7nZByL9nQQ9bqZBevOWxr0Fn1JMgZDZD',
      fromNumberId: 103933949096769,
    );
  }
  //then use the setup initialized
  Whatsapp whatsapp = Whatsapp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📱📲 API WhatsApp Example",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Push the button for send a WhatsApp Message from your app using the WhatsApp API Cloud."),
            const SizedBox(height: 15.0,),
            ElevatedButton.icon(
              onPressed: () async{
                //This code do the work
                await whatsapp.messagesTemplate(
                  to: 529997403317,
                  templateName: "hello_world",
                );
              },
              icon: const Icon(Icons.whatsapp),
              label: const Text("Push me. 👇"),
            )
          ],
        ),
      ),
    );
  }
}