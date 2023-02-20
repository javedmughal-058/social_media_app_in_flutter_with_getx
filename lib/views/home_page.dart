
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/user_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Welcome! '),
                Obx(()=>Text('${userController.currentUser.value.userName}', style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
              ],
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
              ),
                onPressed: (){userController.googleSignIn.signOut();},
                child: const Text('Logout')),
          ],
        ));
  }
}
