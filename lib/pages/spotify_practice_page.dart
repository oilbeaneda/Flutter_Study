import 'package:flutter/material.dart';

/// 스포티파이 재생 화면 레이아웃 실습
///
/// 이 페이지는 앞서 배운 위젯들을 종합적으로 활용하는 실습 과제입니다.
/// 사용 위젯: Column, Row, Stack, Container, Padding, SizedBox,
///           Text, Icon, Image, IconButton, Slider
///
/// [레이아웃 구조]
/// Column
///  ├─ Row (상단 바: ∨ / 제목 / ···)
///  ├─ SizedBox (여백)
///  ├─ 앨범 이미지
///  ├─ SizedBox (여백)
///  ├─ Row (곡 제목 + ♡)
///  ├─ 아티스트 이름
///  ├─ Slider (재생 바)
///  ├─ Row (현재 시간 / 남은 시간)
///  ├─ Row (셔플 / 이전 / 재생 / 다음 / 반복)
///  ├─ Spacer
///  └─ Row (기기 연결 / 재생목록)
class SpotifyPracticePage extends StatelessWidget {
  const SpotifyPracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2C14),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            children: [
              const SizedBox(height: 8),

              // ─── 상단 바: ∨ 버튼 / 앨범명 / ··· 버튼 ───
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),

                    icon: const Icon(
                      Icons.keyboard_arrow_down,

                      color: Colors.white,

                      size: 32,
                    ),
                  ),

                  const Text(
                    '새소년',

                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),

                  IconButton(
                    onPressed: () {},

                    icon: const Icon(Icons.more_horiz, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // ─── 앨범 아트 이미지 ───
              ClipRRect(
                borderRadius: BorderRadius.circular(4),

                child: AspectRatio(
                  aspectRatio: 1,

                  child: Image.network(
                    'https://picsum.photos/400/400?random=spotify',

                    fit: BoxFit.cover,

                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[800],

                        child: const Center(
                          child: Icon(
                            Icons.music_note,

                            color: Colors.white54,

                            size: 80,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ─── 곡 제목 + 좋아요 버튼 ───
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'NAN CHUN 난춘',

                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 22,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          '새소년',

                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    onPressed: () {},

                    icon: const Icon(
                      Icons.favorite_border,

                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // ─── 재생 슬라이더 ───
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 3,

                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 6,
                  ),

                  overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 14,
                  ),

                  activeTrackColor: Colors.white,

                  inactiveTrackColor: Colors.white24,

                  thumbColor: Colors.white,
                ),

                child: Slider(value: 0.48, onChanged: (value) {}),
              ),

              // ─── 재생 시간 ───
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      '1:52',

                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),

                    Text(
                      '-1:56',

                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // ─── 재생 컨트롤 버튼 ───
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  IconButton(
                    onPressed: () {},

                    icon: const Icon(
                      Icons.shuffle,

                      color: Colors.white,

                      size: 24,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},

                    icon: const Icon(
                      Icons.skip_previous,

                      color: Colors.white,

                      size: 36,
                    ),
                  ),

                  // 재생/일시정지 버튼 (큰 원형)
                  Container(
                    width: 64,

                    height: 64,

                    decoration: const BoxDecoration(
                      color: Colors.white,

                      shape: BoxShape.circle,
                    ),

                    child: IconButton(
                      onPressed: () {},

                      icon: const Icon(
                        Icons.pause,

                        color: Colors.black,

                        size: 32,
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {},

                    icon: const Icon(
                      Icons.skip_next,

                      color: Colors.white,

                      size: 36,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},

                    icon: const Icon(
                      Icons.repeat,

                      color: Colors.white,

                      size: 24,
                    ),
                  ),
                ],
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
