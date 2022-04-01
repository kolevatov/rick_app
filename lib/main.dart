import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_bloc.dart';
import 'package:rick_app/presentation/common/app_colors.dart';
import 'package:rick_app/presentation/pages/characters_page.dart';
import 'package:rick_app/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Service locator
  await di.init();
  runApp(const RickApp());
}

class RickApp extends StatelessWidget {
  const RickApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CharacterBloc>(
              create: (context) => di.sl<CharacterBloc>()),
        ],
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            backgroundColor: AppColors.mainBackground,
            scaffoldBackgroundColor: AppColors.mainBackground,
          ),
          home: const CharactersPage(),
        ));
  }
}
