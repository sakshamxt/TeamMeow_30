import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gaia/analytics.dart';
import 'package:url_launcher/url_launcher.dart';
class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  // final _firestore = FirebaseFirestore.instance;
  // final _auth = FirebaseAuth.instance;

  List imageList=[
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(width: 2),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Center(child: Text("GAIA'S TOUCH",style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white),)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ACTIVE NGO'S IN YOUR LOCATION:",style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: 'InterBlack'),),
                Text("BENGALURU",style: TextStyle(color: Colors.deepPurple,fontSize: 26,fontFamily: 'InterBlack'),),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnalyticsPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage(imageList[0]),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnalyticsPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(image: AssetImage(imageList[1]),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnalyticsPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(image: AssetImage(imageList[2]),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnalyticsPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(image: AssetImage(imageList[3]),),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnalyticsPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(image: AssetImage(imageList[5]),),
                  ),
                ),

                                //THIS CODE RUNS PERFECTLY
                //BELOW IS THE WORKING FIREBASE CODE BUT DUE TO INTERNET ISSUES WIDGETS WERENT LOADING FAST
                //THIS IS WHY WE DECIDED TO USE ASSET IMAGES FOR PRESENTATION PURPOSES BUT OUR MAIN GOAL WAS USING FIREBASE ITSELF
                // Padding(
                //   padding: const EdgeInsets.all(0.0),
                //   child: StreamBuilder(
                //     stream: _firestore.collection('ngo').snapshots(),
                //     builder: (context,snapshot){
                //       final messages = snapshot.data?.docs;
                //       List<MessageBubble> messageBubbles=[];
                //       for(var message in messages!){
                //         final img = message.data()['img'];
                //
                //         final card = MessageBubble(img: img,
                //         );
                //         messageBubbles.add(card);
                //       }
                //
                //       return Expanded(
                //         child: Padding(
                //           padding: const EdgeInsets.all(15.0),
                //           child: Column(
                //             children: messageBubbles,
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class MessageBubble extends StatelessWidget {
  MessageBubble(
      {required this.img});

  final String img;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        splashColor: Colors.black26,
        onTap: () {},
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image(image: NetworkImage(img,),
                  fit: BoxFit.cover,
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
