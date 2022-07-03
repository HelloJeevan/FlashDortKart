import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/core/store.dart';
import 'package:flutter_basic/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  
  //final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    VxState.watch(context,on:[AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart ;
    final CatalogModel _catalog = (VxState.store as MyStore).catalog ;
    bool isInCart =  _cart.items.contains(catalog) ?? false ;
    return ElevatedButton(
      onPressed: () {
        if(!isInCart){
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            // ignore: deprecated_member_use
            context.theme.buttonColor
          ),
          shape: MaterialStateProperty.all(
            // ignore: prefer_const_constructors
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) :Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}