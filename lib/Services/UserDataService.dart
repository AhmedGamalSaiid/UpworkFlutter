import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:upwork/Models/UserData.dart';
import 'package:upwork/Models/ProposalsData.dart';
import 'package:upwork/firebaseApp.dart';
import 'authService.dart';

class UserDataService {
  Future<UserDataModel> getUserData() async {
    UserDataModel user;
    try {
      String uid =
          await AuthService().getCurrentUserUid().then((value) => value);
      await FirebaseFirestore.instance
          .collection('talent')
          .doc(uid)
          .get()
          .then((DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          print('Document exists on the database');
          user = UserDataModel.fromJson(documentSnapshot.data());
        }
      });
    } catch (e) {
      print(e);
    }
    print(user);
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

  Future<List<ProposalsDataModel>> getSubmittedProposalsData() async {
    List<ProposalsDataModel> submittedProposals = [];
    try {
      await database
          .collection('talent')
          .doc(auth.currentUser.uid)
          .collection("jobProposal")
          .where("status", isEqualTo: "proposal")
          .get()
          .then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          submittedProposals.add((ProposalsDataModel.fromJson(doc.data())));
        });
      });
    } catch (e) {
      print(e);
    }
    return submittedProposals;
  }

  Future<List<ProposalsDataModel>> getofferProposalsData() async {
    List<ProposalsDataModel> offerProposals = [];
    try {
      await database
          .collection('talent')
          .doc(auth.currentUser.uid)
          .collection("jobProposal")
          .where("status", isEqualTo: "offer")
          .get()
          .then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          offerProposals.add((ProposalsDataModel.fromJson(doc.data())));
        });
      });
    } catch (e) {
      print(e);
    }
    return offerProposals;
  }

  Future<List<ProposalsDataModel>> getContractProposalsData() async {
    List<ProposalsDataModel>  contractProposals = [];
    try {
      await database
          .collection('talent')
          .doc(auth.currentUser.uid)
          .collection("jobProposal")
          .where("status", isEqualTo: "contract")
          .get()
          .then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          contractProposals.add((ProposalsDataModel.fromJson(doc.data())));
        });
      });
    } catch (e) {
      print(e);
    }
    return  contractProposals;
  }
}
