import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

const baseUrl = 'https://open.api.nexon.com/maplestory/v1';

Future<String> getOCID({required String characterName}) async {
  if (dotenv.env['API_KEY'] == null) {
    throw Exception('API KEY가 존재하지 않습니다.');
  }
  print('뭐야있네');
  try {
    final response = await dio.get('$baseUrl/id',
        queryParameters: {'character_name': characterName},
        options: Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));
    print(response);
    if (response.statusCode == 200) {
      return response.data['ocid'].toString();
    }
  } on DioException catch (e) {
    print(e);
    throw Exception('Failed to load data');
  }

  throw Exception('Failed to load data');
}

Future<Map<String, dynamic>> getCharacterInfo(
    {required String characterName}) async {
  print('api 첫줄');
  final ocid = await getOCID(characterName: characterName);
  print('api 두번째줄: $ocid');
  final characterInfo = await dio.get('$baseUrl/character/basic',
      queryParameters: {'ocid': ocid},
      options: Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));
  
    print('api 세번째줄: ${characterInfo.data}');
  if (characterInfo.statusCode == 200) {
    return characterInfo.data;
  } else {
    throw Exception('Failed to load data');
  }
}
