// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


// class UserData {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? photourl;
//   final String? location;
//   final String? fcmtoken;
//   final Timestamp? addtime;
//   UserData({
//     this.id,
//     this.name,
//     this.email,
//     this.photourl,
//     this.location,
//     this.fcmtoken,
//     this.addtime,
//   });
//   factory UserData.fromFirestore(
//       DocumentSnapshot<Map<String, dynamic>> snapshot,
//       SnapshotOptions? options) {
//     final data = snapshot.data();
//     return UserData(
//       id: data?['id'],
//       name: data?['name'],
//       email: data?['email'],
//       photourl: data?['photourl'],
//       location: data?['location'],
//       fcmtoken: data?['fcmtoken'],
//       addtime: data?['addtime'],
//     );
//   }

//   Map<String, dynamic> toFirestore() {
//     return {
//       if (id != null) "id": id,
//       if (name != null) "name": name,
//       if (email != null) "email": email,
//       if (id != null) "photourl": photourl,
//       if (id != null) "location": location,
//       if (id != null) "fcmtoken": fcmtoken,
//       if (id != null) "addtime": addtime,
//     };
//   }
// }

class UserLoginResponseEntity {
  String? accessToken;
  String? displayName;
  String? email;
  String? photoUrl;
  UserLoginResponseEntity({
    this.accessToken,
    this.displayName,
    this.email,
    this.photoUrl,
  });

  UserLoginResponseEntity copyWith({
    String? accessToken,
    String? displayName,
    String? email,
    String? photoUrl,
  }) {
    return UserLoginResponseEntity(
      accessToken: accessToken ?? this.accessToken,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'displayName': displayName,
      'email': email,
      'photoUrl': photoUrl,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory UserLoginResponseEntity.fromJson(String source) =>
      UserLoginResponseEntity.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserLoginResponseEntity(accessToken: $accessToken, displayName: $displayName, email: $email, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(covariant UserLoginResponseEntity other) {
    if (identical(this, other)) return true;

    return other.accessToken == accessToken &&
        other.displayName == displayName &&
        other.email == email &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode {
    return accessToken.hashCode ^
        displayName.hashCode ^
        email.hashCode ^
        photoUrl.hashCode;
  }
}
