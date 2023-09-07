package com.app.firekart

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingBackgroundService;

class MainActivity : FlutterActivity() {
    @Override
    fun onCreate() {
        super.onCreate()
        FlutterFirebaseMessagingBackgroundService.setPluginRegistrant(this)
    }
}
