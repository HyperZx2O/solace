# between_api.api.DevicesApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNotificationPreferences**](DevicesApi.md#getnotificationpreferences) | **GET** /v1/notification-preferences | Notification preferences. Crisis types cannot be disabled.
[**registerDevice**](DevicesApi.md#registerdevice) | **POST** /v1/devices | Register an FCM token.
[**setNotificationPreference**](DevicesApi.md#setnotificationpreference) | **PUT** /v1/notification-preferences/{type} | Enable or disable one notification type.
[**unregisterDevice**](DevicesApi.md#unregisterdevice) | **DELETE** /v1/devices/{id} | Remove a device token.


# **getNotificationPreferences**
> GetNotificationPreferences200Response getNotificationPreferences()

Notification preferences. Crisis types cannot be disabled.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getDevicesApi();

try {
    final response = api.getNotificationPreferences();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DevicesApi->getNotificationPreferences: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetNotificationPreferences200Response**](GetNotificationPreferences200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerDevice**
> RegisterDevice201Response registerDevice(registerDeviceRequest)

Register an FCM token.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getDevicesApi();
final RegisterDeviceRequest registerDeviceRequest = ; // RegisterDeviceRequest | 

try {
    final response = api.registerDevice(registerDeviceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DevicesApi->registerDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerDeviceRequest** | [**RegisterDeviceRequest**](RegisterDeviceRequest.md)|  | 

### Return type

[**RegisterDevice201Response**](RegisterDevice201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setNotificationPreference**
> SetNotificationPreference200Response setNotificationPreference(type, setNotificationPreferenceRequest)

Enable or disable one notification type.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getDevicesApi();
final NotificationType type = ; // NotificationType | 
final SetNotificationPreferenceRequest setNotificationPreferenceRequest = ; // SetNotificationPreferenceRequest | 

try {
    final response = api.setNotificationPreference(type, setNotificationPreferenceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DevicesApi->setNotificationPreference: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**NotificationType**](.md)|  | 
 **setNotificationPreferenceRequest** | [**SetNotificationPreferenceRequest**](SetNotificationPreferenceRequest.md)|  | 

### Return type

[**SetNotificationPreference200Response**](SetNotificationPreference200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregisterDevice**
> EmptyEnvelope unregisterDevice(id)

Remove a device token.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getDevicesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.unregisterDevice(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DevicesApi->unregisterDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

