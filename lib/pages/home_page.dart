import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "cpu",
        "imgUrl": "./assets/images/cpu.png",
        "goWhere": "/cpu",
      },
      {
        "category": "그래픽카드",
        "imgUrl": "./assets/images/graphics.jpg",
        "goWhere": "/graphics",
      },
      {
        "category": "메인보드",
        "imgUrl": "./assets/images/mainboard.jpg",
        "goWhere": "/mainboard",
      },
      {
        "category": "조립시 주의사항",
        "imgUrl": "./assets/images/warning.png",
        "goWhere": "/warning",
      },
      {
        "category": "부품 설명",
        "imgUrl": "./assets/images/explanation.png",
        "goWhere": "/explanation",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 그림자 없애기
        backgroundColor: Colors.white, // 배경 색상
        centerTitle: false, // title 중앙 정렬
        iconTheme: IconThemeData(color: Colors.black), // app bar icon color
        title: Text(
          "컴알못 도우미",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // 검색
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "상품을 검색해주세요.",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                // 돋보기 아이콘
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print("돋보기 아이콘 클릭");
                  },
                ),
              ),
            ),
          ),
          Divider(height: 1),
          // 카테고리 목록
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = dataList[index];
                String category = data["category"];
                String imgUrl = data["imgUrl"];
                String goWhere = data["goWhere"];

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        imgUrl,
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, goWhere);
                            },
                            child: Text(
                              category,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                        ),
                      ),

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                          width: 62,
                        ),
                      ),
                    ),
                    SizedBox(height: 13),
                    Text(
                      "닉네임",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "hello@world.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 12 / 4,
              child: PageView(
                children: [
                  Image.network(
                    "https://i.ibb.co/Q97cmkg/sale-event-banner1.jpg",
                  ),
                  Image.network(
                    "https://i.ibb.co/GV78j68/sale-event-banner2.jpg",
                  ),
                  Image.network(
                    "https://i.ibb.co/R3P3RHw/sale-event-banner3.jpg",
                  ),
                  Image.network(
                    "https://i.ibb.co/LRb1VYs/sale-event-banner4.jpg",
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                '구매내역',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                '저장한 레시피',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
