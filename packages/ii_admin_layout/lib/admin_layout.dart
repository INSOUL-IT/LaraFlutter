part of ii_admin_layout;

class AdminLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminLayoutState(),
      child: Layout(),
    );
  }
}
