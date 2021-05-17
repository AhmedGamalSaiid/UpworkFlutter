import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:upwork/Models/UserData.dart';
import 'package:upwork/firebaseApp.dart';
import 'authService.dart';

class UserDataService {
  // Future<UserDataModel> getUserData() async {
  //   UserDataModel user;
  //   try {
  //     String uid =
  //         await AuthService().getCurrentUserUid().then((value) => value);
  //     // String uid = FirebaseAuth.instance.currentUser.uid;
  //     await database
  //         .collection('talent')
  //         .where("authID", isEqualTo: uid)
  //         .get()
  //         .then((QuerySnapshot res) {
  //       user = UserDataModel.fromJson(res.docs[0].data());
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  //   return user;
  // }

  Future<UserDataModel> getUserData() async {
    UserDataModel user;
    try {
      String uid =
          await AuthService().getCurrentUserUid().then((value) => value);
      // String uid = FirebaseAuth.instance.currentUser.uid;
      await FirebaseFirestore.instance
          .collection('talent')
          .doc(uid)
          .get()
         .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document exists on the database');
       // print(documentSnapshot.data());
     // user = UserDataModel.fromJson(documentSnapshot.data());

      }
    });
      
    } catch (e) {
      print(e);
    }
    //print(user);
    return user;
  }

  Future<List<UserDataModel>> getUsersData() async {
    List<UserDataModel> users = [];
    try {
      await database.collection('talent').get().then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          users.add(UserDataModel.fromJson(doc.data()));
        });
      });
    } catch (e) {
      print(e);
    }
    return users;
  }

//update user Data
// Future<void> updateUser(Map<String, dynamic> userData ) async{
//    String uid =
//           await AuthService().getCurrentUserUid().then((value) => value);
//   return database.collection("talent")
//     .doc(uid)
//     .update(userData)
//     .then((value) => print("User Updated"))
//     .catchError((error) => print("Failed to update user: $error"));
// }

}
