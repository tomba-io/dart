```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  Finder finder = Finder(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = finder.emailFinder(
    domain: 'stripe.com',
    firstName: 'Fname',
    lastName: 'Lname',
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```