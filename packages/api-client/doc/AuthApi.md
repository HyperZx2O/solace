# Solace_api.api.AuthApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMe**](AuthApi.md#getme) | **GET** /v1/me | The authenticated user. The client routes on &#x60;role&#x60;.
[**listSessions**](AuthApi.md#listsessions) | **GET** /v1/auth/sessions | List active sessions for the current user.
[**login**](AuthApi.md#login) | **POST** /v1/auth/login | Exchange credentials for an access and refresh token.
[**logout**](AuthApi.md#logout) | **POST** /v1/auth/logout | Revoke the current session.
[**refresh**](AuthApi.md#refresh) | **POST** /v1/auth/refresh | Rotate a refresh token. Reuse revokes the whole session family.
[**revokeSession**](AuthApi.md#revokesession) | **DELETE** /v1/auth/sessions/{id} | Revoke one session by id.
[**signup**](AuthApi.md#signup) | **POST** /v1/auth/signup | Create a patient account. Age 18+ is enforced server-side (OD-3).


# **getMe**
> GetMe200Response getMe()

The authenticated user. The client routes on `role`.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();

try {
    final response = api.getMe();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->getMe: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetMe200Response**](GetMe200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessions**
> ListSessions200Response listSessions()

List active sessions for the current user.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();

try {
    final response = api.listSessions();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->listSessions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListSessions200Response**](ListSessions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> AuthEnvelope login(loginRequest)

Exchange credentials for an access and refresh token.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();
final LoginRequest loginRequest = ; // LoginRequest | 

try {
    final response = api.login(loginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**AuthEnvelope**](AuthEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> EmptyEnvelope logout(logoutRequest)

Revoke the current session.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();
final LogoutRequest logoutRequest = ; // LogoutRequest | 

try {
    final response = api.logout(logoutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->logout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logoutRequest** | [**LogoutRequest**](LogoutRequest.md)|  | [optional] 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refresh**
> AuthEnvelope refresh(refreshRequest)

Rotate a refresh token. Reuse revokes the whole session family.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();
final RefreshRequest refreshRequest = ; // RefreshRequest | 

try {
    final response = api.refresh(refreshRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshRequest** | [**RefreshRequest**](RefreshRequest.md)|  | 

### Return type

[**AuthEnvelope**](AuthEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeSession**
> EmptyEnvelope revokeSession(id)

Revoke one session by id.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.revokeSession(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->revokeSession: $e\n');
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

# **signup**
> AuthEnvelope signup(signupRequest)

Create a patient account. Age 18+ is enforced server-side (OD-3).

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getAuthApi();
final SignupRequest signupRequest = {"email":"user@example.com","password":"correct-horse-battery-staple","ageConfirmed":true,"appVersion":"1.0.0"}; // SignupRequest | 

try {
    final response = api.signup(signupRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signupRequest** | [**SignupRequest**](SignupRequest.md)|  | 

### Return type

[**AuthEnvelope**](AuthEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

