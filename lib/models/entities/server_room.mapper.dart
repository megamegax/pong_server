// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server_room.dart';

class ServerRoomMapper extends ClassMapperBase<ServerRoom> {
  ServerRoomMapper._();

  static ServerRoomMapper? _instance;
  static ServerRoomMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerRoomMapper._());
      ServerPlayerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRoom';

  static String _$name(ServerRoom v) => v.name;
  static const Field<ServerRoom, String> _f$name = Field('name', _$name);
  static List<ServerPlayer> _$players(ServerRoom v) => v.players;
  static const Field<ServerRoom, List<ServerPlayer>> _f$players =
      Field('players', _$players);
  static String _$owner(ServerRoom v) => v.owner;
  static const Field<ServerRoom, String> _f$owner = Field('owner', _$owner);
  static String _$id(ServerRoom v) => v.id;
  static const Field<ServerRoom, String> _f$id = Field('id', _$id);
  static bool _$gameStarted(ServerRoom v) => v.gameStarted;
  static const Field<ServerRoom, bool> _f$gameStarted =
      Field('gameStarted', _$gameStarted);
  static String _$gravityRule(ServerRoom v) => v.gravityRule;
  static const Field<ServerRoom, String> _f$gravityRule =
      Field('gravityRule', _$gravityRule);
  static bool _$isFull(ServerRoom v) => v.isFull;
  static const Field<ServerRoom, bool> _f$isFull =
      Field('isFull', _$isFull, mode: FieldMode.member);

  @override
  final MappableFields<ServerRoom> fields = const {
    #name: _f$name,
    #players: _f$players,
    #owner: _f$owner,
    #id: _f$id,
    #gameStarted: _f$gameStarted,
    #gravityRule: _f$gravityRule,
    #isFull: _f$isFull,
  };

  static ServerRoom _instantiate(DecodingData data) {
    return ServerRoom(
        data.dec(_f$name),
        data.dec(_f$players),
        data.dec(_f$owner),
        data.dec(_f$id),
        data.dec(_f$gameStarted),
        data.dec(_f$gravityRule));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRoom fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRoom>(map);
  }

  static ServerRoom fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRoom>(json);
  }
}

mixin ServerRoomMappable {
  String toJson() {
    return ServerRoomMapper.ensureInitialized()
        .encodeJson<ServerRoom>(this as ServerRoom);
  }

  Map<String, dynamic> toMap() {
    return ServerRoomMapper.ensureInitialized()
        .encodeMap<ServerRoom>(this as ServerRoom);
  }

  ServerRoomCopyWith<ServerRoom, ServerRoom, ServerRoom> get copyWith =>
      _ServerRoomCopyWithImpl(this as ServerRoom, $identity, $identity);
  @override
  String toString() {
    return ServerRoomMapper.ensureInitialized()
        .stringifyValue(this as ServerRoom);
  }

  @override
  bool operator ==(Object other) {
    return ServerRoomMapper.ensureInitialized()
        .equalsValue(this as ServerRoom, other);
  }

  @override
  int get hashCode {
    return ServerRoomMapper.ensureInitialized().hashValue(this as ServerRoom);
  }
}

extension ServerRoomValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRoom, $Out> {
  ServerRoomCopyWith<$R, ServerRoom, $Out> get $asServerRoom =>
      $base.as((v, t, t2) => _ServerRoomCopyWithImpl(v, t, t2));
}

abstract class ServerRoomCopyWith<$R, $In extends ServerRoom, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ServerPlayer,
      ServerPlayerCopyWith<$R, ServerPlayer, ServerPlayer>> get players;
  $R call(
      {String? name,
      List<ServerPlayer>? players,
      String? owner,
      String? id,
      bool? gameStarted,
      String? gravityRule});
  ServerRoomCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerRoomCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRoom, $Out>
    implements ServerRoomCopyWith<$R, ServerRoom, $Out> {
  _ServerRoomCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRoom> $mapper =
      ServerRoomMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ServerPlayer,
          ServerPlayerCopyWith<$R, ServerPlayer, ServerPlayer>>
      get players => ListCopyWith($value.players,
          (v, t) => v.copyWith.$chain(t), (v) => call(players: v));
  @override
  $R call(
          {String? name,
          List<ServerPlayer>? players,
          String? owner,
          String? id,
          bool? gameStarted,
          String? gravityRule}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (players != null) #players: players,
        if (owner != null) #owner: owner,
        if (id != null) #id: id,
        if (gameStarted != null) #gameStarted: gameStarted,
        if (gravityRule != null) #gravityRule: gravityRule
      }));
  @override
  ServerRoom $make(CopyWithData data) => ServerRoom(
      data.get(#name, or: $value.name),
      data.get(#players, or: $value.players),
      data.get(#owner, or: $value.owner),
      data.get(#id, or: $value.id),
      data.get(#gameStarted, or: $value.gameStarted),
      data.get(#gravityRule, or: $value.gravityRule));

  @override
  ServerRoomCopyWith<$R2, ServerRoom, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerRoomCopyWithImpl($value, $cast, t);
}
