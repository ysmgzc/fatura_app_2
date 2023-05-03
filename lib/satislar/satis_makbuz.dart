import 'package:flutter/material.dart';

import '../search_field.dart';

class SatisMakbuz extends StatelessWidget {
  const SatisMakbuz({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
         const SearchField(),
          const Center(
            child: Text("Makbuz"),
          ),
        ],
    );
  }
}