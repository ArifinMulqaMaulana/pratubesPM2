import 'package:get/get.dart';
import 'package:iciscoy/users/model/user.dart';
import 'package:iciscoy/users/userPreferences/user_preferences.dart';

class CurrentUser extends GetxController {
  Rx<User> _currentUser = User(0, '', '', '').obs;
  User get user => _currentUser.value;

  getUserInfo() async {
    User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUserInfo();
    _currentUser.value = getUserInfoFromLocalStorage!;
  }
}
