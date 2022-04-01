import 'package:flutter/material.dart';
import 'package:rick_app/presentation/widgets/characters.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty'),
        centerTitle: true,
      ),
      body: const CharactersWidget(),
    );
  }
}
