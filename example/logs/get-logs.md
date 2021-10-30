```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  Logs logs = Logs(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = logs.getLogs();

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```