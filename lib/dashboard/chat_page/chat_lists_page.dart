import 'package:flutter/material.dart';
import 'components/chat_screen.dart';

class ChatListsPage extends StatefulWidget {
  @override
  _ChatListsPageState createState() => new _ChatListsPageState();
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(icon: Icons.chat_bubble_outline),
  const Choice(icon: Icons.notifications),
  const Choice(icon: Icons.phone),
];

class _ChatListsPageState extends State<ChatListsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text('Chats Room',
                style: new TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w300))
          ],
        ),
        // bottom: new TabBar(
        //   isScrollable: false,
        //   controller: _tabController,
        //   indicatorColor: Theme.of(context).accentColor,
        //   tabs: choices.map((Choice choice) {
        //     return Tab(
        //       text: choice.title,
        //       icon: Icon(choice.icon),
        //     );
        //   }).toList(),
        // ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new ChatScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
