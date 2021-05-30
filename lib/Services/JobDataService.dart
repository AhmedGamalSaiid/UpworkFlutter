import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:upwork/Models/JobData.dart';
import 'package:upwork/firebaseApp.dart';

class JobDataService {
  Future<List<JobDataModel>> getJobsData() async {
    List<JobDataModel> jobs = [];
    try {
      await database.collection('job').get().then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          jobs.add(JobDataModel.fromJson(doc.data()));
        });
        print(jobs.length);
      });
    } catch (e) {
      print(e);
    }
    return jobs;
  }

  Future<List<JobDataModel>> getJobsSearch(val) async {
    List<JobDataModel> jobs = [];
    try {
      await database.collection('job').get().then((QuerySnapshot res) {
        res.docs.forEach((doc) {
          if (doc.data()["jobTitle"].contains(val)) {
            jobs.add(JobDataModel.fromJson(doc.data()));
          }
        });
      });
    } catch (e) {
      print(e);
    }
    print(jobs);
    return jobs;
  }
}
