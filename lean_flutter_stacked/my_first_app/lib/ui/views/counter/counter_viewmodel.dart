import 'package:stacked/stacked.dart';

class CounterViewModel extends BaseViewModel {
  static int _Testnum = 1;

  int get Testnum => _Testnum;

  void sumFun() {
    _Testnum++;
    rebuildUi();
  }
}
