import 'package:flutter/material.dart';

class StackExamplePage extends StatelessWidget {
  const StackExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 기본 Stack
            const Text(
              '기본 Stack (위젯 겹치기)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  Container(width: 200, height: 200, color: Colors.red),
                  Container(width: 150, height: 150, color: Colors.green),
                  Container(width: 100, height: 100, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // alignment 옵션
            const Text(
              'alignment 옵션',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.grey[200],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(width: 150, height: 150, color: Colors.red[200]),
                  Container(width: 100, height: 100, color: Colors.green[200]),
                  Container(width: 50, height: 50, color: Colors.blue[200]),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'alignment: Alignment.center',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Positioned 위젯
            const Text(
              'Positioned (위치 지정)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey[200],
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: const Text(
                        'top: 10\nleft: 10',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: const Text(
                        'top: 10\nright: 10',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: const Text(
                        'bottom: 10\nleft: 10',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.orange,
                      alignment: Alignment.center,
                      child: const Text(
                        'bottom: 10\nright: 10',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 실용 예제: 이미지 위에 텍스트
            const Text(
              '실용 예제: 이미지 위에 텍스트 오버레이',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://picsum.photos/400/200?random=10',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(color: Colors.grey[400]);
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 16,
                    left: 16,
                    child: Text(
                      'Stack으로 이미지 위에\n텍스트를 올릴 수 있습니다',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
