import 'package:fatura_app_2/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst = [
    itemSettings,
    itemShare,
  ];
 static const List<MenuItem> itemsSecond = [
    itemSignOut,
  ];
  static const itemSettings = MenuItem(
    text: "Ayarlar", 
    icon: Icons.settings
    );
    static const itemShare = MenuItem(
    text: "Paylaş", 
    icon: Icons.share
    );
    static const itemSignOut = MenuItem(
    text: "Çıkış Yap", 
    icon: Icons.output_sharp,
    );
}
