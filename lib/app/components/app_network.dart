import "package:dio/dio.dart";

const String url = "http://127.0.0.1:8000";

class AppNetwork {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: url,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
    ),
  );

  static Future<Response> registerUser({
    required String email,
    required String password,
    required String lastName,
    required String firstName,
    String? middleName,
    DateTime? date,
  }) async {
    final String dateOfBirth = date != null ? "${date.year}-${date.month}-${date.day}" : "";
    return await dio.post(
      "/api/auth/registration/",
      data: {
        "email": email,
        "password": password,
        "last_name": lastName,
        "first_name": firstName,
        "middle_name": middleName ?? "",
        "date_of_birth": dateOfBirth,
      },
    );
  }

  static Future<Response> loginUser({
    required String email,
    required String password,
  }) async {
    return await dio.post(
      "/api/auth/login/",
      data: {
        "username": email,
        "password": password,
      },
    );
  }

  static Future<Response> getUserInfo({required String token}) async {
    // Реализуй вызов API здесь
  }

  // В AppNetwork
  static Future<Response> addTransaction({
    required String token,
    required String type,
    required String category,
    required String title,
    required DateTime date,
    required double amount,
     String? description,
  }) async {
    // Реализуй вызов API здесь
  }

  static Future<Response> getTransactions({required String token}) async {
    // Реализуй вызов API здесь
  }

  static Future<Response> deleteTransaction({required String token, required String transactionId}) async {
    // Реализуй вызов API здесь
  }


}
