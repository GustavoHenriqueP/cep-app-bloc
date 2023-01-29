import 'package:bloc/bloc.dart';
import 'package:cep_app/pages/state_single_class_with_match/home_state.dart';
import '../../repositories/cep_repository.dart';
import '../../repositories/cep_repository_impl.dart';

class HomeSingleClassController extends Cubit<HomeState> {

  final CepRepository cepRepository = CepRepositoryImpl();
  HomeSingleClassController() : super(HomeState());

  Future<void> findCep(String cep) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));
      final enderecoModel = await cepRepository.getCep(cep);
      emit(state.copyWith(status: HomeStatus.loaded, enderecoModel: enderecoModel));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }
}
