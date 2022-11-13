abstract class Analytics {
  void logEvent({required String name, required Object value});

  void logEventWithParam(
      {required String name, Map<String, Object?>? parameters});
}
