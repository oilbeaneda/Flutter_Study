import 'package:flutter/material.dart';

class GridViewExamplePage extends StatelessWidget {
  const GridViewExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GridView 위젯'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'count'),
              Tab(text: 'extent'),
              Tab(text: 'builder'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _CountGridView(),
            _ExtentGridView(),
            _BuilderGridView(),
          ],
        ),
      ),
    );
  }
}

// GridView.count - 열 개수 지정
class _CountGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(12, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.primaries[index % Colors.primaries.length],
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            '${index + 1}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }),
    );
  }
}

// GridView.extent - 최대 너비 지정
class _ExtentGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: const EdgeInsets.all(16),
      maxCrossAxisExtent: 120,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(15, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.primaries[index % Colors.primaries.length][300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                [
                  Icons.home,
                  Icons.star,
                  Icons.favorite,
                  Icons.settings,
                  Icons.person,
                  Icons.email,
                  Icons.phone,
                  Icons.camera,
                  Icons.music_note,
                  Icons.shopping_cart,
                  Icons.map,
                  Icons.book,
                  Icons.flight,
                  Icons.restaurant,
                  Icons.sports_soccer,
                ][index % 15],
                color: Colors.white,
              ),
              const SizedBox(height: 4),
              Text(
                '항목 ${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// GridView.builder - 대량 데이터에 효율적
class _BuilderGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.primaries[index % Colors.primaries.length][200],
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.image, size: 48, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '상품 ${index + 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${(index + 1) * 10000}원',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
