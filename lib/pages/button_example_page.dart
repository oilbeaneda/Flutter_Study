import 'package:flutter/material.dart';

class ButtonExamplePage extends StatelessWidget {
  const ButtonExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button 위젯 3종')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── ElevatedButton ──
            const Text(
              '1. ElevatedButton (강조 버튼)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('기본 ElevatedButton'),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('아이콘 포함'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('스타일 커스텀'),
            ),
            const SizedBox(height: 8),
            const ElevatedButton(
              onPressed: null, // null이면 비활성화
              child: Text('비활성화 상태'),
            ),
            const SizedBox(height: 24),

            // ── TextButton ──
            const Text(
              '2. TextButton (텍스트 버튼)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('기본 TextButton'),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.link),
              label: const Text('아이콘 포함'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('빨간색 커스텀'),
            ),
            const SizedBox(height: 24),

            // ── OutlinedButton ──
            const Text(
              '3. OutlinedButton (테두리 버튼)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text('기본 OutlinedButton'),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download),
              label: const Text('아이콘 포함'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: const BorderSide(color: Colors.green, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('초록색 커스텀'),
            ),
            const SizedBox(height: 24),

            // ── 3종 비교 ──
            const Divider(),
            const SizedBox(height: 8),
            const Text(
              '3종 비교',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined'),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // ── 전체 너비 버튼 ──
            const Text(
              '전체 너비 버튼',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('전체 너비 ElevatedButton'),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('전체 너비 OutlinedButton'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
