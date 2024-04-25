import 'package:shared_preferences/shared_preferences.dart';

class CardLocalDataSource {
  static const String _collectionCardKey = 'collection_card';

  Future<void> addCollectionCard(int userId, int cardId) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    List<String> collection = sharedPreferences
            .getStringList(_collectionCardKey + userId.toString())
            ?.map((e) => e.toString())
            .toList() ??
        [];
    if (!collection.contains(cardId.toString())) {
      collection.add(cardId.toString());
      await sharedPreferences.setStringList(
          _collectionCardKey + userId.toString(), collection);
    }
  }

  Future<List<int>> getCollectionCards(int userId) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    List<String> collection = sharedPreferences
            .getStringList(_collectionCardKey + userId.toString())
            ?.map((e) => e.toString())
            .toList() ??
        [];
    return collection.map((e) => int.tryParse(e) ?? 0).toList();
  }
}
