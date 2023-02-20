import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app_in_flutter_with_getx/controllers/user_controller.dart';

import '../custom/customTextField.dart';
class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserController _userController = Get.find();
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(),
          body: Container(
            width: Get.width,
            height: Get.height,
            // padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // Expanded(
                //     child: ListView.builder(
                //         reverse: true,
                //         physics: const BouncingScrollPhysics(),
                //         itemCount: _userController.conversationList.length,
                //         itemBuilder: (context, index) {
                //           return Container(
                //               padding:
                //               const EdgeInsets.only(right: 10, left: 10),
                //               child: Row(
                //                 mainAxisAlignment: messages[index].code == 0
                //                     ? MainAxisAlignment.end
                //                     : MainAxisAlignment.start,
                //                 children: [
                //                   messages[index].code == 1
                //                       ? Container(
                //                     height: 30,
                //                     width: 30,
                //                     child: CircleAvatar(
                //                       // backgroundColor: Colors.brown,
                //                       backgroundImage: AssetImage(
                //                           'assets/images/bot.png'),
                //                     ),
                //                   )
                //                       : SizedBox(),
                //                   messages[index].code == 0
                //                       ? Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Bubble(
                //                       showNip: true,
                //                       nip: BubbleNip.rightBottom,
                //                       color: Color.fromRGBO(195, 246, 202, 1.0),
                //                       child: SizedBox(
                //                         width: MediaQuery.of(context).size.width * 0.4,
                //                         child: Text(
                //                             messages[index].message!,
                //                             maxLines: 3,
                //                             softWrap: true,
                //                             overflow:
                //                             TextOverflow.ellipsis,
                //                             textAlign: TextAlign.left,
                //                             style: TextStyle(
                //                                 fontSize: _fontSize)),
                //                       ),
                //                       elevation: 0.0,
                //                       radius: Radius.circular(15),
                //                     ),
                //                   )
                //                       : Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Bubble(
                //                       showNip: true,
                //                       nip: BubbleNip.leftBottom,
                //                       color: Theme.of(context).primaryColor.withOpacity(0.2),
                //                       child: messages[index].widget,
                //                       elevation: 0.0,
                //                       radius: Radius.circular(15),
                //                     ),
                //                   ),
                //                   messages[index].code == 0
                //                       ? Container(
                //                     height: 30,
                //                     width: 30,
                //                     child: CircleAvatar(
                //                       // backgroundColor: Colors.green,
                //                       backgroundImage: NetworkImage(
                //                           _userController
                //                               .userImage.value),
                //                     ),
                //                   )
                //                       : SizedBox()
                //                 ],
                //               ));
                //         })),
                const Divider(),
                Container(
                  child: ListTile(
                    dense: true,
                    title: CustomTextField(
                      borderColor: Theme.of(context).primaryColor,
                      controller: _userController.messageInputText,
                      textInputType: TextInputType.text,
                      isReadOnly:
                      // assistantStart? true :
                      false,
                      hint: 'write something here...',
                      borderRadius: 25.0,
                      suffixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          iconSize: 25.0,
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.send,
                          )),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
