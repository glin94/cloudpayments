import 'dart:io';
import 'package:talker/talker.dart';

final talker = Talker(
  loggerSettings: TalkerLoggerSettings(enableColors: !Platform.isIOS),
);
