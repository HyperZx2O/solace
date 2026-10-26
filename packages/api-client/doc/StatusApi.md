# between_api.api.StatusApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStatus**](StatusApi.md#getstatus) | **GET** /v1/status | Restriction level and copy key. Never returns stage.


# **getStatus**
> GetStatus200Response getStatus()

Restriction level and copy key. Never returns stage.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getStatusApi();

try {
    final response = api.getStatus();
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatusApi->getStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetStatus200Response**](GetStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

