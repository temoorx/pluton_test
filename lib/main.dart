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
import 'package:pluton_test/features/recipe/presentation/views/home_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pluton Test',
          theme: FlexThemeData.light(
              scheme: FlexScheme.mandyRed,
              textTheme: Typography.blackCupertino),
          darkTheme: FlexThemeData.dark(
              scheme: FlexScheme.mandyRed,
              textTheme: Typography.whiteCupertino),
          home: const HomeScreen(),
        ));
  }
}
