import 'package:flutter/material.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/presentation/widgets/cached_images.dart';
import 'package:intl/intl.dart';

class CharacterDetails extends StatelessWidget {
  final CharacterEntity character;
  const CharacterDetails({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              character.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            CachedImage(
              imageUrl: character.image,
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color:
                        character.status == 'Alive' ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  character.status,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            ..._buildText('Gender', character.gender),
            ..._buildText('Species', character.species),
            ..._buildText('Origin', character.origin.name),
            ..._buildText(
                'Number of episodes', character.episode.length.toString()),
            ..._buildText('Last known location', character.location.name),
            ..._buildText('Was created',
                DateFormat.yMMMd().format(character.created).toString()),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildText(String title, String content) {
    return [
      const SizedBox(
        height: 8,
      ),
      Text(
        title,
        style: const TextStyle(
            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        content,
        style: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ];
  }
}
