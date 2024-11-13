class AuthState {
  final dynamic model;
  final bool isLoading;
  final String? errorMessage;

  AuthState({this.model, this.isLoading = false, this.errorMessage});
}
