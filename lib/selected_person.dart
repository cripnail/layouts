import 'package:flutter/material.dart';
import 'package:responsive_adaptive/persons.dart';

class SelectedPerson extends StatelessWidget {
  const SelectedPerson(
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
              leading: FittedBox(
                child: CircleAvatar(
                  backgroundImage: AssetImage(person
                      .picture),
                  radius: 30,// no matter how big it is, it won't overflow
                ),
              ),
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
