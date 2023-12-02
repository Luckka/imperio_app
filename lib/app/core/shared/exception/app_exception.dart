abstract class AppException {
  final String message;
  final StackTrace? strackTrace;

  AppException({required this.message, required this.strackTrace});


}