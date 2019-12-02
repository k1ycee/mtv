// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<News> _$newsSerializer = new _$NewsSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable<Object> serialize(Serializers serializers, News object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'by',
      serializers.serialize(object.by, specifiedType: const FullType(String)),
      'descendants',
      serializers.serialize(object.descendants,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'kids',
      serializers.serialize(object.kids,
          specifiedType: const FullType(List, const [const FullType(int)])),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descendants':
          result.descendants = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'kids':
          result.kids = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(int)]))
              as List<int>;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final String by;
  @override
  final int descendants;
  @override
  final int id;
  @override
  final List<int> kids;
  @override
  final int score;
  @override
  final int time;
  @override
  final String title;
  @override
  final String type;
  @override
  final String url;

  factory _$News([void Function(NewsBuilder) updates]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._(
      {this.by,
      this.descendants,
      this.id,
      this.kids,
      this.score,
      this.time,
      this.title,
      this.type,
      this.url})
      : super._() {
    if (by == null) {
      throw new BuiltValueNullFieldError('News', 'by');
    }
    if (descendants == null) {
      throw new BuiltValueNullFieldError('News', 'descendants');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('News', 'id');
    }
    if (kids == null) {
      throw new BuiltValueNullFieldError('News', 'kids');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('News', 'score');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('News', 'time');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('News', 'title');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('News', 'type');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('News', 'url');
    }
  }

  @override
  News rebuild(void Function(NewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is News &&
        by == other.by &&
        descendants == other.descendants &&
        id == other.id &&
        kids == other.kids &&
        score == other.score &&
        time == other.time &&
        title == other.title &&
        type == other.type &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, by.hashCode), descendants.hashCode),
                                id.hashCode),
                            kids.hashCode),
                        score.hashCode),
                    time.hashCode),
                title.hashCode),
            type.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')
          ..add('by', by)
          ..add('descendants', descendants)
          ..add('id', id)
          ..add('kids', kids)
          ..add('score', score)
          ..add('time', time)
          ..add('title', title)
          ..add('type', type)
          ..add('url', url))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News _$v;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  int _descendants;
  int get descendants => _$this._descendants;
  set descendants(int descendants) => _$this._descendants = descendants;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  List<int> _kids;
  List<int> get kids => _$this._kids;
  set kids(List<int> kids) => _$this._kids = kids;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _by = _$v.by;
      _descendants = _$v.descendants;
      _id = _$v.id;
      _kids = _$v.kids;
      _score = _$v.score;
      _time = _$v.time;
      _title = _$v.title;
      _type = _$v.type;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$News;
  }

  @override
  void update(void Function(NewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    final _$result = _$v ??
        new _$News._(
            by: by,
            descendants: descendants,
            id: id,
            kids: kids,
            score: score,
            time: time,
            title: title,
            type: type,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
