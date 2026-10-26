# between_api.api.TherapistAlertsApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTherapistAlert**](TherapistAlertsApi.md#gettherapistalert) | **GET** /v1/therapist/alerts/{id} | One alert. Requires re-authentication when the session is older than 4 hours (B08, S16).
[**listTherapistAlerts**](TherapistAlertsApi.md#listtherapistalerts) | **GET** /v1/therapist/alerts | Open and recent alerts for connected patients.
[**resolveAlert**](TherapistAlertsApi.md#resolvealert) | **POST** /v1/therapist/alerts/{id}/resolve | Resolve. All three checklist items are required (S7).
[**reviewAlert**](TherapistAlertsApi.md#reviewalert) | **POST** /v1/therapist/alerts/{id}/review | Mark reviewed. Starts the 60-second undo window.
[**undoReview**](TherapistAlertsApi.md#undoreview) | **POST** /v1/therapist/alerts/{id}/review/undo | Undo the review inside 60 seconds. Escalation continues (S5, S6).


# **getTherapistAlert**
> GetTherapistAlert200Response getTherapistAlert(id)

One alert. Requires re-authentication when the session is older than 4 hours (B08, S16).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getTherapistAlertsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getTherapistAlert(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistAlertsApi->getTherapistAlert: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetTherapistAlert200Response**](GetTherapistAlert200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTherapistAlerts**
> ListTherapistAlerts200Response listTherapistAlerts()

Open and recent alerts for connected patients.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getTherapistAlertsApi();

try {
    final response = api.listTherapistAlerts();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistAlertsApi->listTherapistAlerts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTherapistAlerts200Response**](ListTherapistAlerts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveAlert**
> GetTherapistAlert200Response resolveAlert(id, resolveAlertRequest)

Resolve. All three checklist items are required (S7).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getTherapistAlertsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ResolveAlertRequest resolveAlertRequest = ; // ResolveAlertRequest | 

try {
    final response = api.resolveAlert(id, resolveAlertRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistAlertsApi->resolveAlert: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **resolveAlertRequest** | [**ResolveAlertRequest**](ResolveAlertRequest.md)|  | 

### Return type

[**GetTherapistAlert200Response**](GetTherapistAlert200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewAlert**
> GetTherapistAlert200Response reviewAlert(id)

Mark reviewed. Starts the 60-second undo window.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getTherapistAlertsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.reviewAlert(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistAlertsApi->reviewAlert: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetTherapistAlert200Response**](GetTherapistAlert200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **undoReview**
> GetTherapistAlert200Response undoReview(id)

Undo the review inside 60 seconds. Escalation continues (S5, S6).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getTherapistAlertsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.undoReview(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistAlertsApi->undoReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetTherapistAlert200Response**](GetTherapistAlert200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

