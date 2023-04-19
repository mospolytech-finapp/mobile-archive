import "package:dio/dio.dart";

const String url = "127.0.0.1:8000";

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
    String? dateOfBirth = date != null ? "${date.year}-${date.month}-${date.day}" : "";
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
}