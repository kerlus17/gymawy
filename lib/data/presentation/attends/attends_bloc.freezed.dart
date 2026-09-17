// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attends_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllAtteds,
    required TResult Function(DateTime date) getAttendsOfDay,
    required TResult Function(String memberId) getAttendsOfMember,
    required TResult Function(String memberId) addAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllAtteds,
    TResult? Function(DateTime date)? getAttendsOfDay,
    TResult? Function(String memberId)? getAttendsOfMember,
    TResult? Function(String memberId)? addAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllAtteds,
    TResult Function(DateTime date)? getAttendsOfDay,
    TResult Function(String memberId)? getAttendsOfMember,
    TResult Function(String memberId)? addAttendance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllAttedsEvent value) getAllAtteds,
    required TResult Function(GetAttendsOfDayEvent value) getAttendsOfDay,
    required TResult Function(GetAttendsOfMemberEvent value) getAttendsOfMember,
    required TResult Function(AddAttendanceEvent value) addAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult? Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult? Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult? Function(AddAttendanceEvent value)? addAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult Function(AddAttendanceEvent value)? addAttendance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendsEventCopyWith<$Res> {
  factory $AttendsEventCopyWith(
          AttendsEvent value, $Res Function(AttendsEvent) then) =
      _$AttendsEventCopyWithImpl<$Res, AttendsEvent>;
}

/// @nodoc
class _$AttendsEventCopyWithImpl<$Res, $Val extends AttendsEvent>
    implements $AttendsEventCopyWith<$Res> {
  _$AttendsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AttendsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AttendsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllAtteds,
    required TResult Function(DateTime date) getAttendsOfDay,
    required TResult Function(String memberId) getAttendsOfMember,
    required TResult Function(String memberId) addAttendance,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllAtteds,
    TResult? Function(DateTime date)? getAttendsOfDay,
    TResult? Function(String memberId)? getAttendsOfMember,
    TResult? Function(String memberId)? addAttendance,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllAtteds,
    TResult Function(DateTime date)? getAttendsOfDay,
    TResult Function(String memberId)? getAttendsOfMember,
    TResult Function(String memberId)? addAttendance,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllAttedsEvent value) getAllAtteds,
    required TResult Function(GetAttendsOfDayEvent value) getAttendsOfDay,
    required TResult Function(GetAttendsOfMemberEvent value) getAttendsOfMember,
    required TResult Function(AddAttendanceEvent value) addAttendance,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult? Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult? Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult? Function(AddAttendanceEvent value)? addAttendance,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult Function(AddAttendanceEvent value)? addAttendance,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AttendsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllAttedsEventImplCopyWith<$Res> {
  factory _$$GetAllAttedsEventImplCopyWith(_$GetAllAttedsEventImpl value,
          $Res Function(_$GetAllAttedsEventImpl) then) =
      __$$GetAllAttedsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllAttedsEventImplCopyWithImpl<$Res>
    extends _$AttendsEventCopyWithImpl<$Res, _$GetAllAttedsEventImpl>
    implements _$$GetAllAttedsEventImplCopyWith<$Res> {
  __$$GetAllAttedsEventImplCopyWithImpl(_$GetAllAttedsEventImpl _value,
      $Res Function(_$GetAllAttedsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllAttedsEventImpl implements GetAllAttedsEvent {
  const _$GetAllAttedsEventImpl();

  @override
  String toString() {
    return 'AttendsEvent.getAllAtteds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllAttedsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllAtteds,
    required TResult Function(DateTime date) getAttendsOfDay,
    required TResult Function(String memberId) getAttendsOfMember,
    required TResult Function(String memberId) addAttendance,
  }) {
    return getAllAtteds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllAtteds,
    TResult? Function(DateTime date)? getAttendsOfDay,
    TResult? Function(String memberId)? getAttendsOfMember,
    TResult? Function(String memberId)? addAttendance,
  }) {
    return getAllAtteds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllAtteds,
    TResult Function(DateTime date)? getAttendsOfDay,
    TResult Function(String memberId)? getAttendsOfMember,
    TResult Function(String memberId)? addAttendance,
    required TResult orElse(),
  }) {
    if (getAllAtteds != null) {
      return getAllAtteds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllAttedsEvent value) getAllAtteds,
    required TResult Function(GetAttendsOfDayEvent value) getAttendsOfDay,
    required TResult Function(GetAttendsOfMemberEvent value) getAttendsOfMember,
    required TResult Function(AddAttendanceEvent value) addAttendance,
  }) {
    return getAllAtteds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult? Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult? Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult? Function(AddAttendanceEvent value)? addAttendance,
  }) {
    return getAllAtteds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult Function(AddAttendanceEvent value)? addAttendance,
    required TResult orElse(),
  }) {
    if (getAllAtteds != null) {
      return getAllAtteds(this);
    }
    return orElse();
  }
}

