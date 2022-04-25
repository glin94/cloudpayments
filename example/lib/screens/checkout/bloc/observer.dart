import 'package:example/common/logger.dart';
import 'package:example/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    final msg = 'Event recive in ${bloc.runtimeType} event: $event';
    final log = BlocEventLog(msg);
    talker.logTyped(log);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    final msg =
        '\n${'TRANSITION in ${bloc.runtimeType} with event ${transition.event}'}\n${'CURRENT state: ${transition.currentState}'}\n${'NEXT state: ${transition.nextState.runtimeType}'}';
    final log = BlocStateLog(msg);
    talker.logTyped(log);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    talker.handle(error, stackTrace, '🚨 [BLOC] Error in ${bloc.runtimeType}');
  }
}
