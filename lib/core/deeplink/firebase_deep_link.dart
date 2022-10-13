import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:package_info/package_info.dart';

import 'deep_link.dart';

class FirebaseDeepLink extends Deeplink {
  final FirebaseDynamicLinks _firebaseDynamicLinks;

  FirebaseDeepLink(this._firebaseDynamicLinks);

  @override
  Future<Uri?>? initDeepLinks() async {
    final data = await _firebaseDynamicLinks.getInitialLink();
    final deepLink = data?.link;
    return deepLink;
  }

  @override
  void listenToDeepLinks(Function(Uri uri) onDeepLinkCalled) {
    _firebaseDynamicLinks.onLink.listen((PendingDynamicLinkData? dynamicLink) {
      final deepLink = dynamicLink?.link;

      if (deepLink != null) {
        onDeepLinkCalled(deepLink);
      }
    });
  }

  @override
  Future<String> createDeepLink(String path, Map<String, dynamic>? value, {bool? short}) async {
    final packageInfo = await PackageInfo.fromPlatform();
    var packageName = packageInfo.packageName;
    var appStoreId = "";
    var pageLink = 'https://fluttercommerce.page.link';
    var androidMinimumVersion = 0;
    var iosMinimumVersion = 0;
    final parameters = DynamicLinkParameters(
      uriPrefix: pageLink,
      link: Uri(
        scheme: 'http',
        host: 'fluttercommerce.io',
        path: '$path',
        queryParameters: value,
      ),
      androidParameters: AndroidParameters(
        packageName: packageName,
        minimumVersion: androidMinimumVersion,
      ),
      iosParameters: IOSParameters(
        bundleId: packageName,
        appStoreId: appStoreId,
        minimumVersion: '$iosMinimumVersion',
      ),
    );

    Uri url;
    if (short ?? false) {
      final shortLink = await _firebaseDynamicLinks.buildShortLink(
        parameters,
      );
      url = shortLink.shortUrl;
    } else {
      url = await _firebaseDynamicLinks.buildLink(parameters);
    }
    return url.toString();
  }
}
