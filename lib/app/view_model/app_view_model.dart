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
import 'package:core/connectivity/network_connectivity.dart';
import 'package:core/logger/app_logger.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/get_user_logged_in_status.dart';
import 'package:domain/usecases/set_device_token_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';
import 'package:notification/push_notification/push_notification_handler.dart';
import 'package:presentation/routes/app_router.gr.dart';
import 'package:presentation/routes/route_handler.dart';

import '../state/app_state.dart';

@singleton
class AppViewModel extends ViewModel<AppState> {
  final GetUserLoggedInStatusUseCase _loggedInStatusUseCase;
  final SetDeviceTokenUseCase _setDeviceTokenUseCase;
  final PushNotificationHandler _pushNotificationHandler;
  final NetworkConnectivity _networkConnectivity;

  AppViewModel(
    this._loggedInStatusUseCase,
    this._pushNotificationHandler,
    this._setDeviceTokenUseCase,
    this._networkConnectivity,
  ) : super(const AppState());

  Future<void> initialize() async {
    await _networkConnectivity.initialize();
    await _pushNotificationHandler.execute(
      onNotificationData: (notificationData) {
        _handleNotification(notificationData);
      },
      onDeviceToken: _setDeviceTokenUseCase.execute,
    );
  }

  void setTheme(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  void _handleNotification(Map<String, dynamic> notificationData) {
    AppLogger.log('Notification Data: $notificationData');

    String notificationType = notificationData['type'] ?? '';

    switch (notificationType) {
      case 'new_product':
        // Handle new product notification
        int productId = notificationData['product_id'];
        // String productName = notificationData['product_name'];
        RouteHandler.routeTo(
          ProductDetailRoute(
            productId: productId,
          ),
        );
        break;

      case 'promotion':
        // Handle promotion or discount notification
        String discountCode = notificationData['discount_code'];
        String expiryDate = notificationData['expiry_date'];
        AppLogger.log(
          'Limited-Time Offer! Use code $discountCode by $expiryDate.',
        );
        break;

      case 'order_status':
        // Handle order status update notification
        String orderId = notificationData['order_id'];
        String status = notificationData['status'];
        AppLogger.log('Order Status Update: Order ID $orderId is now $status.');
        if (_loggedInStatusUseCase.execute()) {
          RouteHandler.routeTo(const MyOrdersRoute());
        }
        break;

      case 'flash_sale':
        // Handle flash sale reminder
        String startTime = notificationData['start_time'];
        String endTime = notificationData['end_time'];
        AppLogger.log('Flash Sale Alert! Today from $startTime to $endTime.');
        break;

      case 'review_request':
        // Handle review request notification
        String reviewOrderId = notificationData['order_id'];
        String reviewProductId = notificationData['product_id'];
        AppLogger.log(
          'Share Your Feedback for Order ID $reviewOrderId, Product ID $reviewProductId.',
        );
        break;

      case 'out_of_stock':
        // Handle out-of-stock product notification
        String outOfStockProductId = notificationData['product_id'];
        String outOfStockProductName = notificationData['product_name'];
        AppLogger.log(
          'Product Out of Stock: ID $outOfStockProductId, Name: $outOfStockProductName.',
        );
        break;

      default:
        AppLogger.errorLog('Received an unrecognized notification type.');
    }
  }
}
