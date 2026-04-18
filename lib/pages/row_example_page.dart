import 'package:flutter/material.dart';

class RowExamplePage extends StatelessWidget {
  const RowExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 기본 Row
            const Text(
              '기본 Row (가로 배치)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              child: Row(
                children: [
                  _colorBox(Colors.red, '첫 번째'),
                  _colorBox(Colors.green, '두 번째'),
                  _colorBox(Colors.blue, '세 번째'),
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
            _buildMainAxisExample(
              'spaceBetween',
              MainAxisAlignment.spaceBetween,
            ),
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
            const SizedBox(height: 24),

            // Expanded
            const Text(
              'Expanded (남은 공간 채우기)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey[200],
              height: 50,
              child: Row(
                children: [
                  Container(width: 60, color: Colors.red, height: 50),
                  Expanded(child: Container(color: Colors.green, height: 50)),
                  Container(width: 60, color: Colors.blue, height: 50),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '빨강(60) + 초록(Expanded) + 파랑(60)',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 16),

            // Expanded flex 비율
            const Text(
              'Expanded flex 비율',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.grey[200],
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.red, height: 50),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.green, height: 50),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue, height: 50),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'flex 1 : 2 : 1 비율',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _colorBox(Color color, String label) {
    return Container(
      width: 80,
      height: 40,
      color: color,
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 12),
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
          height: 50,
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: alignment,
            children: [
              Container(width: 40, height: 40, color: Colors.red),
              Container(width: 40, height: 40, color: Colors.green),
              Container(width: 40, height: 40, color: Colors.blue),
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
          height: 80,
          color: Colors.grey[200],
          child: Row(
            crossAxisAlignment: alignment,
            children: [
              Container(width: 40, height: 30, color: Colors.red),
              Container(width: 40, height: 50, color: Colors.green),
              Container(width: 40, height: 40, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
