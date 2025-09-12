import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'home_state.dart';
import 'home_view_model.dart';
import '../../../widgets/stopwatch_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final state = ref.watch(homeProvider); //stateファイルを呼び出す
    final notifier = ref.read(homeProvider.notifier); //ViewModelファイルを呼び出す

    return Scaffold(
      //ボディ
      body: Center(
        child: Container(
          width: 375,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color(0xFF06B747).withOpacity(0.1),
                const Color(0xffFB9600).withOpacity(0.1),
                const Color(0xffFFC215).withOpacity(0.1),
              ],
              stops: const [
                0.0,
                0.5,
                1.0,
              ],
            ),
          ),

          child: Column(
            children: [
              //ヘッダー
              Container(
                margin: EdgeInsets.only(top: 16.0, right: 16.0, bottom: 22.0, left: 16.0),
                height: 56,
                
                child: Row(
                    children: [
                      Image.asset(
                        'images/user-icon.png',
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ベネッセ太郎',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            //ログイン情報
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: EdgeInsetsGeometry.symmetric(vertical: 1.0, horizontal: 3.0),
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      'XP',
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '${state.counter}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox (width: 10),
                                  Text(
                                    '連続ログイン',
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF73887D),
                                    ),
                                  ),
                                  SizedBox (width: 2),
                                  Text(
                                    '31日目',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //通知アイコン
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            top: 7,
                            left: 9,
                            child: Image.asset(
                              'images/notification-icon.png',
                              width: 14,
                              height: 18,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                
                //メインコンテンツ
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsetsGeometry.only(top: 38.0, right: 20.0, bottom: 20.0, left: 20.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),

                        child: Column(
                          children: [
                            //教科
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    //数学
                                    GestureDetector(
                                      child: Container(
                                        width: 220,
                                        height: 220,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(0xFF7DD1E0),
                                              Color(0xFF44AFC2),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: Offset(1, 2),
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Colors.white, 
                                                  Colors.white, 
                                                  Color(0xFFF5FDFF),
                                                  Color(0xFFF5FDFF), 
                                                ],
                                                stops: [0.0, 0.45, 0.45, 1.0],
                                              ),
                                            ),

                                            child: Padding(
                                              padding: EdgeInsetsGeometry.symmetric(vertical: 16.0, horizontal: 16.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '正負の数',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xFF73878D),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    'Unit2 英作文のルールを学ぶ',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xFF2F4247),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    

                                    Positioned(
                                      top: 18,
                                      right: 16,
                                      child: Container(
                                        width: 82, 
                                        height: 22,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'images/fire-active-icon.png',
                                              width: 18,
                                              height: 18,
                                              fit: BoxFit.cover,
                                            ),
                                            const SizedBox(width: 8),
                                            Image.asset(
                                              'images/fire-icon.png',
                                              width: 18,
                                              height: 18,
                                              fit: BoxFit.cover,
                                            ),
                                            const SizedBox(width: 8),
                                            Image.asset(
                                              'images/fire-icon.png',
                                              width: 18,
                                              height: 18,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      )
                                    ),

                                    Positioned(
                                      top: -5,
                                      left: 15,
                                      child: Container(
                                        width: 55,
                                        height: 58,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF44AFC2),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '中1',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                color: Colors.white, 
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              '数学',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                color: Colors.white, 
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 20,
                                      right: 18,
                                      child: Image.asset(
                                        'images/math-icon.png',
                                        width: 120,
                                        height: 130,
                                      ),
                                    ),
                                  ],
                                ),
                                

                                const SizedBox(width: 15),

                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    //理科
                                    GestureDetector(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(0xFF94DCAF),
                                              Color(0xFF53B37E),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: Offset(1, 2),
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft, // 左上から
                                                end: Alignment.bottomRight, // 右下に
                                                colors: [
                                                  Colors.white, 
                                                  Colors.white, 
                                                  Color(0xFFEBFFF0),
                                                  Color(0xFFEBFFF0), 
                                                ],
                                                stops: [0.0, 0.45, 0.45, 1.0],
                                                
                                              ),
                                            ),

                                            child: Padding(
                                              padding: EdgeInsetsGeometry.symmetric(vertical: 16.0, horizontal: 9.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    '身のまわりの植物の観察',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xFF2F4247),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      top: -5,
                                      left: 27,
                                      child: Container(
                                        width: 44,
                                        height: 32,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF53B37E),
                                        ),

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '理科',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                color: Colors.white, 
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 5,
                                      right: 25,
                                      child: Image.asset(
                                        'images/science-icon.png',
                                        width: 50,
                                        height: 70,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(height: 40),

                            //ストップウォッチのウィジェット
                            const StopwatchWidget(),

                            const Spacer(),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    //クエストボタン
                                    GestureDetector(
                                      onTap: notifier.incrementCounter,

                                      child: Container(
                                        padding: EdgeInsetsGeometry.symmetric(vertical: 10.0, horizontal: 30.0),
                                        width: 138, 
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Color(0xFFF2F2F2),
                                              width: 1.0,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: Offset(1, 2),
                                            ),
                                          ],
                                        ),
                                        
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'images/quest-icon.png',
                                              width: 12,
                                              height: 12,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox (width: 10),
                                            Text(
                                              'クエスト',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF00B2B2),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(width: 30),

                                //レッスン一覧
                                GestureDetector(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/lesson-icon.png',
                                        width: 10,
                                        height: 10,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox (width: 10),
                                      Text(
                                        'レッスン一覧',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF00B2B2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //テスト対策
                      Positioned(
                        top: -10,
                        right: 15,
                        child: Container(
                          width: 138,
                          height: 28,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                const Color(0xFFA2E8E8),
                                const Color(0xFF44B3EB),
                                const Color(0xFF1B7EE2),
                              ],
                              stops: const [
                                0.0,
                                0.2,
                                1.0,
                              ],
                            ),
                            border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/arrow-icon.png',
                                width: 13,
                                height: 13,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'テスト対策',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                  color: Colors.white, 
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          
                        ),
                      ),

                      

                    ],
                  ),
                ),
              
                //ボトムナビゲーション
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          color: const Color.fromARGB(255, 210, 210, 210),
                          width: 1.0,
                        ),
                      ),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'images/home-icon.png',
                              width: 17,
                              height: 17,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'ホーム',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 155, 165, 172),
                              ),
                              
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 150),

                      GestureDetector(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'images/settings-icon.png',
                              width: 17,
                              height: 17,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '設定',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 155, 165, 172),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),      
              ],
            )
          ),
      ),
    );
  }
}

