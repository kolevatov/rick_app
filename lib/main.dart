import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_bloc.dart';
import 'package:rick_app/presentation/bloc/search_block/search_bloc.dart';
import 'package:rick_app/presentation/common/app_colors.dart';
import 'package:rick_app/presentation/pages/home_page.dart';
import 'package:rick_app/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  log('di.init() executed');
  runApp(const RickApp());
}

class RickApp extends StatelessWidget {
  const RickApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<RequestCharacterBloc>(
              create: (context) => di.sl<RequestCharacterBloc>()),
          BlocProvider(create: (context) => di.sl<CharacterSearchBloc>()),
        ],
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            backgroundColor: AppColors.mainBackground,
            scaffoldBackgroundColor: AppColors.mainBackground,
          ),
          home: const HomePage(),
        ));
  }
}
