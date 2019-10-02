import 'package:flutter/material.dart';
import 'package:loja_flutter/widgets/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Widget _buildDraweBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 203, 236, 241), Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        );

    return Drawer(
        child: Stack(
      children: <Widget>[
        _buildDraweBack(),
        ListView(
          padding: EdgeInsets.only(left: 32, top: 16.0),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
              height: 170.0,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 8.0,
                    left: 0.0,
                    child: Text(
                      "Flutte's \nClothing",
                      style: TextStyle(
                          fontSize: 34.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Olá,",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Ente ou cadastra-se >",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.transparent,),
            DrawerTile(Icons.home, "Início", pageController, 0),
            DrawerTile(Icons.list, "Produtos", pageController, 1),
            DrawerTile(Icons.location_on, "Lojas", pageController, 2),
            DrawerTile(Icons.playlist_add_check, "Meus pedidos", pageController, 3),
          ],
        )
      ],
    ));
  }
}
