import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';

class AppBlocObserver extends BlocObserver {
  final _talker = Talker();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    final msg = 'Event recive in ${bloc.runtimeType} event: $event';
    final log = BlocEventLog(msg);
    _talker.logTyped(log);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    final msg =
        '\n${'TRANSITION in ${bloc.runtimeType} with event ${transition.event.runtimeType}'}\n${'CURRENT state: ${transition.currentState.runtimeType}'}\n${'NEXT state: ${transition.nextState.runtimeType}'}';
    final log = BlocStateLog(msg);
    _talker.logTyped(log);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _talker.handle(error, stackTrace, '🚨 [BLOC] Error in ${bloc.runtimeType}');
  }
}

class BlocEventLog extends TalkerLog {
  BlocEventLog(String message) : super(message);

  @override
  AnsiPen get pen => AnsiPen()..xterm(51);

  @override
  String get title => 'BLOC';
}

class BlocStateLog extends TalkerLog {
  BlocStateLog(String message) : super(message);

  @override
  AnsiPen get pen => AnsiPen()..xterm(49);

  @override
  String get title => 'BLOC';
}
