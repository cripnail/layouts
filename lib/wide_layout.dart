import 'package:flutter/cupertino.dart';
import 'package:responsive_adaptive/product_detail.dart';
import 'package:responsive_adaptive/product_list.dart';
import 'package:responsive_adaptive/products.dart';

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
          child: PersontList(
              currentPerson: currentProduct, onPersonTap: onProductTap),
        ),
        Expanded(
          flex: 3,
          child: ProductDetail(
            person: persons[currentProduct],
          ),
        ),
      ],
    );
  }
}