abstract class GetAllAttedsEvent implements AttendsEvent {
  const factory GetAllAttedsEvent() = _$GetAllAttedsEventImpl;
}

/// @nodoc
abstract class _$$GetAttendsOfDayEventImplCopyWith<$Res> {
  factory _$$GetAttendsOfDayEventImplCopyWith(_$GetAttendsOfDayEventImpl value,
          $Res Function(_$GetAttendsOfDayEventImpl) then) =
      __$$GetAttendsOfDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$GetAttendsOfDayEventImplCopyWithImpl<$Res>
    extends _$AttendsEventCopyWithImpl<$Res, _$GetAttendsOfDayEventImpl>
    implements _$$GetAttendsOfDayEventImplCopyWith<$Res> {
  __$$GetAttendsOfDayEventImplCopyWithImpl(_$GetAttendsOfDayEventImpl _value,
      $Res Function(_$GetAttendsOfDayEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetAttendsOfDayEventImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetAttendsOfDayEventImpl implements GetAttendsOfDayEvent {
  const _$GetAttendsOfDayEventImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'AttendsEvent.getAttendsOfDay(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAttendsOfDayEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAttendsOfDayEventImplCopyWith<_$GetAttendsOfDayEventImpl>
      get copyWith =>
          __$$GetAttendsOfDayEventImplCopyWithImpl<_$GetAttendsOfDayEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllAtteds,
    required TResult Function(DateTime date) getAttendsOfDay,
    required TResult Function(String memberId) getAttendsOfMember,
    required TResult Function(String memberId) addAttendance,
  }) {
    return getAttendsOfDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllAtteds,
    TResult? Function(DateTime date)? getAttendsOfDay,
    TResult? Function(String memberId)? getAttendsOfMember,
    TResult? Function(String memberId)? addAttendance,
  }) {
    return getAttendsOfDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllAtteds,
    TResult Function(DateTime date)? getAttendsOfDay,
    TResult Function(String memberId)? getAttendsOfMember,
    TResult Function(String memberId)? addAttendance,
    required TResult orElse(),
  }) {
    if (getAttendsOfDay != null) {
      return getAttendsOfDay(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllAttedsEvent value) getAllAtteds,
    required TResult Function(GetAttendsOfDayEvent value) getAttendsOfDay,
    required TResult Function(GetAttendsOfMemberEvent value) getAttendsOfMember,
    required TResult Function(AddAttendanceEvent value) addAttendance,
  }) {
    return getAttendsOfDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult? Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult? Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult? Function(AddAttendanceEvent value)? addAttendance,
  }) {
    return getAttendsOfDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult Function(AddAttendanceEvent value)? addAttendance,
    required TResult orElse(),
  }) {
    if (getAttendsOfDay != null) {
      return getAttendsOfDay(this);
    }
    return orElse();
  }
}

