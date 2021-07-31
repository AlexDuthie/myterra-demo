import 'package:MyTerra/models/sidebar.dart';

class SideBarHelp {
  static List<SideBarText> getAppSettings() {
    return [
      SideBarText(
        settingsText: "Theme Settings",
        textLink: "/Theme",
      ),
      SideBarText(
        settingsText: "Notification Settings",
        textLink: "/Notification",
      ),
      SideBarText(
        settingsText: "FAQ",
        textLink: "/FAQ",
      ),
      SideBarText(
        settingsText: "Contact Us",
        textLink: "/Contact",
      ),
    ];
  }
}
