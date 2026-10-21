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

class AppColors {
  static const white = Colors.white;
  static const whiteSmoke = Color.fromRGBO(255, 255, 255, 0.3);
}

class SpotifyPracticePage extends StatelessWidget {
  const SpotifyPracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFAFA061), Color.fromARGB(255, 61, 56, 33)],
            stops: [0.0, 0.9],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.white,
                        size: 35,
                      ),
                      Column(
                        children: const [
                          Text(
                            "새소년",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.more_horiz, color: AppColors.white),
                    ],
                  ),
                ),
                const Spacer(flex: 1),

                // 2. 앨범 이미지
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 30,
                        offset: const Offset(0, 20),
                      ),
                    ],
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_sesoneon.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(flex: 1),

                // 3. 곡 정보 (제목과 가수)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "NAN CHUN 난춘",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "새소년",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 4. 재생 바 (Slider)
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 6,
                    ),
                    overlayShape: SliderComponentShape.noOverlay,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white.withOpacity(0.3),
                    thumbColor: Colors.white,
                  ),
                  child: Slider(value: 0.6, onChanged: (value) {}),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1:52",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                    Text(
                      "3:45",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // 5. 컨트롤 버튼
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.shuffle, color: Colors.white54, size: 28),
                    const Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 45,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.pause,
                        color: Color(0xFF252214),
                        size: 40,
                      ),
                    ),
                    const Icon(Icons.skip_next, color: Colors.white, size: 45),
                    const Icon(Icons.repeat, color: Colors.white54, size: 28),
                  ],
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
