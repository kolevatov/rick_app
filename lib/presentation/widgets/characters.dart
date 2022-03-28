import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_bloc.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_event.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_state.dart';
import 'package:rick_app/presentation/widgets/character_card.dart';

class CharactersWidget extends StatelessWidget {
  final scrollController = ScrollController();
  CharactersWidget({Key? key}) : super(key: key);

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels > 0) {
        // Загружаем следующую страницу персонажей
        log('Raise event RequestCharacterListEvent() to load more characters');
        context.read<RequestCharacterBloc>().add(RequestCharacterListEvent());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);

    return BlocBuilder<RequestCharacterBloc, CharacterState>(
        builder: (context, state) {
      log('call BlocBuilder. current state: ' + state.toString());

      List<CharacterEntity> persons = [];
      bool isLoading = false;

      final RequestCharacterBloc characterBloc =
          context.read<RequestCharacterBloc>();

      if (state is RequestCharacterEmpty) {
        // Empty state - нет данных
        // Запускаем загрузку данных
        characterBloc.add(RequestCharacterListEvent());
        log('push initial data loading');
        return Container();
      } else if (state is RequestCharacterLoading && state.isFirstFetch) {
        // Выполняется первоначальная загрузка данных
        return _loadingIndicator();
      } else if (state is RequestCharacterLoading) {
        log('Additional data loading in progress');
        log('state.oldCharacterList: ' +
            state.oldCharacterList.length.toString() +
            ' items');

        // Повторная загрузка персонажей
        persons = state.oldCharacterList;
        isLoading = true;
      } else if (state is RequestCharacterLoaded) {
        // Список персонажей загружен
        if (state.characters.isNotEmpty) {
          persons = persons + state.characters;
        }
      } else if (state is RequestCharacterError) {
        // Ошибка при загрузке

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.white, fontSize: 36),
            ),
          ),
        );
      }

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          controller: scrollController,
          itemBuilder: (context, index) {
            if (index < persons.length) {
              return CharacterCard(character: persons[index]);
            } else {
              Timer(const Duration(milliseconds: 30), () {
                scrollController
                    .jumpTo(scrollController.position.maxScrollExtent);
              });
              return _loadingIndicator();
            }
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey[400],
            );
          },
          itemCount: persons.length + (isLoading ? 1 : 0),
        ),
      );
    });
  }

  Widget _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
