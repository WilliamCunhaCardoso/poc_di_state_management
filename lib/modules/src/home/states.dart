abstract class ApplicationState<T> {}

class LoadingState extends ApplicationState {}

class SuccessState<T> extends ApplicationState {
  final T? data;

  SuccessState(this.data);
}

class ErrorState<T> extends ApplicationState {
  final T error;

  ErrorState(this.error);
}

class InitialState<T> extends ApplicationState {
  final T? data;

  InitialState(this.data);
}
