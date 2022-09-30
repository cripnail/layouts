import 'package:flutter/material.dart';
import 'package:responsive_adaptive/persons.dart';

class PersonList extends StatelessWidget {
  const PersonList(
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
                  backgroundImage: AssetImage(person.picture),
                  radius: 30, // no matter how big it is, it won't overflow
                ),
              ),
              title: Text(person.title),
              subtitle: Text(person.email),
              trailing: Text(person.grade.toString()),
              onTap: () {
                onPersonTap(index);
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(children: const <Widget>[
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('VIEW PROFILE'),
                          ),
                          ListTile(
                            leading: Icon(Icons.people),
                            title: Text('FRIENDS'),
                          ),
                          ListTile(
                            leading: Icon(Icons.report),
                            title: Text('REPORT'),
                          ),
                        ]),
                      ),
                    );
                  },
                );
              },
            ),
          );
        });
  }
}
