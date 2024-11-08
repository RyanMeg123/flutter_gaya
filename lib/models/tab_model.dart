import 'dart:ffi';

import 'package:flutter/material.dart';

class TabModel {
  final String title;
  final IconData icon;

  TabModel(this.title, this.icon);
}

abstract class Item {
  String get typeName;
  String get shortName;
  int get collectionNumber;
  String get iconUrl;
}

class Product implements Item {
  @override
  final String typeName;
  @override
  final String shortName;
  @override
  final int collectionNumber;
  @override
  final String iconUrl;

  Product(this.typeName, this.shortName, this.collectionNumber, this.iconUrl);
}
