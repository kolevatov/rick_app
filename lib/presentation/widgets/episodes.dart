import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';
import 'package:rick_app/domain/entities/single_episode_entity.dart';
import 'package:rick_app/presentation/bloc/episodes_bloc/episode_bloc.dart';
import 'package:rick_app/presentation/widgets/episodes_card.dart';

class EpisodesWidget extends StatefulWidget {
  const EpisodesWidget({Key? key}) : super(key: key);

  @override
  State<EpisodesWidget> createState() => _EpisodesWidgetState();
}

class _EpisodesWidgetState extends State<EpisodesWidget> {
  late EpisodesEntity _currentEpisodes;
  List<SingleEpisodeEntity> _currentResults = [];
  int _currentPage = 1;

  final RefreshController refreshController = RefreshController();
  bool _isPaginated = false;

  Timer? searchDelay;

  @override
  void initState() {
    // make initial request for characters list
    context.read<EpisodeBloc>().add(const EpisodeEventFetch(page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeBloc, EpisodeState>(builder: (context, state) {
      log('Episodes blocBuilder: current state: ' + state.toString());
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: state.when(loading: () {
            if (_isPaginated) {
              return _episodesListView(_currentResults);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }, loaded: (episodesLoaded) {
            _currentEpisodes = episodesLoaded;

            if (_isPaginated) {
              _isPaginated = false;
              _currentResults.addAll(episodesLoaded.results);
              refreshController.loadComplete();
            } else {
              _currentResults = episodesLoaded.results;
            }

            return _episodesListView(_currentResults);
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

  Widget _episodesListView(List<SingleEpisodeEntity> episodes) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SmartRefresher(
        controller: refreshController,
        enablePullDown: false,
        enablePullUp: true,
        onLoading: () {
          _isPaginated = true;
          _currentPage++;

          if (_currentPage <= _currentEpisodes.info.pages) {
            context
                .read<EpisodeBloc>()
                .add(EpisodeEventFetch(page: _currentPage));
          } else {
            refreshController.loadNoData();
          }
        },
        child: ListView.separated(
            itemBuilder: (context, index) {
              return EpisodeCard(episode: episodes[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.grey,
              );
            },
            itemCount: episodes.length),
      ),
    );
  }
}
