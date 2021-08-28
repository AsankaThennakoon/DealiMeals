import 'package:deli_meals/screens/categories_screen.dart';
import 'package:deli_meals/screens/favorites_screen.dart';
import 'package:deli_meals/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      "title": "Categories",
      "page": CategoriesScreen(),
    },
    {
      "title": "Favorites",
      "page": FavoritesScreen(),
    }
  ];
  int _selectPageIndex = 0;

  void _selectPage(int Index) {
    setState(() {
      _selectPageIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectPageIndex]['title'] as String),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _pages[_selectPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourites"),
        ],
        onTap: _selectPage,
        currentIndex: _selectPageIndex,
        backgroundColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
// bottom: TabBar(
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(Icons.category),
//                 text: "Categories",
//               ),
//               Tab(
//                 icon: Icon(Icons.star),
//                 text: "Favorits",
//               ),
//             ],
//           ),
// body: TabBarView(
//           children: <Widget>[CategoriesScreen(), FavoritesScreen()],
//         ),