import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base_bloc/models/enums/load_status.dart';
import 'package:flutter_base_bloc/repositories/export_repositories.dart';

part 'watchlist_tab_state.dart';

class WatchlistTabCubit extends Cubit<WatchlistTabState> {
  final AuthRepository repository;

  WatchlistTabCubit({required this.repository}) : super(WatchlistTabState());
}
