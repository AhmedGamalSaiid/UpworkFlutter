import 'package:cloud_firestore/cloud_firestore.dart';

class JobDataModel {
  JobDataModel({
    this.authID,
    this.freelancerNeed,
    this.jobBudget,
    this.jobCategory,
    this.jobDescription,
    this.jobDuration,
    this.jobExperienceLevel,
    this.jobImages,
    this.jobPaymentType,
    this.jobTitle,
    this.jobType,
    this.jobVisibility,
    this.skills,
    this.postTime,
  });

  String authID;
  String freelancerNeed;
  String jobBudget;
  String jobCategory;
  String jobDescription;
  String jobDuration;
  String jobExperienceLevel;
  List jobImages;
  String jobPaymentType;
  String jobTitle;
  String jobType;
  String jobVisibility;
  List skills;
  Timestamp postTime;

  factory JobDataModel.fromJson(Map<String, dynamic> json) => JobDataModel(
      authID: json["authID"],
      freelancerNeed: json["freelancerNeed"],
      jobBudget: json["jobBudget"],
      jobCategory: json["jobCategory"],
      jobDescription: json["jobDescription"],
      jobDuration: json["jobDuration"],
      jobExperienceLevel: json["jobExperienceLevel"],
      jobImages: json["jobImages"],
      jobPaymentType: json["jobPaymentType"],
      jobTitle: json["jobTitle"],
      jobType: json["jobType"],
      jobVisibility: json["jobVisibility"],
      skills: json["skills"],
      postTime: json["postTime"]);
}
