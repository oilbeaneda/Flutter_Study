import 'package:flutter/material.dart';

class PaddingExamplePage extends StatelessWidget {
  const PaddingExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding 없는 경우
            const Text(
              'Padding 없음',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.blue[100],
              child: Container(
                color: Colors.blue,
                child: const Text(
                  'Padding 없음',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // EdgeInsets.all
            const Text(
              'EdgeInsets.all(16) - 모든 방향 동일',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.blue[100],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  color: Colors.blue,
                  child: const Text(
                    'all(16)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // EdgeInsets.symmetric
            const Text(
              'EdgeInsets.symmetric - 대칭 여백',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 8,
                ),
                child: Container(
                  color: Colors.green,
                  child: const Text(
                    'horizontal: 32, vertical: 8',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // EdgeInsets.only
            const Text(
              'EdgeInsets.only - 개별 방향 지정',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.orange[100],
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 8,
                  right: 8,
                  bottom: 24,
                ),
                child: Container(
                  color: Colors.orange,
                  child: const Text(
                    'left: 40, top: 8\nright: 8, bottom: 24',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // EdgeInsets.fromLTRB
            const Text(
              'EdgeInsets.fromLTRB(left, top, right, bottom)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.purple[100],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 24, 40, 8),
                child: Container(
                  color: Colors.purple,
                  child: const Text(
                    'fromLTRB(8, 24, 40, 8)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Padding vs Container padding 비교
            const Text(
              'Padding 위젯 vs Container의 padding',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Padding 위젯 사용:',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.teal,
                alignment: Alignment.center,
                child: const Text(
                  'Padding 위젯으로 감싸기',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Container padding 사용:',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.teal[100],
              child: Container(
                height: 50,
                color: Colors.teal,
                alignment: Alignment.center,
                child: const Text(
                  'Container의 padding 속성',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
