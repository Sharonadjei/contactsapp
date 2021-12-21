import 'package:contactapp/contact_model.dart';
import 'package:contactapp/contact_details_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'contact_details_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> data = [
    {
      "name": "Joycelyn Muller",
      "phone": "0244503912",
      "email": "joycelyn@protonmail.net",
      "country": "Ghana",
      "region": "Koforidua"
    },
    {
      "name": "Jeff Push",
      "phone": "028-123-2245",
      "email": "[pauljefa@yahoo.com",
      "country": "Nigeria",
      "region": "Enugu"
    },
    {
      "name": "Bernard Rose",
      "phone": "0557213658",
      "email": "gigbult.magna@aol.com",
      "country": "Ghana",
      "region": "Pernambuco"
    },
    {
      "name": "GIft Azinku",
      "phone": "44-859-5254",
      "email": "congue@gmail.com",
      "country": "Brazil",
      "region": "Rio"
    },
    {
      "name": "Rigina Joy",
      "phone": "057882136",
      "email": "riginajoym@hotmail.com",
      "country": "Ghana",
      "region": "Takoradi"
    },
    {
      "name": "Sylvester Blay",
      "phone": "023457986",
      "email": "picaass123@gmail.com",
      "country": "Ghana",
      "region": "sekondi"
    },
    {
      "name": "Samson William",
      "phone": "824555796",
      "email": "simon123@gmail.com",
      "country": "Canada",
      "region": "Kayseri"
    },
    {
      "name": "Mummy",
      "phone": "054123456",
      "email": "ghalhtlahl@gmail.com",
      "country": "Ghana",
      "region": "Accra"
    },
    {
      "name": "LINDA joy",
      "phone": "0244637845",
      "email": "lahsfhelala@gmail.com",
      "country": "Ghana",
      "region": "Sekondi"
    },
    {
      "name": "Pick up",
      "phone": "glowupa@hlal.com",
      "email": "haonth@hotmail.edu",
      "country": "Ghana",
      "region": "Takoradi"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black),
        ),
        actions: const [
          Center(
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://scontent.facc1-1.fna.fbcdn.net/v/t39.30808-6/222593797_2893287900936391_237452636069785486_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=5b7eaf&_nc_eui2=AeHYPHJiP21uh_ziAeljjWrY6d4ONsA2EQbp3g42wDYRBtAeY6k15a9QdjcNdh-rW9ui9CIq3zQChdCVf0XJM-kJ&_nc_ohc=FvUvDXo2cA0AX9IQN8Q&_nc_ht=scontent.facc1-1.fna&oh=00_AT9mdMgShmYcF0szmSE35oboiQ1ze-TKyNOAmHadnRvixA&oe=61C71D9D'),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search by name or number',
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Recents",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            ListView.separated(
                //controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsView(
                            contact: Contact(
                                name: 'Sharon Adjei',
                                phone: '+233 547 2396',
                                email: 'sharon123@gmail.com',
                                country: 'Ghana',
                                region: 'Takoradi'));
                      }));
                    },
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/181055351_2834949816770200_6441200288071363873_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=5b7eaf&_nc_eui2=AeE4q0XkUc99LqvjRYeFpqp26Yhv9WSqb4XpiG_1ZKpvhQMh_LhX-x-Y-71GyvzSSn9_VS0mPgwXtisZOvtS_VJW&_nc_ohc=1lnBOF5jNRkAX_njYDh&_nc_oc=AQn1e7nWDvcYO67HhLuAnsDeKJ-H4oe1egbwFyqX0CRYPgS8WFAs07jq4-GVaANr-pE&_nc_ht=scontent.facc1-1.fna&oh=00_AT-eB5qix5ch6G8QzDOnX19wxlrOnfJKLfjX8-zgOIeiNA&oe=61E7D12B'),
                      radius: 25,
                    ),
                    title: const Text(
                      "Sharon Adjei ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: const Text(
                      "+233 55 108 6307",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Contacts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
            GroupedListView<Map<String, dynamic>, String>(
              shrinkWrap: true,
              //controller: _scrollController,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, dynamic> element) {
                Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetailsView(
                            contact: contact,
                          );
                        }));
                      },
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/181563123_2834949943436854_4658016742147512969_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=5b7eaf&_nc_eui2=AeHehaNdBaRa4YPoG0VY2W4yhzblQyzvAcWHNuVDLO8Bxb7NCFBUFWfeCHxRGammBN0vOoA8Ko35fUD-Xat1dt4g&_nc_ohc=M9EMZVLqdlQAX9Fzhvo&tn=xK64WneAFICg_o5d&_nc_ht=scontent.facc1-1.fna&oh=00_AT8BRNhCk8DvRhNVneq0G6SRCAapu3f1KQhK00iP4wwXLw&oe=61E5930A'),
                        radius: 25,
                      ),
                      title: Text(
                        '${element['name']}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      subtitle: Text(
                        '${element['phone']}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    )
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name'].compareTo(item2['name']), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1A4ADA),
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
