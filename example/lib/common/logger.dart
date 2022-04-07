import 'dart:io';
import 'package:talker/talker.dart';

final talker = Talker(
  loggerSettings: TalkerLoggerSettings(enableColors: !Platform.isIOS),
);

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
