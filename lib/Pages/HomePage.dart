import 'package:flutter/material.dart';
import 'package:flutter_basic/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App",
        style: TextStyle(
          color: Colors.black,
        ),),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context ,index){
              return ItemWidget(
                item: CatalogModel.items[index],
              );  
            },
          ),
        ), 
        drawer: MyDrawer(),
      );
  }
}