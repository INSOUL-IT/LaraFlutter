// part of ii_sidebar;
//
// class AdminLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Sidebar title',
//       home: MyRailNavigation(),
//     );
//   }
// }
//
// class MyRailNavigation extends StatefulWidget {
//   @override
//   _MyRailNavigationState createState() => _MyRailNavigationState();
// }
//
// class _MyRailNavigationState extends State<MyRailNavigation> {
//   int _selectedIndex = 0;
//
//   bool navigationRail = true;
//   bool navigationRailExpanded = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: OutlinedButton(
//           onPressed: () {
//             setState(() {
//               navigationRail = !navigationRail;
//             });
//           },
//           child: Icon(
//             navigationRail ? Icons.arrow_back : Icons.menu,
//           ),
//         ),
//         title: Center(child: Text('Page title')),
//         actions: [],
//         backgroundColor: Colors.purple,
//       ),
//       body: Row(
//         children: <Widget>[
//           navigationRail
//               ? SingleChildScrollView(
//             child: ConstrainedBox(
//               constraints: BoxConstraints(minHeight: 100),
//               child: IntrinsicHeight(
//                 child: NavigationRail(
//                   leading: OutlinedButton(
//                     onPressed: () {
//                       setState(() {
//                         navigationRailExpanded = !navigationRailExpanded;
//                       });
//                     },
//                     child: Icon(
//                       navigationRailExpanded
//                           ? Icons.arrow_back
//                           : Icons.arrow_forward,
//                     ),
//                   ),
//                   extended: navigationRailExpanded,
//                   backgroundColor: Colors.white10,
//                   groupAlignment: 0.0,
//                   selectedIndex: _selectedIndex,
//                   onDestinationSelected: (int index) {
//                     setState(() {
//                       _selectedIndex = index;
//                     });
//                   },
//                   labelType: navigationRailExpanded
//                       ? NavigationRailLabelType.none
//                       : NavigationRailLabelType.selected,
//                   destinations: [
//                     NavigationRailDestination(
//                       icon: Icon(Icons.favorite_border),
//                       selectedIcon: Icon(Icons.favorite),
//                       label: Text('First'),
//                     ),
//                     NavigationRailDestination(
//                       icon: Icon(Icons.bookmark_border),
//                       selectedIcon: Icon(Icons.book),
//                       label: Text('Second'),
//                     ),
//                     NavigationRailDestination(
//                       icon: Icon(Icons.star_border),
//                       selectedIcon: Icon(Icons.star),
//                       label: Text('Third'),
//                     ),
//                     NavigationRailDestination(
//                       icon: Icon(Icons.favorite_border),
//                       selectedIcon: Icon(Icons.favorite),
//                       label: Text('First'),
//                     ),
//                     NavigationRailDestination(
//                       icon: Icon(Icons.favorite_border),
//                       selectedIcon: Icon(Icons.favorite),
//                       label: Text('First'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//               : Container(),
//           VerticalDivider(thickness: 1, width: 1),
//           Expanded(
//             child: Center(
//               child: Text(
//                 'selectedIndex: $_selectedIndex',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
