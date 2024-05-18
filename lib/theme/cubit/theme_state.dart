part of 'theme_cubit.dart';

@immutable
class ThemeState {
  final FlexColorScheme flexColorScheme;
  final bool isDark;

  const ThemeState({required this.flexColorScheme, required this.isDark});

  factory ThemeState.light() {
    return ThemeState(
      flexColorScheme: FlexColorScheme.light(
          textTheme: Typography.blackCupertino, scheme: FlexScheme.mandyRed),
      isDark: false,
    );
  }
  factory ThemeState.dark() {
    return ThemeState(
      flexColorScheme: FlexColorScheme.dark(
          textTheme: Typography.whiteCupertino, scheme: FlexScheme.mandyRed),
      isDark: true,
    );
  }
}
