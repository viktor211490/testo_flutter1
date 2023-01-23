// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testo_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TestoApi extends TestoApi {
  _$TestoApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TestoApi;

  @override
  Future<Response<ApplicationUserCodeGenDto>> _apiAccountGet() {
    final Uri $url = Uri.parse('/api/Account');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ApplicationUserCodeGenDto, ApplicationUserCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiAccountPut(
      {required UpdateUserInfoCommand? body}) {
    final Uri $url = Uri.parse('/api/Account');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAccountPatch(
      {required SetMainAddressCommand? body}) {
    final Uri $url = Uri.parse('/api/Account');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAccountPost(
      {required AddPushTokenCommand? body}) {
    final Uri $url = Uri.parse('/api/Account');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAccountDeletePost(
      {required DeleteUserCommand? body}) {
    final Uri $url = Uri.parse('/api/Account/Delete');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfAddressCodeGenDto>> _apiAddressGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Address');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfAddressCodeGenDto,
        PaginatedListOfAddressCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiAddressPost(
      {required CreateAddressCommand? body}) {
    final Uri $url = Uri.parse('/api/Address');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAddressCheckGet({
    bool? checkCustomFields,
    String? region,
    String? regionCode,
    String? district,
    String? districtCode,
    String? city,
    String? cityCode,
    String? street,
    String? streetCode,
    String? house,
    String? houseCode,
    String? flat,
    String? index,
    String? fiasCode,
    String? kladrCode,
    String? latitude,
    String? longitude,
    String? value,
    String? frontDoor,
    String? floor,
    String? doorPhone,
  }) {
    final Uri $url = Uri.parse('/api/Address/Check');
    final Map<String, dynamic> $params = <String, dynamic>{
      'CheckCustomFields': checkCustomFields,
      'Region': region,
      'RegionCode': regionCode,
      'District': district,
      'DistrictCode': districtCode,
      'City': city,
      'CityCode': cityCode,
      'Street': street,
      'StreetCode': streetCode,
      'House': house,
      'HouseCode': houseCode,
      'Flat': flat,
      'Index': index,
      'FiasCode': fiasCode,
      'KladrCode': kladrCode,
      'Latitude': latitude,
      'Longitude': longitude,
      'Value': value,
      'FrontDoor': frontDoor,
      'Floor': floor,
      'DoorPhone': doorPhone,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAddressIdPut({
    required String? id,
    required UpdateAddressCustomFieldsCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Address/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAddressIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Address/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiAuthRequestCodePost(
      {required RequestCodeCommand? body}) {
    final Uri $url = Uri.parse('/api/Auth/RequestCode');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AuthResponse>> _apiAuthConfirmPost(
      {required ConfirmPhoneCommand? body}) {
    final Uri $url = Uri.parse('/api/Auth/Confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthResponse, AuthResponse>($request);
  }

  @override
  Future<Response<AuthResponse>> _apiAuthRefreshPost(
      {required RefreshTokenCommand? body}) {
    final Uri $url = Uri.parse('/api/Auth/Refresh');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthResponse, AuthResponse>($request);
  }

  @override
  Future<Response<PaginatedListOfCategoryCodeGenDto>> _apiCategoryGet({
    String? parentCategoryId,
    String? restaurantId,
    bool? isVisible,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Category');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ParentCategoryId': parentCategoryId,
      'RestaurantId': restaurantId,
      'IsVisible': isVisible,
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfCategoryCodeGenDto,
        PaginatedListOfCategoryCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiCategoryPost(
      {required CreateCategoryCommand? body}) {
    final Uri $url = Uri.parse('/api/Category');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<CategoryCodeGenDto>>> _apiCategoryListGet({
    String? restaurantId,
    bool? isVisible,
  }) {
    final Uri $url = Uri.parse('/api/Category/List');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId,
      'IsVisible': isVisible,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<CategoryCodeGenDto>, CategoryCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiCategoryIdPut({
    required String? id,
    required UpdateCategoryCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Category/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiCategoryIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Category/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<EventMessageCodeGenDto>>> _apiEventMessageGet(
      {Object? query}) {
    final Uri $url = Uri.parse('/api/EventMessage');
    final Map<String, dynamic> $params = <String, dynamic>{'query': query};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<List<EventMessageCodeGenDto>, EventMessageCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiEventMessageIdPut({
    required String? id,
    required UpdateEventMessageCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/EventMessage/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiEventMessageIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/EventMessage/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfFileDetails>> _fileGet({
    String? filter,
    int? page,
    int? size,
  }) {
    final Uri $url = Uri.parse('/File');
    final Map<String, dynamic> $params = <String, dynamic>{
      'filter': filter,
      'page': page,
      'size': size,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<PaginatedListOfFileDetails, PaginatedListOfFileDetails>($request);
  }

  @override
  Future<Response<String>> _filePost({List<int>? File}) {
    final Uri $url = Uri.parse('/File');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'File',
        File,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _fileIdGet({required String? id}) {
    final Uri $url = Uri.parse('/File/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _fileIdPut({
    required String? id,
    List<int>? File,
  }) {
    final Uri $url = Uri.parse('/File/${id}');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'File',
        File,
      )
    ];
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _fileIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/File/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _fileViewIdGet({required String? id}) {
    final Uri $url = Uri.parse('/File/view/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfIngredientCodeGenDto>> _apiIngredientGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Ingredient');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfIngredientCodeGenDto,
        PaginatedListOfIngredientCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiIngredientPost(
      {required CreateIngredientCommand? body}) {
    final Uri $url = Uri.parse('/api/Ingredient');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<IngredientCodeGenDto>>> _apiIngredientListGet() {
    final Uri $url = Uri.parse('/api/Ingredient/List');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<IngredientCodeGenDto>, IngredientCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiIngredientIdPut({
    required String? id,
    required UpdateIngredientCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Ingredient/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiIngredientIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Ingredient/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfOrderCodeGenDto>> _apiOrderGet({
    String? restaurantId,
    String? clientId,
    String? courierId,
    Object? orderStatus,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Order');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId,
      'ClientId': clientId,
      'CourierId': courierId,
      'OrderStatus': orderStatus,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfOrderCodeGenDto,
        PaginatedListOfOrderCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiOrderPost({required CreateOrderCommand? body}) {
    final Uri $url = Uri.parse('/api/Order');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<OrderCodeGenDto>> _apiOrderIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/Order/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<OrderCodeGenDto, OrderCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiOrderIdPatch({
    required String? id,
    required UpdateOrderDetailsCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Order/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiOrderIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Order/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<OrderShortViewModel>> _apiOrderShortIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/Order/Short/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<OrderShortViewModel, OrderShortViewModel>($request);
  }

  @override
  Future<Response<List<OrderCodeGenDto>>> _apiOrderBoardGet() {
    final Uri $url = Uri.parse('/api/Order/Board');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<OrderCodeGenDto>, OrderCodeGenDto>($request);
  }

  @override
  Future<Response<List<OrderCodeGenDto>>> _apiOrderBoardIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/Order/Board/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<OrderCodeGenDto>, OrderCodeGenDto>($request);
  }

  @override
  Future<Response<PaginatedListOfOrderCodeGenDto>> _apiOrderCurrentUserGet({
    String? restaurantId,
    String? userId,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Order/CurrentUser');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId,
      'UserId': userId,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfOrderCodeGenDto,
        PaginatedListOfOrderCodeGenDto>($request);
  }

  @override
  Future<Response<List<OrderShortViewModel>>> _apiOrderCurrentUserShortGet() {
    final Uri $url = Uri.parse('/api/Order/CurrentUser/Short');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<OrderShortViewModel>, OrderShortViewModel>($request);
  }

  @override
  Future<Response<List<OrderStatusHistoryCodeGenDto>>> _apiOrderHistoryIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/Order/History/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<OrderStatusHistoryCodeGenDto>,
        OrderStatusHistoryCodeGenDto>($request);
  }

  @override
  Future<Response<num>> _apiOrderCalculatePost(
      {required CalculatePriceCommand? body}) {
    final Uri $url = Uri.parse('/api/Order/Calculate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<num, num>($request);
  }

  @override
  Future<Response<String>> _apiOrderIdStatusPut({
    required String? id,
    required ChangeOrderStatusCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Order/${id}/Status');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfPaymentMethodCodeGenDto>>
      _apiPaymentMethodPageGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/PaymentMethod/Page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfPaymentMethodCodeGenDto,
        PaginatedListOfPaymentMethodCodeGenDto>($request);
  }

  @override
  Future<Response<List<PaymentMethodCodeGenDto>>> _apiPaymentMethodListGet() {
    final Uri $url = Uri.parse('/api/PaymentMethod/List');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<PaymentMethodCodeGenDto>, PaymentMethodCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiPaymentMethodPost(
      {required CreatePaymentMethodCommand? body}) {
    final Uri $url = Uri.parse('/api/PaymentMethod');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiPaymentMethodIdPut({
    required String? id,
    required UpdatePaymentMethodCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/PaymentMethod/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiPaymentMethodIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/PaymentMethod/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfProductCodeGenDto>> _apiProductGet({
    String? categoryId,
    String? restaurantId,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Product');
    final Map<String, dynamic> $params = <String, dynamic>{
      'CategoryId': categoryId,
      'RestaurantId': restaurantId,
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfProductCodeGenDto,
        PaginatedListOfProductCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiProductPost(
      {required CreateProductCommand? body}) {
    final Uri $url = Uri.parse('/api/Product');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<ProductCodeGenDto>>> _apiProductCategoryIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/Product/Category/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ProductCodeGenDto>, ProductCodeGenDto>($request);
  }

  @override
  Future<Response<List<ProductCodeGenDto>>> _apiProductRestaurantGet({
    String? restaurantId,
    bool? isComplex,
  }) {
    final Uri $url = Uri.parse('/api/Product/Restaurant');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId,
      'IsComplex': isComplex,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ProductCodeGenDto>, ProductCodeGenDto>($request);
  }

  @override
  Future<Response<List<ProductCodeGenDto>>> _apiProductCutRestaurantGet(
      {String? restaurantId}) {
    final Uri $url = Uri.parse('/api/Product/CutRestaurant');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ProductCodeGenDto>, ProductCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiProductIdPut({
    required String? id,
    required UpdateProductCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Product/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiProductIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Product/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfProductSizeCodeGenDto>> _apiProductSizeGet({
    String? restaurantId,
    String? categoryId,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/ProductSize');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId,
      'CategoryId': categoryId,
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfProductSizeCodeGenDto,
        PaginatedListOfProductSizeCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiProductSizePost(
      {required CreateProductSizeCommand? body}) {
    final Uri $url = Uri.parse('/api/ProductSize');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<ProductSizeCodeGenDto>>> _apiProductSizeCategoryIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/ProductSize/Category/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<ProductSizeCodeGenDto>, ProductSizeCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiProductSizeIdPut({
    required String? id,
    required UpdateProductSizeCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/ProductSize/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiProductSizeIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/ProductSize/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfPromoCodeGenDto>> _apiPromoGet({
    String? restaurantId,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Promo');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId,
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfPromoCodeGenDto,
        PaginatedListOfPromoCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiPromoPost({required CreatePromoCommand? body}) {
    final Uri $url = Uri.parse('/api/Promo');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<PromoCodeGenDto>>> _apiPromoListGet(
      {String? restaurantId}) {
    final Uri $url = Uri.parse('/api/Promo/List');
    final Map<String, dynamic> $params = <String, dynamic>{
      'RestaurantId': restaurantId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<PromoCodeGenDto>, PromoCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiPromoIdPut({
    required String? id,
    required UpdatePromoCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Promo/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiPromoIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Promo/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<RestaurantCodeGenDto>>> _apiRestaurantGet() {
    final Uri $url = Uri.parse('/api/Restaurant');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<RestaurantCodeGenDto>, RestaurantCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiRestaurantPost(
      {required CreateRestaurantCommand? body}) {
    final Uri $url = Uri.parse('/api/Restaurant');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfRestaurantCodeGenDto>> _apiRestaurantPageGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Restaurant/Page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfRestaurantCodeGenDto,
        PaginatedListOfRestaurantCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiRestaurantIdGuidPost(
      {required CopyRestaurantCommand? body}) {
    final Uri $url = Uri.parse('/api/Restaurant/id:guid');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiRestaurantIdPut({
    required String? id,
    required UpdateRestaurantCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Restaurant/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiRestaurantIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Restaurant/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiRestaurantUpdateDeliveryTimeIdPut({
    required String? id,
    required UpdateDeliveryTimeCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Restaurant/UpdateDeliveryTime/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfReviewCodeGenDto>> _apiReviewGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Review');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfReviewCodeGenDto,
        PaginatedListOfReviewCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiReviewPost(
      {required CreateReviewCommand? body}) {
    final Uri $url = Uri.parse('/api/Review');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<ReviewCodeGenDto>>> _apiReviewListGet() {
    final Uri $url = Uri.parse('/api/Review/List');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ReviewCodeGenDto>, ReviewCodeGenDto>($request);
  }

  @override
  Future<Response<PaginatedListOfTagCodeGenDto>> _apiTagGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/Tag');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Filter': filter,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfTagCodeGenDto,
        PaginatedListOfTagCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiTagPost({required CreateTagCommand? body}) {
    final Uri $url = Uri.parse('/api/Tag');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<TagCodeGenDto>>> _apiTagListGet() {
    final Uri $url = Uri.parse('/api/Tag/List');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TagCodeGenDto>, TagCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiTagIdPut({
    required String? id,
    required UpdateTagCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/Tag/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiTagIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/Tag/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _testSendSmsGet({
    String? code,
    String? phone,
  }) {
    final Uri $url = Uri.parse('/Test/SendSms');
    final Map<String, dynamic> $params = <String, dynamic>{
      'code': code,
      'phone': phone,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _testSendPushGet({
    String? userId,
    String? message,
  }) {
    final Uri $url = Uri.parse('/Test/SendPush');
    final Map<String, dynamic> $params = <String, dynamic>{
      'userId': userId,
      'message': message,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PaginatedListOfApplicationUserCodeGenDto>> _apiUserAdminGet({
    String? role,
    String? filter,
    String? restaurantId,
    int? pageNumber,
    int? pageSize,
  }) {
    final Uri $url = Uri.parse('/api/UserAdmin');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Role': role,
      'Filter': filter,
      'RestaurantId': restaurantId,
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PaginatedListOfApplicationUserCodeGenDto,
        PaginatedListOfApplicationUserCodeGenDto>($request);
  }

  @override
  Future<Response<String>> _apiUserAdminPost(
      {required CreateUserCommand? body}) {
    final Uri $url = Uri.parse('/api/UserAdmin');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<String>>> _apiUserAdminRolesGet({Object? query}) {
    final Uri $url = Uri.parse('/api/UserAdmin/Roles');
    final Map<String, dynamic> $params = <String, dynamic>{'query': query};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<String>> _apiUserAdminIdPut({
    required String? id,
    required UpdateUserCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/UserAdmin/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiUserAdminIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/UserAdmin/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiUserAdminIdRolePatch({
    required String? id,
    required AssignUserToRoleCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/UserAdmin/${id}/Role');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _apiUserAdminIdAddressesPatch({
    required String? id,
    required UpdateUserAddressesCommand? body,
  }) {
    final Uri $url = Uri.parse('/api/UserAdmin/${id}/Addresses');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }
}
