import 'package:bloc/bloc.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.light());

  void toggleTheme() {
    emit(state.isDark ? ThemeState.light() : ThemeState.dark());
  }
}
