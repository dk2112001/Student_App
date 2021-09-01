import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = ["monday", "tuesday","wednesday","thursday","friday"];
  int selectedIndex = 0;

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: newMethod),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  get newMethod => DefaultTextStyle;

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}