import 'dart:math';

import 'package:AdoPet/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Palette.scaffold,
            leading: IconButton(
              icon: Icon(MdiIcons.sortVariant),
              iconSize: 32.0,
              color: Color(0xFFA6A6A6),
              onPressed: () {},
              padding: new EdgeInsets.only(left: 8.0),
            ),
            floating: true,
            actions: [
              Container(
                margin: new EdgeInsets.only(right: 8.0),
                child: Transform.rotate(
                  angle: -45 * pi / 180,
                  child: IconButton(
                    icon: Icon(MdiIcons.bellOutline),
                    iconSize: 32.0,
                    color: Color(0xFFA6A6A6),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                width: 42,
                height: 42,
                margin: new EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 12,
                        offset: Offset(0, 8),
                        color: Color(0XFF333333),
                        spreadRadius: -10)
                  ],
                ),
                child: IconButton(
                  icon: Icon(MdiIcons.accountCircle),
                  iconSize: 42.0,
                  padding: EdgeInsets.only(right: 20.0),
                  color: Palette.primaryColor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
