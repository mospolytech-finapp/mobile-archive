import "package:dio/dio.dart";

const String url = "https://zlp.nejern.ru";

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
    final String dateOfBirth = date != null ? "${date.toIso8601String().split('T').first}" : "";

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
      "/api/auth/token/",
      data: {
        "username": email,
        "password": password,
      },
    );
  }
}
