abstract class Deeplink {
  Future<String> createDeepLink(
    String path,
    Map<String, dynamic>? value, {
    bool? short,
  });

  Future<Uri?>? initDeepLinks();

  void listenToDeepLinks(Function(Uri uri) onDeepLinkCalled);
}
