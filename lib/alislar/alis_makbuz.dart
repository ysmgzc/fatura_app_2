import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';


class AlisMakbuz extends StatelessWidget {
 const AlisMakbuz({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const SearchField(),
        const Center(
          child: Text("Makbuzlar"),
        ),
      ],
    );
  }
}