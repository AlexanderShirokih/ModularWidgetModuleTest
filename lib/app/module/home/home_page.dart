import 'package:flutter/material.dart';
import 'package:widget_module_example/app/module/circle/circle_module.dart';
import 'package:widget_module_example/app/module/square/square_module.dart';
import 'package:widget_module_example/app/module/star/star_module.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 1;

  PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        onTap: (int tappedIndex){
          setState(() {
            this.selectedPage = tappedIndex;
          });
          this._pageController.jumpToPage(tappedIndex);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'circle'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'star'),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: 'square'),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          CircleModule(),
          StarModule(),
          SquareModule()
        ],
      ),
    );
  }
}
