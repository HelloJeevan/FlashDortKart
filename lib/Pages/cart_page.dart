// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/store.dart';
import 'package:flutter_basic/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "cart".text.make() ,
      ),
      body:Column(
        children: [
          _cartList().p32().expand(),
          Divider(),
          _cartTotal(),
        ],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  //final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart ;
    return SizedBox(
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(notifications: {}, mutations: {RemoveMutation}, builder: (BuildContext context, store, VxStatus? status) { return "\$${_cart.totalPrice}"
            .text.
            xl5.
            color(context.theme.accentColor).make(); },),
          
          30.widthBox,
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: "Buying Not Supported yet.".text.make() ,), );
          },

            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
            ),
           child: "BUY".text.white.make()
           ).w32(context),
        ],
      ),
    );
  }
}

class _cartList extends StatelessWidget {
 _cartList({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart ;
    return _cart.items.isEmpty? "Nothing to Show".text.xl3.makeCentered(): ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context,index)=>ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline),
          onPressed: (){
            RemoveMutation(_cart.items[index] );
            
          }, 
         ),
         title: _cart.items[index].name.text.make(),
      )
    );
  }
}