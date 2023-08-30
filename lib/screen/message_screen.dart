import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('짧은 메시지 화면'),
      ),
      body: ListView.builder(
        itemCount: dummyMessages.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageDetailScreen(
                    message: dummyMessages[index],
                  ),
                ),
              );
            },
            child: MessageCard(message: dummyMessages[index]),
          );
        }),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final MessageModel message;
  const MessageCard({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          SizedBox(height: 8),
          Text(message.date),
          SizedBox(height: 8),
          Text(message.description),
        ],
      ),
    );
  }
}

class MessageDetailScreen extends StatelessWidget {
  final MessageModel message;
  const MessageDetailScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.date,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(message.description),
          ],
        ),
      ),
    );
  }
}

class MessageModel {
  final String title;
  final String date;
  final String description;

  MessageModel({
    required this.title,
    required this.date,
    required this.description,
  });
}

List<MessageModel> dummyMessages = [
  MessageModel(
    title: '짧은 메시지 화면1',
    date: '2023-08-15',
    description: '이것은 첫 번째 짧은 메시지 화면입니다.',
  ),
  MessageModel(
    title: '짧은 메시지 화면2',
    date: '2023-08-16',
    description: '이것은 두 번째 짧은 메시지 화면입니다.',
  ),
  MessageModel(
    title: '짧은 메시지 화면3',
    date: '2023-08-17',
    description: '이것은 세 번째 짧은 메시지 화면입니다.',
  ),
  MessageModel(
    title: '짧은 메시지 화면4',
    date: '2023-08-18',
    description: '이것은 네 번째 짧은 메시지 화면입니다.',
  ),
  MessageModel(
    title: '짧은 메시지 화면5',
    date: '2023-08-19',
    description: '이것은 다섯 번째 짧은 메시지 화면입니다.',
  ),
];
