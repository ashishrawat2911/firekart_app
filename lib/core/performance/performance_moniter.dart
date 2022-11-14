abstract class PerformanceMonitor {
  Future<void> startEvent(
    String eventName, {
    Map<String, dynamic>? properties,
  });

  Future<void> endEvent(
    String eventName, {
    Map<String, dynamic>? properties,
  });

  Future<void> startScreenEvent(
    String eventName, {
    Map<String, dynamic>? properties,
  });

  Future<void> endScreenEvent(
    String eventName, {
    Map<String, dynamic>? properties,
  });
}
