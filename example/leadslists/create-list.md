```dart
import 'package:tomba/tomba.dart';

void main() { 
  // Init SDK
  Client client = Client();
  LeadsLists leadsLists = LeadsLists(client);

  client
   .setKey("ta_xxxx") // Your Key
   .setSecret("ts_xxxx"); // Your Secret
  ;

  Future result = leadsLists.createList();

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
```