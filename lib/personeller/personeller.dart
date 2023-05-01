import 'package:fatura_app_2/personeller/personel_ekle.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class CalisanlarScreen extends StatefulWidget {
  const CalisanlarScreen({super.key});

  @override
  State<CalisanlarScreen> createState() => _CalisanlarScreenState();
}

class _CalisanlarScreenState extends State<CalisanlarScreen> {
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      //  bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Personel',
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const SearchField(),
          Expanded(
            child:  
            Padding(
              padding: const EdgeInsets.all(16.0),
               child: ListView.separated(
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title:const Text("Person"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("055315155"),
                        Text("gezici267@gmail.com"),
                      ],
                    ),
                    leading:const CircleAvatar(
                      radius: 25,
                      backgroundColor: kAvatarBGColor,
                    ),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       mainAxisSize: MainAxisSize.min,
                      children: [
                         InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xff055E98),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                          ),

                        //SizedBox(width: 15,),
                      //  Icon(Icons.arrow_right),
                      ],
                    )
                    
                  );
                },
              )
            ),),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kButtonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CalisanEkle(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Ekle'),
      ),
    );
  }
}
