import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_pp/insta_stories.dart';

class InstaList extends StatefulWidget {
  const InstaList({super.key});

  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isLiked = false;
  bool isFavorited = false;
  int likeCount = 528331;
  int commentCount = 0;
  int shareCount = 0;
  int favoriteCount = 0;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: deviceSize.height * 0.15,
              child: InstaStories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/459648602_501477279296736_1152941232309617561_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=aa7b47&_nc_ohc=nAg-14ySKxAQ7kNvgGjC1Pa&_nc_ht=scontent-bkk1-1.xx&_nc_gid=ABDlyEYJWlbv-AbcZILVWSg&oh=00_AYAnnHeaqV8aWTUPkcx7W722viwSzgF1k3q6hSEYpkh53Q&oe=670AE81B")),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            "imthpk",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    "https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/459430821_501477329296731_7084320510570017101_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=aa7b47&_nc_ohc=NlLHL_rMIkAQ7kNvgFU9iZm&_nc_ht=scontent-bkk1-1.xx&_nc_gid=Apr9Y9HZ41et0j2CJa78o4s&oh=00_AYDNg17qAA4DP59Zd_yoURT4snq9D2508At1PflwJxnJiw&oe=670AC1F2",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                                isLiked ? Icons.favorite : FontAwesomeIcons.heart),
                            color: isLiked ? Colors.red : Colors.black,
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                                isLiked ? likeCount++ : likeCount--;
                              });
                            },
                          ),
                          const SizedBox(width: 16.0),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.comment),
                            onPressed: () {
                              setState(() {
                                commentCount++;
                              });
                            },
                          ),
                          const SizedBox(width: 16.0),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.paperPlane),
                            onPressed: () {
                              setState(() {
                                shareCount++;
                              });
                            },
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                            isFavorited ? Icons.bookmark : FontAwesomeIcons.bookmark),
                        onPressed: () {
                          setState(() {
                            isFavorited = !isFavorited;
                            isFavorited ? favoriteCount++ : favoriteCount--;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by pawankumar, pk and $likeCount others",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "$commentCount comments, $shareCount shares, $favoriteCount favorites",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
    );
  }
}

