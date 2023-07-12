import 'package:fighters/screens/login.dart';
import 'package:fighters/screens/ring_girls_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RingGirls extends StatefulWidget {
  const RingGirls({Key? key}) : super(key: key);

  @override
  _RingGirlsState createState() => _RingGirlsState();
}

class _RingGirlsState extends State<RingGirls> {
  late FileImage _image;

  final ImagePicker _picker =  ImagePicker();

  Future getImage() async{
    final image = await _picker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                          child: Image.asset('images/logo2.jpeg')
                      ),
                      Text ("Sign up as Ring Girl", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 20,),
                      Text("Create an Account,Its free",style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),),
                      SizedBox(height: 30,)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40
                    ),
                    child: Column(
                      children: [
                        makeInput(label: "Name"),
                        makeInput(label: "Age"),
                        makeInput(label: "Height"),
                        makeInput(label: "Country"),
                        Text("Pictures", textAlign: TextAlign.start,
                          style:TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87
                        ),),
                        MaterialButton(onPressed: (){getImage();},child: Text("Select"),color: Colors.redAccent,),
                        SizedBox(height: 20,),
                        makeInput(label: "Minimum amount request"),
                        makeInput(label: "Password",obsureText: true),
                        makeInput(label: "Confirm Pasword",obsureText: true),
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value){},
                            ),
                            SizedBox(width: 10,),
                            Flexible(child: Text("By clicking you will accept our terms and conditions")),
                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3,left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black)
                          )
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height:60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RingGirlsScreen()));
                        },
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text("Sign Up",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 16,

                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text("Login",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        ),),
                    ],
                  )
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
        ),
      ),
      SizedBox(height: 30,)
    ],
  );
}
