import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const NewsFeed(),
    );
  }
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Newsfeed")),
      body: ListView(
        children: List.generate(10, (index) {
          return const NewsFeedCard();
        }),
      ),
    );
  }
}

class NewsFeedCard extends StatelessWidget {
  const NewsFeedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/madison.jpg'),
          ),
          title: Text("Madison Jk Roy"),
          subtitle: Row(
            children: [
              Text("Nov 4, 2021"),
              SizedBox(width: 6),
              Icon(Icons.people),
            ],
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Image.asset('images/pakka-qila.jpg'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(CupertinoIcons.hand_thumbsup_fill),
              SizedBox(width: 6),
              Text("Alex felix and 7 others"),
            ],
          ),
        ),
        const Divider(endIndent: 8.0, indent: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.hand_thumbsup),
                  SizedBox(width: 6),
                  Text("Likes"),
                ],
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.chat_bubble),
                  SizedBox(width: 6),
                  Text("Comments")
                ],
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.arrowshape_turn_up_right),
                  SizedBox(width: 6),
                  Text("Share")
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 12,
          width: double.infinity,
          color: Colors.grey,
        ),
      ],
    );
  }
}
