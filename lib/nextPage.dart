import 'package:shopping_nas/homePage.dart';

import 'package:flutter/material.dart';

class nextPage extends StatelessWidget {
  const nextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Update Price'),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              'Update Taka ${price.toString()}',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
