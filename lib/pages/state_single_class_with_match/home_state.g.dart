// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension HomeStatusMatch on HomeStatus {
  T match<T>(
      {required T Function() inital,
      required T Function() loading,
      required T Function() loaded,
      required T Function() failure}) {
    final v = this;
    if (v == HomeStatus.inital) {
      return inital();
    }

    if (v == HomeStatus.loading) {
      return loading();
    }

    if (v == HomeStatus.loaded) {
      return loaded();
    }

    if (v == HomeStatus.failure) {
      return failure();
    }

    throw Exception('HomeStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? inital,
      T Function()? loading,
      T Function()? loaded,
      T Function()? failure}) {
    final v = this;
    if (v == HomeStatus.inital && inital != null) {
      return inital();
    }

    if (v == HomeStatus.loading && loading != null) {
      return loading();
    }

    if (v == HomeStatus.loaded && loaded != null) {
      return loaded();
    }

    if (v == HomeStatus.failure && failure != null) {
      return failure();
    }

    return any();
  }
}
