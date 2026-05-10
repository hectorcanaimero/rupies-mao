// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceWithCategoryStruct extends BaseStruct {
  ServiceWithCategoryStruct({
    String? id,
    String? cep,
    String? name,
    String? time,
    double? price,
    bool? status,
    String? userId,
    String? address,
    DateTime? dateEnd,
    String? jobType,
    String? condition,
    DateTime? dateStart,
    int? candidated,
    String? categoryId,
    DateTime? createdAt,
    String? updatedAt,
    String? description,
    bool? endRegister,
    String? userAproved,
    String? categoryName,
  })  : _id = id,
        _cep = cep,
        _name = name,
        _time = time,
        _price = price,
        _status = status,
        _userId = userId,
        _address = address,
        _dateEnd = dateEnd,
        _jobType = jobType,
        _condition = condition,
        _dateStart = dateStart,
        _candidated = candidated,
        _categoryId = categoryId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _description = description,
        _endRegister = endRegister,
        _userAproved = userAproved,
        _categoryName = categoryName;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "dateEnd" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  set dateEnd(DateTime? val) => _dateEnd = val;

  bool hasDateEnd() => _dateEnd != null;

  // "jobType" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  set jobType(String? val) => _jobType = val;

  bool hasJobType() => _jobType != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;

  bool hasCondition() => _condition != null;

  // "dateStart" field.
  DateTime? _dateStart;
  DateTime? get dateStart => _dateStart;
  set dateStart(DateTime? val) => _dateStart = val;

  bool hasDateStart() => _dateStart != null;

  // "candidated" field.
  int? _candidated;
  int get candidated => _candidated ?? 0;
  set candidated(int? val) => _candidated = val;

  void incrementCandidated(int amount) => candidated = candidated + amount;

  bool hasCandidated() => _candidated != null;

  // "categoryId" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "endRegister" field.
  bool? _endRegister;
  bool get endRegister => _endRegister ?? false;
  set endRegister(bool? val) => _endRegister = val;

  bool hasEndRegister() => _endRegister != null;

  // "userAproved" field.
  String? _userAproved;
  String get userAproved => _userAproved ?? '';
  set userAproved(String? val) => _userAproved = val;

  bool hasUserAproved() => _userAproved != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  static ServiceWithCategoryStruct fromMap(Map<String, dynamic> data) =>
      ServiceWithCategoryStruct(
        id: data['id'] as String?,
        cep: data['cep'] as String?,
        name: data['name'] as String?,
        time: data['time'] as String?,
        price: castToType<double>(data['price']),
        status: data['status'] as bool?,
        userId: data['userId'] as String?,
        address: data['address'] as String?,
        dateEnd: data['dateEnd'] as DateTime?,
        jobType: data['jobType'] as String?,
        condition: data['condition'] as String?,
        dateStart: data['dateStart'] as DateTime?,
        candidated: castToType<int>(data['candidated']),
        categoryId: data['categoryId'] as String?,
        createdAt: data['created_at'] as DateTime?,
        updatedAt: data['updated_at'] as String?,
        description: data['description'] as String?,
        endRegister: data['endRegister'] as bool?,
        userAproved: data['userAproved'] as String?,
        categoryName: data['category_name'] as String?,
      );

  static ServiceWithCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceWithCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'cep': _cep,
        'name': _name,
        'time': _time,
        'price': _price,
        'status': _status,
        'userId': _userId,
        'address': _address,
        'dateEnd': _dateEnd,
        'jobType': _jobType,
        'condition': _condition,
        'dateStart': _dateStart,
        'candidated': _candidated,
        'categoryId': _categoryId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'description': _description,
        'endRegister': _endRegister,
        'userAproved': _userAproved,
        'category_name': _categoryName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'dateEnd': serializeParam(
          _dateEnd,
          ParamType.DateTime,
        ),
        'jobType': serializeParam(
          _jobType,
          ParamType.String,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
        'dateStart': serializeParam(
          _dateStart,
          ParamType.DateTime,
        ),
        'candidated': serializeParam(
          _candidated,
          ParamType.int,
        ),
        'categoryId': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'endRegister': serializeParam(
          _endRegister,
          ParamType.bool,
        ),
        'userAproved': serializeParam(
          _userAproved,
          ParamType.String,
        ),
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceWithCategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServiceWithCategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        dateEnd: deserializeParam(
          data['dateEnd'],
          ParamType.DateTime,
          false,
        ),
        jobType: deserializeParam(
          data['jobType'],
          ParamType.String,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
        dateStart: deserializeParam(
          data['dateStart'],
          ParamType.DateTime,
          false,
        ),
        candidated: deserializeParam(
          data['candidated'],
          ParamType.int,
          false,
        ),
        categoryId: deserializeParam(
          data['categoryId'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        endRegister: deserializeParam(
          data['endRegister'],
          ParamType.bool,
          false,
        ),
        userAproved: deserializeParam(
          data['userAproved'],
          ParamType.String,
          false,
        ),
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServiceWithCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceWithCategoryStruct &&
        id == other.id &&
        cep == other.cep &&
        name == other.name &&
        time == other.time &&
        price == other.price &&
        status == other.status &&
        userId == other.userId &&
        address == other.address &&
        dateEnd == other.dateEnd &&
        jobType == other.jobType &&
        condition == other.condition &&
        dateStart == other.dateStart &&
        candidated == other.candidated &&
        categoryId == other.categoryId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        description == other.description &&
        endRegister == other.endRegister &&
        userAproved == other.userAproved &&
        categoryName == other.categoryName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        cep,
        name,
        time,
        price,
        status,
        userId,
        address,
        dateEnd,
        jobType,
        condition,
        dateStart,
        candidated,
        categoryId,
        createdAt,
        updatedAt,
        description,
        endRegister,
        userAproved,
        categoryName
      ]);
}

ServiceWithCategoryStruct createServiceWithCategoryStruct({
  String? id,
  String? cep,
  String? name,
  String? time,
  double? price,
  bool? status,
  String? userId,
  String? address,
  DateTime? dateEnd,
  String? jobType,
  String? condition,
  DateTime? dateStart,
  int? candidated,
  String? categoryId,
  DateTime? createdAt,
  String? updatedAt,
  String? description,
  bool? endRegister,
  String? userAproved,
  String? categoryName,
}) =>
    ServiceWithCategoryStruct(
      id: id,
      cep: cep,
      name: name,
      time: time,
      price: price,
      status: status,
      userId: userId,
      address: address,
      dateEnd: dateEnd,
      jobType: jobType,
      condition: condition,
      dateStart: dateStart,
      candidated: candidated,
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: description,
      endRegister: endRegister,
      userAproved: userAproved,
      categoryName: categoryName,
    );
