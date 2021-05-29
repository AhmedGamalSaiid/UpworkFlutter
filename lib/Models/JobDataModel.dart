class JobDataModel {
  JobDataModel({
    this.jobID,
    this.authID,
    this.jobBudged,
    this.freelancerNeed,
    this.jobCategory,
    this.jobDescription,
    this.jobDuration,
    this.jobExperienceLevel,
    this.jobPaymentType,
    this.jobVisibility,
    this.jobImages,
    this.jobTitle,
    this.jobType,
  });
  String jobID;
  String authID;
  String freelancerNeed;
  String jobBudged;
  String jobCategory;
  String jobDescription;
  String jobDuration;
  String jobExperienceLevel;
  List jobImages;
  String jobPaymentType;
  String jobTitle;
  String jobType;
  String jobVisibility;

  factory JobDataModel.fromJson(Map<String, dynamic> json) => JobDataModel(
        jobID: json["jobID"],
        authID: json["authID"],
        freelancerNeed: json["freelancerNeed"],
        jobBudged: json["jobBudged"],
        jobCategory: json["jobCategory"],
        jobDescription: json["jobDescription"],
        jobDuration: json["jobDuration"],
        jobExperienceLevel: json["jobExperienceLevel"],
        jobImages: json["jobImages"],
        jobPaymentType: json["jobPaymentType"],
        jobTitle: json["jobTitle"],
        jobType: json["jobType"],
        jobVisibility: json["jobVisibility"],
      );
}
