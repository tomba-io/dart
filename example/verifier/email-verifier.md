```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  Verifier verifier = Verifier(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = verifier.emailVerifier(
    email: 'b.mohamed@tomba.io',
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```