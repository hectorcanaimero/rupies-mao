// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? displayName,
    String? phone,
    bool? isContractor,
    bool? endRegister,
    String? address,
    String? cep,
    String? cpfcnpj,
    String? push,
    String? photoUrl,
    double? rating,
    String? email,
    String? seloProfImg,
    String? seloProfText,
  })  : _displayName = displayName,
        _phone = phone,
        _isContractor = isContractor,
        _endRegister = endRegister,
        _address = address,
        _cep = cep,
        _cpfcnpj = cpfcnpj,
        _push = push,
        _photoUrl = photoUrl,
        _rating = rating,
        _email = email,
        _seloProfImg = seloProfImg,
        _seloProfText = seloProfText;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "isContractor" field.
  bool? _isContractor;
  bool get isContractor => _isContractor ?? false;
  set isContractor(bool? val) => _isContractor = val;

  bool hasIsContractor() => _isContractor != null;

  // "endRegister" field.
  bool? _endRegister;
  bool get endRegister => _endRegister ?? false;
  set endRegister(bool? val) => _endRegister = val;

  bool hasEndRegister() => _endRegister != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "cpfcnpj" field.
  String? _cpfcnpj;
  String get cpfcnpj => _cpfcnpj ?? '';
  set cpfcnpj(String? val) => _cpfcnpj = val;

  bool hasCpfcnpj() => _cpfcnpj != null;

  // "push" field.
  String? _push;
  String get push => _push ?? '';
  set push(String? val) => _push = val;

  bool hasPush() => _push != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "selo_prof_img" field.
  String? _seloProfImg;
  String get seloProfImg => _seloProfImg ?? '';
  set seloProfImg(String? val) => _seloProfImg = val;

  bool hasSeloProfImg() => _seloProfImg != null;

  // "selo_prof_text" field.
  String? _seloProfText;
  String get seloProfText => _seloProfText ?? '';
  set seloProfText(String? val) => _seloProfText = val;

  bool hasSeloProfText() => _seloProfText != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        displayName: data['display_name'] as String?,
        phone: data['phone'] as String?,
        isContractor: data['isContractor'] as bool?,
        endRegister: data['endRegister'] as bool?,
        address: data['address'] as String?,
        cep: data['cep'] as String?,
        cpfcnpj: data['cpfcnpj'] as String?,
        push: data['push'] as String?,
        photoUrl: data['photo_url'] as String?,
        rating: castToType<double>(data['rating']),
        email: data['email'] as String?,
        seloProfImg: data['selo_prof_img'] as String?,
        seloProfText: data['selo_prof_text'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'display_name': _displayName,
        'phone': _phone,
        'isContractor': _isContractor,
        'endRegister': _endRegister,
        'address': _address,
        'cep': _cep,
        'cpfcnpj': _cpfcnpj,
        'push': _push,
        'photo_url': _photoUrl,
        'rating': _rating,
        'email': _email,
        'selo_prof_img': _seloProfImg,
        'selo_prof_text': _seloProfText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'isContractor': serializeParam(
          _isContractor,
          ParamType.bool,
        ),
        'endRegister': serializeParam(
          _endRegister,
          ParamType.bool,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'cpfcnpj': serializeParam(
          _cpfcnpj,
          ParamType.String,
        ),
        'push': serializeParam(
          _push,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'selo_prof_img': serializeParam(
          _seloProfImg,
          ParamType.String,
        ),
        'selo_prof_text': serializeParam(
          _seloProfText,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        isContractor: deserializeParam(
          data['isContractor'],
          ParamType.bool,
          false,
        ),
        endRegister: deserializeParam(
          data['endRegister'],
          ParamType.bool,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        cpfcnpj: deserializeParam(
          data['cpfcnpj'],
          ParamType.String,
          false,
        ),
        push: deserializeParam(
          data['push'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        seloProfImg: deserializeParam(
          data['selo_prof_img'],
          ParamType.String,
          false,
        ),
        seloProfText: deserializeParam(
          data['selo_prof_text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        displayName == other.displayName &&
        phone == other.phone &&
        isContractor == other.isContractor &&
        endRegister == other.endRegister &&
        address == other.address &&
        cep == other.cep &&
        cpfcnpj == other.cpfcnpj &&
        push == other.push &&
        photoUrl == other.photoUrl &&
        rating == other.rating &&
        email == other.email &&
        seloProfImg == other.seloProfImg &&
        seloProfText == other.seloProfText;
  }

  @override
  int get hashCode => const ListEquality().hash([
        displayName,
        phone,
        isContractor,
        endRegister,
        address,
        cep,
        cpfcnpj,
        push,
        photoUrl,
        rating,
        email,
        seloProfImg,
        seloProfText
      ]);
}

UserStruct createUserStruct({
  String? displayName,
  String? phone,
  bool? isContractor,
  bool? endRegister,
  String? address,
  String? cep,
  String? cpfcnpj,
  String? push,
  String? photoUrl,
  double? rating,
  String? email,
  String? seloProfImg,
  String? seloProfText,
}) =>
    UserStruct(
      displayName: displayName,
      phone: phone,
      isContractor: isContractor,
      endRegister: endRegister,
      address: address,
      cep: cep,
      cpfcnpj: cpfcnpj,
      push: push,
      photoUrl: photoUrl,
      rating: rating,
      email: email,
      seloProfImg: seloProfImg,
      seloProfText: seloProfText,
    );
