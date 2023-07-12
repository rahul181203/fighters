import 'package:fighters/screens/chat_screen.dart';
import 'package:fighters/screens/fighters_screen.dart';
import 'package:fighters/screens/filter_screen.dart';
import 'package:flutter/material.dart';
import '../components.dart';

class PrompterScreen extends StatefulWidget {
  const PrompterScreen({Key? key}) : super(key: key);

  @override
  _PrompterScreenState createState() => _PrompterScreenState();
}

class _PrompterScreenState extends State<PrompterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prompters'),
        leading: Image.asset('images/logo2.jpeg',),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Expanded(
            //     child: TextField(
            //       // autofocus: true,
            //       style: TextStyle(fontSize: 15.0),
            //       decoration: InputDecoration(
            //         filled: true,
            //         fillColor: Colors.white,
            //         hintText: 'Search',
            //         prefixIcon: Icon(Icons.search),
            //         contentPadding:
            //         const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.red),
            //           borderRadius: BorderRadius.circular(25.7),
            //         ),
            //         enabledBorder: UnderlineInputBorder(
            //           borderSide: BorderSide(color: Colors.white),
            //           borderRadius: BorderRadius.circular(25.7),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20,),
            Flexible(
              child: FloatingActionButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
              },child: Icon(Icons.filter_alt_rounded),backgroundColor: Colors.redAccent),
            ),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-3.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("MR.A",style: TextStyle(color: Colors.white,fontSize: 25),),
                          SizedBox(width: 20,),
                          FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            child: Icon(Icons.chat_bubble),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-2.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("MR.B",style: TextStyle(color: Colors.white,fontSize: 25),),
                          SizedBox(width: 20,),
                          FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            child: Icon(Icons.chat_bubble),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-4.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("MR.C",style: TextStyle(color: Colors.white,fontSize: 25),),
                          SizedBox(width: 20,),
                          FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            child: Icon(Icons.chat_bubble),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-5.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("MR.D",style: TextStyle(color: Colors.white,fontSize: 25),),
                          SizedBox(width: 20,),
                          FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            child: Icon(Icons.chat_bubble),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-2.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("MR.E",style: TextStyle(color: Colors.white,fontSize: 25),),
                          SizedBox(width: 20,),
                          FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            child: Icon(Icons.chat_bubble),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-3.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("MR.F",style: TextStyle(color: Colors.white,fontSize: 25),),
                          SizedBox(width: 20,),
                          FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            child: Icon(Icons.chat_bubble),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
