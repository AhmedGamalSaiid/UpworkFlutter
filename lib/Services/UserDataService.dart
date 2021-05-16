import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:upwork/Models/UserData.dart';
import 'package:upwork/firebaseApp.dart';
import 'authService.dart';

class UserDataService {
  Future<UserDataModel> getUserData() async {
    UserDataModel user;
    try {
      String uid =
          await AuthService().getCurrentUserUid().then((value) => value);
      // String uid = FirebaseAuth.instance.currentUser.uid;
      await database
          .collection('talent')
          .where("authID", isEqualTo: uid)
          .get()
          .then((QuerySnapshot res) {
        user = UserDataModel.fromJson(res.docs[0].data());
      });
    } catch (e) {
      print(e);
    }
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
}




