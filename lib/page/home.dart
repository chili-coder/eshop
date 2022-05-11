import 'package:eshop/model/product.dart';
import 'package:eshop/wedget/card.dart';
import 'package:eshop/wedget/header.dart';
import 'package:eshop/wedget/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final model1=Product.listItem();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [
          Expanded(flex:1,child: Header()),
          Expanded(flex: 8,child: CardDesign()),

        ],
      ),

    );
  }
}
