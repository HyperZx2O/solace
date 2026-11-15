# Solace_api.api.HealthApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealth**](HealthApi.md#gethealth) | **GET** /health | Liveness. No dependencies checked.
[**getReady**](HealthApi.md#getready) | **GET** /ready | Readiness. Checks PostgreSQL and Redis.


# **getHealth**
> HealthEnvelope getHealth()

Liveness. No dependencies checked.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getHealthApi();

try {
    final response = api.getHealth();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->getHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthEnvelope**](HealthEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReady**
> ReadyEnvelope getReady()

Readiness. Checks PostgreSQL and Redis.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getHealthApi();

try {
    final response = api.getReady();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->getReady: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReadyEnvelope**](ReadyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

