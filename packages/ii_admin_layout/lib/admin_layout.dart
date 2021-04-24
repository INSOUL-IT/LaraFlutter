part of ii_admin_layout;

class AdminLayout extends StatelessWidget {
  final Widget page;
  final List sideBarItems;
  AdminLayout({this.page, this.sideBarItems});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminLayoutState(),
      child: Layout(
        sideBarItems: sideBarItems,
      ),
    );
  }
}
