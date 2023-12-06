import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:my_first_app/app/app.router.dart' as myrouter;

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _navigationAuth = locator<AuthenticationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 1));
    if (AuthenticationService().login()) {
      print('login');
      _navigationService.navigateToHomeView(startingIndex: 778899);
    } else {
      print('nologin');
      _navigationService.navigateToLoginView(backTest: 'BackTest');
    }
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic
  }
}
