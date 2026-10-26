# between_api.api.JournalsApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJournalEntry**](JournalsApi.md#createjournalentry) | **POST** /v1/journal/{kind}/entries | Save an entry. Always succeeds, even while the AI is down (B02, S8).
[**listJournalEntries**](JournalsApi.md#listjournalentries) | **GET** /v1/journal/{kind}/entries | Entries for one journal kind.
[**setJournalPrivacy**](JournalsApi.md#setjournalprivacy) | **PUT** /v1/journal/privacy | Set journal privacy. Monitoring cannot be OFF while the journal is hidden (R-CONSENT-2).


# **createJournalEntry**
> CreateJournalEntry201Response createJournalEntry(kind, journalEntryRequest)

Save an entry. Always succeeds, even while the AI is down (B02, S8).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getJournalsApi();
final JournalKind kind = ; // JournalKind | 
final JournalEntryRequest journalEntryRequest = ; // JournalEntryRequest | 

try {
    final response = api.createJournalEntry(kind, journalEntryRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling JournalsApi->createJournalEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kind** | [**JournalKind**](.md)|  | 
 **journalEntryRequest** | [**JournalEntryRequest**](JournalEntryRequest.md)|  | 

### Return type

[**CreateJournalEntry201Response**](CreateJournalEntry201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJournalEntries**
> ListJournalEntries200Response listJournalEntries(kind)

Entries for one journal kind.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getJournalsApi();
final JournalKind kind = ; // JournalKind | 

try {
    final response = api.listJournalEntries(kind);
    print(response);
} catch on DioException (e) {
    print('Exception when calling JournalsApi->listJournalEntries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kind** | [**JournalKind**](.md)|  | 

### Return type

[**ListJournalEntries200Response**](ListJournalEntries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJournalPrivacy**
> EmptyEnvelope setJournalPrivacy(setJournalPrivacyRequest)

Set journal privacy. Monitoring cannot be OFF while the journal is hidden (R-CONSENT-2).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getJournalsApi();
final SetJournalPrivacyRequest setJournalPrivacyRequest = ; // SetJournalPrivacyRequest | 

try {
    final response = api.setJournalPrivacy(setJournalPrivacyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling JournalsApi->setJournalPrivacy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setJournalPrivacyRequest** | [**SetJournalPrivacyRequest**](SetJournalPrivacyRequest.md)|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

