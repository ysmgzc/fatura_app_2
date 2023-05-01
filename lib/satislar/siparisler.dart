import 'package:flutter/material.dart';

import '../search_field.dart';

class SatisSiparisler extends StatelessWidget {
 const SatisSiparisler({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
         const SearchField(),
         const Center(
            child: Text("Siparişler"),
          ),
        ],
    );
  }
}