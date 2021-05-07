import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:upwork/Models/JobDataModel.dart';
import 'package:upwork/firebaseApp.dart';

class JobDataService {
  Future<List<JobDataModel>> getJobData() async {
    List<JobDataModel> jobs = [];

    try {
      await database.collection('talent').get().then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          jobs.add(JobDataModel.fromJson(doc.data()));
          print(jobs);
        });
      });
    } catch (e) {
      print(e);
    }
    return jobs;
  }
}
