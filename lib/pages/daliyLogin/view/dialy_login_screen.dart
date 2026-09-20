import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systeam_gym/data/presentation/attends/attends_bloc.dart';
import 'package:systeam_gym/pages/daliyLogin/refactor/daily_login_screen_view.dart';

class DialyLoginScreen extends StatefulWidget {
 
  DialyLoginScreen({super.key});

  @override
  State<DialyLoginScreen> createState() => _DialyLoginScreenState();
}

class _DialyLoginScreenState extends State<DialyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AttendsBloc>(
          create: (context) => AttendsBloc()..add(AttendsEvent.getAttendsOfDay(date: DateTime.now())),
        ),
      ],
      child: DailyLoginScreenView(),
    );
  }
}
