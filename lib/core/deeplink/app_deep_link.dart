import 'package:app_links/app_links.dart';

import 'deep_link.dart';

class AppDeeplink extends Deeplink {
  final AppLinks _appLinks = AppLinks();

  @override
  Future<String> createDeepLink(String path, Map<String, dynamic>? value,
      {bool? short}) {
    throw UnimplementedError();
  }

  @override
  Future<Uri?>? initDeepLinks() async {
    final uri = await _appLinks.getInitialAppLink();
    return uri;
  }

  Future<Uri?>? getLatestAppLink() async {
    final getLatestAppLink = await _appLinks.getLatestAppLink();
    return getLatestAppLink;
  }

  @override
  void listenToDeepLinks(Function(Uri uri) onDeepLinkCalled) {
    _appLinks.uriLinkStream.forEach((uri) {
      onDeepLinkCalled(uri);
    });
  }
}
