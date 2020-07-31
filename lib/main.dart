import 'package:devtix/bloc/blocs.dart';
import 'package:devtix/services/services.dart';
import 'package:devtix/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService.userStream,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => PagesBloc(),
          ),
          BlocProvider(
            create: (_) => UserBloc(),
          )
        ],
        child: MaterialApp(
          home: Wrapper(),
        ),
      ),
    );
  }
}
