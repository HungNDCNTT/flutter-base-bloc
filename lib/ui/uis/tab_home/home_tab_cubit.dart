import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base_bloc/repositories/export_repositories.dart';
import 'package:rxdart/rxdart.dart';

part 'home_tab_state.dart';

class HomeTabCubit extends Cubit<HomeTabState> {
  final MovieRepository repository;
  final messageController = PublishSubject<String>();

  HomeTabCubit({required this.repository}) : super(HomeTabState());

  @override
  Future<void> close() {
    messageController.close();
    return super.close();
  }
}
