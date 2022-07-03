// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_basic/models/cart.dart';
import 'package:flutter_basic/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog= CatalogModel();
  CartModel cart= CartModel();
  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog=catalog;
  }
}
