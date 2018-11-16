import 'package:flutter/material.dart';

import 'content_page_view_widget.dart';
import 'navigation_icon_view.dart';

class WxSkeletonClonePageWidget extends StatefulWidget {
  static const String routeUrl = "/category/wx-clone";

  @override
  _WxSkeletonClonePageWidgetState createState() =>
      _WxSkeletonClonePageWidgetState();
}

class _WxSkeletonClonePageWidgetState extends State<WxSkeletonClonePageWidget> {
  PageController _pageController;
  var _currentIndex = 0;
  List<NavigationIconView> _navigationIcons;
  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _navigationIcons = NavigationIconView.buildNavigationViews();
    _pageController = PageController(initialPage: _currentIndex);
    _pages = ContentPageViewWidget.createPageViewsWithDifferentColor();
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: _navigationIcons.map((NavigationIconView view) {
        return view.item;
      }).toList(),
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(_currentIndex,
              duration: const Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        leading: Container(),
        title: Text("WX Clone"),
        actions: <Widget>[
          new Icon(
            Icons.search,
            size: 22,
          ),
          new Icon(
            Icons.add,
            size: 22,
          )
        ],
      ),
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
        itemCount: _pages.length,
        controller: _pageController,
        onPageChanged: (int index) {
          _currentIndex = index;
          print("切换到Page $index!");
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
