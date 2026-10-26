# between_api.api.SurveysApi

## Load the API package
```dart
import 'package:between_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeSurvey**](SurveysApi.md#completesurvey) | **POST** /v1/surveys/{id}/complete | Score and complete a survey. PHQ-9 item 9 becomes a possible concern (OD-10).
[**getSurvey**](SurveysApi.md#getsurvey) | **GET** /v1/surveys/{id} | Survey definition and items.
[**listSurveyResults**](SurveysApi.md#listsurveyresults) | **GET** /v1/surveys/results | Survey results for the current patient.
[**retakeSurvey**](SurveysApi.md#retakesurvey) | **POST** /v1/surveys/retake | Request a retake. Rejected inside the 14-day cooldown.
[**submitSurveyResponses**](SurveysApi.md#submitsurveyresponses) | **POST** /v1/surveys/{id}/responses | Save item-level answers. Idempotent on &#x60;clientId&#x60;.


# **completeSurvey**
> CompleteSurvey200Response completeSurvey(id, completeSurveyRequest)

Score and complete a survey. PHQ-9 item 9 becomes a possible concern (OD-10).

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSurveysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CompleteSurveyRequest completeSurveyRequest = ; // CompleteSurveyRequest | 

try {
    final response = api.completeSurvey(id, completeSurveyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SurveysApi->completeSurvey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **completeSurveyRequest** | [**CompleteSurveyRequest**](CompleteSurveyRequest.md)|  | 

### Return type

[**CompleteSurvey200Response**](CompleteSurvey200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSurvey**
> GetSurvey200Response getSurvey(id)

Survey definition and items.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSurveysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getSurvey(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SurveysApi->getSurvey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GetSurvey200Response**](GetSurvey200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSurveyResults**
> ListSurveyResults200Response listSurveyResults()

Survey results for the current patient.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSurveysApi();

try {
    final response = api.listSurveyResults();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SurveysApi->listSurveyResults: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListSurveyResults200Response**](ListSurveyResults200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retakeSurvey**
> EmptyEnvelope retakeSurvey(retakeSurveyRequest)

Request a retake. Rejected inside the 14-day cooldown.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSurveysApi();
final RetakeSurveyRequest retakeSurveyRequest = ; // RetakeSurveyRequest | 

try {
    final response = api.retakeSurvey(retakeSurveyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SurveysApi->retakeSurvey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **retakeSurveyRequest** | [**RetakeSurveyRequest**](RetakeSurveyRequest.md)|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitSurveyResponses**
> SubmitSurveyResponses201Response submitSurveyResponses(id, surveyResponsesRequest)

Save item-level answers. Idempotent on `clientId`.

### Example
```dart
import 'package:between_api/api.dart';

final api = BetweenApi().getSurveysApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final SurveyResponsesRequest surveyResponsesRequest = ; // SurveyResponsesRequest | 

try {
    final response = api.submitSurveyResponses(id, surveyResponsesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SurveysApi->submitSurveyResponses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **surveyResponsesRequest** | [**SurveyResponsesRequest**](SurveyResponsesRequest.md)|  | 

### Return type

[**SubmitSurveyResponses201Response**](SubmitSurveyResponses201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

