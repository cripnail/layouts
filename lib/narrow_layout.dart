import 'package:flutter/material.dart';
import 'package:responsive_adaptive/person_detail.dart';
import 'package:responsive_adaptive/person_list.dart';
import 'package:responsive_adaptive/persons.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout(
      {Key? key, required this.currentPerson, required this.onPersonTap})
      : super(key: key);
  final int currentPerson;
  final void Function(int) onPersonTap;

  @override
  Widget build(BuildContext context) {
    return PersonList(
        currentPerson: currentPerson,
        onPersonTap: (index) {
          onPersonTap(index);
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(persons[index].title),
                ),
                body: PersonDetail(person: persons[index]),
              );
            }),
          );
        });
  }
}
