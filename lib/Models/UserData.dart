class UserDataModel {
  UserDataModel({
    this.authID,
    this.company,
    this.location,
    this.email,
    this.englishProficiency,
    this.expertiseLevel,
    this.firstName,
    this.lastName,
    this.hourlyRate,
    this.jobCategory,
    this.overview,
    this.password,
    this.phoneNumber,
    this.profilePhoto,
    this.school,
    this.title,
    this.userType,
  });

  String authID;
  Map company;
  Map location;
  String email;
  String englishProficiency;
  String expertiseLevel;
  String firstName;
  String lastName;
  String hourlyRate;
  String jobCategory;
  String overview;
  String password;
  String phoneNumber;
  String profilePhoto;
  String school;
  String title;
  String userType;

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        authID: json["authID"],
        company: json["company"],
        location: json["location"],
        email: json["email"],
        englishProficiency: json["englishProficiency"],
        expertiseLevel: json["expertiseLevel"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        hourlyRate: json["hourlyRate"],
        jobCategory: json["jobCategory"],
        overview: json["overview"],
        password: json["password"],
        phoneNumber: json["authID"],
        profilePhoto: json["profilePhoto"],
        school: json["school"],
        title: json["title"],
        userType: json["userType"],
      );
}
