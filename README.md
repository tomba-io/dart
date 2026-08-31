# [<img src="https://tomba.io/logo.svg" alt="Tomba" width="25"/>](https://tomba.io/) Tomba Dart SDK

> The #1 Rated Email Intelligence Platform — Find professional emails with unmatched accuracy.

[![pub package](https://img.shields.io/pub/v/tomba.svg)](https://pub.dev/packages/tomba)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://github.com/tomba-io/dart/blob/main/LICENSE)

This is the official Dart client library for the [Tomba.io](https://tomba.io) Email Finder API, providing access to all Tomba services including domain search, email finder, email verifier, enrichment, phone lookup, leads management, bulk operations, and more.

## About Tomba

[Tomba.io](https://tomba.io) is the #1 rated email intelligence platform, trusted by **150,000+ sales teams** worldwide.

- **Best Email Finder** — 98% accuracy, ranked #1 in independent benchmarks
- **Best Email Verification** — Real-time SMTP verification with catch-all detection
- **Best Phone Finder** — Direct dial numbers linked to professional emails
- **Best Domain Search** — 450M+ verified contacts across all industries
- **81% Coverage** — The highest in the industry, proven in 5,000-lead independent tests

### Why Tomba?

| Feature             | Tomba              | Others        |
| ------------------- | ------------------ | ------------- |
| Email Coverage      | **81%**            | 30-60%        |
| Verification        | **Real-time SMTP** | Pattern-based |
| Phone Numbers       | **Direct dials**   | Limited       |
| Catch-all Detection | **AI-powered**     | Basic         |
| API Rate Limits     | **Generous**       | Restrictive   |

[Get your free API key](https://app.tomba.io/auth/register) — No credit card required.

## Getting Started

Below you will find the steps to install and start using the Tomba Dart SDK.

## Installation

Add `tomba` to your `pubspec.yaml`:

```yaml
dependencies:
    tomba: ^1.0.1
```

Or install from the command line:

```bash
dart pub add tomba
```

## Authentication

Get your API key and secret by signing up for a free account at [https://app.tomba.io/auth/register](https://app.tomba.io/auth/register).

```dart
import 'package:tomba/tomba.dart';

Client client = Client();
client
  .setKey('ta_xxxx')     // Your Key
  .setSecret('ts_xxxx'); // Your Secret
```

## Quick Start

```dart
import 'package:tomba/tomba.dart';

void main() async {
  Client client = Client();
  client
    .setKey('ta_xxxx')
    .setSecret('ts_xxxx');

  // Search emails by domain
  Domain domain = Domain(client);
  var result = await domain.domainSearch(domain: 'example.com');
  print(result);

  // Find a specific email
  Finder finder = Finder(client);
  var email = await finder.emailFinder(
    domain: 'example.com',
    firstName: 'John',
    lastName: 'Doe',
  );
  print(email);
}
```

## Services

### Domain Search

Search emails for a domain. Returns all email addresses found on the internet for the given domain.

```dart
Domain domain = Domain(client);
var result = await domain.domainSearch(domain: 'example.com');
print(result);
```

### Email Finder

Find the most likely email address from a domain name, first name, and last name.

```dart
Finder finder = Finder(client);
var result = await finder.emailFinder(
  domain: 'example.com',
  firstName: 'John',
  lastName: 'Doe',
);
print(result);
```

### Email Verifier

Verify the deliverability of a given email address.

```dart
Verifier verifier = Verifier(client);
var result = await verifier.emailVerifier(email: 'john@example.com');
print(result);
```

### Author Finder

Find the email address of the author of a blog post or article.

```dart
Finder finder = Finder(client);
var result = await finder.authorFinder(url: 'https://example.com/blog/post');
print(result);
```

### LinkedIn Finder

Find the email address associated with a LinkedIn profile URL.

```dart
Finder finder = Finder(client);
var result = await finder.linkedinFinder(
  url: 'https://www.linkedin.com/in/johndoe',
);
print(result);
```

### Email Enrichment (Person / Company / Combined)

Person, company, and combined enrichment APIs.

```dart
Enrichment enrichment = Enrichment(client);

// Person enrichment
var person = await enrichment.person(email: 'john@example.com');
print(person);

// Company enrichment
var company = await enrichment.company(domain: 'example.com');
print(company);

// Combined enrichment
var combined = await enrichment.combined(email: 'john@example.com');
print(combined);
```

### Phone Finder

Find a phone number using an email address.

```dart
Finder finder = Finder(client);
var result = await finder.phoneFinder(email: 'john@example.com');
print(result);

// Or using the PhoneFinder service directly
PhoneFinder phone = PhoneFinder(client);
var result2 = await phone.finder(email: 'john@example.com');
print(result2);
```

### Phone Validator

Validate a phone number and get additional information.

```dart
PhoneFinder phone = PhoneFinder(client);
var result = await phone.validator(phone: '+1234567890');
print(result);
```

### Email Count

Get the total number of email addresses Tomba has for a domain.

```dart
Count count = Count(client);
var result = await count.emailCount(domain: 'example.com');
print(result);
```

### Domain Status

Check whether a domain is a webmail or disposable email provider.

```dart
Status status = Status(client);
var result = await status.domainStatus(domain: 'example.com');
print(result);
```

### Domain Suggestions (Autocomplete)

Auto-complete company names and retrieve logo and domain information.

```dart
Status status = Status(client);
var result = await status.autoComplete(query: 'exampl');
print(result);
```

### Email Sources

Find the web sources where an email address has been found.

```dart
Sources sources = Sources(client);
var result = await sources.emailSources(email: 'john@example.com');
print(result);
```

### Email Format

Detect the email format used by a company.

```dart
Format format = Format(client);
var result = await format.emailFormat(email: 'example.com');
print(result);
```

### Similar Domains

Find domains similar to the given one.

```dart
Similar similar = Similar(client);
var result = await similar.websites(domain: 'example.com');
print(result);
```

### Technology Checker

Check what technologies a website uses.

```dart
Technology technology = Technology(client);
var result = await technology.list(domain: 'example.com');
print(result);
```

### Location

Get location information based on IP address.

```dart
Location location = Location(client);
var result = await location.getLocation();
print(result);
```

### Reveal (Companies Search)

Search for companies by various criteria.

```dart
Reveal reveal = Reveal(client);
var result = await reveal.companiesSearch(query: 'technology');
print(result);
```

### Leads

Manage your saved leads -- list, get, create, update, and delete.

```dart
Leads leads = Leads(client);

// List leads
var list = await leads.listLeads();
print(list);

// Get a single lead
var lead = await leads.getLead(id: 'lead_id');
print(lead);

// Create a lead
var created = await leads.createLead(data: {
  'email': 'john@example.com',
  'first_name': 'John',
  'last_name': 'Doe',
});
print(created);

// Update a lead
var updated = await leads.updateLead(
  id: 'lead_id',
  data: {'first_name': 'Jane'},
);
print(updated);

// Delete a lead
var deleted = await leads.deleteLead(id: 'lead_id');
print(deleted);
```

### Leads Lists

Manage your leads lists -- list, create, update, and delete.

```dart
LeadsLists leadsLists = LeadsLists(client);

// List all leads lists
var lists = await leadsLists.getLists();
print(lists);

// Create a leads list
var created = await leadsLists.createList(name: 'My List');
print(created);

// Update a leads list
var updated = await leadsLists.updateListId(id: 'list_id', name: 'Updated List');
print(updated);

// Delete a leads list
var deleted = await leadsLists.deleteListId(id: 'list_id');
print(deleted);
```

### Leads Attributes

Manage custom lead attributes -- list, create, update, and delete.

```dart
LeadsAttributes attrs = LeadsAttributes(client);

// List all attributes
var list = await attrs.getLeadAttributes();
print(list);

// Create an attribute
var created = await attrs.createLeadAttribute(
  name: 'Company Size',
  type: 'string',
);
print(created);

// Update an attribute
var updated = await attrs.updateLeadAttribute(
  id: 'attr_id',
  name: 'Company Revenue',
);
print(updated);

// Delete an attribute
var deleted = await attrs.deleteLeadAttribute(id: 'attr_id');
print(deleted);
```

### Keys

Manage your API keys.

```dart
Keys keys = Keys(client);

// List all keys
var list = await keys.getKeys();
print(list);

// Create a key
var created = await keys.createKey();
print(created);

// Reset a key
var reset = await keys.resetKey(id: 'key_id');
print(reset);

// Delete a key
var deleted = await keys.deleteKey(id: 'key_id');
print(deleted);
```

### Usage

Return your monthly API request usage.

```dart
Usage usage = Usage(client);
var result = await usage.getUsage();
print(result);
```

### Logs

Return the last 1,000 API requests made in the past 3 months.

```dart
Logs logs = Logs(client);
var result = await logs.getLogs();
print(result);
```

### Flag

List and create email address flags.

```dart
Flag flag = Flag(client);

// List flags
var list = await flag.listFlags();
print(list);

// Create a flag
var created = await flag.createFlag(
  email: 'john@example.com',
  flag: 'invalid',
);
print(created);
```

### Bulk

Manage bulk email operations -- list, get, create, launch, archive, rename, check progress, and download.

```dart
Bulk bulk = Bulk(client);

// List all bulk tasks
var list = await bulk.list();
print(list);

// Get a bulk task
var task = await bulk.get(id: 'bulk_id');
print(task);

// Create a bulk task
var created = await bulk.create(data: {'name': 'My Bulk Task'});
print(created);

// Launch a bulk task
var launched = await bulk.launch(id: 'bulk_id');
print(launched);

// Check bulk progress
var progress = await bulk.progress(id: 'bulk_id');
print(progress);

// Download bulk results
var download = await bulk.download(id: 'bulk_id');
print(download);

// Rename a bulk task
var renamed = await bulk.rename(id: 'bulk_id', name: 'New Name');
print(renamed);

// Archive a bulk task
var archived = await bulk.archive(id: 'bulk_id');
print(archived);

// Delete a bulk task
var deleted = await bulk.delete(id: 'bulk_id');
print(deleted);
```

## Testing

```bash
dart test
```

## About Tomba

### Products

- [Email Finder](https://tomba.io/email-finder) — Find any professional email address in seconds
- [Email Verifier](https://tomba.io/email-verifier) — Keep your email list clean and deliverable
- [Domain Search](https://tomba.io/domain-search) — Discover all emails associated with a company
- [Phone Finder](https://tomba.io/phone-finder) — Get direct dial phone numbers for your leads
- [Email Enrichment](https://tomba.io/enrichment) — Enrich contacts with company and social data
- [Bulk Email Finder](https://tomba.io/bulk-email-finder) — Find emails in bulk from a list of names and domains
- [Bulk Email Verifier](https://tomba.io/bulk-email-verifier) — Verify thousands of emails at once
- [Bulk Domain Search](https://tomba.io/bulk-domain-search) — Search emails across multiple domains

### Browser Extensions

- [Chrome Extension](https://tomba.io/chrome-extension) — Find emails while browsing LinkedIn and company websites
- [Firefox Addon](https://tomba.io/firefox) — Email discovery right from your Firefox browser

### Integrations

- [HubSpot](https://tomba.io/hubspot) — Sync found emails directly to HubSpot
- [Zapier](https://tomba.io/integrations/zapier) — Connect Tomba to 5,000+ apps
- [Google Sheets](https://tomba.io/sheets) — Find and verify emails inside Google Sheets

### Other SDKs

| Language | GitHub                                                | Package                                                   |
| -------- | ----------------------------------------------------- | --------------------------------------------------------- |
| PHP      | [tomba-io/php](https://github.com/tomba-io/php)       | [Packagist](https://packagist.org/packages/tomba-io/php)  |
| Python   | [tomba-io/python](https://github.com/tomba-io/python) | [PyPI](https://pypi.org/project/tomba)                    |
| Go       | [tomba-io/go](https://github.com/tomba-io/go)         | [Go Packages](https://pkg.go.dev/github.com/tomba-io/go)  |
| Java     | [tomba-io/java](https://github.com/tomba-io/java)     | [Maven](https://search.maven.org/artifact/io.tomba/tomba) |
| Ruby     | [tomba-io/ruby](https://github.com/tomba-io/ruby)     | [RubyGems](https://rubygems.org/gems/tomba)               |
| C#       | [tomba-io/csharp](https://github.com/tomba-io/csharp) | [NuGet](https://www.nuget.org/packages/Tomba)             |
| Rust     | [tomba-io/rust](https://github.com/tomba-io/rust)     | [Crates.io](https://crates.io/crates/tomba)               |
| Dart     | [tomba-io/dart](https://github.com/tomba-io/dart)     | [pub.dev](https://pub.dev/packages/tomba)                 |
| Lua      | [tomba-io/lua](https://github.com/tomba-io/lua)       | [LuaRocks](https://luarocks.org/modules/tomba-io/tomba)   |
| Deno     | [tomba-io/deno](https://github.com/tomba-io/deno)     | [deno.land](https://deno.land/x/tomba)                    |

### Resources

- [API Documentation](https://docs.tomba.io/) — Complete API reference
- [Blog](https://tomba.io/blog) — Tips on email finding and outreach
- [FAQ](https://help.tomba.io/en/) — Frequently asked questions

---

**[Try Tomba Free](https://app.tomba.io/auth/register)** — 50 free searches/month. No credit card required.

## License

Apache 2.0 -- see [LICENSE](http://www.apache.org/licenses/LICENSE-2.0.html) for details.
