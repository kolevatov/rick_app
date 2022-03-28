import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/presentation/bloc/search_block/search_bloc.dart';
import 'package:rick_app/presentation/bloc/search_block/search_event.dart';
import 'package:rick_app/presentation/bloc/search_block/search_state.dart';
import 'package:rick_app/presentation/widgets/search_result.dart';

class CustomSearch extends SearchDelegate {
  final scrollController = ScrollController();
  List<CharacterEntity> person = [];
  List<CharacterEntity> lastCharacters = [];
  bool isLastPage = false;

  CustomSearch() : super(searchFieldLabel: 'Character name');

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels > 0 &&
          !isLastPage) {
        // Загружаем следующую страницу персонажей
        log('Raise event RequestCharacterListEvent() to load more characters');
        context.read<CharacterSearchBloc>().add(CharacterSearchEvent(query));
      }
    });
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
            lastCharacters = [];
            isLastPage = false;
            showSuggestions(context);
          },
          icon: const Icon(Icons.clear, color: Colors.white))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back_outlined,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    setupScrollController(context);

    if (lastCharacters.isEmpty) {
      log('Make first fetch. Search query is ' + query);
      BlocProvider.of<CharacterSearchBloc>(context, listen: false)
          .add(CharacterSearchEvent(query));
    }

    return BlocBuilder<CharacterSearchBloc, SearchState>(
      builder: (context, state) {
        log('CharacterSearchBloc. state is ' + state.toString());
        if (state is CharacterSearchLoading) {
          // next page loading is in progress
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CharacterSearchLoaded) {
          if (state.characters.isEmpty && lastCharacters.isEmpty) {
            // First fetch. Персонажи не найдены
            return _showErrorText('No data found');
          } else if (state.characters.isEmpty) {
            // При запросе очередной страницы данные не найдены
            person = lastCharacters;
            isLastPage = true;
          } else {
            // Получена очередная страница данных
            lastCharacters = state.characters;
            person = lastCharacters;
          }
        } else if (state is CharacterSearchError) {
          return _showErrorText(state.errorMessage);
        } else {
          return const Center(
            child: Icon(Icons.now_wallpaper),
          );
        }
        return ListView.builder(
          controller: scrollController,
          itemCount: person.length,
          itemBuilder: (context, int index) {
            CharacterEntity result = person[index];
            return SearchResult(searchResult: result);
          },
        );
      },
    );
  }

  Widget _showErrorText(String errorMessage) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          errorMessage,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
