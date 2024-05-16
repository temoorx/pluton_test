import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pluton_test/core/networks/recipe_api.dart';
import 'package:pluton_test/domain/repository/api_repository.dart';
import 'package:pluton_test/features/recipe/presentation/cubit/recipe_search_cubit.dart';

import 'features/recipe/presentation/view/search_screen.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
  GetIt.I.registerSingleton<ApiRepository>(
    ApiRepository(
      remoteDataSource: RecipeApi(
        dio: Dio(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RecipeSearchCubit(
              GetIt.I<ApiRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pluton Test',
          theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
          darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
          home: const RecipeSearchScreen(),
        ));
  }
}
