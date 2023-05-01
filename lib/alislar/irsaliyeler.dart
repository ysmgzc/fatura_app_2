import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';


class AlisIrsaliyeler extends StatelessWidget {
 const AlisIrsaliyeler({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const SearchField(),
        const Center(
          child: Text("İrsaliyeler"),
        ),
      ],
    );
  }
}