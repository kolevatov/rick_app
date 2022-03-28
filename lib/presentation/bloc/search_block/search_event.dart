abstract class SearchEvent {
  SearchEvent();
}

class CharacterSearchEvent extends SearchEvent {
  final String searchQuery;

  CharacterSearchEvent(this.searchQuery);
}
