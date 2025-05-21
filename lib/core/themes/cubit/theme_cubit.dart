import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meme_app/core/themes/cubit/theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(MemeLightThemeState());

  void changeTheme(ThemeState newState) {
    emit(newState);
  }

  final String _jsonKey = "themeMode";
  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    if (json[_jsonKey] == "LightMemeTheme") {
      return MemeLightThemeState();
    } else if (json[_jsonKey] == "LightModernTheme") {
      return ModernLightThemeState();
    } else if (json[_jsonKey] == "DarkMemeTheme") {
      return MemeDarkThemeState();
    } else if (json[_jsonKey] == "DarkModernTheme") {
      return ModernDarkThemeState();
    } else {
      return MemeLightThemeState();
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState newState) {
    if (newState == MemeLightThemeState.theme) {
      return {_jsonKey: "LightMemeTheme"};
    } else if (newState == ModernLightThemeState.theme) {
      return {_jsonKey: "LightModernTheme"};
    } else if (newState == MemeDarkThemeState.theme) {
      return {_jsonKey: "DarkMemeTheme"};
    } else if (newState == ModernDarkThemeState.theme) {
      return {_jsonKey: "DarkModernTheme"};
    } else {
      return {_jsonKey: "system"};
    }
  }
}
