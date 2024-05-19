import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pluton_test/core/networks/recipe_api.dart';
import 'package:pluton_test/adapters/adapters.dart';
import 'package:pluton_test/domain/repository/api_repository.dart';
import 'package:pluton_test/domain/cubit/hive_storage_cubit.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';
import 'package:pluton_test/features/recipe/presentation/cubit/recipe_search_cubit.dart';
import 'package:pluton_test/features/recipe/presentation/cubit/recipt_detail_cubit.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluton_test/features/splash/view/splash_screen.dart';
import 'package:pluton_test/theme/cubit/theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(RecipeDetailsAdapter());
  await Hive.openBox<RecipeDetails>('recipes');
  GetIt.I.registerSingleton<ApiRepository>(
    ApiRepository(
      remoteDataSource: RecipeApi(
        dio: Dio(),
      ),
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(
              create: (context) => RecipeDetailCubit(GetIt.I<ApiRepository>())),
          BlocProvider(
            create: (context) => RecipeSearchCubit(
              GetIt.I<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => HiveStorageCubit(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Recipe Realm',
              theme: FlexColorScheme.light(scheme: FlexScheme.mandyRed).toTheme,
              darkTheme:
                  FlexColorScheme.dark(scheme: FlexScheme.mandyRed).toTheme,
              themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
              home: const SplashScreen(),
            );
          },
        ));
  }
}
