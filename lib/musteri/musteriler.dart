import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';
import 'musteri_ekle.dart';

class MusterilerScreen extends StatefulWidget {
  const MusterilerScreen({super.key});

  @override
  State<MusterilerScreen> createState() => _MusterilerScreenState();
}

class _MusterilerScreenState extends State<MusterilerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
    //  bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Müşteriler',
        ),
      ),
      body:Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
           const SearchField(),
            Expanded(
            child:  
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:  ListView.separated(
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) =>const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title:const Text("Müşteriler"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text("055315155"),
                        Text("Gezici267@gmail.com"),
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

                      ],
                    )
                    
                  );
                },
              )
           ))
          ],
        ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kButtonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MusteriEkle(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Ekle'),
        shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
      ),
    );
  }
}
