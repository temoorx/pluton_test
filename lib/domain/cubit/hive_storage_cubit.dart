import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';

part 'hive_storage_state.dart';
part 'hive_storage_cubit.freezed.dart';

class HiveStorageCubit extends Cubit<HiveStorageState> {
  HiveStorageCubit() : super(const HiveStorageState.initial());

  isSaved(int id) {
    final box = Hive.box<RecipeDetails>('recipes');
    for (var savedRecipe in box.values) {
      if (savedRecipe.id == id) {
        return true;
      }
    }
    return false;
  }

  Future<void> saveRecipe(RecipeDetails recipe) async {
    try {
      final box = await Hive.openBox<RecipeDetails>('recipes');

      bool recipeExists = false;
      for (var savedRecipe in box.values) {
        if (savedRecipe.id == recipe.id) {
          recipeExists = true;
          break;
        }
      }

      if (recipeExists) {
        emit(HiveStorageState.addError(
            'Recipe with ID ${recipe.id} already exists.'));
        return;
      }

      if (recipe.id != null) {
        await box.add(recipe);
      }
    } catch (e) {
      emit(HiveStorageState.addError('Failed to save recipe: $e'));
    }
  }

  Future<void> loadRecipes() async {
    try {
      final box = await Hive.openBox<RecipeDetails>('recipes');
      final List<RecipeDetails> recipes = box.values.toList();
      emit(HiveStorageState.success(recipes));
    } catch (e) {
      emit(HiveStorageState.error('Failed to load recipes: $e'));
    }
  }

  Future<void> deleteRecipe(int id) async {
    try {
      final box = await Hive.openBox<RecipeDetails>('recipes');
      final recipeKey = box.keys.firstWhere(
        (key) => box.get(key)!.id == id,
        orElse: () => null,
      );

      if (recipeKey != null) {
        await box.delete(recipeKey);
        emit(const HiveStorageState.deleteSuccess("Deleted success"));
      } else {
        emit(HiveStorageState.deleteError('Recipe with ID $id not found.'));
      }
    } catch (e) {
      emit(HiveStorageState.deleteError('Failed to delete recipe: $e'));
    }
  }
}
