import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final PageController pageController;
  final int page;

  DrawerTile(this.icon, this.title, this.pageController, this.page);

  @override
  Widget build(BuildContext context) {

    Color color = Colors.grey[700];
    if (pageController.page == this.page)
      color = Theme.of(context).primaryColor;

    return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            pageController.jumpToPage(page);
          },
          child: Container(
            height: 60.0,
            child: Row(
              children: <Widget>[
                Icon(icon, color: color),
                SizedBox(width: 32.0),
                Text(title, style: TextStyle(color: color))
              ],
            ),
          ),
        ));
  }
}
