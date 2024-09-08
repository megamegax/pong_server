// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server_player.dart';

class ServerPlayerMapper extends ClassMapperBase<ServerPlayer> {
  ServerPlayerMapper._();

  static ServerPlayerMapper? _instance;
  static ServerPlayerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerPlayerMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ServerPlayer';

  static String _$id(ServerPlayer v) => v.id;
  static const Field<ServerPlayer, String> _f$id = Field('id', _$id);
  static String _$name(ServerPlayer v) => v.name;
  static const Field<ServerPlayer, String> _f$name = Field('name', _$name);
  static String _$element(ServerPlayer v) => v.element;
  static const Field<ServerPlayer, String> _f$element =
      Field('element', _$element);
  static String _$position(ServerPlayer v) => v.position;
  static const Field<ServerPlayer, String> _f$position =
      Field('position', _$position);
  static int _$color(ServerPlayer v) => v.color;
  static const Field<ServerPlayer, int> _f$color = Field('color', _$color);
  static int _$health(ServerPlayer v) => v.health;
  static const Field<ServerPlayer, int> _f$health = Field('health', _$health);
  static bool _$isAI(ServerPlayer v) => v.isAI;
  static const Field<ServerPlayer, bool> _f$isAI = Field('isAI', _$isAI);

  @override
  final MappableFields<ServerPlayer> fields = const {
    #id: _f$id,
    #name: _f$name,
    #element: _f$element,
    #position: _f$position,
    #color: _f$color,
    #health: _f$health,
    #isAI: _f$isAI,
  };

  static ServerPlayer _instantiate(DecodingData data) {
    return ServerPlayer(
        data.dec(_f$id),
        data.dec(_f$name),
        data.dec(_f$element),
        data.dec(_f$position),
        data.dec(_f$color),
        data.dec(_f$health),
        data.dec(_f$isAI));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerPlayer fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerPlayer>(map);
  }

  static ServerPlayer fromJson(String json) {
    return ensureInitialized().decodeJson<ServerPlayer>(json);
  }
}

mixin ServerPlayerMappable {
  String toJson() {
    return ServerPlayerMapper.ensureInitialized()
        .encodeJson<ServerPlayer>(this as ServerPlayer);
  }

  Map<String, dynamic> toMap() {
    return ServerPlayerMapper.ensureInitialized()
        .encodeMap<ServerPlayer>(this as ServerPlayer);
  }

  ServerPlayerCopyWith<ServerPlayer, ServerPlayer, ServerPlayer> get copyWith =>
      _ServerPlayerCopyWithImpl(this as ServerPlayer, $identity, $identity);
  @override
  String toString() {
    return ServerPlayerMapper.ensureInitialized()
        .stringifyValue(this as ServerPlayer);
  }

  @override
  bool operator ==(Object other) {
    return ServerPlayerMapper.ensureInitialized()
        .equalsValue(this as ServerPlayer, other);
  }

  @override
  int get hashCode {
    return ServerPlayerMapper.ensureInitialized()
        .hashValue(this as ServerPlayer);
  }
}

extension ServerPlayerValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerPlayer, $Out> {
  ServerPlayerCopyWith<$R, ServerPlayer, $Out> get $asServerPlayer =>
      $base.as((v, t, t2) => _ServerPlayerCopyWithImpl(v, t, t2));
}

abstract class ServerPlayerCopyWith<$R, $In extends ServerPlayer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? name,
      String? element,
      String? position,
      int? color,
      int? health,
      bool? isAI});
  ServerPlayerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerPlayerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerPlayer, $Out>
    implements ServerPlayerCopyWith<$R, ServerPlayer, $Out> {
  _ServerPlayerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerPlayer> $mapper =
      ServerPlayerMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          String? element,
          String? position,
          int? color,
          int? health,
          bool? isAI}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (element != null) #element: element,
        if (position != null) #position: position,
        if (color != null) #color: color,
        if (health != null) #health: health,
        if (isAI != null) #isAI: isAI
      }));
  @override
  ServerPlayer $make(CopyWithData data) => ServerPlayer(
      data.get(#id, or: $value.id),
      data.get(#name, or: $value.name),
      data.get(#element, or: $value.element),
      data.get(#position, or: $value.position),
      data.get(#color, or: $value.color),
      data.get(#health, or: $value.health),
      data.get(#isAI, or: $value.isAI));

  @override
  ServerPlayerCopyWith<$R2, ServerPlayer, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerPlayerCopyWithImpl($value, $cast, t);
}
