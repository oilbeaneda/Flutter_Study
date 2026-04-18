import 'package:flutter/material.dart';

class TextExamplePage extends StatelessWidget {
  const TextExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 기본 텍스트
            const Text('기본 텍스트'),
            const SizedBox(height: 16),

            // 스타일이 적용된 텍스트
            const Text(
              '굵은 텍스트 (Bold)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // 크기와 색상 변경
            const Text(
              '크기 24, 파란색 텍스트',
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
            const SizedBox(height: 16),

            // 이탤릭
            const Text(
              '이탤릭 텍스트',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),

            // 밑줄
            const Text(
              '밑줄이 있는 텍스트',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            const SizedBox(height: 16),

            // 취소선
            const Text(
              '취소선이 있는 텍스트',
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(height: 16),

            // letterSpacing, wordSpacing
            const Text(
              '자간이 넓은 텍스트',
              style: TextStyle(letterSpacing: 4.0),
            ),
            const SizedBox(height: 16),

            // maxLines & overflow
            const Text(
              '이 텍스트는 최대 2줄까지만 표시됩니다. 그 이상은 말줄임표(...)로 처리됩니다. '
              'Flutter의 Text 위젯은 다양한 속성을 통해 텍스트를 제어할 수 있습니다. '
              'maxLines와 overflow 속성을 함께 사용하면 긴 텍스트를 깔끔하게 처리할 수 있습니다.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),

            // textAlign
            const SizedBox(
              width: double.infinity,
              child: Text(
                '가운데 정렬 텍스트',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),

            // Theme 스타일 사용
            Text(
              'Theme headlineMedium 스타일',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Theme bodyLarge 스타일',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Theme labelSmall 스타일',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
