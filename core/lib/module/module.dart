abstract class Module {
  Future<void> registerDependencies();

  void close() {}
}
