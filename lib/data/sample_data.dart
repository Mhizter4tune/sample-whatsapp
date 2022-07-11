class Friend {
  String name;
  String imgUrl;
  // int id;

  Friend(this.name, this.imgUrl);
}

List<Friend> friends = [
  Friend('Bro', 'vico.jpg'),
  Friend('Momma', 'momma.jpg'),
  Friend('Glory', 'GOG.jpg'),
  Friend('Gabriel', 'gabriel.jpg'),
  Friend('Jonah', 'jonah.jpg'),
  Friend('Judith', 'judith.jpg'),
  Friend('Precious', 'preciousAmaka.jpg'),
  Friend('Baby', 'patience.jpg'),
  Friend('Blessing', 'nedum.jpg'),
  Friend('Nappoleon', 'nappo.jpg'),
  Friend('Papa Confi', 'confidence.jpg'),
  Friend('Manna', 'manna.jpg'),
  Friend('Kayks', 'kayks.jpg'),
  Friend('Jonah', 'jonah.jpg'),
  Friend('Judith', 'judith.jpg'),
];

List<Friend> status = [
  Friend('You', 'kayks.jpg'),
  friends[5],
  friends[0],
  friends[1],
  friends[7],
  friends[2],
  friends[6],
  friends[4],
  friends[8],
  friends[9],
  friends[10],
  friends[3],
  friends[11],
];

class Message {
  Friend sender;
  String text;
  String time;
  bool isOnline;

  Message(this.sender, this.text, this.time, this.isOnline);
}

List<Message> chats = [
  Message(
      friends[0],
      'Oga, I sent you the youtube link I used in learning multiple cheat gainers',
      '3:00pm',
      true),
  Message(friends[1], 'Ify is fine, he went for his IT', '12:11pm', true),
  Message(friends[2], 'Glo glo, what\'s up na? Have you closed shop already?',
      '9:00pm', false),
  Message(
      friends[3], 'My Boss, when will the senator be ready?', '9:04am', true),
  Message(
      friends[4],
      'OG_Best, you don dey work QC na, money don dey flow like water.. wehdone oh!',
      '2:37pm',
      false),
  Message(friends[5], 'Aunty how far, it\'s been a while.. how is everything?',
      '11:27am', false),
  Message(friends[6], 'Hi, what\'s up? Do you remember me?', '1:21pm', false),
  Message(
      friends[7],
      'Bby, how are you? I called you yesterday but you did not pick up, where were you?',
      '11:26am',
      true),
  Message(friends[8], 'Aunty, how far na? How is our able course rep?',
      '11:50am', false),
  Message(
      friends[9],
      'Bakayarou, how far? I think say you dey stay for sango abi toll gate.. wetin dey sup?',
      '2:14pm',
      true),
  Message(friends[10], 'Papa, good day sir, how\'s everything sir?', '1:29pm',
      true),
  Message(friends[11], 'Heeey, what\'s up dear, how\'ve you been?', '3:50pm',
      false),
  Message(friends[12], 'okk', '3:00pm', true),
  Message(friends[13], 'okk', '3:00pm', false),
  Message(friends[14], 'okk', '3:00pm', false),
];
