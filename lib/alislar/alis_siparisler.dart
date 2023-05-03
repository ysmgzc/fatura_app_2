import 'package:flutter/material.dart';

import '../search_field.dart';


class AlisSiparisler extends StatelessWidget {
  const AlisSiparisler({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const SearchField(),
         SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Center(
          child: Text("Siparişler"),
        ),
      ],
    );
  }
}