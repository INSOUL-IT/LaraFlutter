part of ii_admin_layout;

class SideBar extends StatelessWidget {
  final List sideBarItems;
  final String section;
  SideBar({this.sideBarItems, this.section});

  int getSelectedSectionIndex(section) {
    for (int index = 0; index < sideBarItems.length; index++) {
      if (sideBarItems[index]['title'] == section) {
        return index;
      }
    }
    return 0;
  }

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
          selectedIndex: getSelectedSectionIndex(section),
          onDestinationSelected: (int index) {
            print(state.selectedIndex);
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
