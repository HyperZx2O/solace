# between_api.api.CrisisApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answerTier2Consent**](CrisisApi.md#answertier2consent) | **POST** /v1/crisis/alerts/{id}/patient-consent | Answer the Tier 2 consent prompt. No detail is sent on refusal (S3).
[**checkCrisis**](CrisisApi.md#checkcrisis) | **POST** /v1/crisis/checks | Synchronous crisis check. Target p95 under 2 seconds. Tier 3 is decided by the rule-based detector and never waits for the AI (ADR-4). Never rate-limited and never returns 503 for a Tier 3 decision (Global Rules 8 and 11). 
[**getCrisisResources**](CrisisApi.md#getcrisisresources) | **GET** /v1/crisis/resources | Bundled crisis resources. Works without a valid token (S22).
[**selfInitiatedCrisis**](CrisisApi.md#selfinitiatedcrisis) | **POST** /v1/crisis/self-initiated | The patient asks for help. Always accepted while authenticated.


# **answerTier2Consent**
> AnswerTier2Consent200Response answerTier2Consent(id, answerTier2ConsentRequest)

Answer the Tier 2 consent prompt. No detail is sent on refusal (S3).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getCrisisApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final AnswerTier2ConsentRequest answerTier2ConsentRequest = ; // AnswerTier2ConsentRequest | 

try {
    final response = api.answerTier2Consent(id, answerTier2ConsentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CrisisApi->answerTier2Consent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **answerTier2ConsentRequest** | [**AnswerTier2ConsentRequest**](AnswerTier2ConsentRequest.md)|  | 

### Return type

[**AnswerTier2Consent200Response**](AnswerTier2Consent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkCrisis**
> CheckCrisis200Response checkCrisis(crisisCheckRequest)

Synchronous crisis check. Target p95 under 2 seconds. Tier 3 is decided by the rule-based detector and never waits for the AI (ADR-4). Never rate-limited and never returns 503 for a Tier 3 decision (Global Rules 8 and 11). 

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getCrisisApi();
final CrisisCheckRequest crisisCheckRequest = ; // CrisisCheckRequest | 

try {
    final response = api.checkCrisis(crisisCheckRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CrisisApi->checkCrisis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crisisCheckRequest** | [**CrisisCheckRequest**](CrisisCheckRequest.md)|  | 

### Return type

[**CheckCrisis200Response**](CheckCrisis200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrisisResources**
> GetCrisisResources200Response getCrisisResources()

Bundled crisis resources. Works without a valid token (S22).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getCrisisApi();

try {
    final response = api.getCrisisResources();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CrisisApi->getCrisisResources: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCrisisResources200Response**](GetCrisisResources200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **selfInitiatedCrisis**
> CheckCrisis200Response selfInitiatedCrisis(selfInitiatedCrisisRequest)

The patient asks for help. Always accepted while authenticated.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getCrisisApi();
final SelfInitiatedCrisisRequest selfInitiatedCrisisRequest = ; // SelfInitiatedCrisisRequest | 

try {
    final response = api.selfInitiatedCrisis(selfInitiatedCrisisRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CrisisApi->selfInitiatedCrisis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **selfInitiatedCrisisRequest** | [**SelfInitiatedCrisisRequest**](SelfInitiatedCrisisRequest.md)|  | 

### Return type

[**CheckCrisis200Response**](CheckCrisis200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

