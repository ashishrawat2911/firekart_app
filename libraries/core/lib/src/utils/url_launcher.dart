import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  UrlLauncher();

  static Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future launchEmail(String email) async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch';
    }
  }

  static Future launchCaller(String callerNumber) async {
    if (await canLaunch("tel:$callerNumber")) {
      await launch("tel:$callerNumber");
    } else {
      throw 'Could not launch $callerNumber';
    }
  }

  static Future<void> openMap(double latitude, double longitude) async {
    final googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
