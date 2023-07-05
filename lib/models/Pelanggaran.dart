import 'dart:convert';

Pelanggaran pelanggaranModelFromJson(String str) =>
Pelanggaran.fromJson(json.decode(str));

String pelanggaranModelToJson(Pelanggaran data) => json.encode(data.toJson());

class Pelanggaran {
  int? code;
  String? message;
  List<Data>? data;

  Pelanggaran({this.code, this.message, this.data});

  Pelanggaran.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? idYayasan;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? role;
  List<Violationa>? violationa;

  Data(
      {this.id,
      this.idYayasan,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.role,
      this.violationa});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idYayasan = json['id_yayasan'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    role = json['role'];
    if (json['violationa'] != null) {
      violationa = <Violationa>[];
      json['violationa'].forEach((v) {
        violationa!.add(new Violationa.fromJson(v));
      });
    }
  }

  get pelanggaran => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_yayasan'] = this.idYayasan;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['role'] = this.role;
    if (this.violationa != null) {
      data['violationa'] = this.violationa!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Violationa {
  int? id;
  String? userId;
  String? jeniskelamin;
  String? pelanggaran;
  String? jenispelanggaran;
  String? hukuman;
  String? foto;
  String? createdAt;
  String? updatedAt;

  Violationa(
      {this.id,
      this.userId,
      this.jeniskelamin,
      this.pelanggaran,
      this.jenispelanggaran,
      this.hukuman,
      this.foto,
      this.createdAt,
      this.updatedAt});

  Violationa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    jeniskelamin = json['jeniskelamin'];
    pelanggaran = json['pelanggaran'];
    jenispelanggaran = json['jenispelanggaran'];
    hukuman = json['hukuman'];
    foto = json['foto'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['jeniskelamin'] = this.jeniskelamin;
    data['pelanggaran'] = this.pelanggaran;
    data['jenispelanggaran'] = this.jenispelanggaran;
    data['hukuman'] = this.hukuman;
    data['foto'] = this.foto;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
