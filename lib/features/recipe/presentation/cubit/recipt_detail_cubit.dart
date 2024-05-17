import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pluton_test/domain/repository/api_repository.dart';
import 'package:pluton_test/features/recipe/models/recipt_detail_dto.dart';

part 'recipt_detail_state.dart';
part 'recipt_detail_cubit.freezed.dart';

class ReciptDetailCubit extends Cubit<ReciptDetailState> {
  ApiRepository apiRepository;
  ReciptDetailCubit(this.apiRepository) : super(const ReciptDetailState.initial());

  Future<void> getReciptDetail({required int id}) async {
    emit(const ReciptDetailState.loading());

    try {
      await apiRepository.getReciptDetail(id: id).then((value) {
        emit(ReciptDetailState.loaded(value));
      });
    } on Exception catch (e) {
      emit(ReciptDetailState.error(
          '${e}Failed to load recipe detail'));
    }
  }
}
