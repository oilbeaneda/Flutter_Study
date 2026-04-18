import 'package:flutter/material.dart';

class ContainerExamplePage extends StatelessWidget {
  const ContainerExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 기본 Container
            const Text(
              '기본 Container (크기 + 색상)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'width: 200\nheight: 100',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // padding & margin
            const Text(
              'padding & margin',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey[300],
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(24),
                color: Colors.blue,
                child: const Text(
                  'margin: 16 (바깥 여백)\npadding: 24 (안쪽 여백)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // BoxDecoration
            const Text(
              'BoxDecoration (테두리, 둥근 모서리)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: const Text('둥근 모서리 + 테두리'),
            ),
            const SizedBox(height: 16),

            // BoxShadow
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Text('그림자 효과 (BoxShadow)'),
            ),
            const SizedBox(height: 24),

            // Gradient
            const Text(
              'Gradient (그라데이션)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'LinearGradient',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const RadialGradient(
                  colors: [Colors.orange, Colors.red],
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'RadialGradient',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),

            // alignment
            const Text(
              'alignment (자식 위젯 정렬)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildAlignmentBox('topLeft', Alignment.topLeft),
                _buildAlignmentBox('center', Alignment.center),
                _buildAlignmentBox('bottomRight', Alignment.bottomRight),
              ],
            ),
            const SizedBox(height: 24),

            // Transform
            const Text(
              'transform (변환)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Center(
              child: Container(
                width: 100,
                height: 100,
                transform: Matrix4.rotationZ(0.1),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: const Text(
                  '회전!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlignmentBox(String label, Alignment alignment) {
    return Container(
      width: 110,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey),
      ),
      alignment: alignment,
      child: Text(label, style: const TextStyle(fontSize: 11)),
    );
  }
}
