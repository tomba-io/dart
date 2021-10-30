```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  Usage usage = Usage(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = usage.getUsage();

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```