class Doha{
  String? hindi;
  String? english;
  String? sanskrit;
  String? gujarati;
  Doha({this.english,this.hindi,this.gujarati,this.sanskrit});
  factory Doha.fromJson(Map json){
    return Doha(
      hindi: json['hindi'],
      english: json['english'],
      gujarati: json['gujarati'],
      sanskrit: json['sanskrit']
    );
  }
}