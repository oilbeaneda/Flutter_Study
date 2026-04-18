import 'package:flutter/material.dart';

class SizedBoxExamplePage extends StatelessWidget {
  const SizedBoxExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 고정 크기 지정
            const Text(
              '고정 크기 지정',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 200,
              height: 100,
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  'width: 200\nheight: 100',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 간격 (spacer)으로 사용
            const Text(
              '간격(Spacer)으로 사용',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text('위젯 1', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 16), // 세로 간격 16
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text('SizedBox(height: 16) 간격', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 32), // 세로 간격 32
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text('SizedBox(height: 32) 간격', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Row에서 가로 간격
            const Text(
              'Row에서 가로 간격으로 사용',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(width: 60, height: 60, color: Colors.red),
                const SizedBox(width: 8),
                Container(width: 60, height: 60, color: Colors.green),
                const SizedBox(width: 24),
                Container(width: 60, height: 60, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '빨-8px-초-24px-파',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // SizedBox.expand
            const Text(
              'SizedBox.expand (부모 크기만큼 확장)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 100,
              child: SizedBox.expand(
                child: Container(
                  color: Colors.purple,
                  alignment: Alignment.center,
                  child: const Text(
                    'SizedBox.expand\n부모의 전체 크기를 채움',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // SizedBox.shrink
            const Text(
              'SizedBox.shrink (크기 0)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(width: 60, height: 60, color: Colors.red),
                const SizedBox.shrink(), // 공간 차지 안 함
                Container(width: 60, height: 60, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'SizedBox.shrink()은 공간을 차지하지 않음\n조건부로 위젯을 숨길 때 유용',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // width만 지정 (높이는 자식에 맞춤)
            const Text(
              'width만 또는 height만 지정',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: Container(
                color: Colors.teal,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'SizedBox(width: double.infinity)\n너비만 최대로, 높이는 자식에 맞춤',
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
