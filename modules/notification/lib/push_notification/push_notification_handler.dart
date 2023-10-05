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

abstract class PushNotificationHandler {
  Future<void> execute({
    required Function(Map<String, dynamic> notificationData) onNotificationData,
    required Function(String token) onDeviceToken,
  });

  void sendOTPNotification(String title, String body);
}
