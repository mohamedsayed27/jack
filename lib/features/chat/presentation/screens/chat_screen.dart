import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiffy/jiffy.dart';
import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/assets_path/svg_path.dart';
import '../chat_widgets/build_another_person_message_item.dart';
import '../chat_widgets/build_my_message_item.dart';
import '../chat_widgets/chat_text_field.dart';
import '../chat_widgets/image_container.dart';
import '../cubit/chat_cubit/chat_cubit.dart';
import '../cubit/chat_cubit/chat_state.dart';

class ChatScreenArgs {
  final String? receiverId;
  final String? receiverName;
  final String? receiverImg;

  ChatScreenArgs({
    required this.receiverId,
    required this.receiverName,
    required this.receiverImg,
  });
}

class ChatScreen extends StatefulWidget {
  final ChatScreenArgs chatScreenArgs;

  const ChatScreen({
    Key? key,
    required this.chatScreenArgs,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController chatController = TextEditingController();
  bool isTapped = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.chatScreenArgs.receiverName!,
          style: TextStyle(
              color: const Color(0xff263238),
              fontFamily: FontsPath.almaraiBold,
              fontSize: 18.sp),
        ),
        toolbarHeight: 60.h,
        titleSpacing: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 18.0.w),
            child: SvgPicture.asset(
              SvgPath.more,
              height: 40.h,
              width: 40.w,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              itemBuilder: (BuildContext context, int index) {
                if (index%2==0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: const MyMessageItem(
                      message: "مرحبا بك!",
                      time: "2:08",
                      isSeen: true,
                    ),
                  );
                } else {
                  return  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: const AnotherPersonMessageItem(
                      message: "مرحبا بك!",
                      time: "2:08",
                    ),
                  );
                }
              },
              itemCount: 10,
            ),
            // ListView.builder(
            //   reverse: true,
            //   padding: EdgeInsets.symmetric(horizontal: 20.h),
            //   itemBuilder: (BuildContext context, int index) {
            //     if (index%2==0) {
            //       return Padding(
            //               padding: EdgeInsets.symmetric(vertical: 20.h),
            //               child: const MyMessageItem(
            //                 message: "مرحبا بك!",
            //                 time: "2:08",
            //                 isSeen: true,
            //               ),
            //             );
            //     } else {
            //       if (cubit.messagesList[index].isMessageRead! == false) {
            //         cubit.updateMessageSeenIcon(
            //           receiverId: widget.chatScreenArgs.receiverId,
            //           senderId: "userId",
            //           messageId: cubit.messagesList[index].messageId!,
            //         );
            //       }
            //       return  Padding(
            //               padding: EdgeInsets.symmetric(vertical: 20.h),
            //               child: const AnotherPersonMessageItem(
            //                 message: "مرحبا بك!",
            //                 time: "2:08",
            //               ),
            //             );
            //     }
            //   },
            //   itemCount: 10,
            // ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              height: 100.h,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: () {
                        // cubit.sendMessage(receiverId: widget.chatScreenArgs.receiverId, senderId: "userId", receiverName: widget.chatScreenArgs.receiverName, senderName: senderName, receiverImg: widget.chatScreenArgs.receiverId, senderImg: , text: chatController.text, dateTime: DateTime.now().toIso8601String(), image: null, messageType: "text", isMessageRead: false);
                        chatController.clear();
                        isTapped = false;
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                          size: 24.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: ChatTextField(
                      pickImageFunction: () {
                      },
                      controller: chatController,
                      isTapped: isTapped,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // BlocConsumer<ChatCubit, ChatState>(
      //   listener: (context, state) {},
      //   builder: (context, state) {
      //     return Column(
      //       children: [
      //         Expanded(
      //           child: ListView.builder(
      //             reverse: true,
      //             padding: EdgeInsets.symmetric(horizontal: 20.h),
      //             itemBuilder: (BuildContext context, int index) {
      //               if (index%2==0) {
      //                 return Padding(
      //                   padding: EdgeInsets.symmetric(vertical: 20.h),
      //                   child: const MyMessageItem(
      //                     message: "مرحبا بك!",
      //                     time: "2:08",
      //                     isSeen: true,
      //                   ),
      //                 );
      //               } else {
      //                 return  Padding(
      //                   padding: EdgeInsets.symmetric(vertical: 20.h),
      //                   child: const AnotherPersonMessageItem(
      //                     message: "مرحبا بك!",
      //                     time: "2:08",
      //                   ),
      //                 );
      //               }
      //             },
      //             itemCount: 10,
      //           ),
      //           // ListView.builder(
      //           //   reverse: true,
      //           //   padding: EdgeInsets.symmetric(horizontal: 20.h),
      //           //   itemBuilder: (BuildContext context, int index) {
      //           //     if (index%2==0) {
      //           //       return Padding(
      //           //               padding: EdgeInsets.symmetric(vertical: 20.h),
      //           //               child: const MyMessageItem(
      //           //                 message: "مرحبا بك!",
      //           //                 time: "2:08",
      //           //                 isSeen: true,
      //           //               ),
      //           //             );
      //           //     } else {
      //           //       if (cubit.messagesList[index].isMessageRead! == false) {
      //           //         cubit.updateMessageSeenIcon(
      //           //           receiverId: widget.chatScreenArgs.receiverId,
      //           //           senderId: "userId",
      //           //           messageId: cubit.messagesList[index].messageId!,
      //           //         );
      //           //       }
      //           //       return  Padding(
      //           //               padding: EdgeInsets.symmetric(vertical: 20.h),
      //           //               child: const AnotherPersonMessageItem(
      //           //                 message: "مرحبا بك!",
      //           //                 time: "2:08",
      //           //               ),
      //           //             );
      //           //     }
      //           //   },
      //           //   itemCount: 10,
      //           // ),
      //         ),
      //         Padding(
      //           padding: EdgeInsets.symmetric(horizontal: 15.w),
      //           child: SizedBox(
      //             height: 100.h,
      //             width: double.infinity,
      //             child: Row(
      //               children: [
      //                 SizedBox(
      //                   width: 50.w,
      //                   height: 50.h,
      //                   child: ElevatedButton(
      //                     onPressed: () {
      //                       // cubit.sendMessage(receiverId: widget.chatScreenArgs.receiverId, senderId: "userId", receiverName: widget.chatScreenArgs.receiverName, senderName: senderName, receiverImg: widget.chatScreenArgs.receiverId, senderImg: , text: chatController.text, dateTime: DateTime.now().toIso8601String(), image: null, messageType: "text", isMessageRead: false);
      //                       chatController.clear();
      //                       isTapped = false;
      //                     },
      //                     style: ElevatedButton.styleFrom(
      //                       shape: const CircleBorder(),
      //                     ),
      //                     child: Directionality(
      //                       textDirection: TextDirection.ltr,
      //                       child: Icon(
      //                         Icons.send_rounded,
      //                         color: Colors.white,
      //                         size: 24.r,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: 10.w,
      //                 ),
      //                 Expanded(
      //                   child: ChatTextField(
      //                     pickImageFunction: () {
      //                     },
      //                     controller: chatController,
      //                     isTapped: isTapped,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         )
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
