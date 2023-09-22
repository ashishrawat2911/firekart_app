/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:app_links/app_links.dart';
import 'package:core/deeplink/deep_link.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppDeeplink extends Deeplink {
  final AppLinks _appLinks = AppLinks();

  @override
  Future<String> createDeepLink(
    String path,
    Map<String, dynamic>? value, {
    bool? short,
  }) {
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
