class UserDataModel {
  UserDataModel(
      {this.authID,
      this.profilePhoto,
      this.badge,
      this.expert,
      this.none,
      this.risingTalent,
      this.topRated,
      this.company,
      this.companyLocation,
      this.companyName,
      this.jobTitile,
      this.stillWork,
      this.connects,
      this.education,
      this.areaOfStudy,
      this.degree,
      this.school,
      this.email,
      this.expertiseLevel,
      this.firstName,
      this.hourlyRate,
      this.jobCategory,
      this.jobHistory,
      this.languages,
      this.langProf,
      this.language,
      this.location,
      this.city,
      this.country,
      this.street,
      this.zip,
      this.overview,
      this.password,
      this.portfolio,
      this.skills,
      this.title,
      this.totalEarnings,
      this.totalHours,
      this.totalJobs,
      this.userType,
      this.englishProficiency});

  Map badge;
  String authID;
  String profilePhoto;
  String expert;
  String none;
  String risingTalent;
  String topRated;
  Map company;
  String companyLocation;
  String companyName;
  String jobTitile;
  bool stillWork;
  int connects;
  Map education;
  String areaOfStudy;
  String degree;
  String school;
  String email;
  String expertiseLevel;
  String firstName;
  String hourlyRate;
  String jobCategory;
  List jobHistory;
  List languages;
  String langProf;
  String language;
  String lastName;
  Map location;
  String city;
  String country;
  String street;
  String zip;
  String mobileNumber;
  String overview;
  String password;
  List portfolio;
  Map skills;
  String title;
  int totalEarnings;
  int totalHours;
  String totalJobs;
  String userType;
  String englishProficiency;
  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        badge: json["badge"],
        expert: json["expert"],
        none: json["none"],
        risingTalent: json["risingTalent"],
        topRated: json["topRated"],
        company: json["company"],
        companyLocation: json["companyLocation"],
        companyName: json["companyName"],
        jobTitile: json["jobTitile"],
        stillWork: json["stillWork"],
        connects: json["connects"],
        education: json["education"],
        areaOfStudy: json["areaOfStudy"],
        degree: json["degree"],
        school: json["school"],
        email: json["email"],
        expertiseLevel: json["expertiseLevel"],
        firstName: json["firstName"],
        hourlyRate: json["hourlyRate"],
        jobHistory: json["jobHistory"],
        languages: json["languages"],
        langProf: json["langProf"],
        language: json["language"],
        location: json["location"],
        city: json["city"],
        country: json["country"],
        street: json["street"],
        zip: json["zip"],
        overview: json["overview"],
        password: json["password"],
        portfolio: json["portfolio"],
        skills: json["skills"],
        title: json["title"],
        totalEarnings: json["totalEarnings"],
        totalHours: json["totalHours"],
        totalJobs: json["totalJobs"],
        userType: json["userType"],
        profilePhoto: json["profilePhoto"],
        englishProficiency: json["englishProficiency"],
      );
}
