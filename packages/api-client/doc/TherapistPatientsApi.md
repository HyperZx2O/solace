# Solace_api.api.TherapistPatientsApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveStageChange**](TherapistPatientsApi.md#approvestagechange) | **POST** /v1/therapist/patients/{id}/stage-approvals | Approve or hold a recommended stage change. Stage is never sent to the patient.
[**getPatientSummary**](TherapistPatientsApi.md#getpatientsummary) | **GET** /v1/therapist/patients/{id}/summary | Weekly summary with the clinical-judgment disclaimer as a required field.
[**getTherapistPatient**](TherapistPatientsApi.md#gettherapistpatient) | **GET** /v1/therapist/patients/{id} | One patient. 404 when there is no active connection, never 403 (no existence leak).
[**listTherapistPatients**](TherapistPatientsApi.md#listtherapistpatients) | **GET** /v1/therapist/patients | Patients grouped by priority. No stage is ever returned.


# **approveStageChange**
> EmptyEnvelope approveStageChange(id, approveStageChangeRequest)

Approve or hold a recommended stage change. Stage is never sent to the patient.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTherapistPatientsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ApproveStageChangeRequest approveStageChangeRequest = ; // ApproveStageChangeRequest | 

try {
    final response = api.approveStageChange(id, approveStageChangeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistPatientsApi->approveStageChange: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **approveStageChangeRequest** | [**ApproveStageChangeRequest**](ApproveStageChangeRequest.md)|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPatientSummary**
> GetPatientSummary200Response getPatientSummary(id)

Weekly summary with the clinical-judgment disclaimer as a required field.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTherapistPatientsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getPatientSummary(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistPatientsApi->getPatientSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetPatientSummary200Response**](GetPatientSummary200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTherapistPatient**
> GetTherapistPatient200Response getTherapistPatient(id)

One patient. 404 when there is no active connection, never 403 (no existence leak).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTherapistPatientsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getTherapistPatient(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistPatientsApi->getTherapistPatient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetTherapistPatient200Response**](GetTherapistPatient200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTherapistPatients**
> ListTherapistPatients200Response listTherapistPatients()

Patients grouped by priority. No stage is ever returned.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTherapistPatientsApi();

try {
    final response = api.listTherapistPatients();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistPatientsApi->listTherapistPatients: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTherapistPatients200Response**](ListTherapistPatients200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

