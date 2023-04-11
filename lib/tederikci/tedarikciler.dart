import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:fatura_app_2/tederikci/tedarikci_ekle.dart';
import 'package:flutter/material.dart';

class TedarikcilerScreen extends StatefulWidget {
  const TedarikcilerScreen({super.key});

  @override
  State<TedarikcilerScreen> createState() => _TedarikcilerScreenState();
}

class _TedarikcilerScreenState extends State<TedarikcilerScreen> {
  var index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
    //  bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Tedarikçiler',
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
              separatorBuilder: (BuildContext context, int index) =>const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title:const Text("Tedarikçiler"),
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
                       Ink(
                        decoration: ShapeDecoration(
                          color:const Color(0xff055E98),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: IconButton(
                          icon:const Icon(Icons.mail,color: Colors.white,),
                          onPressed: () {},
                        ),
                      ),
                     const SizedBox(width: 15,),
                       Ink(
                        decoration: ShapeDecoration(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: IconButton(
                          icon:const Icon(Icons.call,color: Colors.white,),
                          onPressed: () {},
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
              builder: (context) => const TedarikciEkle(),
            ),
          );
        },
        icon:const Icon(Icons.add),
        label:const Text('Ekle'),
        shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
      ),
    );
  }
}
