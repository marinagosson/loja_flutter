import 'package:flutter/material.dart';
import 'package:loja_flutter/tabs/home_tab.dart';
import 'package:loja_flutter/tabs/products_tab.dart';
import 'package:loja_flutter/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Produtos'),
          ),
          body: ProductsTab(),
          drawer: CustomDrawer(_pageController),
        ),
      ],
    );
  }
}
