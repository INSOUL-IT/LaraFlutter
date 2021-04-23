part of ii_admin_layout;

class AdminLayoutState with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setSelectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  bool _navigationRail = true;
  bool get navigationRail => _navigationRail;

  void reverseNavigationRail() {
    _navigationRail = !_navigationRail;
    notifyListeners();
  }

  bool _navigationRailExpanded = false;
  bool get navigationRailExpanded => _navigationRailExpanded;

  void reverseNavigationRailExpanded() {
    _navigationRailExpanded = !_navigationRailExpanded;
    notifyListeners();
  }
}