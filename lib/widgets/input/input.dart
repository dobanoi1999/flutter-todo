import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyInput extends StatelessWidget {
  const MyInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}
