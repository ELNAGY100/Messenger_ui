import 'package:flutter/material.dart';
class Massenger extends StatelessWidget {
  const Massenger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
