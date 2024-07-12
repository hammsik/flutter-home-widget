import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

const baseUrl = 'https://open.api.nexon.com/maplestory/v1';

Future<String> getOCID({required String characterName}) async {
  if (dotenv.env['API_KEY'] == null) {
    throw Exception('API KEY가 존재하지 않습니다.');
  }

  Response response = await dio.get('$baseUrl/id',
      queryParameters: {'character_name': characterName},
      options: Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));

  if (response.statusCode == 200) {
    return response.data['ocid'].toString();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<List<String>> getCharacterInfo({required String characterName}) {
  Future<String> ocid = getOCID(characterName: characterName);
  
}


