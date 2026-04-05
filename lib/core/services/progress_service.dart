import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  static const _prefix = 'peds_module_complete_';

  static Future<void> markModuleComplete(String moduleId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('$_prefix$moduleId', true);
  }

  static Future<bool> isModuleComplete(String moduleId) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('$_prefix$moduleId') ?? false;
  }

  static Future<Set<String>> getCompletedModules() async {
    final prefs = await SharedPreferences.getInstance();
    final completed = <String>{};
    for (final key in prefs.getKeys()) {
      if (key.startsWith(_prefix) && prefs.getBool(key) == true) {
        completed.add(key.replaceFirst(_prefix, ''));
      }
    }
    return completed;
  }

  static Future<int> getCompletedCount() async {
    return (await getCompletedModules()).length;
  }
}
