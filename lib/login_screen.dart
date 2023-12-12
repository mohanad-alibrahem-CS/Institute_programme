
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello/home_screen.dart';



class Loginful extends StatefulWidget
 {
  @override
  Loginclass createState() => Loginclass();
}

class Loginclass extends State<Loginful> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode usernamefocas = new FocusNode();
  FocusNode passwordfocas = new FocusNode();
  String? userName;
  String? password;
final player =AudioPlayer();

  
Future<void> playAudioFromUrl(String url) async
{
  await player.play(UrlSource(url));
}
  void sure(String u, String p) {
    if (u.isEmpty == true) {
      FocusScope.of(context).requestFocus(usernamefocas);
    } else if (p.isEmpty && u.isNotEmpty) {
      FocusScope.of(context).requestFocus(passwordfocas);
    } else if (p.isEmpty && u.isEmpty) {
      FocusScope.of(context).requestFocus(usernamefocas);
    } else {
       playAudioFromUrl('audio/open.mp3');
       Navigator.push(context, MaterialPageRoute(builder: (context ) => Homeful()),);
      // showDialog(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: Text('Error'),
      //       content: Text('تم تسجيل الدخول بنجاح '),
      //       actions: [
      //         TextButton(
      //           child: Text('OK'),
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //         ),
      //       ],
      //     );
      //   },
      // );
    }
  }

  Widget build(BuildContext context)
   {
    
    return



    Scaffold(

      body:




    Container(
      decoration: BoxDecoration(
                   image: DecorationImage(
           image: AssetImage('images/image.png'), fit: BoxFit.fill),
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromRGBO(3, 71, 98, 0.3),
          ),
          width: 300,
          height: 450,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 71, 98, 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Text(
                      "Please enter your name and password",
                      selectionColor: Color.fromARGB(255, 6, 26, 1),
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              // IconButton(
              //   icon: Icon(Icons.clear),
              //   onPressed: () {
              //     usernameController.clear();
              //   },
              // ),

              TextField(
                  focusNode: usernamefocas,
                  controller: usernameController,
                  autofocus: true,
                  cursorColor: Colors.black,
                  cursorRadius: Radius.circular(10),
                  mouseCursor: MouseCursor.uncontrolled,
                  toolbarOptions: ToolbarOptions(
                      paste: true, cut: true, copy: true, selectAll: true),
                  decoration: InputDecoration(
                    labelText: 'username',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    suffixIcon: Icon(
                      Icons.clear,
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  onChanged: ((value) => {password = value})),

              SizedBox(
                height: 30,
              ),
              TextField(
                  focusNode: passwordfocas,
                  controller: passwordController,
                  cursorColor: Colors.black,
                  cursorRadius: Radius.circular(10),
                  //  autofillHints: تلمحيات الملى التلفاى,
                  //autofocus: true,
                  //  cursorHeight: 22,//ارتفاع المؤشر
                  // expands: true,
                  mouseCursor: MouseCursor.defer,
                  toolbarOptions: ToolbarOptions(
                      paste: true, cut: true, copy: true, selectAll: true),
                  //  mouseCursor:MouseCursor.uncontrolled ,

                  //   cursorRadius: Radius.circular(20),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    //icon: Icon(Icons.clear, color: Colors.black),
                    suffixIcon: Icon(
                      Icons.clear,
                      color: Colors.black,
                    ),

                    prefixIcon: Icon(
                      Icons.lock,
                      //color:Color.fromARGB(255, 72, 244, 229),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: ((value) => {password = value})),
              // Container(
              //   margin: EdgeInsets.all(50),
              //   width: 100,
              //   height: 100,
              //   child:
              SizedBox(height: 80),
              ElevatedButton(
                  // onHover: (value) {},
                  child:Text("Login"),
                  onPressed: () {
                    // print("object");
                    userName = usernameController.text;
                    password = passwordController.text;

                    sure(userName!, password!);

                    //  usernameController.clear();
                    //  passwordController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shadowColor: Color.fromRGBO(3, 71, 98, 0.992),
                    backgroundColor: Color.fromRGBO(3, 71, 98, 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                        side: BorderSide(
                            color: Colors.black,
                          //  strokeAlign: StrokeAlign.center
                            
                            )
                            
                            ),
                  ))
            ],
          ),
        ),
      ),
     ) 
    
     );
  }
}