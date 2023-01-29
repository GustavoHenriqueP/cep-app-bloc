import '../../models/endereco_model.dart';

enum HomeStatus { inital, loading, loaded, failure }

class HomeState {
  final EnderecoModel? enderecoModel;
  final HomeStatus status;
  
  HomeState({
    this.enderecoModel,
    this.status = HomeStatus.inital,
  });

  HomeState copyWith({
    EnderecoModel? enderecoModel,
    HomeStatus? status,
  }) {
    return HomeState(
      enderecoModel: enderecoModel ?? this.enderecoModel,
      status: status ?? this.status,
    );
  }
}
