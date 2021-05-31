
class ProposalsDataModel {
  ProposalsDataModel({
    this.jobId,
    this.status,
  });
  String jobId;
  String status;
  factory ProposalsDataModel.fromJson(Map<String, dynamic> json) =>
      ProposalsDataModel(
        jobId: json["jobId"],
        status: json["status"],
      );
}
