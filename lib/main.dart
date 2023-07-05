import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Priya-pro.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.black,
                              Colors.black.withOpacity(0.3),
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 100.0),
                                child: Text(
                                  'Priyanka Chopra Jonas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '60 video',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    '240k Subscribers',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priyanka Chopra is an Indian actress, singer, and philanthropist who achieved global recognition. She has starred in Bollywood films, as well as American TV series and movies. Known for her talent and advocacy, she is a prominent figure in the entertainment industry.',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 18,
                            height: 1.4),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Born', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                      SizedBox(height: 15,),
                      Text('July 18, 1982, Jharkhand, India', style: TextStyle(color: Colors.grey.shade500, fontSize: 18),),

                       SizedBox(
                        height: 15,
                      ),
                      Text('Nationality', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                      SizedBox(height: 15,),
                      Text('Indian', style: TextStyle(color: Colors.grey.shade500, fontSize: 18),),
                       SizedBox(
                        height: 15,
                      ),
                      Text('Video', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                      SizedBox(height: 15,),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeVideo(image:'assets/baji.jpg'),
                            makeVideo(image: 'assets/Dil.jpg'),
                            makeVideo(image: 'assets/marykom.webp'),
                            makeVideo(image: 'assets/pink2.jpg'),
                            makeVideo(image: 'assets/white.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 120,),
                    ],
                  ),
                )
              ])),
            ],
          ),
        ],
      ),
    );
  }

  Widget makeVideo({image}){
    return AspectRatio(
      aspectRatio: 1.5/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.bottomRight,
          //     colors: [
          //       Colors.black.withOpacity(0.9),
          //       Colors.black.withOpacity(0.3),
          //     ]
          //   )
          // ),
          child: Center(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 70,),
          ),
        ),
      ),
    );
  }
}
