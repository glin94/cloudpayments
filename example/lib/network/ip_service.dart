import 'package:dio/dio.dart';

class IpService {
  final Dio httpClient = Dio();

  Future<String> getIp() async {
    final response = await httpClient.get('https://api.ipify.org');
    return response.data;
  }
}
