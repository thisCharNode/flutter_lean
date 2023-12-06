import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.sumFun();
        },
        child: const Text('角落按钮floatingActionButton'),
      ),
      body: Center(
        child: Text(
          viewModel.Testnum.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}
