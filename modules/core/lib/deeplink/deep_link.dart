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
abstract class Deeplink {
  Future<String> createDeepLink(
    String path,
    Map<String, dynamic>? value, {
    bool? short,
  });

  Future<Uri?>? initDeepLinks();

  void listenToDeepLinks(Function(Uri uri) onDeepLinkCalled);
}
