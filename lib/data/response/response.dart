import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'message')
  String? message;

  BaseResponse(this.status, this.message);
}

@JsonSerializable()
class ProfileResponse {
  @JsonKey(name: 'userId')
  String userId;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'firstName')
  String firstName;

  @JsonKey(name: 'lastName')
  String lastName;

  @JsonKey(name: 'phone')
  String phone;

  ProfileResponse(
      this.userId, this.email, this.firstName, this.lastName, this.phone);

  // From Json
  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  // To Json
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
