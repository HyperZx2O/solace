# Solace_api.api.TasksAndCheckInsApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeTask**](TasksAndCheckInsApi.md#completetask) | **POST** /v1/tasks/{id}/complete | Mark today&#39;s task complete.
[**createCheckIn**](TasksAndCheckInsApi.md#createcheckin) | **POST** /v1/check-ins | Daily check-in. Idempotent on &#x60;clientId&#x60; (S9).
[**explainTask**](TasksAndCheckInsApi.md#explaintask) | **GET** /v1/tasks/{id}/why | Why this task was chosen. No clinical reasoning is exposed.
[**getToday**](TasksAndCheckInsApi.md#gettoday) | **GET** /v1/today | Today&#39;s task, check-in state and swap availability.
[**listCheckIns**](TasksAndCheckInsApi.md#listcheckins) | **GET** /v1/check-ins | Recent check-ins for the mood series.
[**swapTask**](TasksAndCheckInsApi.md#swaptask) | **POST** /v1/today/swap | Swap today&#39;s task. At most one swap per day (R-SWAP-1).
[**taskFeedback**](TasksAndCheckInsApi.md#taskfeedback) | **POST** /v1/tasks/{id}/feedback | Rate how much the task helped.


# **completeTask**
> CompleteTask200Response completeTask(id)

Mark today's task complete.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.completeTask(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->completeTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CompleteTask200Response**](CompleteTask200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCheckIn**
> CreateCheckIn201Response createCheckIn(checkInRequest)

Daily check-in. Idempotent on `clientId` (S9).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();
final CheckInRequest checkInRequest = ; // CheckInRequest | 

try {
    final response = api.createCheckIn(checkInRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->createCheckIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkInRequest** | [**CheckInRequest**](CheckInRequest.md)|  | 

### Return type

[**CreateCheckIn201Response**](CreateCheckIn201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **explainTask**
> ExplainTask200Response explainTask(id)

Why this task was chosen. No clinical reasoning is exposed.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.explainTask(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->explainTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ExplainTask200Response**](ExplainTask200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToday**
> GetToday200Response getToday()

Today's task, check-in state and swap availability.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();

try {
    final response = api.getToday();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->getToday: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetToday200Response**](GetToday200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCheckIns**
> ListCheckIns200Response listCheckIns(days)

Recent check-ins for the mood series.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();
final int days = 56; // int | 

try {
    final response = api.listCheckIns(days);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->listCheckIns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int**|  | [optional] [default to 30]

### Return type

[**ListCheckIns200Response**](ListCheckIns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swapTask**
> CompleteTask200Response swapTask()

Swap today's task. At most one swap per day (R-SWAP-1).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();

try {
    final response = api.swapTask();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->swapTask: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompleteTask200Response**](CompleteTask200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **taskFeedback**
> EmptyEnvelope taskFeedback(id, taskFeedbackRequest)

Rate how much the task helped.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTasksAndCheckInsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final TaskFeedbackRequest taskFeedbackRequest = ; // TaskFeedbackRequest | 

try {
    final response = api.taskFeedback(id, taskFeedbackRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksAndCheckInsApi->taskFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **taskFeedbackRequest** | [**TaskFeedbackRequest**](TaskFeedbackRequest.md)|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

