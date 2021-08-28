import 'package:deli_meals/screens/favorites_screen.dart';
import 'package:deli_meals/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              'Catergoriws',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Filters',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}



//unfortunatily the below codes are not works properly 
  // Widget buildListTile(String title, IconData icon, Function _tapHandeler) {
  //   return ListTile(
  //     leading: Icon(
  //       icon,
  //       size: 26,
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(
  //         fontFamily: 'RobotoCondensed',
  //         fontSize: 24,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //     onTap: _tapHandeler(),
  //   );
  // }

// buildListTile(
//             'Meal',
//             Icons.restaurant,
//             () => Navigator.of(context).pushNamed('/'),
//           ),
//           buildListTile(
//             'Filters',
//             Icons.settings,
//             () => Navigator.of(context).pushNamed(FiltersScreen.routeName),
//           ),