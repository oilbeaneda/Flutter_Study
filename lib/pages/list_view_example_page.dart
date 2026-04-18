import 'package:flutter/material.dart';

class ListViewExamplePage extends StatelessWidget {
  const ListViewExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ListView 위젯'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: '기본'),
              Tab(text: 'builder'),
              Tab(text: 'separated'),
              Tab(text: '가로'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _BasicListView(),
            _BuilderListView(),
            _SeparatedListView(),
            _HorizontalListView(),
          ],
        ),
      ),
    );
  }
}

// 기본 ListView - children에 직접 위젯 나열
class _BasicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.map),
          title: Text('지도'),
          subtitle: Text('ListTile을 사용한 기본 항목'),
        ),
        ListTile(
          leading: Icon(Icons.photo),
          title: Text('사진'),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('전화'),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(child: Text('A')),
          title: Text('사용자 A'),
          subtitle: Text('안녕하세요!'),
        ),
        ListTile(
          leading: CircleAvatar(child: Text('B')),
          title: Text('사용자 B'),
          subtitle: Text('반갑습니다!'),
        ),
      ],
    );
  }
}

// ListView.builder - 대량 데이터에 효율적
class _BuilderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text('아이템 ${index + 1}'),
            subtitle: Text('ListView.builder로 생성된 항목'),
            trailing: const Icon(Icons.chevron_right),
          ),
        );
      },
    );
  }
}

// ListView.separated - 구분선 포함
class _SeparatedListView extends StatelessWidget {
  final List<Map<String, dynamic>> _items = List.generate(
    20,
    (i) => {
      'title': '항목 ${i + 1}',
      'icon': [
        Icons.star,
        Icons.favorite,
        Icons.bookmark,
        Icons.flag,
        Icons.label,
      ][i % 5],
      'color': [
        Colors.amber,
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.purple,
      ][i % 5],
    },
  );

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _items.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final item = _items[index];
        return ListTile(
          leading: Icon(item['icon'] as IconData, color: item['color'] as Color),
          title: Text(item['title'] as String),
          subtitle: const Text('separated로 구분선 자동 추가'),
        );
      },
    );
  }
}

// 가로 ListView
class _HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '가로 스크롤 ListView',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.primaries[index % Colors.primaries.length],
                    borderRadius: BorderRadius.circular(12),
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
              },
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            '카드형 가로 스크롤',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.primaries[index % Colors.primaries.length][200],
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                          ),
                          child: const Center(child: Icon(Icons.image, size: 40)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '카드 ${index + 1}',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '설명 텍스트',
                                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
