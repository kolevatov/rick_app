class InfoEntity {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  const InfoEntity(
      {required this.count, required this.pages, this.next, this.prev});
}
