```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  LeadsAttributes leadsAttributes = LeadsAttributes(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = leadsAttributes.getLeadAttributes();

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```