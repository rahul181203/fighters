import 'package:fighters/screens/fighters_screen.dart';
import 'package:fighters/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  late FileImage _image;

  final ImagePicker _picker =  ImagePicker();

  Future getImage() async{
    final image = await _picker.pickImage(source: ImageSource.gallery);
  }
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
                      Text ("Sign up as Fighter", style: TextStyle(
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
                        makeInput(label: "Ring name"),
                        makeInput(label: "Date of Birth"),
                        makeInput(label: "Email"),
                        Text("Photo ID", textAlign: TextAlign.start,
                          style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87
                          ),),
                        MaterialButton(onPressed: (){getImage();},child: Text("Select"),color: Colors.redAccent,),
                        SizedBox(height: 20,),
                        makeInput(label: "Height"),
                        makeInput(label: "Weight"),
                        makeInput(label: "Reach distance"),
                        makeInput(label: "Country"),
                        makeInput(label: "Fight records"),
                        makeInput(label: "MMA record"),
                        makeInput(label: "Boxing record"),
                        makeInput(label: "K1 record"),
                        makeInput(label: "Jiu jitsu record or belt"),
                        makeInput(label: "Phone number"),
                        makeInput(label: "Password",obsureText: true),
                        makeInput(label: "Confirm Pasword",obsureText: true),
                        makeInput(label: "Age"),

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                        },
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text("Sign Up",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 16,
                        ),
                        ),
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
