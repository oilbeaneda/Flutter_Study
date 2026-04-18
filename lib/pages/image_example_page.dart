import 'package:flutter/material.dart';

class ImageExamplePage extends StatelessWidget {
  const ImageExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 네트워크 이미지
            const Text(
              'Image.network (네트워크 이미지)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Image.network(
              'https://picsum.photos/300/200',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  height: 200,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 200,
                  child: Center(child: Icon(Icons.error, size: 48)),
                );
              },
            ),
            const SizedBox(height: 24),

            // BoxFit 옵션들
            const Text(
              'BoxFit 옵션 비교',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildFitExample('BoxFit.cover', BoxFit.cover),
            const SizedBox(height: 8),
            _buildFitExample('BoxFit.contain', BoxFit.contain),
            const SizedBox(height: 8),
            _buildFitExample('BoxFit.fill', BoxFit.fill),
            const SizedBox(height: 8),
            _buildFitExample('BoxFit.fitWidth', BoxFit.fitWidth),
            const SizedBox(height: 24),

            // 둥근 이미지 (ClipRRect)
            const Text(
              'ClipRRect (둥근 모서리 이미지)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://picsum.photos/300/200?random=2',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),

            // 원형 이미지 (ClipOval)
            const Text(
              'ClipOval (원형 이미지)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Center(
              child: ClipOval(
                child: Image.network(
                  'https://picsum.photos/150/150?random=3',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // CircleAvatar
            const Text(
              'CircleAvatar (프로필 이미지)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/100/100?random=4',
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Text('AB', style: TextStyle(color: Colors.white)),
                ),
                CircleAvatar(radius: 30, child: Icon(Icons.person)),
              ],
            ),
            const SizedBox(height: 24),

            // FadeInImage (로딩 시 페이드 효과)
            const Text(
              'FadeInImage (페이드인 효과)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/flutter-logo.png',
              image: 'https://picsum.photos/300/200?random=5',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
              imageErrorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('이미지 로드 실패\n(placeholder 에셋 필요)'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFitExample(String label, BoxFit fit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Image.network(
            'https://picsum.photos/400/100?random=1',
            fit: fit,
          ),
        ),
      ],
    );
  }
}
