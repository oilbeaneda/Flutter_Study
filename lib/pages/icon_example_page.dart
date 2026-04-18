import 'package:flutter/material.dart';

class IconExamplePage extends StatelessWidget {
  const IconExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon 위젯')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 기본 아이콘
            const Text('기본 아이콘', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 16),
                Icon(Icons.star),
                SizedBox(width: 16),
                Icon(Icons.favorite),
                SizedBox(width: 16),
                Icon(Icons.settings),
              ],
            ),
            const SizedBox(height: 24),

            // 크기가 다른 아이콘
            const Text(
              '크기가 다른 아이콘',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.star, size: 16),
                SizedBox(width: 8),
                Icon(Icons.star, size: 24),
                SizedBox(width: 8),
                Icon(Icons.star, size: 32),
                SizedBox(width: 8),
                Icon(Icons.star, size: 48),
                SizedBox(width: 8),
                Icon(Icons.star, size: 64),
              ],
            ),
            const SizedBox(height: 24),

            // 색상이 다른 아이콘
            const Text(
              '색상이 다른 아이콘',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 16),
                Icon(Icons.favorite, color: Colors.blue),
                SizedBox(width: 16),
                Icon(Icons.favorite, color: Colors.green),
                SizedBox(width: 16),
                Icon(Icons.favorite, color: Colors.orange),
                SizedBox(width: 16),
                Icon(Icons.favorite, color: Colors.purple),
              ],
            ),
            const SizedBox(height: 24),

            // 예시 아이콘들
            const Text('아이콘 예시', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _buildIconLabel(Icons.search, 'search'),
                _buildIconLabel(Icons.add, 'add'),
                _buildIconLabel(Icons.delete, 'delete'),
                _buildIconLabel(Icons.edit, 'edit'),
                _buildIconLabel(Icons.share, 'share'),
                _buildIconLabel(Icons.person, 'person'),
                _buildIconLabel(Icons.email, 'email'),
                _buildIconLabel(Icons.phone, 'phone'),
                _buildIconLabel(Icons.camera_alt, 'camera'),
                _buildIconLabel(Icons.notifications, 'notifications'),
                _buildIconLabel(Icons.shopping_cart, 'cart'),
                _buildIconLabel(Icons.thumb_up, 'thumb_up'),
              ],
            ),
            const SizedBox(height: 24),

            // IconButton
            const Text(
              'IconButton (터치 가능한 아이콘)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildIconLabel(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
