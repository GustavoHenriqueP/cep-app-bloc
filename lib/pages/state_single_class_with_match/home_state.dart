import 'package:match/match.dart';

import '../../models/endereco_model.dart';

part 'home_state.g.dart';

@match
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
