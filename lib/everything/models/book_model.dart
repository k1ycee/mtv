import 'package:equatable/equatable.dart';

class HNews extends Equatable{
    final String by;
    final int descendants;
    final int id;
    final List<int> kids;
    final int score;
    final int time;
    final String title;
    final String type;
    final String url;

   const HNews({
        this.by,
        this.descendants,
        this.id,
        this.kids,
        this.score,
        this.time,
        this.title,
        this.type,
        this.url,
    });

    @override
    List<Object> get props => [by,descendants,id,kids,score,time,title,type,url];

    factory HNews.fromJson(Map<String, dynamic> json) => HNews(
        by: json["by"] == null ? null : json["by"],
        descendants: json["descendants"] == null ? null : json["descendants"],
        id: json["id"] == null ? null : json["id"],
        kids: json["kids"] == null ? null : List<int>.from(json["kids"].map((x) => x)),
        score: json["score"] == null ? null : json["score"],
        time: json["time"] == null ? null : json["time"],
        title: json["title"] == null ? null : json["title"],
        type: json["type"] == null ? null : json["type"],
        url: json["url"] == null ? null : json["url"],
    );

    Map<String, dynamic> toJson() => {
        "by": by == null ? null : by,
        "descendants": descendants == null ? null : descendants,
        "id": id == null ? null : id,
        "kids": kids == null ? null : List<dynamic>.from(kids.map((x) => x)),
        "score": score == null ? null : score,
        "time": time == null ? null : time,
        "title": title == null ? null : title,
        "type": type == null ? null : type,
        "url": url == null ? null : url,
    };
}
