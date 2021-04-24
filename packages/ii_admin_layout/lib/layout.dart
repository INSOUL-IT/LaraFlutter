part of ii_admin_layout;

class Layout extends StatelessWidget {
  final List sideBarItems;
  Layout({this.sideBarItems});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      'Tab 1',
      'Tab 2',
    ];

    Future.delayed(Duration.zero, () async {
      context.read<AdminLayoutState>().setSideBarItems(sideBarItems);
    });

    return Consumer<AdminLayoutState>(
      builder: (context, state, child) {
        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            appBar: AppBar(
              leading: TextButton(
                onPressed: () => state.reverseNavigationRail(),
                child: Icon(
                  state.navigationRail ? Icons.arrow_back_ios : Icons.menu,
                  color: Colors.white,
                ),
              ),
              title: Center(
                child: Text('Page title'),
              ),
              actions: [],
              backgroundColor: Colors.black,
              bottom: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: [
                  for (final tab in tabs) Tab(text: tab),
                ],
              ),
            ),
            body: Row(
              children: <Widget>[
                state.navigationRail
                    ? SideBar(
                        sideBarItems: sideBarItems,
                      )
                    : Container(),
                VerticalDivider(thickness: 1, width: 1),
                Expanded(
                  child: TabBarView(
                    children: [
                      for (final tab in tabs)
                        Center(
                          child: Text(state.sidebarItems.length.toString()),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
