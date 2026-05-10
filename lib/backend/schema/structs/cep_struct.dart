// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CepStruct extends BaseStruct {
  CepStruct({
    String? cep,
    String? logradouro,
    String? complemento,
    String? bairro,
    String? localidade,
    String? uf,
    String? ibge,
    String? gia,
    String? ddd,
    String? siafi,
  })  : _cep = cep,
        _logradouro = logradouro,
        _complemento = complemento,
        _bairro = bairro,
        _localidade = localidade,
        _uf = uf,
        _ibge = ibge,
        _gia = gia,
        _ddd = ddd,
        _siafi = siafi;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  set logradouro(String? val) => _logradouro = val;

  bool hasLogradouro() => _logradouro != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;

  bool hasComplemento() => _complemento != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "localidade" field.
  String? _localidade;
  String get localidade => _localidade ?? '';
  set localidade(String? val) => _localidade = val;

  bool hasLocalidade() => _localidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;

  bool hasUf() => _uf != null;

  // "ibge" field.
  String? _ibge;
  String get ibge => _ibge ?? '';
  set ibge(String? val) => _ibge = val;

  bool hasIbge() => _ibge != null;

  // "gia" field.
  String? _gia;
  String get gia => _gia ?? '';
  set gia(String? val) => _gia = val;

  bool hasGia() => _gia != null;

  // "ddd" field.
  String? _ddd;
  String get ddd => _ddd ?? '';
  set ddd(String? val) => _ddd = val;

  bool hasDdd() => _ddd != null;

  // "siafi" field.
  String? _siafi;
  String get siafi => _siafi ?? '';
  set siafi(String? val) => _siafi = val;

  bool hasSiafi() => _siafi != null;

  static CepStruct fromMap(Map<String, dynamic> data) => CepStruct(
        cep: data['cep'] as String?,
        logradouro: data['logradouro'] as String?,
        complemento: data['complemento'] as String?,
        bairro: data['bairro'] as String?,
        localidade: data['localidade'] as String?,
        uf: data['uf'] as String?,
        ibge: data['ibge'] as String?,
        gia: data['gia'] as String?,
        ddd: data['ddd'] as String?,
        siafi: data['siafi'] as String?,
      );

  static CepStruct? maybeFromMap(dynamic data) =>
      data is Map ? CepStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cep': _cep,
        'logradouro': _logradouro,
        'complemento': _complemento,
        'bairro': _bairro,
        'localidade': _localidade,
        'uf': _uf,
        'ibge': _ibge,
        'gia': _gia,
        'ddd': _ddd,
        'siafi': _siafi,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'logradouro': serializeParam(
          _logradouro,
          ParamType.String,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'localidade': serializeParam(
          _localidade,
          ParamType.String,
        ),
        'uf': serializeParam(
          _uf,
          ParamType.String,
        ),
        'ibge': serializeParam(
          _ibge,
          ParamType.String,
        ),
        'gia': serializeParam(
          _gia,
          ParamType.String,
        ),
        'ddd': serializeParam(
          _ddd,
          ParamType.String,
        ),
        'siafi': serializeParam(
          _siafi,
          ParamType.String,
        ),
      }.withoutNulls;

  static CepStruct fromSerializableMap(Map<String, dynamic> data) => CepStruct(
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        logradouro: deserializeParam(
          data['logradouro'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        localidade: deserializeParam(
          data['localidade'],
          ParamType.String,
          false,
        ),
        uf: deserializeParam(
          data['uf'],
          ParamType.String,
          false,
        ),
        ibge: deserializeParam(
          data['ibge'],
          ParamType.String,
          false,
        ),
        gia: deserializeParam(
          data['gia'],
          ParamType.String,
          false,
        ),
        ddd: deserializeParam(
          data['ddd'],
          ParamType.String,
          false,
        ),
        siafi: deserializeParam(
          data['siafi'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CepStruct &&
        cep == other.cep &&
        logradouro == other.logradouro &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        localidade == other.localidade &&
        uf == other.uf &&
        ibge == other.ibge &&
        gia == other.gia &&
        ddd == other.ddd &&
        siafi == other.siafi;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cep,
        logradouro,
        complemento,
        bairro,
        localidade,
        uf,
        ibge,
        gia,
        ddd,
        siafi
      ]);
}

CepStruct createCepStruct({
  String? cep,
  String? logradouro,
  String? complemento,
  String? bairro,
  String? localidade,
  String? uf,
  String? ibge,
  String? gia,
  String? ddd,
  String? siafi,
}) =>
    CepStruct(
      cep: cep,
      logradouro: logradouro,
      complemento: complemento,
      bairro: bairro,
      localidade: localidade,
      uf: uf,
      ibge: ibge,
      gia: gia,
      ddd: ddd,
      siafi: siafi,
    );
