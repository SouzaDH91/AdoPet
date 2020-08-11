import 'package:AdoPet/models/models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories({
    Key key,
    @required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 14.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final Category category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: _CategoryCard(category: category),
          );
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final Category category;

  const _CategoryCard({
    Key key,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180.0,
          height: 70.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xFFF2F2F2),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: FlatButton(
            color: Colors.transparent,
            child: Row(
              children: [
                category.micon,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        category.category,
                        style:
                            TextStyle(color: Color(0xFF333333), fontSize: 18.0),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                        top: 4.0,
                        left: 10.0,
                      ),
                      child: Text(
                        "Total de " + category.total.toString(),
                        style: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
