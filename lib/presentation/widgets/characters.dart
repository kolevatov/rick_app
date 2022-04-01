import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/domain/entities/results_entity.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_bloc.dart';
import 'package:rick_app/presentation/common/app_colors.dart';
import 'package:rick_app/presentation/widgets/character_card.dart';

class CharactersWidget extends StatefulWidget {
  const CharactersWidget({Key? key}) : super(key: key);

  @override
  State<CharactersWidget> createState() => _CharactersWidgetState();
}

class _CharactersWidgetState extends State<CharactersWidget> {
  late CharacterEntity _currentCharacters;
  List<ResultsEntity> _currentResults = [];
  int _currentPage = 1;
  String _currentQuery = '';

  final RefreshController refreshController = RefreshController();
  bool _isPaginated = false;

  Timer? searchDelay;

  @override
  void initState() {
    // make initial request for characters list
    context
        .read<CharacterBloc>()
        .add(const CharacterEventFetch(page: 1, query: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
      log('BlocBuilder: current state: ' + state.toString());
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.cellBackground,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  hintText: 'Character Name',
                  hintStyle: const TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  _currentPage = 1;
                  _currentResults = [];
                  _currentQuery = value;

                  searchDelay?.cancel();
                  searchDelay = Timer(const Duration(milliseconds: 500), () {
                    context.read<CharacterBloc>().add(
                          CharacterEventFetch(page: _currentPage, query: value),
                        );
                  });
                }),
          ),
          Expanded(
              child: state.when(loading: () {
            if (_isPaginated) {
              return _charactersListView(_currentResults);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }, loaded: (charactersLoaded) {
            _currentCharacters = charactersLoaded;

            if (_isPaginated) {
              _isPaginated = false;
              _currentResults.addAll(charactersLoaded.results);
              refreshController.loadComplete();
            } else {
              _currentResults = charactersLoaded.results;
            }

            return _charactersListView(_currentResults);
          }, error: (errorMessage) {
            return Center(
              child: Text(
                errorMessage,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            );
          })),
        ],
      );
    });
  }

  Widget _charactersListView(List<ResultsEntity> characters) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SmartRefresher(
        controller: refreshController,
        enablePullDown: false,
        enablePullUp: true,
        onLoading: () {
          _isPaginated = true;
          _currentPage++;

          if (_currentPage <= _currentCharacters.info.pages) {
            context.read<CharacterBloc>().add(
                CharacterEventFetch(page: _currentPage, query: _currentQuery));
          } else {
            refreshController.loadNoData();
          }
        },
        child: ListView.separated(
            itemBuilder: (context, index) {
              return CharacterCard(character: characters[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.grey,
              );
            },
            itemCount: characters.length),
      ),
    );
  }
}
