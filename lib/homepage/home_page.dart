import 'package:flutter/material.dart';
import 'package:flutter_home_widget/homepage/home_event.dart';
import 'package:flutter_home_widget/homepage/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHome extends ConsumerWidget with HomeState, HomeEvent {
  MyHome({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handleSubmit() {
      FocusManager.instance.primaryFocus?.unfocus(); // 키보드를 내립니다.
      searchCharacter(ref, _controller.text);
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
                onSubmitted: (_) => handleSubmit(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: handleSubmit,
                child: const Text('캐릭터 OCID 조회'),
              ),
              imageUrl(ref).when(
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
        ),
      ),
    );
  }
}
