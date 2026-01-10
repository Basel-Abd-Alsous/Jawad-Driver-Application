import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../constant/api_link.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) {
    return _ApiClient(dio, baseUrl: baseUrl ?? ApiLinks.server);
  }
  // Accept-Language : ar , en

  // ---------------- GET ----------------
  @GET("{endpoint}")
  Future<HttpResponse<dynamic>> getRequest({
    @Path("endpoint") required String endpoint,
    @Queries() Map<String, dynamic>? query,
    @Header("Authorization") String? authorization,
    @Header("Accept-Language") String? language,
  });

  // ---------------- POST ----------------
  @POST("{endpoint}")
  Future<HttpResponse<dynamic>> postRequest({
    @Path("endpoint") required String endpoint,
    @Body() Map<String, dynamic>? body,
    @Queries() Map<String, dynamic>? query,
    @Header("Authorization") String? authorization,
    @Header("Accept-Language") String? language,
  });

  // ---------------- PUT ----------------
  @PUT("{endpoint}")
  Future<HttpResponse<dynamic>> putRequest({
    @Path("endpoint") required String endpoint,
    @Body() required Map<String, dynamic> body,
    @Queries() Map<String, dynamic>? query,
    @Header("Authorization") String? authorization,
    @Header("Accept-Language") String? language,
  });

  // ---------------- DELETE ----------------
  @DELETE("{endpoint}")
  Future<HttpResponse<dynamic>> deleteRequest({
    @Path("endpoint") required String endpoint,
    @Queries() Map<String, dynamic>? query,
    @Header("Authorization") required String authorization,
    @Header("Accept-Language") String? language,
  });

  // ---------------- Upload Single File ----------------
  @POST("{endpoint}")
  @MultiPart()
  Future<HttpResponse<dynamic>> uploadFile({
    @Path("endpoint") required String endpoint,
    @Part(name: "file") required File document,
    @Part(name: "document_type_id") required int documentTypeId,
    @Header("Authorization") String? authorization,
    @Header("Accept-Language") String? language,
  });

  @POST("{endpoint}")
  @MultiPart()
  Future<HttpResponse<dynamic>> uploadFile2({
    @Path("endpoint") required String endpoint,
    @Part(name: "profile_image") required File profileImage,
    @Body() required Map<String, dynamic> body,
    @Header("Authorization") String? authorization,
    @Header("Accept-Language") String? language,
  });

  // ---------------- Upload Multiple Files ----------------
  @POST("{endpoint}")
  @MultiPart()
  Future<HttpResponse<dynamic>> uploadMultipleFiles({
    @Path("endpoint") required String endpoint,
    @Part(name: "files") required List<MultipartFile> files,
    @Part(name: "albumId") required String albumId,
    @Header("Authorization") String? authorization,
    @Header("Accept-Language") String? language,
  });
}
