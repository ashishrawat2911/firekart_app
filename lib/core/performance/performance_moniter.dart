/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
abstract class PerformanceMonitor {
  Future<void> startEvent(
    String eventName, {
    Map<String, String>? properties,
  });

  Future<void> endEvent(
    String eventName, {
    Map<String, String>? properties,
  });

  Future<void> startScreenEvent(
    String eventName, {
    Map<String, String>? properties,
  });

  Future<void> endScreenEvent(
    String eventName, {
    Map<String, String>? properties,
  });
}
