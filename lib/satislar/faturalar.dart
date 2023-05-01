import 'package:flutter/material.dart';

import '../search_field.dart';


class SatisFaturalar extends StatelessWidget {
  const SatisFaturalar({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
         const SearchField(),
         const Center(
            child: Text("Faturalar"),
          ),
        ],
    );
  }
}