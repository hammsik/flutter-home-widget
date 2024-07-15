import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_home_widget/api.dart';
import 'package:flutter_home_widget/providers/character_info_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrl = ref.watch(characterImageProvider);

    void handleSubmit(String characterName) {
      print('캐릭터 이름: $characterName');
      ref
          .read(characterImageProvider.notifier)
          .getCharacterInfo(characterName: characterName);
    }

    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '캐릭터 이름 입력',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              handleSubmit(_controller.text);
            },
            child: const Text('캐릭터 OCID 조회'),
          ),
          imageUrl.when(
            data: (url) =>
                url == '' ? const SizedBox.shrink() : Image.network(url),
            loading: () => Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blueGrey,
              ),
            ),
            error: (error, stack) => Text('Error: $error'),
          ),
        ],
      ),
    )));
  }
}
