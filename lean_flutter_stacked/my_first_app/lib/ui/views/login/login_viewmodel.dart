import 'package:my_first_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  backHome(set) {
    print(set);
  }
}
