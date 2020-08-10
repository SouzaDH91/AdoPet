import 'dart:math';

import 'package:AdoPet/config/palette.dart';
import 'package:AdoPet/data/data.dart';
import 'package:AdoPet/widgets/circle_button.dart';
import 'package:AdoPet/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
              padding: new EdgeInsets.only(left: 30.0),
            ),
            floating: true,
            actions: [
              Stack(
                children: [
                  Transform.rotate(
                    angle: -30 * pi / 180,
                    child: IconButton(
                      icon: Icon(MdiIcons.bellOutline),
                      iconSize: 34.0,
                      color: Color(0xFFA6A6A6),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    top: 6.0,
                    right: 10.0,
                    child: Container(
                      height: 17.0,
                      width: 17.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEE8362),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: new EdgeInsets.only(top: 4.0, right: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MaterialButton(
                          shape: CircleBorder(
                            side: BorderSide(
                              width: 2,
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 22.0,
                            backgroundImage: CachedNetworkImageProvider(
                              currentUser.photo,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 30.0, top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adote um bichinho",
                    style: TextStyle(
                      fontFamily: "Fredoka One",
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: Text(
                      "Amor é uma palavra de quatro patas.",
                      style: TextStyle(
                        fontFamily: "Fredoka One",
                        fontSize: 20.0,
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Palette.primaryColor,
                      hintText: "Buscar",
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomLeft: Radius.circular(50.0),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
