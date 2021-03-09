class User {
  String userName;
  String userColour;
  
  User(String aUserName, String aUserColour) {
    this.userName = aUserName;
    this.userColour = aUserColour;
  }
  
}


void main() {
  
  List<User> users = [
    User("Matt", "#134BD9"),
    User("Layla", "#FF7ECC"),
    User("Adam", "#1EA564"),
  ];
  
  print("enter username");
  User newUser = String.parse(stdin.readLineSync());
  users.add(newUser);
  }

