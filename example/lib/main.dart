import 'dart:io';

import 'package:example/screens/checkout/bloc/observer.dart';
import 'package:example/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';

final talker = Talker(
  loggerSettings: TalkerLoggerSettings(enableColors: !Platform.isIOS),
);

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const CloudPaymentsExampleApp());
}

class CloudPaymentsExampleApp extends StatelessWidget {
  const CloudPaymentsExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckoutScreen(),
    );
  }
}
