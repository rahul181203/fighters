import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
        leading: Image.asset('images/logo2.jpeg',),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                  'Ratings',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height:10),
              Rating('⭐⭐⭐⭐⭐'),
              SizedBox(height:10),
              Rating('⭐⭐⭐⭐'),
              SizedBox(height:10),
              Rating('⭐⭐⭐'),
              SizedBox(height:10),
              Rating('⭐⭐'),
              SizedBox(height:10),
              Rating('⭐'),
              SizedBox(height:20),
              Text(
                'Age',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.redAccent,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height:20),
              Row(
                children: [
                  Flexible(child: Rating('18-25  ')),
                  SizedBox(width: 10,),
                  Flexible(child: Rating('26-30  ')),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(child: Rating('31-35  ')),
                  SizedBox(width: 10,),
                  Flexible(child: Rating('36-40  ')),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(child: Rating('41-45  ')),
                  SizedBox(width: 10,),
                  Flexible(child: Rating('46-50  ')),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

class Rating extends StatelessWidget {
  Rating(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value){}),
          SizedBox(width: 10,),
          Text(text,style: TextStyle(fontSize: 23,color: Colors.white),),
        ],
      ),
    );
  }
}
