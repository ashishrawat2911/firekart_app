import 'package:firebase_performance/firebase_performance.dart';
import 'package:injectable/injectable.dart';

import '../performance_moniter.dart';

@Singleton(as: PerformanceMonitor)
class FirebasePerformanceMonitor extends PerformanceMonitor {
  final FirebasePerformance performance;

  FirebasePerformanceMonitor(this.performance);

  final _traceKeys = <String, Trace>{};

  @override
  Future<void> startEvent(
    String eventName, {
    Map<String, String>? properties,
  }) async {
    final trace = performance.newTrace(eventName);
    _traceKeys[eventName] = trace;
    await trace.start();
    properties?.forEach(trace.putAttribute);
  }

  @override
  Future<void> endEvent(
    String eventName, {
    Map<String, String>? properties,
  }) async {
    final trace = _traceKeys[eventName];

    if (trace == null) {
      throw Exception('Event Never Started');
    }
    properties?.forEach(trace.putAttribute);
    await trace.stop();
  }

  @override
  Future<void> endScreenEvent(
    String eventName, {
    Map<String, String>? properties,
  }) async {
    await endEvent(eventName, properties: properties);
  }

  @override
  Future<void> startScreenEvent(
    String eventName, {
    Map<String, String>? properties,
  }) async {
    await startEvent(
      eventName,
      properties: properties,
    );
  }
}
