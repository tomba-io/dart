```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  Domain domain = Domain(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = domain.domainSearch(
    domain: 'stripe.com',
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```