import 'package:flutter/material.dart';
import 'pages/text_example_page.dart';
import 'pages/icon_example_page.dart';
import 'pages/image_example_page.dart';
import 'pages/column_example_page.dart';
import 'pages/row_example_page.dart';
import 'pages/stack_example_page.dart';
import 'pages/container_example_page.dart';
import 'pages/padding_example_page.dart';
import 'pages/sized_box_example_page.dart';
import 'pages/button_example_page.dart';
import 'pages/list_view_example_page.dart';
import 'pages/grid_view_example_page.dart';
import 'pages/spotify_practice_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 위젯 예제',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final examples = <_ExampleItem>[
      _ExampleItem(
        title: 'Text',
        subtitle: '텍스트 스타일, 정렬, 오버플로우',
        icon: Icons.text_fields,
        page: const TextExamplePage(),
      ),
      _ExampleItem(
        title: 'Icon',
        subtitle: '아이콘 크기, 색상, IconButton',
        icon: Icons.emoji_emotions,
        page: const IconExamplePage(),
      ),
      _ExampleItem(
        title: 'Image',
        subtitle: '네트워크 이미지, BoxFit, 원형 이미지',
        icon: Icons.image,
        page: const ImageExamplePage(),
      ),
      _ExampleItem(
        title: 'Column',
        subtitle: '세로 배치, MainAxis, CrossAxis',
        icon: Icons.view_column,
        page: const ColumnExamplePage(),
      ),
      _ExampleItem(
        title: 'Row',
        subtitle: '가로 배치, Expanded, flex 비율',
        icon: Icons.table_rows,
        page: const RowExamplePage(),
      ),
      _ExampleItem(
        title: 'Stack',
        subtitle: '위젯 겹치기, Positioned',
        icon: Icons.layers,
        page: const StackExamplePage(),
      ),
      _ExampleItem(
        title: 'Container',
        subtitle: 'BoxDecoration, 그림자, 그라데이션',
        icon: Icons.check_box_outline_blank,
        page: const ContainerExamplePage(),
      ),
      _ExampleItem(
        title: 'SizedBox',
        subtitle: '크기 지정, 간격, expand/shrink',
        icon: Icons.aspect_ratio,
        page: const SizedBoxExamplePage(),
      ),
      _ExampleItem(
        title: 'Padding',
        subtitle: 'EdgeInsets 다양한 사용법',
        icon: Icons.padding,
        page: const PaddingExamplePage(),
      ),
      _ExampleItem(
        title: 'Button 3종',
        subtitle: 'Elevated, Text, Outlined 버튼',
        icon: Icons.smart_button,
        page: const ButtonExamplePage(),
      ),
      _ExampleItem(
        title: 'ListView',
        subtitle: '기본, builder, separated, 가로',
        icon: Icons.list,
        page: const ListViewExamplePage(),
      ),
      _ExampleItem(
        title: 'GridView',
        subtitle: 'count, extent, builder',
        icon: Icons.grid_view,
        page: const GridViewExamplePage(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 위젯 예제'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ─── 실습 과제 섹션 ───
          Card(
            color: const Color(0xFF1DB954),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.music_note, color: Color(0xFF1DB954)),
              ),
              title: const Text(
                'Spotify UI 클론',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                '실습 과제: 재생 화면 레이아웃',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: const Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SpotifyPracticePage(),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              '위젯 학습',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          // ─── 위젯 예제 섹션 ───
          ...List.generate(examples.length, (index) {
            final item = examples[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(item.icon)),
                  title: Text(item.title),
                  subtitle: Text(item.subtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => item.page),
                    );
                  },
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _ExampleItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget page;

  const _ExampleItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.page,
  });
}
