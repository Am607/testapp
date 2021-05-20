// import 'package:get/state_manager.dart';
// import 'package:http/http.dart';
// import 'package:testapp/Model/usersModel.dart';
// import 'package:testapp/Services/loginServices.dart';

// class Logincontroller extends GetxController {
//   var isLoading = true.obs;
//   var dataList = User().obs;

//   // @override
//   // void onInit() {
//   //   getdata();
//   //   super.onInit();
//   // }

//   void getdata() async {
//     try {
//       isLoading(true);
//       var data = await RemoteServices.authenticate(
//           password: "admin", phone: "9645353864");
//       if (data != null) {
//         dataList.value = data;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
