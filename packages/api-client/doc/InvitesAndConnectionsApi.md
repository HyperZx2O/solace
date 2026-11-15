# Solace_api.api.InvitesAndConnectionsApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptInvite**](InvitesAndConnectionsApi.md#acceptinvite) | **POST** /v1/therapist/invites/accept | Accept an invite. No patient data is visible until the patient confirms (S18).
[**confirmConnection**](InvitesAndConnectionsApi.md#confirmconnection) | **POST** /v1/patient/connections/{id}/confirm | The patient confirms. The only transition to &#x60;active&#x60;.
[**connectByCode**](InvitesAndConnectionsApi.md#connectbycode) | **POST** /v1/patient/connections/by-code | Connect with a therapist using an in-app code.
[**createInvite**](InvitesAndConnectionsApi.md#createinvite) | **POST** /v1/patient/invites | Invite a therapist by email. Expires after 48 hours (OD-2).
[**declineConnection**](InvitesAndConnectionsApi.md#declineconnection) | **POST** /v1/patient/connections/{id}/decline | The patient declines. Nothing is ever visible (S19).
[**endConnection**](InvitesAndConnectionsApi.md#endconnection) | **DELETE** /v1/patient/connection | The patient ends the connection. Access stops immediately (R-CONN-1, S21).
[**flagWrongConnection**](InvitesAndConnectionsApi.md#flagwrongconnection) | **POST** /v1/patient/connections/{id}/flag-wrong | The patient says this is the wrong therapist.
[**listPendingConnections**](InvitesAndConnectionsApi.md#listpendingconnections) | **GET** /v1/patient/connections/pending | Connections waiting for the patient&#39;s confirmation.


# **acceptInvite**
> AcceptInvite200Response acceptInvite(acceptInviteRequest)

Accept an invite. No patient data is visible until the patient confirms (S18).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();
final AcceptInviteRequest acceptInviteRequest = ; // AcceptInviteRequest | 

try {
    final response = api.acceptInvite(acceptInviteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->acceptInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptInviteRequest** | [**AcceptInviteRequest**](AcceptInviteRequest.md)|  | 

### Return type

[**AcceptInvite200Response**](AcceptInvite200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmConnection**
> AcceptInvite200Response confirmConnection(id)

The patient confirms. The only transition to `active`.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.confirmConnection(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->confirmConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AcceptInvite200Response**](AcceptInvite200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectByCode**
> AcceptInvite200Response connectByCode(connectByCodeRequest)

Connect with a therapist using an in-app code.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();
final ConnectByCodeRequest connectByCodeRequest = ; // ConnectByCodeRequest | 

try {
    final response = api.connectByCode(connectByCodeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->connectByCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectByCodeRequest** | [**ConnectByCodeRequest**](ConnectByCodeRequest.md)|  | 

### Return type

[**AcceptInvite200Response**](AcceptInvite200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInvite**
> CreateInvite201Response createInvite(createInviteRequest)

Invite a therapist by email. Expires after 48 hours (OD-2).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();
final CreateInviteRequest createInviteRequest = ; // CreateInviteRequest | 

try {
    final response = api.createInvite(createInviteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->createInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInviteRequest** | [**CreateInviteRequest**](CreateInviteRequest.md)|  | 

### Return type

[**CreateInvite201Response**](CreateInvite201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **declineConnection**
> EmptyEnvelope declineConnection(id)

The patient declines. Nothing is ever visible (S19).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.declineConnection(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->declineConnection: $e\n');
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

# **endConnection**
> EmptyEnvelope endConnection()

The patient ends the connection. Access stops immediately (R-CONN-1, S21).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();

try {
    final response = api.endConnection();
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->endConnection: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **flagWrongConnection**
> EmptyEnvelope flagWrongConnection(id)

The patient says this is the wrong therapist.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.flagWrongConnection(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->flagWrongConnection: $e\n');
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

# **listPendingConnections**
> ListPendingConnections200Response listPendingConnections()

Connections waiting for the patient's confirmation.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getInvitesAndConnectionsApi();

try {
    final response = api.listPendingConnections();
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitesAndConnectionsApi->listPendingConnections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPendingConnections200Response**](ListPendingConnections200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

