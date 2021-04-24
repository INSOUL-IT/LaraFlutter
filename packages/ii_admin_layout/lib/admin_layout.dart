part of ii_admin_layout;

class AdminLayout extends StatelessWidget {
  final Widget page;
  final List sideBarItems;
  final String section;
  AdminLayout({this.page, this.sideBarItems, this.section});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminLayoutState(),
      child: Layout(
        section: section,
        sideBarItems: sideBarItems,
        page: page,
      ),
    );
  }
}