abstract class GetAttendsOfDayEvent implements AttendsEvent {
  const factory GetAttendsOfDayEvent({required final DateTime date}) =
      _$GetAttendsOfDayEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$GetAttendsOfDayEventImplCopyWith<_$GetAttendsOfDayEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAttendsOfMemberEventImplCopyWith<$Res> {
  factory _$$GetAttendsOfMemberEventImplCopyWith(
          _$GetAttendsOfMemberEventImpl value,
          $Res Function(_$GetAttendsOfMemberEventImpl) then) =
      __$$GetAttendsOfMemberEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class __$$GetAttendsOfMemberEventImplCopyWithImpl<$Res>
    extends _$AttendsEventCopyWithImpl<$Res, _$GetAttendsOfMemberEventImpl>
    implements _$$GetAttendsOfMemberEventImplCopyWith<$Res> {
  __$$GetAttendsOfMemberEventImplCopyWithImpl(
      _$GetAttendsOfMemberEventImpl _value,
      $Res Function(_$GetAttendsOfMemberEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$GetAttendsOfMemberEventImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAttendsOfMemberEventImpl implements GetAttendsOfMemberEvent {
  const _$GetAttendsOfMemberEventImpl({required this.memberId});

  @override
  final String memberId;

  @override
  String toString() {
    return 'AttendsEvent.getAttendsOfMember(memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAttendsOfMemberEventImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAttendsOfMemberEventImplCopyWith<_$GetAttendsOfMemberEventImpl>
      get copyWith => __$$GetAttendsOfMemberEventImplCopyWithImpl<
          _$GetAttendsOfMemberEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllAtteds,
    required TResult Function(DateTime date) getAttendsOfDay,
    required TResult Function(String memberId) getAttendsOfMember,
    required TResult Function(String memberId) addAttendance,
  }) {
    return getAttendsOfMember(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllAtteds,
    TResult? Function(DateTime date)? getAttendsOfDay,
    TResult? Function(String memberId)? getAttendsOfMember,
    TResult? Function(String memberId)? addAttendance,
  }) {
    return getAttendsOfMember?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllAtteds,
    TResult Function(DateTime date)? getAttendsOfDay,
    TResult Function(String memberId)? getAttendsOfMember,
    TResult Function(String memberId)? addAttendance,
    required TResult orElse(),
  }) {
    if (getAttendsOfMember != null) {
      return getAttendsOfMember(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllAttedsEvent value) getAllAtteds,
    required TResult Function(GetAttendsOfDayEvent value) getAttendsOfDay,
    required TResult Function(GetAttendsOfMemberEvent value) getAttendsOfMember,
    required TResult Function(AddAttendanceEvent value) addAttendance,
  }) {
    return getAttendsOfMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult? Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult? Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult? Function(AddAttendanceEvent value)? addAttendance,
  }) {
    return getAttendsOfMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult Function(AddAttendanceEvent value)? addAttendance,
    required TResult orElse(),
  }) {
    if (getAttendsOfMember != null) {
      return getAttendsOfMember(this);
    }
    return orElse();
  }
}

abstract class GetAttendsOfMemberEvent implements AttendsEvent {
  const factory GetAttendsOfMemberEvent({required final String memberId}) =
      _$GetAttendsOfMemberEventImpl;

  String get memberId;
  @JsonKey(ignore: true)
  _$$GetAttendsOfMemberEventImplCopyWith<_$GetAttendsOfMemberEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAttendanceEventImplCopyWith<$Res> {
  factory _$$AddAttendanceEventImplCopyWith(_$AddAttendanceEventImpl value,
          $Res Function(_$AddAttendanceEventImpl) then) =
      __$$AddAttendanceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class __$$AddAttendanceEventImplCopyWithImpl<$Res>
    extends _$AttendsEventCopyWithImpl<$Res, _$AddAttendanceEventImpl>
    implements _$$AddAttendanceEventImplCopyWith<$Res> {
  __$$AddAttendanceEventImplCopyWithImpl(_$AddAttendanceEventImpl _value,
      $Res Function(_$AddAttendanceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$AddAttendanceEventImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAttendanceEventImpl implements AddAttendanceEvent {
  const _$AddAttendanceEventImpl({required this.memberId});

  @override
  final String memberId;

  @override
  String toString() {
    return 'AttendsEvent.addAttendance(memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAttendanceEventImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAttendanceEventImplCopyWith<_$AddAttendanceEventImpl> get copyWith =>
      __$$AddAttendanceEventImplCopyWithImpl<_$AddAttendanceEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllAtteds,
    required TResult Function(DateTime date) getAttendsOfDay,
    required TResult Function(String memberId) getAttendsOfMember,
    required TResult Function(String memberId) addAttendance,
  }) {
    return addAttendance(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllAtteds,
    TResult? Function(DateTime date)? getAttendsOfDay,
    TResult? Function(String memberId)? getAttendsOfMember,
    TResult? Function(String memberId)? addAttendance,
  }) {
    return addAttendance?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllAtteds,
    TResult Function(DateTime date)? getAttendsOfDay,
    TResult Function(String memberId)? getAttendsOfMember,
    TResult Function(String memberId)? addAttendance,
    required TResult orElse(),
  }) {
    if (addAttendance != null) {
      return addAttendance(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllAttedsEvent value) getAllAtteds,
    required TResult Function(GetAttendsOfDayEvent value) getAttendsOfDay,
    required TResult Function(GetAttendsOfMemberEvent value) getAttendsOfMember,
    required TResult Function(AddAttendanceEvent value) addAttendance,
  }) {
    return addAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult? Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult? Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult? Function(AddAttendanceEvent value)? addAttendance,
  }) {
    return addAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllAttedsEvent value)? getAllAtteds,
    TResult Function(GetAttendsOfDayEvent value)? getAttendsOfDay,
    TResult Function(GetAttendsOfMemberEvent value)? getAttendsOfMember,
    TResult Function(AddAttendanceEvent value)? addAttendance,
    required TResult orElse(),
  }) {
    if (addAttendance != null) {
      return addAttendance(this);
    }
    return orElse();
  }
}

abstract class AddAttendanceEvent implements AttendsEvent {
  const factory AddAttendanceEvent({required final String memberId}) =
      _$AddAttendanceEventImpl;

