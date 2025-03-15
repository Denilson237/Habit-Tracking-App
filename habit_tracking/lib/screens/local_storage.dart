import 'package:shared_preferences/shared_preferences.dart';

// Function to save user profile data
Future<void> saveUserProfile(Map<String, dynamic> profile) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userProfile', jsonEncode(profile));
}

// Function to retrieve user profile data
Future<Map<String, dynamic>?> getUserProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final profileString = prefs.getString('userProfile');
    return profileString != null ? jsonDecode(profileString) : null;
}
