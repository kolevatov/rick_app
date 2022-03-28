import 'package:flutter/material.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/presentation/common/app_colors.dart';
import 'package:rick_app/presentation/widgets/cached_images.dart';
import 'package:rick_app/presentation/pages/character_details.dart';

class CharacterCard extends StatelessWidget {
  final CharacterEntity character;
  const CharacterCard({required this.character, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CharacterDetails(character: character)));
      }),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.cellBackground,
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            CachedImage(
              imageUrl: character.image,
              width: 160,
              height: 160,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: character.status == 'Alive'
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${character.status} - ${character.species}',
                        style: const TextStyle(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
