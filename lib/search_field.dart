import 'package:fatura_app_2/calisanlar/calisan_ekle.dart';
import 'package:fatura_app_2/calisanlar/calisanlar.dart';
import 'package:fatura_app_2/musteri/musteri_ekle.dart';
import 'package:fatura_app_2/tederikci/tedarikci_ekle.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'tederikci/tedarikciler.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: kSearchColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: _controller,
          onChanged: (value){}, //=> print(value),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                 // horizontal: 20,
                  vertical: 20),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Ara",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween, // added line
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: _controller.clear,
                     icon: Icon(Icons.clear),
                  ),
                  Text("|"),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {  
                     /* if (index == 0) { //eğer butona calısanscreen sayfasında tıklandıysa calısanekle sayafasına gitsin
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalisanEkle(),
                      ));
                            } 
                      else if(index==1) {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MusteriEkle(),
                            ));
                            } 
                      else {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TedarikciEkle(),
                          ));
                                }*/
     //-------------------------------------------------------------
                    
                     /* var index;
              switch (index) {
                case 0:
                   Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CalisanEkle(),
                ));
                  break;
                case 1:
                   Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MusteriEkle(),
                ));
                  break;
                case 2:
                 Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TedarikciEkle(),
                ));
                  break;
              }*/
              
                    },
                    
                  ),
                ],
              ),
              ),
        ),
      ),
    );
  }
}