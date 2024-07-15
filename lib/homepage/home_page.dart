import 'package:flutter/material.dart';
import 'package:flutter_home_widget/homepage/home_event.dart';
import 'package:flutter_home_widget/homepage/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:home_widget/home_widget.dart';

const String androidWidgetname = 'NewHomeWidget';

void updateHomeWidget(String characterName, String characterImageUrl) {
  HomeWidget.saveWidgetData<String>('characterName', characterName);
  HomeWidget.saveWidgetData<String>('characterImageUrl', characterImageUrl);
  HomeWidget.updateWidget(
    androidName: androidWidgetname,
  );
}

class MyHome extends ConsumerStatefulWidget {
  const MyHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomeState();
}

class _MyHomeState extends ConsumerState<MyHome> with HomeState, HomeEvent {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    updateHomeWidget('토레타', 'https://이온보충쓰');
  }

  @override
  Widget build(BuildContext context) {
    void handleSubmit() {
      FocusManager.instance.primaryFocus?.unfocus(); // 키보드를 내립니다.
      searchCharacter(ref, _controller.text);
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Updating home screen widget...'),
            ),
          );
          updateHomeWidget('버튼누름요', 'wow');
        },
        label: const Text('Update Homescreen'),
      ),
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
    );
  }
}
