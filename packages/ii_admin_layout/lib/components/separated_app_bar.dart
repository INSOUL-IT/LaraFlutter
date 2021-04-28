part of ii_admin_layout;

class SeparatedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AdminLayoutState>(
      builder: (context, state, child) {
        return AppBar(
          leading: TextButton(
            onPressed: () => state.reverseNavigationRail(),
            child: Icon(
              state.navigationRail ? Icons.arrow_back : Icons.menu,
              color: Colors.white,
            ),
          ),
          title: Center(child: Text('Page title')),
          actions: [],
          backgroundColor: Colors.black,
        );
      },
    );
  }
}
