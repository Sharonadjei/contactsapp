import 'package:contactapp/contact_model.dart';
import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({Key? key, required
  this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Contacts',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          children: [
            const CircleAvatar(
                radius: 70, backgroundImage: NetworkImage('https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/152929142_2788326984765817_2942457708524385509_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeH9Qz5XbFsjo0E974FMIA0uTF0dk86JDGVMXR2TzokMZYpOF_k7I45-1Vd_QH0GjVAavZHO2m5OG6Lzlry-6VSf&_nc_ohc=jx8s9OlkVdoAX80sP-l&_nc_ht=scontent.facc1-1.fna&oh=00_AT93YdY6yQ_pXMB_3aKaaO0S3eMKEPELk62Fe8Hiv2sQBg&oe=61E61C35')),
            const SizedBox(
              height: 25,
            ),
             Center(
              child: Text(
                contact.name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
             Center(
              child: Text(
                '${contact.region}, ${contact.country}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      "Mobile",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle:  Text(contact.phone),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ),
                        )
                      ],
                    ),
                  ),
                  //second column
                  ListTile(
                    title: const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle:  Text(contact.email),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ),
                        ),
                         
                      ],
                    ),
                  ),
                  //third column
                  const ListTile( 
                    title:  Text(
                      "Group",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle:  Text("OMSU"),
                     
                  ),
                ],
              ),
            ),
             
            const Padding(
              padding:  EdgeInsets.all(16.0),
              child:  Text("Account Linked",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children:  [
                  ListTile(
                    title: const Text("Telegram",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),),
                    trailing: Image.asset('assets/telegram.png'),
                  ),
                  ListTile(
                    title: const Text("WhatsApp",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),),
                    
                    trailing: Image.asset('assets/whatsapp.png'),
                  ),
                ],
              ),

            ),
            const Padding(
              padding:  EdgeInsets.all(16.0),
              child:  Text('More Options',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children:const  [
                  ListTile(
                    title: Text("Share Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                  ),
                  ListTile(
                    title: Text("QR Code",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                  )
                ],
              ),
            )
          ],
        ));
  }
}