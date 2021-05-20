// import 'package:get/state_manager.dart';
// import 'package:testapp/Model/calenderModel.dart';
// import 'package:testapp/Services/CalanderServices.dart';

// class CalenderController extends GetxController {
//   var isLoading = true.obs;
//   var dataList = Calender().obs;

//   @override
//   void onInit() {
//     fetchdata();
//     super.onInit();
//   }

//   void fetchdata() async {
//     try {
//       isLoading(true);
//       var data = await RemoteServices.fetchCalander();
//       if (data != null) {
//         dataList.value = data;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
