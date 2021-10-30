```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  Status status = Status(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = status.autoComplete(
    query: 'google',
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```