import 'package:flutter/material.dart';
import 'package:responsive_adaptive/product_detail.dart';
import 'package:responsive_adaptive/product_list.dart';
import 'package:responsive_adaptive/products.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout(
      {Key? key, required this.currentPerson, required this.onPersonTap})
      : super(key: key);
  final int currentPerson;
  final void Function(int) onPersonTap;

  @override
  Widget build(BuildContext context) {
    return PersontList(
        currentPerson: currentPerson,
        onPersonTap: (index) {
          onPersonTap(index);
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(persons[index].title),
                ),
                body: ProductDetail(person: persons[index]),
              );
            }),
          );
        });
  }
}
