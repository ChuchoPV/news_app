import 'HomeCoordinator.dart';
import 'HomeViewModel+Dependencies.dart';
import 'HomeViewModel.dart';
import 'HomeWidget.dart';

class HomeFactory {
  static HomeWidget makeHome({required HomeCoordinator coordinator}) {
    
    // Dependencies
    final dependencies = HomeDependencies();
    final viewModel = HomeViewModel(dependencies: dependencies);

    // Widget
    final widget = HomeWidget(coordinator: coordinator, viewModel: viewModel);
    return widget;
  }
}
