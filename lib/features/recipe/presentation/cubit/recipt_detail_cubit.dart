import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pluton_test/domain/repository/api_repository.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';

part 'recipt_detail_state.dart';
part 'recipt_detail_cubit.freezed.dart';

class RecipeDetailCubit extends Cubit<RecipeDetailState> {
  ApiRepository apiRepository;
  RecipeDetailCubit(this.apiRepository)
      : super(const RecipeDetailState.initial());

  Future<void> getReciptDetail({required int id}) async {
    emit(const RecipeDetailState.loading());

    try {
      await apiRepository.getReciptDetail(id: id).then((value) {
        emit(RecipeDetailState.loaded(value));
      });
    } on Exception catch (e) {
      emit(RecipeDetailState.error('${e}Failed to load recipe detail'));
    }
  }
}
