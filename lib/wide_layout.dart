import 'package:flutter/cupertino.dart';
import 'package:responsive_adaptive/person_detail.dart';
import 'package:responsive_adaptive/person_list.dart';
import 'package:responsive_adaptive/persons.dart';

class WideLayout extends StatelessWidget {
  const WideLayout(
      {Key? key, required this.currentProduct, required this.onProductTap})
      : super(key: key);
  final int currentProduct;
  final Function(int) onProductTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: PersonList(
              currentPerson: currentProduct, onPersonTap: onProductTap),
        ),
        Expanded(
          flex: 3,
          child: PersonDetail(
            person: persons[currentProduct],
          ),
        ),
      ],
    );
  }
}
