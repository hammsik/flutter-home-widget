import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'character_info_provider.g.dart';

const baseUrl = 'https://open.api.nexon.com/maplestory/v1';

@riverpod
class CharacterImage extends _$CharacterImage {
  final _dio = Dio();

  @override
  FutureOr<String> build() {
    print('build');
    return '';
  }

  Future<void> getCharacterInfo({required String characterName}) async {
    state = const AsyncValue.loading();

    if (dotenv.env['API_KEY'] == null) {
      state = AsyncValue.error('API KEY가 존재하지 않습니다.', StackTrace.current);
      return;
    }

    try {
      // OCID 가져오기
      final ocidResponse = await _dio.get('$baseUrl/id',
          queryParameters: {'character_name': characterName},
          options:
              Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));

      if (ocidResponse.statusCode != 200) {
        throw Exception('Failed to load OCID data');
      }

      final ocid = ocidResponse.data['ocid'].toString();

      // 캐릭터 정보 가져오기
      final characterInfoResponse = await _dio.get('$baseUrl/character/basic',
          queryParameters: {'ocid': ocid},
          options:
              Options(headers: {'x-nxopen-api-key': dotenv.env['API_KEY']}));

      if (characterInfoResponse.statusCode != 200) {
        throw Exception('Failed to load character information data');
      }

      print('데이터 로드 완료 ${characterInfoResponse.data}');

      // 여기서 characterInfoResponse.data에서 이미지 URL을 추출하여 상태를 업데이트해야 합니다.
      // 예를 들어:
      final imageUrl = characterInfoResponse.data['character_image'] ?? '';
      state = AsyncValue.data(imageUrl);
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
      state = AsyncValue.error(errorMessage, e.stackTrace);
    } catch (e, stack) {
      state = AsyncValue.error('알 수 없는 에러 발생: $e', stack);
    }
  }
}
