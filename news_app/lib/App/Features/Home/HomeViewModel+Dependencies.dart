import 'package:news_app/Utilities/classes/ScreenNotification.dart';
import 'package:rxdart/rxdart.dart';

abstract class HomeViewModelOutputs {
  late BehaviorSubject<bool> isLoading;
  late PublishSubject<ScreenNotification> notification;
}

abstract class HomeViewModelInputs {}

abstract class HomeViewModelType {
  late HomeViewModelOutputs outputs;
  late HomeViewModelInputs inputs;
}

class HomeDependencies {

  HomeDependencies();
}
