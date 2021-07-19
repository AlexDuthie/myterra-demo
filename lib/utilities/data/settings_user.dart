import 'package:mobile_app/models/sidebar.dart';

class SideBarUser {
  static List<SideBarText> getUserSettings() {
    return [
      SideBarText(
        settingsText: "Register",
        textLink: "",
      ),
      SideBarText(
        settingsText: "Login",
        textLink: "",
      ),
      SideBarText(
        settingsText: "Logout",
        textLink: "",
      ),
      SideBarText(
        settingsText: "View Profile",
        textLink: "",
      ),
      SideBarText(
        settingsText: "View Favourites",
        textLink: "/Favourites",
      ),
      SideBarText(
        settingsText: "Profile Settings",
        textLink: "",
      ),
    ];
  }
}
