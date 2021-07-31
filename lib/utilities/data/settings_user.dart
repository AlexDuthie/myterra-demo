import 'package:MyTerra/models/sidebar.dart';

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
        textLink: "/Profile",
      ),
      SideBarText(
        settingsText: "View Favourites",
        textLink: "/Favourites",
      ),
      SideBarText(
        settingsText: "Profile Settings",
        textLink: "/ProfileSettings",
      ),
    ];
  }
}
