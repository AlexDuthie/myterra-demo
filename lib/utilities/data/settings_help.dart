import 'package:mobile_app/models/sidebar.dart';

class SideBarHelp {
  static List<SideBarText> getAppSettings() {
    return [
      SideBarText(
        settingsText: "Theme Settings",
        textLink: "",
      ),
      SideBarText(
        settingsText: "Notification Settings",
        textLink: "",
      ),
      SideBarText(
        settingsText: "FAQ",
        textLink: "",
      ),
      SideBarText(
        settingsText: "Contact Us",
        textLink: "",
      ),
    ];
  }
}
