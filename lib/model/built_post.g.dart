// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltPost> _$builtPostSerializer = new _$BuiltPostSerializer();

class _$BuiltPostSerializer implements StructuredSerializer<BuiltPost> {
  @override
  final Iterable<Type> types = const [BuiltPost, _$BuiltPost];
  @override
  final String wireName = 'BuiltPost';

  @override
  Iterable serialize(Serializers serializers, BuiltPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'msg',
      serializers.serialize(object.msg, specifiedType: const FullType(String)),
      'read',
      serializers.serialize(object.read, specifiedType: const FullType(bool)),
      'stars',
      serializers.serialize(object.stars,
          specifiedType: const FullType(double)),
      'at',
      serializers.serialize(object.at, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltPost deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'stars':
          result.stars = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'at':
          result.at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPost extends BuiltPost {
  @override
  final int id;
  @override
  final String msg;
  @override
  final bool read;
  @override
  final double stars;
  @override
  final String at;

  factory _$BuiltPost([void Function(BuiltPostBuilder) updates]) =>
      (new BuiltPostBuilder()..update(updates)).build();

  _$BuiltPost._({this.id, this.msg, this.read, this.stars, this.at})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'id');
    }
    if (msg == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'msg');
    }
    if (read == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'read');
    }
    if (stars == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'stars');
    }
    if (at == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'at');
    }
  }

  @override
  BuiltPost rebuild(void Function(BuiltPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPostBuilder toBuilder() => new BuiltPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPost &&
        id == other.id &&
        msg == other.msg &&
        read == other.read &&
        stars == other.stars &&
        at == other.at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), msg.hashCode), read.hashCode),
            stars.hashCode),
        at.hashCode));
  }
}

class BuiltPostBuilder implements Builder<BuiltPost, BuiltPostBuilder> {
  _$BuiltPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _msg;
  String get msg => _$this._msg;
  set msg(String msg) => _$this._msg = msg;

  bool _read;
  bool get read => _$this._read;
  set read(bool read) => _$this._read = read;

  double _stars;
  double get stars => _$this._stars;
  set stars(double stars) => _$this._stars = stars;

  String _at;
  String get at => _$this._at;
  set at(String at) => _$this._at = at;

  BuiltPostBuilder();

  BuiltPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _msg = _$v.msg;
      _read = _$v.read;
      _stars = _$v.stars;
      _at = _$v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPost;
  }

  @override
  void update(void Function(BuiltPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPost build() {
    final _$result = _$v ??
        new _$BuiltPost._(id: id, msg: msg, read: read, stars: stars, at: at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
