// import 'package:flutter/material.dart';
// import 'package:fooderlich/screens/explore_screen.dart';
// import 'screens/explore_screen.dart';
// import 'screens/recipes_screen.dart';
// import 'screens/grocery_screen.dart';
// import 'package:provider/provider.dart';
// import 'models/models.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _selectedIndex = 0;

//   static List<Widget> pages = <Widget>[

//     ExploreScreen(),
//     RecipesScreen(),
//     const GroceryScreen(),

//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<tabManager>(builder: (context, tabManager, child) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Fooderlich',
//             style: Theme
//                 .of(context)
//                 .textTheme
//                 .headline6,
//           ),
//         ), //TODO: Replace body
//         //body it remember the initial state (cache)
//         body: IndexedStack(index: tabManager.selectedTab,children: pages),
//         //initial tab manager do not remember cache
//         //pages[tabManager.selectedTab],
//         bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: Theme
//               .of(context)
//               .textSelectionTheme
//               .selectionColor,
//           currentIndex: tabManager.selectedTab,
//           onTap: (index) {
//             tabManager.goToTab(index);
//           },
//           items: <BottomNavigationBarItem>[
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.explore),
//               label: 'Explore',
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.book),
//               label: 'Recipes',
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.list),
//               label: 'To Buy',
//             ),
//           ],
//         ),
//       );
//     },
//     );
//   }
// }