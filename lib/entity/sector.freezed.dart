// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sector {

 String get title;@SectorLinkConverter() SectorLink get link; Race? get race;@SectorLinkConverter() SectorLink? get northGate;@SectorLinkConverter() SectorLink? get southGate;@SectorLinkConverter() SectorLink? get westGate;@SectorLinkConverter() SectorLink? get eastGate;
/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectorCopyWith<Sector> get copyWith => _$SectorCopyWithImpl<Sector>(this as Sector, _$identity);

  /// Serializes this Sector to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sector&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.race, race) || other.race == race)&&(identical(other.northGate, northGate) || other.northGate == northGate)&&(identical(other.southGate, southGate) || other.southGate == southGate)&&(identical(other.westGate, westGate) || other.westGate == westGate)&&(identical(other.eastGate, eastGate) || other.eastGate == eastGate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,race,northGate,southGate,westGate,eastGate);

@override
String toString() {
  return 'Sector(title: $title, link: $link, race: $race, northGate: $northGate, southGate: $southGate, westGate: $westGate, eastGate: $eastGate)';
}


}

/// @nodoc
abstract mixin class $SectorCopyWith<$Res>  {
  factory $SectorCopyWith(Sector value, $Res Function(Sector) _then) = _$SectorCopyWithImpl;
@useResult
$Res call({
 String title,@SectorLinkConverter() SectorLink link, Race? race,@SectorLinkConverter() SectorLink? northGate,@SectorLinkConverter() SectorLink? southGate,@SectorLinkConverter() SectorLink? westGate,@SectorLinkConverter() SectorLink? eastGate
});




}
/// @nodoc
class _$SectorCopyWithImpl<$Res>
    implements $SectorCopyWith<$Res> {
  _$SectorCopyWithImpl(this._self, this._then);

  final Sector _self;
  final $Res Function(Sector) _then;

/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? link = null,Object? race = freezed,Object? northGate = freezed,Object? southGate = freezed,Object? westGate = freezed,Object? eastGate = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as SectorLink,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as Race?,northGate: freezed == northGate ? _self.northGate : northGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,southGate: freezed == southGate ? _self.southGate : southGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,westGate: freezed == westGate ? _self.westGate : westGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,eastGate: freezed == eastGate ? _self.eastGate : eastGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sector].
extension SectorPatterns on Sector {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sector value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sector() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sector value)  $default,){
final _that = this;
switch (_that) {
case _Sector():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sector value)?  $default,){
final _that = this;
switch (_that) {
case _Sector() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @SectorLinkConverter()  SectorLink link,  Race? race, @SectorLinkConverter()  SectorLink? northGate, @SectorLinkConverter()  SectorLink? southGate, @SectorLinkConverter()  SectorLink? westGate, @SectorLinkConverter()  SectorLink? eastGate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sector() when $default != null:
return $default(_that.title,_that.link,_that.race,_that.northGate,_that.southGate,_that.westGate,_that.eastGate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @SectorLinkConverter()  SectorLink link,  Race? race, @SectorLinkConverter()  SectorLink? northGate, @SectorLinkConverter()  SectorLink? southGate, @SectorLinkConverter()  SectorLink? westGate, @SectorLinkConverter()  SectorLink? eastGate)  $default,) {final _that = this;
switch (_that) {
case _Sector():
return $default(_that.title,_that.link,_that.race,_that.northGate,_that.southGate,_that.westGate,_that.eastGate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @SectorLinkConverter()  SectorLink link,  Race? race, @SectorLinkConverter()  SectorLink? northGate, @SectorLinkConverter()  SectorLink? southGate, @SectorLinkConverter()  SectorLink? westGate, @SectorLinkConverter()  SectorLink? eastGate)?  $default,) {final _that = this;
switch (_that) {
case _Sector() when $default != null:
return $default(_that.title,_that.link,_that.race,_that.northGate,_that.southGate,_that.westGate,_that.eastGate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sector implements Sector {
  const _Sector({required this.title, @SectorLinkConverter() required this.link, this.race, @SectorLinkConverter() this.northGate, @SectorLinkConverter() this.southGate, @SectorLinkConverter() this.westGate, @SectorLinkConverter() this.eastGate});
  factory _Sector.fromJson(Map<String, dynamic> json) => _$SectorFromJson(json);

@override final  String title;
@override@SectorLinkConverter() final  SectorLink link;
@override final  Race? race;
@override@SectorLinkConverter() final  SectorLink? northGate;
@override@SectorLinkConverter() final  SectorLink? southGate;
@override@SectorLinkConverter() final  SectorLink? westGate;
@override@SectorLinkConverter() final  SectorLink? eastGate;

/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectorCopyWith<_Sector> get copyWith => __$SectorCopyWithImpl<_Sector>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sector&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.race, race) || other.race == race)&&(identical(other.northGate, northGate) || other.northGate == northGate)&&(identical(other.southGate, southGate) || other.southGate == southGate)&&(identical(other.westGate, westGate) || other.westGate == westGate)&&(identical(other.eastGate, eastGate) || other.eastGate == eastGate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,race,northGate,southGate,westGate,eastGate);

@override
String toString() {
  return 'Sector(title: $title, link: $link, race: $race, northGate: $northGate, southGate: $southGate, westGate: $westGate, eastGate: $eastGate)';
}


}

/// @nodoc
abstract mixin class _$SectorCopyWith<$Res> implements $SectorCopyWith<$Res> {
  factory _$SectorCopyWith(_Sector value, $Res Function(_Sector) _then) = __$SectorCopyWithImpl;
@override @useResult
$Res call({
 String title,@SectorLinkConverter() SectorLink link, Race? race,@SectorLinkConverter() SectorLink? northGate,@SectorLinkConverter() SectorLink? southGate,@SectorLinkConverter() SectorLink? westGate,@SectorLinkConverter() SectorLink? eastGate
});




}
/// @nodoc
class __$SectorCopyWithImpl<$Res>
    implements _$SectorCopyWith<$Res> {
  __$SectorCopyWithImpl(this._self, this._then);

  final _Sector _self;
  final $Res Function(_Sector) _then;

/// Create a copy of Sector
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? link = null,Object? race = freezed,Object? northGate = freezed,Object? southGate = freezed,Object? westGate = freezed,Object? eastGate = freezed,}) {
  return _then(_Sector(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as SectorLink,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as Race?,northGate: freezed == northGate ? _self.northGate : northGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,southGate: freezed == southGate ? _self.southGate : southGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,westGate: freezed == westGate ? _self.westGate : westGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,eastGate: freezed == eastGate ? _self.eastGate : eastGate // ignore: cast_nullable_to_non_nullable
as SectorLink?,
  ));
}


}

// dart format on
