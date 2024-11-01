import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("컴퓨터 부품 앱"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // 로그아웃 버튼을 누르면 로그인 페이지로 이동하고, 홈 페이지는 스택에서 제거
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('환영합니다!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/categories'); // 부품 카테고리 페이지로 이동
              },
              child: Text('부품 카테고리'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart'); // 장바구니 페이지로 이동
              },
              child: Text('장바구니'),
            ),
          ],
        ),
      ),
    );
  }
}
