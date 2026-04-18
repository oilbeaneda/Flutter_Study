import 'package:flutter/material.dart';

class ColumnExamplePage extends StatelessWidget {
  const ColumnExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 기본 Column
            const Text(
              '기본 Column (세로 배치)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              child: const Column(
                children: [
                  _ColorBox(color: Colors.red, label: '첫 번째'),
                  _ColorBox(color: Colors.green, label: '두 번째'),
                  _ColorBox(color: Colors.blue, label: '세 번째'),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // MainAxisAlignment 옵션
            const Text(
              'MainAxisAlignment (주축 정렬)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildMainAxisExample('start', MainAxisAlignment.start),
            const SizedBox(height: 8),
            _buildMainAxisExample('center', MainAxisAlignment.center),
            const SizedBox(height: 8),
            _buildMainAxisExample('end', MainAxisAlignment.end),
            const SizedBox(height: 8),
            _buildMainAxisExample('spaceBetween', MainAxisAlignment.spaceBetween),
            const SizedBox(height: 8),
            _buildMainAxisExample('spaceAround', MainAxisAlignment.spaceAround),
            const SizedBox(height: 8),
            _buildMainAxisExample('spaceEvenly', MainAxisAlignment.spaceEvenly),
            const SizedBox(height: 24),

            // CrossAxisAlignment 옵션
            const Text(
              'CrossAxisAlignment (교차축 정렬)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildCrossAxisExample('start', CrossAxisAlignment.start),
            const SizedBox(height: 8),
            _buildCrossAxisExample('center', CrossAxisAlignment.center),
            const SizedBox(height: 8),
            _buildCrossAxisExample('end', CrossAxisAlignment.end),
            const SizedBox(height: 8),
            _buildCrossAxisExample('stretch', CrossAxisAlignment.stretch),
          ],
        ),
      ),
    );
  }

  Widget _buildMainAxisExample(String label, MainAxisAlignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          width: double.infinity,
          height: 150,
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: alignment,
            children: const [
              _SmallBox(color: Colors.red),
              _SmallBox(color: Colors.green),
              _SmallBox(color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCrossAxisExample(String label, CrossAxisAlignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: alignment,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _SmallBox(color: Colors.red),
              _SmallBox(color: Colors.green),
              _SmallBox(color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}

class _ColorBox extends StatelessWidget {
  final Color color;
  final String label;

  const _ColorBox({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      color: color,
      alignment: Alignment.center,
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}

class _SmallBox extends StatelessWidget {
  final Color color;

  const _SmallBox({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(width: 40, height: 25, color: color);
  }
}
