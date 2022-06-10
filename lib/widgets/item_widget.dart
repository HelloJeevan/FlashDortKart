import 'package:flutter/material.dart';
import 'package:flutter_basic/models/catalog.dart';
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item})
  :assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap:(){
          print("purchased");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price.toString()}",
        textScaleFactor: 1.3,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        
      ),
    );
  }
}