import 'package:flutter/material.dart';
import 'package:watsapp_ui/CustomUI/customListTileModal.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  getPhoto(String image, String name, String time, String recentChat,
      String status) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Text(recentChat),
          trailing: Text(time),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(color: Colors.grey[300]),
          margin: EdgeInsets.fromLTRB(80, 0, 10, 0),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: ListView(
          children: [
            getPhoto('assets/dp1.jpg', 'akash', '12:02 PM', 'how are you',
                'checked'),
            getPhoto('assets/dp1.jpg', 'akash', '12:02 PM', 'how are you',
                'checked'),
            getPhoto('assets/dp1.jpg', 'akash', '12:02 PM', 'how are you',
                'checked'),
            getPhoto('assets/dp1.jpg', 'akash', '12:02 PM', 'how are you',
                'checked'),
            // getPhoto('assets/dp2.jpg'),
            // getPhoto('assets/dp3.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp5.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp4.jpg'),
            // getPhoto('assets/dp2.jpg'),
            // CustomListTile(),
            // CustomListTile(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent[700],
        onPressed: () {},
        child: Icon(
          Icons.message,
        ),
      ),
    );
  }
}
