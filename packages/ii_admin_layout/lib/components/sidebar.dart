part of ii_admin_layout;

class SideBar extends StatelessWidget {
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
          onDestinationSelected: (int index) => state.setSelectedIndex(index),
          labelType: state.navigationRailExpanded
              ? NavigationRailLabelType.none
              : NavigationRailLabelType.selected,
          destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite),
              label: Text('First'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.bookmark_border),
              selectedIcon: Icon(Icons.book),
              label: Text('Second'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.star_border),
              selectedIcon: Icon(Icons.star),
              label: Text('Third'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite),
              label: Text('First'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite),
              label: Text('First'),
            ),
          ],
        );
      },
    );
  }
}
