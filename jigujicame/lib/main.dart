import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'JigujicamE_popup';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyAlertDialog(),
      ),
    );
  }
}

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ListTile(
                title: Text('공부하기'),
                subtitle: Container(),
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(
                        '이용에 불편을 드려 죄송합니다.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      icon: Icon(Icons.error, color: Color(0xFF2196F3)),
                      content: SingleChildScrollView(
                          child: Column(
                        children: [
                          Text('이미지 인식에 실패했습니다.'),
                          Container(
                            width: 300,
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '올바른 객체 이름을 입력해주세요. ex)시계',
                                hintStyle: TextStyle(fontSize: 16)),
                          ),
                        ],
                      )),
                      actions: <Widget>[
                        Container(
                            width: 300,
                            height: 50,
                            child: TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('관리자에게 전달하기'),
                            )),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
//참고: https://nayotutorial.tistory.com/54