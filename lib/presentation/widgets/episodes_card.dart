import 'package:flutter/material.dart';
import 'package:rick_app/content/episodes/episodes_content.dart';
import 'package:rick_app/domain/entities/single_episode_entity.dart';
import 'package:rick_app/presentation/common/app_colors.dart';
import 'package:rick_app/presentation/common/app_fonts.dart';

class EpisodeCard extends StatelessWidget {
  final SingleEpisodeEntity episode;
  const EpisodeCard({required this.episode, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 347,
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: AppColors.cellBackground,
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 14,
          ),
          Text(episode.name, style: Fonts.h1),
          const SizedBox(
            height: 4,
          ),
          Text(
            _getSeason(episode.id),
            style: Fonts.bodyGray,
          ),
          const SizedBox(
            height: 8,
          ),
          Image.asset(
            _getImagePath(episode.id),
            //height: 160,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                episode.air_date,
                style: Fonts.bodyGray,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            _getSinopsis(episode.id),
            style: Fonts.bodyWhite,
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  String _getSeason(int index) {
    if (episodesSeasons.containsKey(index)) {
      return episodesSeasons[index]!;
    } else {
      return "Unknown";
    }
  }

  String _getSinopsis(int index) {
    if (episodesSinopsis.containsKey(index)) {
      return episodesSinopsis[index]!;
    } else {
      return "Unknown";
    }
  }

  String _getImagePath(int index) {
    if (episodesImages.containsKey(index)) {
      return episodesImages[index]!;
    } else {
      return 'assets/episodes/noimage.jpg';
    }
  }
}
