# Routes should be here

    Map arg = settings.arguments;
    bool authRes = AuthMiddleware().isAuthCheck();

    switch (settings.name) {
      case homeRoute:
        return _go(HomeController().index());
      case routea:
        return _go(ContentB());
      case routeb:
        return _go(HomePage());

      case login:
        return _go(LoginPage(passdata: arg['name']));

      case signup:
        return _go(LoginController().index());

      case dashboard:
        return authRes ? _go(DashboardPage()) : _go(SignupPage());

      default:
        return _go(ErrorIndex());
    }