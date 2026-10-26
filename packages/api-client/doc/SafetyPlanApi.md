# between_api.api.SafetyPlanApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSafetyPlan**](SafetyPlanApi.md#getsafetyplan) | **GET** /v1/safety-plan | The patient&#39;s own safety plan. Field 4 is never shared.
[**replaceSafetyPlan**](SafetyPlanApi.md#replacesafetyplan) | **PUT** /v1/safety-plan | Replace the safety plan fields.
[**setSafetyPlanField**](SafetyPlanApi.md#setsafetyplanfield) | **PUT** /v1/safety-plan/fields/{n} | Update one field. Field 4 is stored but always excluded from sharing.
[**setSafetyPlanSharing**](SafetyPlanApi.md#setsafetyplansharing) | **PUT** /v1/safety-plan/sharing | Share or stop sharing fields 1, 2, 3 and 5 with the therapist.


# **getSafetyPlan**
> GetSafetyPlan200Response getSafetyPlan()

The patient's own safety plan. Field 4 is never shared.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSafetyPlanApi();

try {
    final response = api.getSafetyPlan();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SafetyPlanApi->getSafetyPlan: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetSafetyPlan200Response**](GetSafetyPlan200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceSafetyPlan**
> GetSafetyPlan200Response replaceSafetyPlan(safetyPlanFields)

Replace the safety plan fields.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSafetyPlanApi();
final SafetyPlanFields safetyPlanFields = ; // SafetyPlanFields | 

try {
    final response = api.replaceSafetyPlan(safetyPlanFields);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SafetyPlanApi->replaceSafetyPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **safetyPlanFields** | [**SafetyPlanFields**](SafetyPlanFields.md)|  | 

### Return type

[**GetSafetyPlan200Response**](GetSafetyPlan200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSafetyPlanField**
> GetSafetyPlan200Response setSafetyPlanField(n, setSafetyPlanFieldRequest)

Update one field. Field 4 is stored but always excluded from sharing.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSafetyPlanApi();
final int n = 56; // int | 
final SetSafetyPlanFieldRequest setSafetyPlanFieldRequest = ; // SetSafetyPlanFieldRequest | 

try {
    final response = api.setSafetyPlanField(n, setSafetyPlanFieldRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SafetyPlanApi->setSafetyPlanField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **n** | **int**|  | 
 **setSafetyPlanFieldRequest** | [**SetSafetyPlanFieldRequest**](SetSafetyPlanFieldRequest.md)|  | 

### Return type

[**GetSafetyPlan200Response**](GetSafetyPlan200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSafetyPlanSharing**
> GetSafetyPlan200Response setSafetyPlanSharing(setSafetyPlanSharingRequest)

Share or stop sharing fields 1, 2, 3 and 5 with the therapist.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSafetyPlanApi();
final SetSafetyPlanSharingRequest setSafetyPlanSharingRequest = ; // SetSafetyPlanSharingRequest | 

try {
    final response = api.setSafetyPlanSharing(setSafetyPlanSharingRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SafetyPlanApi->setSafetyPlanSharing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setSafetyPlanSharingRequest** | [**SetSafetyPlanSharingRequest**](SetSafetyPlanSharingRequest.md)|  | 

### Return type

[**GetSafetyPlan200Response**](GetSafetyPlan200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

