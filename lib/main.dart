import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/application/bloc_observer.dart';
import 'package:to_do/injection.dart';
import 'package:to_do/presentation/app_widget.dart';
void main() {
    configureDependencies();
  //TODO i will delete the next line
    Bloc.observer = MyBlocObserver();
    
  //  DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  runApp(const AppWidget());
}
