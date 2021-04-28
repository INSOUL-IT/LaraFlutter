part of ii_admin_layout;

class Layout extends StatelessWidget {
  final Widget page;
  final List sideBarItems;
  final String section;
  Layout({this.sideBarItems, this.page, this.section});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () async {
    //   context.read<AdminLayoutState>().setSideBarItems(sideBarItems);
    // });

    return Consumer<AdminLayoutState>(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Column(
              children: [],
            ),
            leading: TextButton(
              onPressed: () => state.reverseNavigationRail(),
              child: Icon(
                state.navigationRail ? Icons.arrow_back_ios : Icons.menu,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: Row(
            children: <Widget>[
              (state.navigationRail)
                  ? SideBar(
                      sideBarItems: sideBarItems,
                      section: section,
                    )
                  : Container(),
              VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: page,
              ),
            ],
          ),
        );
      },
    );
  }
}
