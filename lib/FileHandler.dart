import 'package:shared_preferences/shared_preferences.dart';

class FileHandler {
  void writeKeyValue(String title, int exerciseValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(title, exerciseValue);
  }

  Future<int> readKeyValue(String exerciseTitle) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      return preferences.getInt(exerciseTitle) ?? 0;
    } catch (e) {
      return 0;
    }
  }
}
