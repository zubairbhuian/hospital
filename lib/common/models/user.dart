// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  final String? id;
  final String? name;
  final String? email;
  final String? photourl;
  final String? location;
  final String? fcmtoken;
  final Timestamp? addtime;
  final String? weight;
  final String? gender;
  final String? bloodGroup;
  final String? phone;
  final String? dateOfBirth;
  
  UserData({
    this.id,
    this.name,
    this.email,
    this.photourl,
    this.location,
    this.fcmtoken,
    this.addtime,
    this.weight,
    this.gender,
    this.bloodGroup,
    this.phone,
    this.dateOfBirth,
  });
  factory UserData.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();
    return UserData(
      id: data?['id'],
      name: data?['name'],
      email: data?['email'],
      photourl: data?['photourl'],
      location: data?['location'],
      fcmtoken: data?['fcmtoken'],
      addtime: data?['addtime'],
      weight: data?['weight'],
      gender: data?['gender'],
      bloodGroup: data?['bloodGroup'],
      phone: data?['phone'],
      dateOfBirth: data?['dateOfBirth'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) "id": id,
      if (name != null) "name": name,
      if (email != null) "email": email,
      if (photourl != null) "photourl": photourl,
      if (location != null) "location": location,
      if (fcmtoken != null) "fcmtoken": fcmtoken,
      if (addtime != null) "addtime": addtime,
      if (weight != null) "weight": weight,
      if (gender != null) "gender": gender,
      if (bloodGroup != null) "bloodGroup": bloodGroup,
      if (phone != null) "phone": phone,
      if (dateOfBirth != null) "dateOfBirth": dateOfBirth,
    };
  }
}

class UserLoginResponseEntity {
  String? accessToken;
  String? displayName;
  String? email;
  String? photoUrl;
  String? weight;
  String? gender;
  String? bloodGroup;
  String? phone;
  String? dateOfBirth;
  UserLoginResponseEntity({
    this.accessToken,
    this.displayName,
    this.email,
    this.photoUrl,
    this.weight,
    this.gender,
    this.bloodGroup,
    this.phone,
    this.dateOfBirth,
  });

  UserLoginResponseEntity copyWith({
    String? accessToken,
    String? displayName,
    String? email,
    String? photoUrl,
    String? weight,
    String? gender,
    String? bloodGroup,
    String? phone,
    String? dateOfBirth,
  }) {
    return UserLoginResponseEntity(
        accessToken: accessToken ?? this.accessToken,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        photoUrl: photoUrl ?? this.photoUrl,
        weight: weight ?? this.weight,
        gender: gender ?? this.gender,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        phone: phone ?? this.phone,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'displayName': displayName,
      'email': email,
      'photoUrl': photoUrl,
      'weight': weight,
      'gender': gender,
      'bloodGroup': bloodGroup,
      'phone': phone,
      'dateOfBirth': dateOfBirth
    };
  }

  factory UserLoginResponseEntity.fromMap(Map<String, dynamic> map) {
    return UserLoginResponseEntity(
      accessToken:
          map['accessToken'] != null ? map['accessToken'] as String : null,
      displayName:
          map['displayName'] != null ? map['displayName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      photoUrl: map['photoUrl'] != null ? map['photoUrl'] as String : null,
      weight: map['weight'] != null ? map['weight'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      bloodGroup:
          map['bloodGroup'] != null ? map['bloodGroup'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      dateOfBirth:
          map['dateOfBirth'] != null ? map['dateOfBirth'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserLoginResponseEntity.fromJson(String source) =>
      UserLoginResponseEntity.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserLoginResponseEntity(accessToken: $accessToken, displayName: $displayName, email: $email, photoUrl: $photoUrl,weight:$weight,gender:$gender,bloodGroup:$bloodGroup,phone:$phone,dateOfBirth:$dateOfBirth)';
  }

  @override
  bool operator ==(covariant UserLoginResponseEntity other) {
    if (identical(this, other)) return true;

    return other.accessToken == accessToken &&
        other.displayName == displayName &&
        other.email == email &&
        other.photoUrl == photoUrl &&
        other.weight == weight &&
        other.gender == gender &&
        other.bloodGroup == bloodGroup &&
        other.phone == phone &&
        other.dateOfBirth == dateOfBirth;
  }

  @override
  int get hashCode {
    return accessToken.hashCode ^
        displayName.hashCode ^
        email.hashCode ^
        photoUrl.hashCode ^
        weight.hashCode ^
        gender.hashCode ^
        bloodGroup.hashCode ^
        phone.hashCode ^
        dateOfBirth.hashCode;
  }
}
