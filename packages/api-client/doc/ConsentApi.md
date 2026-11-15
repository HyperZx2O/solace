# Solace_api.api.ConsentApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmCrisisMonitoringWithdrawal**](ConsentApi.md#confirmcrisismonitoringwithdrawal) | **POST** /v1/consents/crisis-monitoring/withdrawals/{id}/confirm | Step 2. Without this, monitoring stays ON (R-CONSENT-3, S14).
[**consentHistory**](ConsentApi.md#consenthistory) | **GET** /v1/consents/history | Append-only consent history.
[**listConsents**](ConsentApi.md#listconsents) | **GET** /v1/consents | Current consent state for every item.
[**setConsent**](ConsentApi.md#setconsent) | **PUT** /v1/consents/{item} | Grant or refuse one consent item.
[**startCrisisMonitoringWithdrawal**](ConsentApi.md#startcrisismonitoringwithdrawal) | **POST** /v1/consents/crisis-monitoring/withdrawals | Step 1 of withdrawing crisis monitoring.


# **confirmCrisisMonitoringWithdrawal**
> SetConsent200Response confirmCrisisMonitoringWithdrawal(id)

Step 2. Without this, monitoring stays ON (R-CONSENT-3, S14).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getConsentApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.confirmCrisisMonitoringWithdrawal(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsentApi->confirmCrisisMonitoringWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SetConsent200Response**](SetConsent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consentHistory**
> ListConsents200Response consentHistory()

Append-only consent history.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getConsentApi();

try {
    final response = api.consentHistory();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsentApi->consentHistory: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListConsents200Response**](ListConsents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConsents**
> ListConsents200Response listConsents()

Current consent state for every item.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getConsentApi();

try {
    final response = api.listConsents();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsentApi->listConsents: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListConsents200Response**](ListConsents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setConsent**
> SetConsent200Response setConsent(item, setConsentRequest)

Grant or refuse one consent item.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getConsentApi();
final ConsentItem item = ; // ConsentItem | 
final SetConsentRequest setConsentRequest = ; // SetConsentRequest | 

try {
    final response = api.setConsent(item, setConsentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsentApi->setConsent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | [**ConsentItem**](.md)|  | 
 **setConsentRequest** | [**SetConsentRequest**](SetConsentRequest.md)|  | 

### Return type

[**SetConsent200Response**](SetConsent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startCrisisMonitoringWithdrawal**
> StartCrisisMonitoringWithdrawal201Response startCrisisMonitoringWithdrawal(startCrisisMonitoringWithdrawalRequest)

Step 1 of withdrawing crisis monitoring.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getConsentApi();
final StartCrisisMonitoringWithdrawalRequest startCrisisMonitoringWithdrawalRequest = ; // StartCrisisMonitoringWithdrawalRequest | 

try {
    final response = api.startCrisisMonitoringWithdrawal(startCrisisMonitoringWithdrawalRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsentApi->startCrisisMonitoringWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startCrisisMonitoringWithdrawalRequest** | [**StartCrisisMonitoringWithdrawalRequest**](StartCrisisMonitoringWithdrawalRequest.md)|  | 

### Return type

[**StartCrisisMonitoringWithdrawal201Response**](StartCrisisMonitoringWithdrawal201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

