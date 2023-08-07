import "package:flutter/material.dart";
import "package:magnet/screens/test.dart";

class PivotHome extends StatelessWidget {
  const PivotHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "모임을",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "만들거나",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "가입해보세요",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 40,
                ),
              ),
              SizedBox(
                height: 450,
                child: PivotGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PivotGrid extends StatelessWidget {
  const PivotGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> textList = <String>["생성하기", "가입하기", "문의하기", "사용법"];
    final List<IconData> iconList = <IconData>[
      Icons.people_outline,
      Icons.person_outline,
      Icons.message_outlined,
      Icons.sticky_note_2_outlined,
    ];
    final List<Widget> wigetRoute = <Widget>[
      const Test(),
      const Test(),
      const Test(),
      const Test(),
    ];
    return Scaffold(
      body: GridView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        textList[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          iconList[index],
                          size: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => wigetRoute[index],
                ),
              );
            },
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
          childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1.5 의 비율
          mainAxisSpacing: 25, //수평 Padding
          crossAxisSpacing: 25, //수직 Padding
        ),
      ),
    );
  }
}
// class PivotGrid extends StatelessWidget {
//   const PivotGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: GestureDetector(
//                 onTap: () {},
//               ),
//             )
//           ],
//         ),
//         // ignore: prefer_const_constructors
//         Row(
//           children: [],
//         ),
//       ],
//     );
//   }
// }