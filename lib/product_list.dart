import 'package:flutter/material.dart';
import 'package:responsive_adaptive/products.dart';

class PersontList extends StatelessWidget {
  const PersontList(
      {Key? key, required this.currentPerson, required this.onPersonTap})
      : super(key: key);
  final int currentPerson;
  final void Function(int) onPersonTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: persons.length,
        itemBuilder: (BuildContext context, int index) {
          final person = persons[index];
          return Container(
            color:
            index == currentPerson ? Colors.lightBlueAccent : Colors.white,
            child: ListTile(
              title: Text(person.title),
              subtitle: Text(person.email),
              trailing: Text(person.grade.toString()),
              onTap: () {
                onPersonTap(index);
              },
            ),
          );
        });
  }
}
