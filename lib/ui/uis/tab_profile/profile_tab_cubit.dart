import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_base_bloc/models/enums/load_status.dart';
import 'package:flutter_base_bloc/repositories/export_repositories.dart';

part 'profile_tab_state.dart';

class ProfileTabCubit extends Cubit<ProfileTabState> {
  final AuthRepository repository;

  ProfileTabCubit({required this.repository}) : super(ProfileTabState());

  void signOut() async {
    emit(state.copyWith(signOutStatus: LoadStatus.LOADING));
    await repository.removeToken();
    await Future.delayed(Duration(seconds: 2));
    emit(state.copyWith(signOutStatus: LoadStatus.SUCCESS));
  }
}