  String get memberId;
  @JsonKey(ignore: true)
  _$$AddAttendanceEventImplCopyWith<_$AddAttendanceEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Attendance> attends) success,
    required TResult Function(String errMsg) error,
    required TResult Function(
            List<AttendanceWithMemberDetails> attendsWithDetails)
        successGetAttendanceWithDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Attendance> attends)? success,
    TResult? Function(String errMsg)? error,
    TResult? Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Attendance> attends)? success,
    TResult Function(String errMsg)? error,
    TResult Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(successGetAttendanceWithDetailsState value)
        successGetAttendanceWithDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendsStateCopyWith<$Res> {
  factory $AttendsStateCopyWith(
          AttendsState value, $Res Function(AttendsState) then) =
      _$AttendsStateCopyWithImpl<$Res, AttendsState>;
}

/// @nodoc
class _$AttendsStateCopyWithImpl<$Res, $Val extends AttendsState>
    implements $AttendsStateCopyWith<$Res> {
  _$AttendsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AttendsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AttendsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Attendance> attends) success,
    required TResult Function(String errMsg) error,
    required TResult Function(
            List<AttendanceWithMemberDetails> attendsWithDetails)
        successGetAttendanceWithDetails,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Attendance> attends)? success,
    TResult? Function(String errMsg)? error,
    TResult? Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Attendance> attends)? success,
    TResult Function(String errMsg)? error,
    TResult Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(successGetAttendanceWithDetailsState value)
        successGetAttendanceWithDetails,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AttendsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AttendsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AttendsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Attendance> attends) success,
    required TResult Function(String errMsg) error,
    required TResult Function(
            List<AttendanceWithMemberDetails> attendsWithDetails)
        successGetAttendanceWithDetails,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Attendance> attends)? success,
    TResult? Function(String errMsg)? error,
    TResult? Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Attendance> attends)? success,
    TResult Function(String errMsg)? error,
    TResult Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(successGetAttendanceWithDetailsState value)
        successGetAttendanceWithDetails,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements AttendsState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Attendance> attends});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AttendsStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attends = null,
  }) {
    return _then(_$SuccessStateImpl(
      attends: null == attends
          ? _value._attends
          : attends // ignore: cast_nullable_to_non_nullable
              as List<Attendance>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl({required final List<Attendance> attends})
      : _attends = attends;

  final List<Attendance> _attends;
  @override
  List<Attendance> get attends {
    if (_attends is EqualUnmodifiableListView) return _attends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attends);
  }

  @override
  String toString() {
    return 'AttendsState.success(attends: $attends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._attends, _attends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_attends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Attendance> attends) success,
    required TResult Function(String errMsg) error,
    required TResult Function(
            List<AttendanceWithMemberDetails> attendsWithDetails)
        successGetAttendanceWithDetails,
  }) {
    return success(attends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Attendance> attends)? success,
    TResult? Function(String errMsg)? error,
    TResult? Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
  }) {
    return success?.call(attends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Attendance> attends)? success,
    TResult Function(String errMsg)? error,
    TResult Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(attends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(successGetAttendanceWithDetailsState value)
        successGetAttendanceWithDetails,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements AttendsState {
  const factory SuccessState({required final List<Attendance> attends}) =
      _$SuccessStateImpl;

  List<Attendance> get attends;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AttendsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$ErrorStateImpl(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.errMsg});

  @override
  final String errMsg;

  @override
  String toString() {
    return 'AttendsState.error(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Attendance> attends) success,
    required TResult Function(String errMsg) error,
    required TResult Function(
            List<AttendanceWithMemberDetails> attendsWithDetails)
        successGetAttendanceWithDetails,
  }) {
    return error(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Attendance> attends)? success,
    TResult? Function(String errMsg)? error,
    TResult? Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
  }) {
    return error?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Attendance> attends)? success,
    TResult Function(String errMsg)? error,
    TResult Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(successGetAttendanceWithDetailsState value)
        successGetAttendanceWithDetails,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AttendsState {
  const factory ErrorState({required final String errMsg}) = _$ErrorStateImpl;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successGetAttendanceWithDetailsStateImplCopyWith<$Res> {
  factory _$$successGetAttendanceWithDetailsStateImplCopyWith(
          _$successGetAttendanceWithDetailsStateImpl value,
          $Res Function(_$successGetAttendanceWithDetailsStateImpl) then) =
      __$$successGetAttendanceWithDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AttendanceWithMemberDetails> attendsWithDetails});
}

