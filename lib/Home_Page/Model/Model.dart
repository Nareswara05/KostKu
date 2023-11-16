// To parse this JSON data, do
//
//     final kosModel = kosModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

KosModel kosModelFromJson(String str) => KosModel.fromJson(json.decode(str));

String kosModelToJson(KosModel data) => json.encode(data.toJson());

class KosModel {
  final Kosaituminah pondokdamai;
  final Kosaituminah koslestari;
  final Kosaituminah kosgajahmada;
  final Kosaituminah kosiburahma;
  final Kosaituminah koskosbangfaiz;
  final Kosaituminah kosgriyadamai;
  final Kosaituminah kosmugiwara;
  final Kosaituminah kospurple;
  final Kosaituminah kosgrahabahagia;
  final Kosaituminah kosasyik;
  final Kosaituminah kosharmonyliving;
  final Kosaituminah koswismaserenity;
  final Kosaituminah koscasaharmonia;
  final Kosaituminah kosmbahmuji;
  final Kosaituminah kosaituminah;
  final Kosaituminah kosmitra;
  final Kosaituminah kosputra;
  final Kosaituminah kospermata;
  final String message;

  KosModel({
    required this.pondokdamai,
    required this.koslestari,
    required this.kosgajahmada,
    required this.kosiburahma,
    required this.koskosbangfaiz,
    required this.kosgriyadamai,
    required this.kosmugiwara,
    required this.kospurple,
    required this.kosgrahabahagia,
    required this.kosasyik,
    required this.kosharmonyliving,
    required this.koswismaserenity,
    required this.koscasaharmonia,
    required this.kosmbahmuji,
    required this.kosaituminah,
    required this.kosmitra,
    required this.kosputra,
    required this.kospermata,
    required this.message,
  });

  factory KosModel.fromJson(Map<String, dynamic> json) => KosModel(
    pondokdamai: Kosaituminah.fromJson(json["pondokdamai"]),
    koslestari: Kosaituminah.fromJson(json["koslestari"]),
    kosgajahmada: Kosaituminah.fromJson(json["kosgajahmada"]),
    kosiburahma: Kosaituminah.fromJson(json["kosiburahma"]),
    koskosbangfaiz: Kosaituminah.fromJson(json["koskosbangfaiz"]),
    kosgriyadamai: Kosaituminah.fromJson(json["kosgriyadamai"]),
    kosmugiwara: Kosaituminah.fromJson(json["kosmugiwara"]),
    kospurple: Kosaituminah.fromJson(json["kospurple"]),
    kosgrahabahagia: Kosaituminah.fromJson(json["kosgrahabahagia"]),
    kosasyik: Kosaituminah.fromJson(json["kosasyik"]),
    kosharmonyliving: Kosaituminah.fromJson(json["kosharmonyliving"]),
    koswismaserenity: Kosaituminah.fromJson(json["koswismaserenity"]),
    koscasaharmonia: Kosaituminah.fromJson(json["koscasaharmonia"]),
    kosmbahmuji: Kosaituminah.fromJson(json["kosmbahmuji"]),
    kosaituminah: Kosaituminah.fromJson(json["kosaituminah"]),
    kosmitra: Kosaituminah.fromJson(json["kosmitra"]),
    kosputra: Kosaituminah.fromJson(json["kosputra"]),
    kospermata: Kosaituminah.fromJson(json["kospermata"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "pondokdamai": pondokdamai.toJson(),
    "koslestari": koslestari.toJson(),
    "kosgajahmada": kosgajahmada.toJson(),
    "kosiburahma": kosiburahma.toJson(),
    "koskosbangfaiz": koskosbangfaiz.toJson(),
    "kosgriyadamai": kosgriyadamai.toJson(),
    "kosmugiwara": kosmugiwara.toJson(),
    "kospurple": kospurple.toJson(),
    "kosgrahabahagia": kosgrahabahagia.toJson(),
    "kosasyik": kosasyik.toJson(),
    "kosharmonyliving": kosharmonyliving.toJson(),
    "koswismaserenity": koswismaserenity.toJson(),
    "koscasaharmonia": koscasaharmonia.toJson(),
    "kosmbahmuji": kosmbahmuji.toJson(),
    "kosaituminah": kosaituminah.toJson(),
    "kosmitra": kosmitra.toJson(),
    "kosputra": kosputra.toJson(),
    "kospermata": kospermata.toJson(),
    "message": message,
  };

  List<Kosaituminah> toKosList() {
    return [
      pondokdamai,
      koslestari,
      kosgajahmada,
      kosiburahma,
      koskosbangfaiz,
      kosgriyadamai,
      kosmugiwara,
      kospurple,
      kosgrahabahagia,
      kosasyik,
      kosharmonyliving,
      koswismaserenity,
      koscasaharmonia,
      kosmbahmuji,
      kosaituminah,
      kosmitra,
      kosputra,
      kospermata,
    ];
  }
}

class Kosaituminah {
  final int id;
  final String namaKos;
  final Kota kota;
  final double ratingKos;
  final String gambarKos;
  final int hargaKos;
  final String alamatKos;
  final String namaPemilikKos;
  final List<String> fasilitas;
  final JenisKos jenisKos;
  final List<String> peraturanKos;
  final int sisaKamar;

  Kosaituminah({
    required this.id,
    required this.namaKos,
    required this.kota,
    required this.ratingKos,
    required this.gambarKos,
    required this.hargaKos,
    required this.alamatKos,
    required this.namaPemilikKos,
    required this.fasilitas,
    required this.jenisKos,
    required this.peraturanKos,
    required this.sisaKamar,
  });

  factory Kosaituminah.fromJson(Map<String, dynamic> json) => Kosaituminah(
    id: json["id"],
    namaKos: json["nama_kos"],
    kota: kotaValues.map[json["kota"]]!,
    ratingKos: json["rating_kos"]?.toDouble(),
    gambarKos: json["gambar_kos"],
    hargaKos: json["harga_kos"],
    alamatKos: json["alamat_kos"],
    namaPemilikKos: json["nama_pemilik_kos"],
    fasilitas: List<String>.from(json["fasilitas"].map((x) => x)),
    jenisKos: jenisKosValues.map[json["jenis_kos"]]!,
    peraturanKos: List<String>.from(json["peraturan_kos"].map((x) => x)),
    sisaKamar: json["sisa_kamar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama_kos": namaKos,
    "kota": kotaValues.reverse[kota],
    "rating_kos": ratingKos,
    "gambar_kos": gambarKos,
    "harga_kos": hargaKos,
    "alamat_kos": alamatKos,
    "nama_pemilik_kos": namaPemilikKos,
    "fasilitas": List<dynamic>.from(fasilitas.map((x) => x)),
    "jenis_kos": jenisKosValues.reverse[jenisKos],
    "peraturan_kos": List<dynamic>.from(peraturanKos.map((x) => x)),
    "sisa_kamar": sisaKamar,
  };
}

enum JenisKos {
  CAMPUR,
  CAMPURAN,
  PUTRA,
  PUTRI
}

final jenisKosValues = EnumValues({
  "Campur": JenisKos.CAMPUR,
  "Campuran": JenisKos.CAMPURAN,
  "Putra": JenisKos.PUTRA,
  "Putri": JenisKos.PUTRI
});

enum Kota {
  BANDUNG,
  JAKARTA,
  KUDUS,
  SEMARANG
}

final kotaValues = EnumValues({
  "Bandung": Kota.BANDUNG,
  "Jakarta": Kota.JAKARTA,
  "Kudus": Kota.KUDUS,
  "Semarang": Kota.SEMARANG
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
