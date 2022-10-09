import 'package:flutter/cupertino.dart';
import 'package:responsive_adaptive/person_list.dart';

class WideLayout extends StatelessWidget {
  const WideLayout(
      {Key? key, required this.currentPerson, required this.onPersonTap})
      : super(key: key);
  final int currentPerson;
  final Function(int) onPersonTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: PersonList(
              currentPerson: currentPerson, onPersonTap: onPersonTap),
        ),
      ],
    );
  }
}
