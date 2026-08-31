import 'package:test/test.dart';
import 'package:tomba/tomba.dart';

void main() {
  group('Client', () {
    test('should create client with default endpoint', () {
      final client = Client();
      expect(client.endPoint, equals('https://api.tomba.io/v1'));
    });

    test('should set custom endpoint', () {
      final client = Client();
      client.setEndpoint('https://custom.api.com/v1');
      expect(client.endPoint, equals('https://custom.api.com/v1'));
    });

    test('should set key header', () {
      final client = Client();
      client.setKey('ta_test_key');
      expect(client.config['key'], equals('ta_test_key'));
    });

    test('should set secret header', () {
      final client = Client();
      client.setSecret('ts_test_secret');
      expect(client.config['secret'], equals('ts_test_secret'));
    });

    test('should chain setKey and setSecret', () {
      final client = Client();
      client.setKey('ta_test_key').setSecret('ts_test_secret');
      expect(client.config['key'], equals('ta_test_key'));
      expect(client.config['secret'], equals('ts_test_secret'));
    });
  });

  group('Services instantiation', () {
    late Client client;

    setUp(() {
      client = Client();
      client.setKey('ta_test_key').setSecret('ts_test_secret');
    });

    test('should create Account service', () {
      final account = Account(client);
      expect(account, isA<Account>());
    });

    test('should create Domain service', () {
      final domain = Domain(client);
      expect(domain, isA<Domain>());
    });

    test('should create Finder service', () {
      final finder = Finder(client);
      expect(finder, isA<Finder>());
    });

    test('should create Verifier service', () {
      final verifier = Verifier(client);
      expect(verifier, isA<Verifier>());
    });

    test('should create Sources service', () {
      final sources = Sources(client);
      expect(sources, isA<Sources>());
    });

    test('should create Status service', () {
      final status = Status(client);
      expect(status, isA<Status>());
    });

    test('should create Count service', () {
      final count = Count(client);
      expect(count, isA<Count>());
    });

    test('should create Usage service', () {
      final usage = Usage(client);
      expect(usage, isA<Usage>());
    });

    test('should create Logs service', () {
      final logs = Logs(client);
      expect(logs, isA<Logs>());
    });

    test('should create Keys service', () {
      final keys = Keys(client);
      expect(keys, isA<Keys>());
    });

    test('should create LeadsLists service', () {
      final leadsLists = LeadsLists(client);
      expect(leadsLists, isA<LeadsLists>());
    });

    test('should create LeadsAttributes service', () {
      final leadsAttributes = LeadsAttributes(client);
      expect(leadsAttributes, isA<LeadsAttributes>());
    });

    test('should create PhoneFinder service', () {
      final phoneFinder = PhoneFinder(client);
      expect(phoneFinder, isA<PhoneFinder>());
    });

    test('should create Format service', () {
      final format = Format(client);
      expect(format, isA<Format>());
    });

    test('should create Location service', () {
      final location = Location(client);
      expect(location, isA<Location>());
    });

    test('should create Similar service', () {
      final similar = Similar(client);
      expect(similar, isA<Similar>());
    });

    test('should create Technology service', () {
      final technology = Technology(client);
      expect(technology, isA<Technology>());
    });

    test('should create Enrichment service', () {
      final enrichment = Enrichment(client);
      expect(enrichment, isA<Enrichment>());
    });

    test('should create Reveal service', () {
      final reveal = Reveal(client);
      expect(reveal, isA<Reveal>());
    });

    test('should create Flag service', () {
      final flag = Flag(client);
      expect(flag, isA<Flag>());
    });

    test('should create Leads service', () {
      final leads = Leads(client);
      expect(leads, isA<Leads>());
    });

    test('should create Bulk service', () {
      final bulk = Bulk(client);
      expect(bulk, isA<Bulk>());
    });
  });

  group('TombaException', () {
    test('should create exception with message', () {
      final exception = TombaException('Test error');
      expect(exception.message, equals('Test error'));
      expect(exception.code, isNull);
    });

    test('should create exception with message and code', () {
      final exception = TombaException('Not found', 404);
      expect(exception.message, equals('Not found'));
      expect(exception.code, equals(404));
    });

    test('should format toString correctly', () {
      final exception = TombaException('Server error', 500);
      expect(
          exception.toString(), equals('TombaException: Server error (500)'));
    });
  });

  group('Response', () {
    test('should create response with data', () {
      final response = Response(data: {'key': 'value'});
      expect(response.data, isA<Map<String, dynamic>>());
    });

    test('should serialize map data to JSON string', () {
      final response = Response(data: {'key': 'value'});
      expect(response.toString(), contains('key'));
    });
  });
}
