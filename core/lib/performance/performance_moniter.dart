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
