import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  UrlLauncher();

  static Future launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
