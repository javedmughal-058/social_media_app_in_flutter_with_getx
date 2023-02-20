
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Controllers/user_controller.dart';
import '../controllers/information_controller.dart';
import 'bottom_bar_home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final UserController _userController = Get.find();
    final InformationController informationController = Get.put(InformationController());
    final size = MediaQuery.of(context).size;
    return Obx(()=> _userController.isAuth.value ? const Authenticated() : UnAuthenticated(userController: _userController,));
  }
}


class UnAuthenticated extends StatelessWidget {
  final UserController userController;
  UnAuthenticated({Key? key, required this.userController }) : super(key: key);

  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Social Media App'),
        // ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.height*0.2,),
              const Text('Social Platform',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),),
              SizedBox(height: size.height*0.03,),
              Center(
                child: SizedBox(
                  height: size.height*0.05,
                  width: size.width*0.7,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                        shape: MaterialStateProperty.all(const StadiumBorder()),
                        minimumSize: MaterialStateProperty.all(Size(size.width*0.5, 40.0)),
                      ),
                      onPressed: (){
                        userController.login();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/google.png', height: 25, width: 25),
                          const Text('SignUp with Google'),
                        ],
                      )),
                ),
              ),
              // const Spacer(),
              SizedBox(height: size.height*0.01,),
              const Text('Join with Single click',),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const[
                   Text('Developed by '),
                  Text('Muhammad Javed ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


