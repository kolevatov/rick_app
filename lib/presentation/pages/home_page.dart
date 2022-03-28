import 'package:flutter/material.dart';
import 'package:rick_app/presentation/widgets/character_search.dart';
import 'package:rick_app/presentation/widgets/characters.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: CharactersWidget(),
    );
  }
}
