import 'package:flutter_home_widget/models/character_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'character_search_provider.g.dart';

final _dio = Dio();
const baseUrl = 'https://open.api.nexon.com/maplestory/v1';

@Riverpod(keepAlive: false)
Future<CharacterInfo> searchCharacter(SearchCharacterRef ref,
    {required String characterName}) async {
      print('api get 진입 $characterName');
  if (dotenv.env['API_KEY'] == null) {
    throw (AsyncValue.error('API KEY가 존재하지 않습니다.', StackTrace.current));
  }

  try {
    // OCID 가져오기
    final ocidResponse = await _dio.get('$baseUrl/id',
        queryParameters: {'character_name': characterName},
        options: Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));

    if (ocidResponse.statusCode != 200) {
      throw Exception('Failed to load OCID data');
    }

    final ocid = ocidResponse.data['ocid'].toString();
    // 캐릭터 정보 가져오기
    final characterInfoResponse = await _dio.get('$baseUrl/character/basic',
        queryParameters: {'ocid': ocid},
        options: Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));

    if (characterInfoResponse.statusCode != 200) {
      throw Exception('Failed to load character information data');
    }

    print('데이터 로드 완료 ${characterInfoResponse.data}');
    print('데이터 날것 $characterInfoResponse');
    // final json = jsonDecode(characterInfoResponse) as Map<String, dynamic>;
    return CharacterInfo.fromJson(characterInfoResponse.data);
  } on DioException catch (e) {
    String errorMessage;
    if (e.response != null) {
      if (e.response!.statusCode! ~/ 100 == 4) {
        errorMessage = '유효하지 않은 요청입니다.';
      } else {
        errorMessage =
            '서버 에러: ${e.response?.statusCode} - ${e.response?.statusMessage}';
      }
    } else {
      errorMessage = '네트워크 연결을 확인해주세요.';
    }
    print(errorMessage);
    print(e.response);
    throw (AsyncValue.error(errorMessage, e.stackTrace));
  } catch (e, stack) {
    print('알 수 없는 에러 발생: $e');
    throw (AsyncValue.error('알 수 없는 에러 발생: $e', stack));
  }
}
