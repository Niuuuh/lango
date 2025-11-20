import 'dart:async';

class Debouncer {
  Debouncer(this.delay);

  final Duration delay;
  Timer? _timer;
  Completer<void>? _completer;

  Future<void> debounce() {
    _timer?.cancel();
    _completer ??= Completer<void>();

    _timer = Timer(delay, () {
      _completer?.complete();
      _completer = null;
    });

    return _completer!.future;
  }

  void cancel() {
    _timer?.cancel();
    _completer?.complete();
    _completer = null;
  }
}
