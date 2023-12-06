import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  final backTest;
  const LoginView({Key? key, this.backTest}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        child: ListView(
          children: [
            Text(backTest.toString()),
            GestureDetector(
              onTap: () {
                viewModel.backHome('backHome');
              },
            )
          ],
        ),
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
