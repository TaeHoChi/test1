import 'package:firebase_test/loginPage/login.dart';
import 'package:flutter/material.dart';

class idinformation extends StatefulWidget {
  const idinformation({Key? key}) : super(key: key);

  @override
  _idinformationState createState() => _idinformationState();
}

class _idinformationState extends State<idinformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Stack(
                      fit: StackFit.expand,
                      children: const <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: <Widget>[
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: const <Widget>[
                                    Text(
                                      "익명",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 27,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "명지전문대학교 1학년 2반",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "비밀번호 변경",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "정보 확인",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Stack(
              children: <Widget>[
                Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text("회원정보 수정"),
                        subtitle: const Text("회원정보를 수정하세요."),
                        onTap: () {},
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.question_answer),
                        title: const Text("자주하는 질문"),
                        subtitle: const Text("자주하는 질문을 모아놨어요."),
                        onTap: () {},
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.pets),
                        title: const Text("나의 반려견"),
                        subtitle: const Text("내가 등록한 반려경의 정보를 확인하세요."),
                        onTap: () {},
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.favorite),
                      title: const Text("좋아요"),
                      subtitle: const Text("내가 좋아요한 정보를 볼 수 있어요."),
                      onTap: () {},
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Row(
              children: [
                TextButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "로그아웃",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const Text(
                  "ㅣ",
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "고객센터",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
