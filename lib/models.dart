class Models {
  final String? name;
  final String? message;
  final String? time;
  final String? imageUrl;
  final String? numMess;

  Models({this.name, this.message, this.time, this.imageUrl, this.numMess});
}

final List<Models> items = [
  Models(
      name: "Estelle",
      message: "est voluptatibus sapiente",
      time: "10:21",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: "12"),
  Models(
      name: "Greyson",
      message: "qui sint adipisci",
      time: "22:10",
      imageUrl: "http://placeimg.com/640/480/food",
      numMess: '4'),
  Models(
      name: "Mia",
      message: "ini pesan",
      time: "12:12",
      imageUrl: "http://placeimg.com/640/480/sports",
      numMess: '123'),
  Models(
      name: "Aliyah",
      message: "iki pesan cuy",
      time: "23:21",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '1'),
  Models(
      name: "Billy",
      message: "voluptates et incidunt",
      time: "05:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '55'),
  Models(
      name: "Rhett",
      message: "dolores doloremque aut",
      time: "07:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '3'),
  Models(
      name: "Bertram",
      message: "Holaaa test",
      time: "17:01",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '2'),
  Models(
      name: "Pink",
      message: "halo halo",
      time: "12:12",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '7'),
  Models(
      name: "Orval",
      message: "nggeh, wonten nopo",
      time: "03:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '9'),
  Models(
      name: "Nettie",
      message: "accusamus omnis dolorem",
      time: "10:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '11'),
  Models(
      name: "Yasmin",
      message: "rem eaque nihil",
      time: "Jan 3",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '1'),
  Models(
      name: "Archibald",
      message: "kamu dimana, aku kangen",
      time: "Jan 1",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '3'),
  Models(
      name: "Gabe",
      message: "Aku nggk kemana mana",
      time: "12:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '4'),
  Models(
      name: "Keira",
      message: "veniam voluptas nesciunt",
      time: "Feb 3",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '2'),
  Models(
      name: "Tobin",
      message: "est dignissimos at",
      time: "Feb 31",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '22'),
];

class CheckBoxListTileModel {
  String? title;
  bool? isCheck;
  CheckBoxListTileModel({this.title, this.isCheck});
}

final List<CheckBoxListTileModel> itemCheckBox = [
  CheckBoxListTileModel(title: "Java", isCheck: false),
  CheckBoxListTileModel(title: "Dart", isCheck: false),
  CheckBoxListTileModel(title: "Kotlin", isCheck: false),
];
