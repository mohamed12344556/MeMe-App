import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/core.dart';
import 'core/themes/cubit/theme_cubit.dart';

class MemeApp extends StatelessWidget {
  const MemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            themeMode: state,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
