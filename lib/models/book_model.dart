class HNews {
  String by;
  int descendants;
  int id;
  List<int> kids;
  int score;
  int time;
  String title;
  String type;
  String url;

  HNews(
      {this.by,
        this.descendants,
        this.id,
        this.kids,
        this.score,
        this.time,
        this.title,
        this.type,
        this.url});

  HNews.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    descendants = json['descendants'];
    id = json['id'];
    kids = json['kids'].cast<int>();
    score = json['score'];
    time = json['time'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['by'] = this.by;
    data['descendants'] = this.descendants;
    data['id'] = this.id;
    data['kids'] = this.kids;
    data['score'] = this.score;
    data['time'] = this.time;
    data['title'] = this.title;
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}