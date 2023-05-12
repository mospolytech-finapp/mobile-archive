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

  // В AppNetwork
  static Future<Response> addTransaction({
    required String token,
    required int category,
    required String title,
    required String date,
    required double amount,
    String? description,
    String? time,
  }) async {
    return await dio.post(
      '/api/finance/transactions',
      options: Options(headers: {"Authorization": 'Token $token'}),
      data: {
        {
          "name": title,
          "amount": amount,
          "date": date,
          "time": time,
          "description": description,
          "category": category,
        }
      },
    );
  }

  static Future<Response> editTransaction({
    required String token,
    required int id,
    int? category,
    String? title,
    String? date,
    double? amount,
    String? description,
    String? time,
  }) async {
    return await dio.patch(
      '/api/finance/transactions?$id',
      options: Options(headers: {"Authorization": 'Token $token'}),
      data: {
        {
          "name": title,
          "amount": amount,
          "date": date,
          "time": time,
          "description": description,
          "category": category,
        }
      },
    );
  }

  static Future<Response> getTransactions({required String token}) async {
    return await dio.get(
      '/api/finance/transactions',
      options: Options(headers: {"Authorization": 'Token $token'}),
    );
  }

  static Future<Response> deleteTransaction({required String token, required int id}) async {
    return await dio.delete(
      '/api/finance/transactions?$id',
      options: Options(headers: {"Authorization": 'Token $token'}),
    );
  }
}
