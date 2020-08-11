import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category {
  final String category;
  final Icon micon;
  final int total;

  const Category({
    @required this.category,
    @required this.micon,
    @required this.total,
  });
}
