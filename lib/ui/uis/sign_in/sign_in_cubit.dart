import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base_bloc/models/entities/export_entity.dart';
import 'package:flutter_base_bloc/repositories/export_repositories.dart';
import 'package:flutter_base_bloc/utils/export_utils.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository repository;

  SignInCubit({required this.repository}) : super(SignInState());

  void signIn(String username, String password) async {
    emit(state.copyWith(signInStatus: SignInStatus.LOADING));
    try {
      final result = await repository.signIn(username, password);
      await repository.saveToken(result);
      emit(state.copyWith(signInStatus: SignInStatus.SUCCESS));
    } catch (error) {
      logger.e(error);
      emit(state.copyWith(signInStatus: SignInStatus.FAILURE));
    }
  }
}
