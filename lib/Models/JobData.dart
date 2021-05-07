class JobDataModel {
  JobDataModel({
    this.authID,
    this.freelancerNeed,
    this.jobBudget,
    this.jobCategory,
    this.jobDecription,
    this.jobDuration,
    this.jobExperienceLevel,
    this.jobImages,
    this.jobPaymentType,
    this.jobTitle,
    this.jobType,
    this.jobVisibility,
  });

  String authID;
  String freelancerNeed;
  String jobBudget;
  String jobCategory;
  String jobDecription;
  String jobDuration;
  String jobExperienceLevel;
  List jobImages;
  String jobPaymentType;
  String jobTitle;
  String jobType;
  String jobVisibility;

  factory JobDataModel.fromJson(Map<String, dynamic> json) => JobDataModel(
        authID: json["authID"],
        freelancerNeed: json["freelancerNeed"],
        jobBudget: json["jobBudget"],
        jobCategory: json["jobCategory"],
        jobDecription: json["jobDecription"],
        jobDuration: json["jobDuration"],
        jobExperienceLevel: json["jobExperienceLevel"],
        jobImages: json["jobImages"],
        jobPaymentType: json["jobPaymentType"],
        jobTitle: json["jobTitle"],
        jobType: json["jobType"],
        jobVisibility: json["jobVisibility"],
      );
}
