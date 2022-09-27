import 'package:flutter/material.dart';
import 'package:responsive_adaptive/wide_layout.dart';

import 'adaptive_widget.dart';
import 'narrow_layout.dart';

class App extends StatefulWidget {
  const App({Key? key, required String title}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentPerson = 0;
  late Function(int) _onPersonTap;

  @override
  void initState() {
    super.initState();
    _onPersonTap = (index) {
      setState(() {
        _currentPerson = index;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Restaurant'),
          ),
          body:
          // LayoutBuilder(builder: (BuildContext context, constraints) {
          //   return constraints.maxWidth > 600
          //       ? WideLayout(
          //           currentProduct: _currentProduct, onProductTap: _onProductTap)
          //       : NarrowLayout(
          //           currentProduct: _currentProduct, onProductTap: _onProductTap);
          // }),
          AdaptiveWidget(
            wide: WideLayout(
                currentProduct: _currentPerson, onProductTap: _onPersonTap),
            narrow: NarrowLayout(
                currentPerson: _currentPerson, onPersonTap: _onPersonTap),
          )),
    );
  }
}
