part of ii_admin_layout;

class SideBar extends StatelessWidget {
  final List sideBarItems;
  SideBar({this.sideBarItems});
  @override
  Widget build(BuildContext context) {
    return Consumer<AdminLayoutState>(
      builder: (context, state, child) {
        return NavigationRail(
          leading: GestureDetector(
            onTap: () => state.reverseNavigationRailExpanded(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                state.navigationRailExpanded
                    ? Icons.close_fullscreen_rounded
                    : Icons.fullscreen_rounded,
              ),
            ),
          ),
          extended: state.navigationRailExpanded,
          backgroundColor: Colors.white10,
          groupAlignment: 0.0,
          selectedIndex: state.selectedIndex,
          onDestinationSelected: (int index) {
            state._selectedIndex = index;
            Navigator.pushNamed(context, sideBarItems[index]['route']);
          },
          labelType: state.navigationRailExpanded
              ? NavigationRailLabelType.none
              : NavigationRailLabelType.selected,
          destinations: [
            for (int index = 0; index < sideBarItems.length; index++)
              NavigationRailDestination(
                icon: Icon(sideBarItems[index]['icon']),
                selectedIcon: Icon(sideBarItems[index]['icon']),
                label: Text(sideBarItems[index]['title']),
              ),
          ],
        );
      },
    );
  }
}
