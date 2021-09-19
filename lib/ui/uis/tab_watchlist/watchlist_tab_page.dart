import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';
import 'package:flutter_base_bloc/repositories/export_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'watchlist_tab_cubit.dart';

class WatchlistTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WatchlistTabPageState();
  }
}

class _WatchlistTabPageState extends State<WatchlistTabPage> {
  WatchlistTabCubit? _cubit;

  @override
  void initState() {
    final repository = RepositoryProvider.of<AuthRepository>(context);
    _cubit = WatchlistTabCubit(repository: repository);
    super.initState();
  }

  @override
  void dispose() {
    _cubit?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
    );
  }
}
