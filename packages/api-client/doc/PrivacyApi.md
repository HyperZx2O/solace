# Solace_api.api.PrivacyApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmDeletion**](PrivacyApi.md#confirmdeletion) | **POST** /v1/account/deletion-requests/{id}/confirm | Step 2 of deletion.
[**getAccessLog**](PrivacyApi.md#getaccesslog) | **GET** /v1/privacy/access-log | Forward-only, append-only view of who opened what.
[**getExport**](PrivacyApi.md#getexport) | **GET** /v1/privacy/exports/{id} | Export status.
[**pauseProcessing**](PrivacyApi.md#pauseprocessing) | **POST** /v1/privacy/pause | Account becomes read-only. Crisis monitoring follows the consent state.
[**requestDeletion**](PrivacyApi.md#requestdeletion) | **POST** /v1/account/deletion-requests | Step 1 of deletion.
[**requestExport**](PrivacyApi.md#requestexport) | **POST** /v1/privacy/exports | Request a data export. Therapist MFA is required for therapist exports.


# **confirmDeletion**
> RequestDeletion201Response confirmDeletion(id)

Step 2 of deletion.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getPrivacyApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.confirmDeletion(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyApi->confirmDeletion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RequestDeletion201Response**](RequestDeletion201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccessLog**
> GetAccessLog200Response getAccessLog()

Forward-only, append-only view of who opened what.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getPrivacyApi();

try {
    final response = api.getAccessLog();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyApi->getAccessLog: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAccessLog200Response**](GetAccessLog200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExport**
> RequestExport201Response getExport(id)

Export status.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getPrivacyApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getExport(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyApi->getExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RequestExport201Response**](RequestExport201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pauseProcessing**
> EmptyEnvelope pauseProcessing(pauseProcessingRequest)

Account becomes read-only. Crisis monitoring follows the consent state.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getPrivacyApi();
final PauseProcessingRequest pauseProcessingRequest = ; // PauseProcessingRequest | 

try {
    final response = api.pauseProcessing(pauseProcessingRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyApi->pauseProcessing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pauseProcessingRequest** | [**PauseProcessingRequest**](PauseProcessingRequest.md)|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestDeletion**
> RequestDeletion201Response requestDeletion(startCrisisMonitoringWithdrawalRequest)

Step 1 of deletion.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getPrivacyApi();
final StartCrisisMonitoringWithdrawalRequest startCrisisMonitoringWithdrawalRequest = ; // StartCrisisMonitoringWithdrawalRequest | 

try {
    final response = api.requestDeletion(startCrisisMonitoringWithdrawalRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyApi->requestDeletion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startCrisisMonitoringWithdrawalRequest** | [**StartCrisisMonitoringWithdrawalRequest**](StartCrisisMonitoringWithdrawalRequest.md)|  | 

### Return type

[**RequestDeletion201Response**](RequestDeletion201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestExport**
> RequestExport201Response requestExport(startCrisisMonitoringWithdrawalRequest)

Request a data export. Therapist MFA is required for therapist exports.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getPrivacyApi();
final StartCrisisMonitoringWithdrawalRequest startCrisisMonitoringWithdrawalRequest = ; // StartCrisisMonitoringWithdrawalRequest | 

try {
    final response = api.requestExport(startCrisisMonitoringWithdrawalRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyApi->requestExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startCrisisMonitoringWithdrawalRequest** | [**StartCrisisMonitoringWithdrawalRequest**](StartCrisisMonitoringWithdrawalRequest.md)|  | 

### Return type

[**RequestExport201Response**](RequestExport201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