/// @nodoc
class __$$successGetAttendanceWithDetailsStateImplCopyWithImpl<$Res>
    extends _$AttendsStateCopyWithImpl<$Res,
        _$successGetAttendanceWithDetailsStateImpl>
    implements _$$successGetAttendanceWithDetailsStateImplCopyWith<$Res> {
  __$$successGetAttendanceWithDetailsStateImplCopyWithImpl(
      _$successGetAttendanceWithDetailsStateImpl _value,
      $Res Function(_$successGetAttendanceWithDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendsWithDetails = null,
  }) {
    return _then(_$successGetAttendanceWithDetailsStateImpl(
      attendsWithDetails: null == attendsWithDetails
          ? _value._attendsWithDetails
          : attendsWithDetails // ignore: cast_nullable_to_non_nullable
              as List<AttendanceWithMemberDetails>,
    ));
  }
}

/// @nodoc

class _$successGetAttendanceWithDetailsStateImpl
    implements successGetAttendanceWithDetailsState {
  const _$successGetAttendanceWithDetailsStateImpl(
      {required final List<AttendanceWithMemberDetails> attendsWithDetails})
      : _attendsWithDetails = attendsWithDetails;

  final List<AttendanceWithMemberDetails> _attendsWithDetails;
  @override
  List<AttendanceWithMemberDetails> get attendsWithDetails {
    if (_attendsWithDetails is EqualUnmodifiableListView)
      return _attendsWithDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendsWithDetails);
  }

  @override
  String toString() {
    return 'AttendsState.successGetAttendanceWithDetails(attendsWithDetails: $attendsWithDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successGetAttendanceWithDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._attendsWithDetails, _attendsWithDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_attendsWithDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successGetAttendanceWithDetailsStateImplCopyWith<
          _$successGetAttendanceWithDetailsStateImpl>
      get copyWith => __$$successGetAttendanceWithDetailsStateImplCopyWithImpl<
          _$successGetAttendanceWithDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Attendance> attends) success,
    required TResult Function(String errMsg) error,
    required TResult Function(
            List<AttendanceWithMemberDetails> attendsWithDetails)
        successGetAttendanceWithDetails,
  }) {
    return successGetAttendanceWithDetails(attendsWithDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Attendance> attends)? success,
    TResult? Function(String errMsg)? error,
    TResult? Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
  }) {
    return successGetAttendanceWithDetails?.call(attendsWithDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Attendance> attends)? success,
    TResult Function(String errMsg)? error,
    TResult Function(List<AttendanceWithMemberDetails> attendsWithDetails)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (successGetAttendanceWithDetails != null) {
      return successGetAttendanceWithDetails(attendsWithDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(successGetAttendanceWithDetailsState value)
        successGetAttendanceWithDetails,
  }) {
    return successGetAttendanceWithDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
  }) {
    return successGetAttendanceWithDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(successGetAttendanceWithDetailsState value)?
        successGetAttendanceWithDetails,
    required TResult orElse(),
  }) {
    if (successGetAttendanceWithDetails != null) {
      return successGetAttendanceWithDetails(this);
    }
    return orElse();
  }
}

abstract class successGetAttendanceWithDetailsState implements AttendsState {
  const factory successGetAttendanceWithDetailsState(
      {required final List<AttendanceWithMemberDetails>
          attendsWithDetails}) = _$successGetAttendanceWithDetailsStateImpl;

  List<AttendanceWithMemberDetails> get attendsWithDetails;
  @JsonKey(ignore: true)
  _$$successGetAttendanceWithDetailsStateImplCopyWith<
          _$successGetAttendanceWithDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
