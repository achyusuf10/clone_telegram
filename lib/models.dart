class Message {
  final String? name;
  final String? message;
  final String? time;
  final String? imageUrl;
  final String? numMess;

  Message(
      {this.name = '',
      this.message = '',
      this.time = '',
      this.imageUrl = '',
      this.numMess = ''});
}

final List<Message> items = [
  Message(
      name: "Estelle",
      message: "est voluptatibus sapiente",
      time: "10:21",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: "12"),
  Message(
      name: "Greyson",
      message: "qui sint adipisci",
      time: "22:10",
      imageUrl: "http://placeimg.com/640/480/food",
      numMess: '4'),
  Message(
      name: "Mia",
      message: "ini pesan",
      time: "12:12",
      imageUrl: "http://placeimg.com/640/480/sports",
      numMess: '123'),
  Message(
      name: "Aliyah",
      message: "iki pesan cuy",
      time: "23:21",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '1'),
  Message(
      name: "Billy",
      message: "voluptates et incidunt",
      time: "05:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '55'),
  Message(
      name: "Rhett",
      message: "dolores doloremque aut",
      time: "07:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '3'),
  Message(
      name: "Bertram",
      message: "Holaaa test",
      time: "17:01",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '2'),
  Message(
      name: "Pink",
      message: "halo halo",
      time: "12:12",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '7'),
  Message(
      name: "Orval",
      message: "nggeh, wonten nopo",
      time: "03:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '9'),
  Message(
      name: "Nettie",
      message: "accusamus omnis dolorem",
      time: "10:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '11'),
  Message(
      name: "Yasmin",
      message: "rem eaque nihil",
      time: "Jan 3",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '1'),
  Message(
      name: "Archibald",
      message: "kamu dimana, aku kangen",
      time: "Jan 1",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '3'),
  Message(
      name: "Gabe",
      message: "Aku nggk kemana mana",
      time: "12:10",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '4'),
  Message(
      name: "Keira",
      message: "veniam voluptas nesciunt",
      time: "Feb 3",
      imageUrl: "http://placeimg.com/640/480/animals",
      numMess: '2'),
  Message(
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
