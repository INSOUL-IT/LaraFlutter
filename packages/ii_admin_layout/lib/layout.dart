part of ii_admin_layout;

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AdminLayoutState>(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            leading: TextButton(
              onPressed: () => state.reverseNavigationRail(),
              child: Icon(
                state.navigationRail ? Icons.close : Icons.menu,
                color: Colors.white,
              ),
            ),
            title: Center(child: Text('Page title')),
            actions: [],
            backgroundColor: Colors.black,
          ),
          body: Row(
            children: <Widget>[
              state.navigationRail ? SideBar() : Container(),
              VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: Center(
                  child: Text(
                    'selectedIndex: ${state.selectedIndex}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
