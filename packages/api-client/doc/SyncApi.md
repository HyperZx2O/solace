# between_api.api.SyncApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**syncItems**](SyncApi.md#syncitems) | **POST** /v1/sync/items | Batch-sync offline items. Each item is accepted, duplicate, historical_flagged or rejected.


# **syncItems**
> SyncItems200Response syncItems(syncItemsRequest)

Batch-sync offline items. Each item is accepted, duplicate, historical_flagged or rejected.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSyncApi();
final SyncItemsRequest syncItemsRequest = ; // SyncItemsRequest | 

try {
    final response = api.syncItems(syncItemsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SyncApi->syncItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **syncItemsRequest** | [**SyncItemsRequest**](SyncItemsRequest.md)|  | 

### Return type

[**SyncItems200Response**](SyncItems200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

