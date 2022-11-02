import 'package:flutter/material.dart';
import 'package:lake/login_page2.dart';
class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  var _formkey=GlobalKey<FormState>();
  var _UserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, icon:Icon(Icons.arrow_back_ios_new),
                  ),
                  TextButton(
                    onPressed: (){

                    }, child: Text("Đăng ký", style: TextStyle(color: Colors.blueGrey)),
                  )
                ],
              ),
              SizedBox(height: 25),
              Text("Đăng ký", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty)
                    return "rỗng";
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Tài khoản: ",
                ),

              ),
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty)
                    return "rỗng";
                  return null;
                },
                decoration: InputDecoration(
                  // label: Text("Mật khẩu"),
                  labelText: "Mật khẩu: ",
                ),

              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: TextButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 50)
                ),
                onPressed: (){}, child: Text("Đăng nhập", style: TextStyle(color: Colors.white), ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
