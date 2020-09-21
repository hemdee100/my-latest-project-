import 'package:signup/blocs/authentication_bloc/authentication_state.dart';
import 'package:signup/blocs/simple_bloc_observer.dart';
import 'package:signup/repositories/user_repository.dart';
import 'package:signup/screens/home_screen.dart';
import 'package:signup/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/authentication_bloc/authentication_bloc.dart';
import 'blocs/authentication_bloc/authentication_event.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(
        userRepository: userRepository,
      )..add(AuthenticationStarted()),
      child: MyApp(
        userRepository: userRepository,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final UserRepository _userRepository;

  MyApp({UserRepository userRepository}) : _userRepository = userRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff6a515e),
        cursorColor: Color(0xff6a515e),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationFailure) {
            return LoginScreen(
              userRepository: _userRepository,
            );
          }

          if (state is AuthenticationSuccess) {
            return HomeScreen(

            );
          }

          return Scaffold(

            body: Container(
              color: Color(0xffffae88),
              child: Center(
                child: const CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
