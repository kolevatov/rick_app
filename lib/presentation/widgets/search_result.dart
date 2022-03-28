import 'package:flutter/material.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/presentation/pages/character_details.dart';
import 'package:rick_app/presentation/widgets/cached_images.dart';

class SearchResult extends StatelessWidget {
  final CharacterEntity searchResult;

  const SearchResult({Key? key, required this.searchResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetails(character: searchResult),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
            ),
            CachedImage(
              width: 200,
              height: 200,
              imageUrl: searchResult.image,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                searchResult.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                searchResult.location.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
