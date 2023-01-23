// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'testo_api.enums.swagger.dart' as enums;
export 'testo_api.enums.swagger.dart';

part 'testo_api.swagger.chopper.dart';
part 'testo_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class TestoApi extends ChopperService {
  static TestoApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$TestoApi(client);
    }

    final newClient = ChopperClient(
        services: [_$TestoApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$TestoApi(newClient);
  }

  ///
  Future<chopper.Response<ApplicationUserCodeGenDto>> apiAccountGet() {
    generatedMapping.putIfAbsent(ApplicationUserCodeGenDto,
        () => ApplicationUserCodeGenDto.fromJsonFactory);

    return _apiAccountGet();
  }

  ///
  @Get(path: '/api/Account')
  Future<chopper.Response<ApplicationUserCodeGenDto>> _apiAccountGet();

  ///
  Future<chopper.Response<String>> apiAccountPut(
      {required UpdateUserInfoCommand? body}) {
    return _apiAccountPut(body: body);
  }

  ///
  @Put(
    path: '/api/Account',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAccountPut(
      {@Body() required UpdateUserInfoCommand? body});

  ///
  Future<chopper.Response<String>> apiAccountPatch(
      {required SetMainAddressCommand? body}) {
    return _apiAccountPatch(body: body);
  }

  ///
  @Patch(
    path: '/api/Account',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAccountPatch(
      {@Body() required SetMainAddressCommand? body});

  ///
  Future<chopper.Response<String>> apiAccountPost(
      {required AddPushTokenCommand? body}) {
    return _apiAccountPost(body: body);
  }

  ///
  @Post(
    path: '/api/Account',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAccountPost(
      {@Body() required AddPushTokenCommand? body});

  ///
  Future<chopper.Response<String>> apiAccountDeletePost(
      {required DeleteUserCommand? body}) {
    return _apiAccountDeletePost(body: body);
  }

  ///
  @Post(
    path: '/api/Account/Delete',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAccountDeletePost(
      {@Body() required DeleteUserCommand? body});

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfAddressCodeGenDto>> apiAddressGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfAddressCodeGenDto,
        () => PaginatedListOfAddressCodeGenDto.fromJsonFactory);

    return _apiAddressGet(
        filter: filter, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Address')
  Future<chopper.Response<PaginatedListOfAddressCodeGenDto>> _apiAddressGet({
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiAddressPost(
      {required CreateAddressCommand? body}) {
    return _apiAddressPost(body: body);
  }

  ///
  @Post(
    path: '/api/Address',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAddressPost(
      {@Body() required CreateAddressCommand? body});

  ///
  ///@param CheckCustomFields
  ///@param Region
  ///@param RegionCode
  ///@param District
  ///@param DistrictCode
  ///@param City
  ///@param CityCode
  ///@param Street
  ///@param StreetCode
  ///@param House
  ///@param HouseCode
  ///@param Flat
  ///@param Index
  ///@param FiasCode
  ///@param KladrCode
  ///@param Latitude
  ///@param Longitude
  ///@param Value
  ///@param FrontDoor
  ///@param Floor
  ///@param DoorPhone
  Future<chopper.Response<String>> apiAddressCheckGet({
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
    return _apiAddressCheckGet(
        checkCustomFields: checkCustomFields,
        region: region,
        regionCode: regionCode,
        district: district,
        districtCode: districtCode,
        city: city,
        cityCode: cityCode,
        street: street,
        streetCode: streetCode,
        house: house,
        houseCode: houseCode,
        flat: flat,
        index: index,
        fiasCode: fiasCode,
        kladrCode: kladrCode,
        latitude: latitude,
        longitude: longitude,
        value: value,
        frontDoor: frontDoor,
        floor: floor,
        doorPhone: doorPhone);
  }

  ///
  ///@param CheckCustomFields
  ///@param Region
  ///@param RegionCode
  ///@param District
  ///@param DistrictCode
  ///@param City
  ///@param CityCode
  ///@param Street
  ///@param StreetCode
  ///@param House
  ///@param HouseCode
  ///@param Flat
  ///@param Index
  ///@param FiasCode
  ///@param KladrCode
  ///@param Latitude
  ///@param Longitude
  ///@param Value
  ///@param FrontDoor
  ///@param Floor
  ///@param DoorPhone
  @Get(path: '/api/Address/Check')
  Future<chopper.Response<String>> _apiAddressCheckGet({
    @Query('CheckCustomFields') bool? checkCustomFields,
    @Query('Region') String? region,
    @Query('RegionCode') String? regionCode,
    @Query('District') String? district,
    @Query('DistrictCode') String? districtCode,
    @Query('City') String? city,
    @Query('CityCode') String? cityCode,
    @Query('Street') String? street,
    @Query('StreetCode') String? streetCode,
    @Query('House') String? house,
    @Query('HouseCode') String? houseCode,
    @Query('Flat') String? flat,
    @Query('Index') String? index,
    @Query('FiasCode') String? fiasCode,
    @Query('KladrCode') String? kladrCode,
    @Query('Latitude') String? latitude,
    @Query('Longitude') String? longitude,
    @Query('Value') String? value,
    @Query('FrontDoor') String? frontDoor,
    @Query('Floor') String? floor,
    @Query('DoorPhone') String? doorPhone,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiAddressIdPut({
    required String? id,
    required UpdateAddressCustomFieldsCommand? body,
  }) {
    return _apiAddressIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Address/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAddressIdPut({
    @Path('id') required String? id,
    @Body() required UpdateAddressCustomFieldsCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiAddressIdDelete({required String? id}) {
    return _apiAddressIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Address/{id}')
  Future<chopper.Response<String>> _apiAddressIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<String>> apiAuthRequestCodePost(
      {required RequestCodeCommand? body}) {
    return _apiAuthRequestCodePost(body: body);
  }

  ///
  @Post(
    path: '/api/Auth/RequestCode',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiAuthRequestCodePost(
      {@Body() required RequestCodeCommand? body});

  ///
  Future<chopper.Response<AuthResponse>> apiAuthConfirmPost(
      {required ConfirmPhoneCommand? body}) {
    generatedMapping.putIfAbsent(
        AuthResponse, () => AuthResponse.fromJsonFactory);

    return _apiAuthConfirmPost(body: body);
  }

  ///
  @Post(
    path: '/api/Auth/Confirm',
    optionalBody: true,
  )
  Future<chopper.Response<AuthResponse>> _apiAuthConfirmPost(
      {@Body() required ConfirmPhoneCommand? body});

  ///
  Future<chopper.Response<AuthResponse>> apiAuthRefreshPost(
      {required RefreshTokenCommand? body}) {
    generatedMapping.putIfAbsent(
        AuthResponse, () => AuthResponse.fromJsonFactory);

    return _apiAuthRefreshPost(body: body);
  }

  ///
  @Post(
    path: '/api/Auth/Refresh',
    optionalBody: true,
  )
  Future<chopper.Response<AuthResponse>> _apiAuthRefreshPost(
      {@Body() required RefreshTokenCommand? body});

  ///
  ///@param ParentCategoryId
  ///@param RestaurantId
  ///@param IsVisible
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfCategoryCodeGenDto>> apiCategoryGet({
    String? parentCategoryId,
    String? restaurantId,
    bool? isVisible,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfCategoryCodeGenDto,
        () => PaginatedListOfCategoryCodeGenDto.fromJsonFactory);

    return _apiCategoryGet(
        parentCategoryId: parentCategoryId,
        restaurantId: restaurantId,
        isVisible: isVisible,
        filter: filter,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param ParentCategoryId
  ///@param RestaurantId
  ///@param IsVisible
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Category')
  Future<chopper.Response<PaginatedListOfCategoryCodeGenDto>> _apiCategoryGet({
    @Query('ParentCategoryId') String? parentCategoryId,
    @Query('RestaurantId') String? restaurantId,
    @Query('IsVisible') bool? isVisible,
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiCategoryPost(
      {required CreateCategoryCommand? body}) {
    return _apiCategoryPost(body: body);
  }

  ///
  @Post(
    path: '/api/Category',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiCategoryPost(
      {@Body() required CreateCategoryCommand? body});

  ///
  ///@param RestaurantId
  ///@param IsVisible
  Future<chopper.Response<List<CategoryCodeGenDto>>> apiCategoryListGet({
    String? restaurantId,
    bool? isVisible,
  }) {
    generatedMapping.putIfAbsent(
        CategoryCodeGenDto, () => CategoryCodeGenDto.fromJsonFactory);

    return _apiCategoryListGet(
        restaurantId: restaurantId, isVisible: isVisible);
  }

  ///
  ///@param RestaurantId
  ///@param IsVisible
  @Get(path: '/api/Category/List')
  Future<chopper.Response<List<CategoryCodeGenDto>>> _apiCategoryListGet({
    @Query('RestaurantId') String? restaurantId,
    @Query('IsVisible') bool? isVisible,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiCategoryIdPut({
    required String? id,
    required UpdateCategoryCommand? body,
  }) {
    return _apiCategoryIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Category/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiCategoryIdPut({
    @Path('id') required String? id,
    @Body() required UpdateCategoryCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiCategoryIdDelete({required String? id}) {
    return _apiCategoryIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Category/{id}')
  Future<chopper.Response<String>> _apiCategoryIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param query
  Future<chopper.Response<List<EventMessageCodeGenDto>>> apiEventMessageGet(
      {Object? query}) {
    generatedMapping.putIfAbsent(
        EventMessageCodeGenDto, () => EventMessageCodeGenDto.fromJsonFactory);

    return _apiEventMessageGet(query: query);
  }

  ///
  ///@param query
  @Get(path: '/api/EventMessage')
  Future<chopper.Response<List<EventMessageCodeGenDto>>> _apiEventMessageGet(
      {@Query('query') Object? query});

  ///
  ///@param id
  Future<chopper.Response<String>> apiEventMessageIdPut({
    required String? id,
    required UpdateEventMessageCommand? body,
  }) {
    return _apiEventMessageIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/EventMessage/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiEventMessageIdPut({
    @Path('id') required String? id,
    @Body() required UpdateEventMessageCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiEventMessageIdDelete(
      {required String? id}) {
    return _apiEventMessageIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/EventMessage/{id}')
  Future<chopper.Response<String>> _apiEventMessageIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param filter
  ///@param page
  ///@param size
  Future<chopper.Response<PaginatedListOfFileDetails>> fileGet({
    String? filter,
    int? page,
    int? size,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfFileDetails,
        () => PaginatedListOfFileDetails.fromJsonFactory);

    return _fileGet(filter: filter, page: page, size: size);
  }

  ///
  ///@param filter
  ///@param page
  ///@param size
  @Get(path: '/File')
  Future<chopper.Response<PaginatedListOfFileDetails>> _fileGet({
    @Query('filter') String? filter,
    @Query('page') int? page,
    @Query('size') int? size,
  });

  ///
  Future<chopper.Response<String>> filePost({List<int>? File}) {
    return _filePost(File: File);
  }

  ///
  @Post(
    path: '/File',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<String>> _filePost({@PartFile() List<int>? File});

  ///
  ///@param id
  Future<chopper.Response<String>> fileIdGet({required String? id}) {
    return _fileIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/File/{id}')
  Future<chopper.Response<String>> _fileIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> fileIdPut({
    required String? id,
    List<int>? File,
  }) {
    return _fileIdPut(id: id, File: File);
  }

  ///
  ///@param id
  @Put(
    path: '/File/{id}',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<String>> _fileIdPut({
    @Path('id') required String? id,
    @PartFile() List<int>? File,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> fileIdDelete({required String? id}) {
    return _fileIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/File/{id}')
  Future<chopper.Response<String>> _fileIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> fileViewIdGet({required String? id}) {
    return _fileViewIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/File/view/{id}')
  Future<chopper.Response<String>> _fileViewIdGet(
      {@Path('id') required String? id});

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfIngredientCodeGenDto>>
      apiIngredientGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfIngredientCodeGenDto,
        () => PaginatedListOfIngredientCodeGenDto.fromJsonFactory);

    return _apiIngredientGet(
        filter: filter, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Ingredient')
  Future<chopper.Response<PaginatedListOfIngredientCodeGenDto>>
      _apiIngredientGet({
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiIngredientPost(
      {required CreateIngredientCommand? body}) {
    return _apiIngredientPost(body: body);
  }

  ///
  @Post(
    path: '/api/Ingredient',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiIngredientPost(
      {@Body() required CreateIngredientCommand? body});

  ///
  Future<chopper.Response<List<IngredientCodeGenDto>>> apiIngredientListGet() {
    generatedMapping.putIfAbsent(
        IngredientCodeGenDto, () => IngredientCodeGenDto.fromJsonFactory);

    return _apiIngredientListGet();
  }

  ///
  @Get(path: '/api/Ingredient/List')
  Future<chopper.Response<List<IngredientCodeGenDto>>> _apiIngredientListGet();

  ///
  ///@param id
  Future<chopper.Response<String>> apiIngredientIdPut({
    required String? id,
    required UpdateIngredientCommand? body,
  }) {
    return _apiIngredientIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Ingredient/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiIngredientIdPut({
    @Path('id') required String? id,
    @Body() required UpdateIngredientCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiIngredientIdDelete(
      {required String? id}) {
    return _apiIngredientIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Ingredient/{id}')
  Future<chopper.Response<String>> _apiIngredientIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param RestaurantId
  ///@param ClientId
  ///@param CourierId
  ///@param OrderStatus
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfOrderCodeGenDto>> apiOrderGet({
    String? restaurantId,
    String? clientId,
    String? courierId,
    Object? orderStatus,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfOrderCodeGenDto,
        () => PaginatedListOfOrderCodeGenDto.fromJsonFactory);

    return _apiOrderGet(
        restaurantId: restaurantId,
        clientId: clientId,
        courierId: courierId,
        orderStatus: orderStatus,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param RestaurantId
  ///@param ClientId
  ///@param CourierId
  ///@param OrderStatus
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Order')
  Future<chopper.Response<PaginatedListOfOrderCodeGenDto>> _apiOrderGet({
    @Query('RestaurantId') String? restaurantId,
    @Query('ClientId') String? clientId,
    @Query('CourierId') String? courierId,
    @Query('OrderStatus') Object? orderStatus,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiOrderPost(
      {required CreateOrderCommand? body}) {
    return _apiOrderPost(body: body);
  }

  ///
  @Post(
    path: '/api/Order',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiOrderPost(
      {@Body() required CreateOrderCommand? body});

  ///
  ///@param id
  Future<chopper.Response<OrderCodeGenDto>> apiOrderIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        OrderCodeGenDto, () => OrderCodeGenDto.fromJsonFactory);

    return _apiOrderIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Order/{id}')
  Future<chopper.Response<OrderCodeGenDto>> _apiOrderIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> apiOrderIdPatch({
    required String? id,
    required UpdateOrderDetailsCommand? body,
  }) {
    return _apiOrderIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @Patch(
    path: '/api/Order/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiOrderIdPatch({
    @Path('id') required String? id,
    @Body() required UpdateOrderDetailsCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiOrderIdDelete({required String? id}) {
    return _apiOrderIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Order/{id}')
  Future<chopper.Response<String>> _apiOrderIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<OrderShortViewModel>> apiOrderShortIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        OrderShortViewModel, () => OrderShortViewModel.fromJsonFactory);

    return _apiOrderShortIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Order/Short/{id}')
  Future<chopper.Response<OrderShortViewModel>> _apiOrderShortIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<OrderCodeGenDto>>> apiOrderBoardGet() {
    generatedMapping.putIfAbsent(
        OrderCodeGenDto, () => OrderCodeGenDto.fromJsonFactory);

    return _apiOrderBoardGet();
  }

  ///
  @Get(path: '/api/Order/Board')
  Future<chopper.Response<List<OrderCodeGenDto>>> _apiOrderBoardGet();

  ///
  ///@param id
  Future<chopper.Response<List<OrderCodeGenDto>>> apiOrderBoardIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        OrderCodeGenDto, () => OrderCodeGenDto.fromJsonFactory);

    return _apiOrderBoardIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Order/Board/{id}')
  Future<chopper.Response<List<OrderCodeGenDto>>> _apiOrderBoardIdGet(
      {@Path('id') required String? id});

  ///
  ///@param RestaurantId
  ///@param UserId
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfOrderCodeGenDto>>
      apiOrderCurrentUserGet({
    String? restaurantId,
    String? userId,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfOrderCodeGenDto,
        () => PaginatedListOfOrderCodeGenDto.fromJsonFactory);

    return _apiOrderCurrentUserGet(
        restaurantId: restaurantId,
        userId: userId,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param RestaurantId
  ///@param UserId
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Order/CurrentUser')
  Future<chopper.Response<PaginatedListOfOrderCodeGenDto>>
      _apiOrderCurrentUserGet({
    @Query('RestaurantId') String? restaurantId,
    @Query('UserId') String? userId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<List<OrderShortViewModel>>>
      apiOrderCurrentUserShortGet() {
    generatedMapping.putIfAbsent(
        OrderShortViewModel, () => OrderShortViewModel.fromJsonFactory);

    return _apiOrderCurrentUserShortGet();
  }

  ///
  @Get(path: '/api/Order/CurrentUser/Short')
  Future<chopper.Response<List<OrderShortViewModel>>>
      _apiOrderCurrentUserShortGet();

  ///
  ///@param id
  Future<chopper.Response<List<OrderStatusHistoryCodeGenDto>>>
      apiOrderHistoryIdGet({required String? id}) {
    generatedMapping.putIfAbsent(OrderStatusHistoryCodeGenDto,
        () => OrderStatusHistoryCodeGenDto.fromJsonFactory);

    return _apiOrderHistoryIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Order/History/{id}')
  Future<chopper.Response<List<OrderStatusHistoryCodeGenDto>>>
      _apiOrderHistoryIdGet({@Path('id') required String? id});

  ///
  Future<chopper.Response<num>> apiOrderCalculatePost(
      {required CalculatePriceCommand? body}) {
    return _apiOrderCalculatePost(body: body);
  }

  ///
  @Post(
    path: '/api/Order/Calculate',
    optionalBody: true,
  )
  Future<chopper.Response<num>> _apiOrderCalculatePost(
      {@Body() required CalculatePriceCommand? body});

  ///
  ///@param id
  Future<chopper.Response<String>> apiOrderIdStatusPut({
    required String? id,
    required ChangeOrderStatusCommand? body,
  }) {
    return _apiOrderIdStatusPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Order/{id}/Status',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiOrderIdStatusPut({
    @Path('id') required String? id,
    @Body() required ChangeOrderStatusCommand? body,
  });

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfPaymentMethodCodeGenDto>>
      apiPaymentMethodPageGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfPaymentMethodCodeGenDto,
        () => PaginatedListOfPaymentMethodCodeGenDto.fromJsonFactory);

    return _apiPaymentMethodPageGet(
        filter: filter, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/PaymentMethod/Page')
  Future<chopper.Response<PaginatedListOfPaymentMethodCodeGenDto>>
      _apiPaymentMethodPageGet({
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<List<PaymentMethodCodeGenDto>>>
      apiPaymentMethodListGet() {
    generatedMapping.putIfAbsent(
        PaymentMethodCodeGenDto, () => PaymentMethodCodeGenDto.fromJsonFactory);

    return _apiPaymentMethodListGet();
  }

  ///
  @Get(path: '/api/PaymentMethod/List')
  Future<chopper.Response<List<PaymentMethodCodeGenDto>>>
      _apiPaymentMethodListGet();

  ///
  Future<chopper.Response<String>> apiPaymentMethodPost(
      {required CreatePaymentMethodCommand? body}) {
    return _apiPaymentMethodPost(body: body);
  }

  ///
  @Post(
    path: '/api/PaymentMethod',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPaymentMethodPost(
      {@Body() required CreatePaymentMethodCommand? body});

  ///
  ///@param id
  Future<chopper.Response<String>> apiPaymentMethodIdPut({
    required String? id,
    required UpdatePaymentMethodCommand? body,
  }) {
    return _apiPaymentMethodIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/PaymentMethod/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPaymentMethodIdPut({
    @Path('id') required String? id,
    @Body() required UpdatePaymentMethodCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiPaymentMethodIdDelete(
      {required String? id}) {
    return _apiPaymentMethodIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/PaymentMethod/{id}')
  Future<chopper.Response<String>> _apiPaymentMethodIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param CategoryId
  ///@param RestaurantId
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfProductCodeGenDto>> apiProductGet({
    String? categoryId,
    String? restaurantId,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfProductCodeGenDto,
        () => PaginatedListOfProductCodeGenDto.fromJsonFactory);

    return _apiProductGet(
        categoryId: categoryId,
        restaurantId: restaurantId,
        filter: filter,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param CategoryId
  ///@param RestaurantId
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Product')
  Future<chopper.Response<PaginatedListOfProductCodeGenDto>> _apiProductGet({
    @Query('CategoryId') String? categoryId,
    @Query('RestaurantId') String? restaurantId,
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiProductPost(
      {required CreateProductCommand? body}) {
    return _apiProductPost(body: body);
  }

  ///
  @Post(
    path: '/api/Product',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiProductPost(
      {@Body() required CreateProductCommand? body});

  ///
  ///@param id
  Future<chopper.Response<List<ProductCodeGenDto>>> apiProductCategoryIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ProductCodeGenDto, () => ProductCodeGenDto.fromJsonFactory);

    return _apiProductCategoryIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Product/Category/{id}')
  Future<chopper.Response<List<ProductCodeGenDto>>> _apiProductCategoryIdGet(
      {@Path('id') required String? id});

  ///
  ///@param RestaurantId
  ///@param IsComplex
  Future<chopper.Response<List<ProductCodeGenDto>>> apiProductRestaurantGet({
    String? restaurantId,
    bool? isComplex,
  }) {
    generatedMapping.putIfAbsent(
        ProductCodeGenDto, () => ProductCodeGenDto.fromJsonFactory);

    return _apiProductRestaurantGet(
        restaurantId: restaurantId, isComplex: isComplex);
  }

  ///
  ///@param RestaurantId
  ///@param IsComplex
  @Get(path: '/api/Product/Restaurant')
  Future<chopper.Response<List<ProductCodeGenDto>>> _apiProductRestaurantGet({
    @Query('RestaurantId') String? restaurantId,
    @Query('IsComplex') bool? isComplex,
  });

  ///
  ///@param RestaurantId
  Future<chopper.Response<List<ProductCodeGenDto>>> apiProductCutRestaurantGet(
      {String? restaurantId}) {
    generatedMapping.putIfAbsent(
        ProductCodeGenDto, () => ProductCodeGenDto.fromJsonFactory);

    return _apiProductCutRestaurantGet(restaurantId: restaurantId);
  }

  ///
  ///@param RestaurantId
  @Get(path: '/api/Product/CutRestaurant')
  Future<chopper.Response<List<ProductCodeGenDto>>> _apiProductCutRestaurantGet(
      {@Query('RestaurantId') String? restaurantId});

  ///
  ///@param id
  Future<chopper.Response<String>> apiProductIdPut({
    required String? id,
    required UpdateProductCommand? body,
  }) {
    return _apiProductIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Product/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiProductIdPut({
    @Path('id') required String? id,
    @Body() required UpdateProductCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiProductIdDelete({required String? id}) {
    return _apiProductIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Product/{id}')
  Future<chopper.Response<String>> _apiProductIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param RestaurantId
  ///@param CategoryId
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfProductSizeCodeGenDto>>
      apiProductSizeGet({
    String? restaurantId,
    String? categoryId,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfProductSizeCodeGenDto,
        () => PaginatedListOfProductSizeCodeGenDto.fromJsonFactory);

    return _apiProductSizeGet(
        restaurantId: restaurantId,
        categoryId: categoryId,
        filter: filter,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param RestaurantId
  ///@param CategoryId
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/ProductSize')
  Future<chopper.Response<PaginatedListOfProductSizeCodeGenDto>>
      _apiProductSizeGet({
    @Query('RestaurantId') String? restaurantId,
    @Query('CategoryId') String? categoryId,
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiProductSizePost(
      {required CreateProductSizeCommand? body}) {
    return _apiProductSizePost(body: body);
  }

  ///
  @Post(
    path: '/api/ProductSize',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiProductSizePost(
      {@Body() required CreateProductSizeCommand? body});

  ///
  ///@param id
  Future<chopper.Response<List<ProductSizeCodeGenDto>>>
      apiProductSizeCategoryIdGet({required String? id}) {
    generatedMapping.putIfAbsent(
        ProductSizeCodeGenDto, () => ProductSizeCodeGenDto.fromJsonFactory);

    return _apiProductSizeCategoryIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/ProductSize/Category/{id}')
  Future<chopper.Response<List<ProductSizeCodeGenDto>>>
      _apiProductSizeCategoryIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> apiProductSizeIdPut({
    required String? id,
    required UpdateProductSizeCommand? body,
  }) {
    return _apiProductSizeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/ProductSize/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiProductSizeIdPut({
    @Path('id') required String? id,
    @Body() required UpdateProductSizeCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiProductSizeIdDelete(
      {required String? id}) {
    return _apiProductSizeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/ProductSize/{id}')
  Future<chopper.Response<String>> _apiProductSizeIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param RestaurantId
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfPromoCodeGenDto>> apiPromoGet({
    String? restaurantId,
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfPromoCodeGenDto,
        () => PaginatedListOfPromoCodeGenDto.fromJsonFactory);

    return _apiPromoGet(
        restaurantId: restaurantId,
        filter: filter,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param RestaurantId
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Promo')
  Future<chopper.Response<PaginatedListOfPromoCodeGenDto>> _apiPromoGet({
    @Query('RestaurantId') String? restaurantId,
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiPromoPost(
      {required CreatePromoCommand? body}) {
    return _apiPromoPost(body: body);
  }

  ///
  @Post(
    path: '/api/Promo',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPromoPost(
      {@Body() required CreatePromoCommand? body});

  ///
  ///@param RestaurantId
  Future<chopper.Response<List<PromoCodeGenDto>>> apiPromoListGet(
      {String? restaurantId}) {
    generatedMapping.putIfAbsent(
        PromoCodeGenDto, () => PromoCodeGenDto.fromJsonFactory);

    return _apiPromoListGet(restaurantId: restaurantId);
  }

  ///
  ///@param RestaurantId
  @Get(path: '/api/Promo/List')
  Future<chopper.Response<List<PromoCodeGenDto>>> _apiPromoListGet(
      {@Query('RestaurantId') String? restaurantId});

  ///
  ///@param id
  Future<chopper.Response<String>> apiPromoIdPut({
    required String? id,
    required UpdatePromoCommand? body,
  }) {
    return _apiPromoIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Promo/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiPromoIdPut({
    @Path('id') required String? id,
    @Body() required UpdatePromoCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiPromoIdDelete({required String? id}) {
    return _apiPromoIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Promo/{id}')
  Future<chopper.Response<String>> _apiPromoIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<RestaurantCodeGenDto>>> apiRestaurantGet() {
    generatedMapping.putIfAbsent(
        RestaurantCodeGenDto, () => RestaurantCodeGenDto.fromJsonFactory);

    return _apiRestaurantGet();
  }

  ///
  @Get(path: '/api/Restaurant')
  Future<chopper.Response<List<RestaurantCodeGenDto>>> _apiRestaurantGet();

  ///
  Future<chopper.Response<String>> apiRestaurantPost(
      {required CreateRestaurantCommand? body}) {
    return _apiRestaurantPost(body: body);
  }

  ///
  @Post(
    path: '/api/Restaurant',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiRestaurantPost(
      {@Body() required CreateRestaurantCommand? body});

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfRestaurantCodeGenDto>>
      apiRestaurantPageGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfRestaurantCodeGenDto,
        () => PaginatedListOfRestaurantCodeGenDto.fromJsonFactory);

    return _apiRestaurantPageGet(
        filter: filter, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Restaurant/Page')
  Future<chopper.Response<PaginatedListOfRestaurantCodeGenDto>>
      _apiRestaurantPageGet({
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiRestaurantIdGuidPost(
      {required CopyRestaurantCommand? body}) {
    return _apiRestaurantIdGuidPost(body: body);
  }

  ///
  @Post(
    path: '/api/Restaurant/id:guid',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiRestaurantIdGuidPost(
      {@Body() required CopyRestaurantCommand? body});

  ///
  ///@param id
  Future<chopper.Response<String>> apiRestaurantIdPut({
    required String? id,
    required UpdateRestaurantCommand? body,
  }) {
    return _apiRestaurantIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Restaurant/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiRestaurantIdPut({
    @Path('id') required String? id,
    @Body() required UpdateRestaurantCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiRestaurantIdDelete(
      {required String? id}) {
    return _apiRestaurantIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Restaurant/{id}')
  Future<chopper.Response<String>> _apiRestaurantIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> apiRestaurantUpdateDeliveryTimeIdPut({
    required String? id,
    required UpdateDeliveryTimeCommand? body,
  }) {
    return _apiRestaurantUpdateDeliveryTimeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Restaurant/UpdateDeliveryTime/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiRestaurantUpdateDeliveryTimeIdPut({
    @Path('id') required String? id,
    @Body() required UpdateDeliveryTimeCommand? body,
  });

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfReviewCodeGenDto>> apiReviewGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfReviewCodeGenDto,
        () => PaginatedListOfReviewCodeGenDto.fromJsonFactory);

    return _apiReviewGet(
        filter: filter, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Review')
  Future<chopper.Response<PaginatedListOfReviewCodeGenDto>> _apiReviewGet({
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiReviewPost(
      {required CreateReviewCommand? body}) {
    return _apiReviewPost(body: body);
  }

  ///
  @Post(
    path: '/api/Review',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiReviewPost(
      {@Body() required CreateReviewCommand? body});

  ///
  Future<chopper.Response<List<ReviewCodeGenDto>>> apiReviewListGet() {
    generatedMapping.putIfAbsent(
        ReviewCodeGenDto, () => ReviewCodeGenDto.fromJsonFactory);

    return _apiReviewListGet();
  }

  ///
  @Get(path: '/api/Review/List')
  Future<chopper.Response<List<ReviewCodeGenDto>>> _apiReviewListGet();

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfTagCodeGenDto>> apiTagGet({
    String? filter,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfTagCodeGenDto,
        () => PaginatedListOfTagCodeGenDto.fromJsonFactory);

    return _apiTagGet(
        filter: filter, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param Filter
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Tag')
  Future<chopper.Response<PaginatedListOfTagCodeGenDto>> _apiTagGet({
    @Query('Filter') String? filter,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiTagPost(
      {required CreateTagCommand? body}) {
    return _apiTagPost(body: body);
  }

  ///
  @Post(
    path: '/api/Tag',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiTagPost(
      {@Body() required CreateTagCommand? body});

  ///
  Future<chopper.Response<List<TagCodeGenDto>>> apiTagListGet() {
    generatedMapping.putIfAbsent(
        TagCodeGenDto, () => TagCodeGenDto.fromJsonFactory);

    return _apiTagListGet();
  }

  ///
  @Get(path: '/api/Tag/List')
  Future<chopper.Response<List<TagCodeGenDto>>> _apiTagListGet();

  ///
  ///@param id
  Future<chopper.Response<String>> apiTagIdPut({
    required String? id,
    required UpdateTagCommand? body,
  }) {
    return _apiTagIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/Tag/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiTagIdPut({
    @Path('id') required String? id,
    @Body() required UpdateTagCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiTagIdDelete({required String? id}) {
    return _apiTagIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Tag/{id}')
  Future<chopper.Response<String>> _apiTagIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param code
  ///@param phone
  Future<chopper.Response<String>> testSendSmsGet({
    String? code,
    String? phone,
  }) {
    return _testSendSmsGet(code: code, phone: phone);
  }

  ///
  ///@param code
  ///@param phone
  @Get(path: '/Test/SendSms')
  Future<chopper.Response<String>> _testSendSmsGet({
    @Query('code') String? code,
    @Query('phone') String? phone,
  });

  ///
  ///@param userId
  ///@param message
  Future<chopper.Response<String>> testSendPushGet({
    String? userId,
    String? message,
  }) {
    return _testSendPushGet(userId: userId, message: message);
  }

  ///
  ///@param userId
  ///@param message
  @Get(path: '/Test/SendPush')
  Future<chopper.Response<String>> _testSendPushGet({
    @Query('userId') String? userId,
    @Query('message') String? message,
  });

  ///
  ///@param Role
  ///@param Filter
  ///@param RestaurantId
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<PaginatedListOfApplicationUserCodeGenDto>>
      apiUserAdminGet({
    String? role,
    String? filter,
    String? restaurantId,
    int? pageNumber,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(PaginatedListOfApplicationUserCodeGenDto,
        () => PaginatedListOfApplicationUserCodeGenDto.fromJsonFactory);

    return _apiUserAdminGet(
        role: role,
        filter: filter,
        restaurantId: restaurantId,
        pageNumber: pageNumber,
        pageSize: pageSize);
  }

  ///
  ///@param Role
  ///@param Filter
  ///@param RestaurantId
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/UserAdmin')
  Future<chopper.Response<PaginatedListOfApplicationUserCodeGenDto>>
      _apiUserAdminGet({
    @Query('Role') String? role,
    @Query('Filter') String? filter,
    @Query('RestaurantId') String? restaurantId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  ///
  Future<chopper.Response<String>> apiUserAdminPost(
      {required CreateUserCommand? body}) {
    return _apiUserAdminPost(body: body);
  }

  ///
  @Post(
    path: '/api/UserAdmin',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiUserAdminPost(
      {@Body() required CreateUserCommand? body});

  ///
  ///@param query
  Future<chopper.Response<List<String>>> apiUserAdminRolesGet({Object? query}) {
    return _apiUserAdminRolesGet(query: query);
  }

  ///
  ///@param query
  @Get(path: '/api/UserAdmin/Roles')
  Future<chopper.Response<List<String>>> _apiUserAdminRolesGet(
      {@Query('query') Object? query});

  ///
  ///@param id
  Future<chopper.Response<String>> apiUserAdminIdPut({
    required String? id,
    required UpdateUserCommand? body,
  }) {
    return _apiUserAdminIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/UserAdmin/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiUserAdminIdPut({
    @Path('id') required String? id,
    @Body() required UpdateUserCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiUserAdminIdDelete({required String? id}) {
    return _apiUserAdminIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/UserAdmin/{id}')
  Future<chopper.Response<String>> _apiUserAdminIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> apiUserAdminIdRolePatch({
    required String? id,
    required AssignUserToRoleCommand? body,
  }) {
    return _apiUserAdminIdRolePatch(id: id, body: body);
  }

  ///
  ///@param id
  @Patch(
    path: '/api/UserAdmin/{id}/Role',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiUserAdminIdRolePatch({
    @Path('id') required String? id,
    @Body() required AssignUserToRoleCommand? body,
  });

  ///
  ///@param id
  Future<chopper.Response<String>> apiUserAdminIdAddressesPatch({
    required String? id,
    required UpdateUserAddressesCommand? body,
  }) {
    return _apiUserAdminIdAddressesPatch(id: id, body: body);
  }

  ///
  ///@param id
  @Patch(
    path: '/api/UserAdmin/{id}/Addresses',
    optionalBody: true,
  )
  Future<chopper.Response<String>> _apiUserAdminIdAddressesPatch({
    @Path('id') required String? id,
    @Body() required UpdateUserAddressesCommand? body,
  });
}

@JsonSerializable(explicitToJson: true)
class ApplicationUserCodeGenDto {
  ApplicationUserCodeGenDto({
    this.displayName,
    this.loyaltyPoints,
    this.restaurantId,
    this.clientAddresses,
    this.roles,
    this.pushTokens,
    this.id,
    this.userName,
    this.email,
    this.emailConfirmed,
    this.phoneNumber,
    this.phoneNumberConfirmed,
  });

  factory ApplicationUserCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationUserCodeGenDtoFromJson(json);

  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'loyaltyPoints')
  final int? loyaltyPoints;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'clientAddresses', defaultValue: <ClientAddressCodeGenDto>[])
  final List<ClientAddressCodeGenDto>? clientAddresses;
  @JsonKey(name: 'roles', defaultValue: <ApplicationUserRoleCodeGenDto>[])
  final List<ApplicationUserRoleCodeGenDto>? roles;
  @JsonKey(name: 'pushTokens', defaultValue: <PushToken>[])
  final List<PushToken>? pushTokens;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'emailConfirmed')
  final bool? emailConfirmed;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'phoneNumberConfirmed')
  final bool? phoneNumberConfirmed;
  static const fromJsonFactory = _$ApplicationUserCodeGenDtoFromJson;
  static const toJsonFactory = _$ApplicationUserCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ApplicationUserCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationUserCodeGenDto &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                const DeepCollectionEquality()
                    .equals(other.loyaltyPoints, loyaltyPoints)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.clientAddresses, clientAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.clientAddresses, clientAddresses)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.pushTokens, pushTokens) ||
                const DeepCollectionEquality()
                    .equals(other.pushTokens, pushTokens)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailConfirmed, emailConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.emailConfirmed, emailConfirmed)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.phoneNumberConfirmed, phoneNumberConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberConfirmed, phoneNumberConfirmed)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(loyaltyPoints) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(clientAddresses) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(pushTokens) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailConfirmed) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneNumberConfirmed) ^
      runtimeType.hashCode;
}

extension $ApplicationUserCodeGenDtoExtension on ApplicationUserCodeGenDto {
  ApplicationUserCodeGenDto copyWith(
      {String? displayName,
      int? loyaltyPoints,
      String? restaurantId,
      List<ClientAddressCodeGenDto>? clientAddresses,
      List<ApplicationUserRoleCodeGenDto>? roles,
      List<PushToken>? pushTokens,
      String? id,
      String? userName,
      String? email,
      bool? emailConfirmed,
      String? phoneNumber,
      bool? phoneNumberConfirmed}) {
    return ApplicationUserCodeGenDto(
        displayName: displayName ?? this.displayName,
        loyaltyPoints: loyaltyPoints ?? this.loyaltyPoints,
        restaurantId: restaurantId ?? this.restaurantId,
        clientAddresses: clientAddresses ?? this.clientAddresses,
        roles: roles ?? this.roles,
        pushTokens: pushTokens ?? this.pushTokens,
        id: id ?? this.id,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        emailConfirmed: emailConfirmed ?? this.emailConfirmed,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        phoneNumberConfirmed:
            phoneNumberConfirmed ?? this.phoneNumberConfirmed);
  }

  ApplicationUserCodeGenDto copyWithWrapped(
      {Wrapped<String?>? displayName,
      Wrapped<int?>? loyaltyPoints,
      Wrapped<String?>? restaurantId,
      Wrapped<List<ClientAddressCodeGenDto>?>? clientAddresses,
      Wrapped<List<ApplicationUserRoleCodeGenDto>?>? roles,
      Wrapped<List<PushToken>?>? pushTokens,
      Wrapped<String?>? id,
      Wrapped<String?>? userName,
      Wrapped<String?>? email,
      Wrapped<bool?>? emailConfirmed,
      Wrapped<String?>? phoneNumber,
      Wrapped<bool?>? phoneNumberConfirmed}) {
    return ApplicationUserCodeGenDto(
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        loyaltyPoints:
            (loyaltyPoints != null ? loyaltyPoints.value : this.loyaltyPoints),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        clientAddresses: (clientAddresses != null
            ? clientAddresses.value
            : this.clientAddresses),
        roles: (roles != null ? roles.value : this.roles),
        pushTokens: (pushTokens != null ? pushTokens.value : this.pushTokens),
        id: (id != null ? id.value : this.id),
        userName: (userName != null ? userName.value : this.userName),
        email: (email != null ? email.value : this.email),
        emailConfirmed: (emailConfirmed != null
            ? emailConfirmed.value
            : this.emailConfirmed),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        phoneNumberConfirmed: (phoneNumberConfirmed != null
            ? phoneNumberConfirmed.value
            : this.phoneNumberConfirmed));
  }
}

@JsonSerializable(explicitToJson: true)
class ClientAddressCodeGenDto {
  ClientAddressCodeGenDto({
    this.isMainAddress,
    this.clientId,
    this.addressId,
    this.address,
  });

  factory ClientAddressCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ClientAddressCodeGenDtoFromJson(json);

  @JsonKey(name: 'isMainAddress')
  final bool? isMainAddress;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'address')
  final dynamic address;
  static const fromJsonFactory = _$ClientAddressCodeGenDtoFromJson;
  static const toJsonFactory = _$ClientAddressCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ClientAddressCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientAddressCodeGenDto &&
            (identical(other.isMainAddress, isMainAddress) ||
                const DeepCollectionEquality()
                    .equals(other.isMainAddress, isMainAddress)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isMainAddress) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(address) ^
      runtimeType.hashCode;
}

extension $ClientAddressCodeGenDtoExtension on ClientAddressCodeGenDto {
  ClientAddressCodeGenDto copyWith(
      {bool? isMainAddress,
      String? clientId,
      String? addressId,
      dynamic address}) {
    return ClientAddressCodeGenDto(
        isMainAddress: isMainAddress ?? this.isMainAddress,
        clientId: clientId ?? this.clientId,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address);
  }

  ClientAddressCodeGenDto copyWithWrapped(
      {Wrapped<bool?>? isMainAddress,
      Wrapped<String?>? clientId,
      Wrapped<String?>? addressId,
      Wrapped<dynamic>? address}) {
    return ClientAddressCodeGenDto(
        isMainAddress:
            (isMainAddress != null ? isMainAddress.value : this.isMainAddress),
        clientId: (clientId != null ? clientId.value : this.clientId),
        addressId: (addressId != null ? addressId.value : this.addressId),
        address: (address != null ? address.value : this.address));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressCodeGenDto {
  AddressCodeGenDto({
    this.id,
    this.region,
    this.regionCode,
    this.district,
    this.districtCode,
    this.city,
    this.cityCode,
    this.street,
    this.streetCode,
    this.house,
    this.houseCode,
    this.flat,
    this.index,
    this.fiasCode,
    this.kladrCode,
    this.latitude,
    this.longitude,
    this.value,
    this.frontDoor,
    this.floor,
    this.doorPhone,
  });

  factory AddressCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$AddressCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'region')
  final String? region;
  @JsonKey(name: 'regionCode')
  final String? regionCode;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtCode')
  final String? districtCode;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'cityCode')
  final String? cityCode;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'streetCode')
  final String? streetCode;
  @JsonKey(name: 'house')
  final String? house;
  @JsonKey(name: 'houseCode')
  final String? houseCode;
  @JsonKey(name: 'flat')
  final String? flat;
  @JsonKey(name: 'index')
  final String? index;
  @JsonKey(name: 'fiasCode')
  final String? fiasCode;
  @JsonKey(name: 'kladrCode')
  final String? kladrCode;
  @JsonKey(name: 'latitude')
  final String? latitude;
  @JsonKey(name: 'longitude')
  final String? longitude;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'frontDoor')
  final String? frontDoor;
  @JsonKey(name: 'floor')
  final String? floor;
  @JsonKey(name: 'doorPhone')
  final String? doorPhone;
  static const fromJsonFactory = _$AddressCodeGenDtoFromJson;
  static const toJsonFactory = _$AddressCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$AddressCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality()
                    .equals(other.cityCode, cityCode)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.streetCode, streetCode) ||
                const DeepCollectionEquality()
                    .equals(other.streetCode, streetCode)) &&
            (identical(other.house, house) ||
                const DeepCollectionEquality().equals(other.house, house)) &&
            (identical(other.houseCode, houseCode) ||
                const DeepCollectionEquality()
                    .equals(other.houseCode, houseCode)) &&
            (identical(other.flat, flat) ||
                const DeepCollectionEquality().equals(other.flat, flat)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.fiasCode, fiasCode) ||
                const DeepCollectionEquality()
                    .equals(other.fiasCode, fiasCode)) &&
            (identical(other.kladrCode, kladrCode) ||
                const DeepCollectionEquality()
                    .equals(other.kladrCode, kladrCode)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.frontDoor, frontDoor) ||
                const DeepCollectionEquality()
                    .equals(other.frontDoor, frontDoor)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.doorPhone, doorPhone) ||
                const DeepCollectionEquality()
                    .equals(other.doorPhone, doorPhone)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(streetCode) ^
      const DeepCollectionEquality().hash(house) ^
      const DeepCollectionEquality().hash(houseCode) ^
      const DeepCollectionEquality().hash(flat) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(fiasCode) ^
      const DeepCollectionEquality().hash(kladrCode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(frontDoor) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(doorPhone) ^
      runtimeType.hashCode;
}

extension $AddressCodeGenDtoExtension on AddressCodeGenDto {
  AddressCodeGenDto copyWith(
      {String? id,
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
      String? doorPhone}) {
    return AddressCodeGenDto(
        id: id ?? this.id,
        region: region ?? this.region,
        regionCode: regionCode ?? this.regionCode,
        district: district ?? this.district,
        districtCode: districtCode ?? this.districtCode,
        city: city ?? this.city,
        cityCode: cityCode ?? this.cityCode,
        street: street ?? this.street,
        streetCode: streetCode ?? this.streetCode,
        house: house ?? this.house,
        houseCode: houseCode ?? this.houseCode,
        flat: flat ?? this.flat,
        index: index ?? this.index,
        fiasCode: fiasCode ?? this.fiasCode,
        kladrCode: kladrCode ?? this.kladrCode,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        value: value ?? this.value,
        frontDoor: frontDoor ?? this.frontDoor,
        floor: floor ?? this.floor,
        doorPhone: doorPhone ?? this.doorPhone);
  }

  AddressCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? region,
      Wrapped<String?>? regionCode,
      Wrapped<String?>? district,
      Wrapped<String?>? districtCode,
      Wrapped<String?>? city,
      Wrapped<String?>? cityCode,
      Wrapped<String?>? street,
      Wrapped<String?>? streetCode,
      Wrapped<String?>? house,
      Wrapped<String?>? houseCode,
      Wrapped<String?>? flat,
      Wrapped<String?>? index,
      Wrapped<String?>? fiasCode,
      Wrapped<String?>? kladrCode,
      Wrapped<String?>? latitude,
      Wrapped<String?>? longitude,
      Wrapped<String?>? value,
      Wrapped<String?>? frontDoor,
      Wrapped<String?>? floor,
      Wrapped<String?>? doorPhone}) {
    return AddressCodeGenDto(
        id: (id != null ? id.value : this.id),
        region: (region != null ? region.value : this.region),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        district: (district != null ? district.value : this.district),
        districtCode:
            (districtCode != null ? districtCode.value : this.districtCode),
        city: (city != null ? city.value : this.city),
        cityCode: (cityCode != null ? cityCode.value : this.cityCode),
        street: (street != null ? street.value : this.street),
        streetCode: (streetCode != null ? streetCode.value : this.streetCode),
        house: (house != null ? house.value : this.house),
        houseCode: (houseCode != null ? houseCode.value : this.houseCode),
        flat: (flat != null ? flat.value : this.flat),
        index: (index != null ? index.value : this.index),
        fiasCode: (fiasCode != null ? fiasCode.value : this.fiasCode),
        kladrCode: (kladrCode != null ? kladrCode.value : this.kladrCode),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        value: (value != null ? value.value : this.value),
        frontDoor: (frontDoor != null ? frontDoor.value : this.frontDoor),
        floor: (floor != null ? floor.value : this.floor),
        doorPhone: (doorPhone != null ? doorPhone.value : this.doorPhone));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationUserRoleCodeGenDto {
  ApplicationUserRoleCodeGenDto({
    this.role,
    this.userId,
    this.roleId,
  });

  factory ApplicationUserRoleCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationUserRoleCodeGenDtoFromJson(json);

  @JsonKey(name: 'role')
  final dynamic role;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'roleId')
  final String? roleId;
  static const fromJsonFactory = _$ApplicationUserRoleCodeGenDtoFromJson;
  static const toJsonFactory = _$ApplicationUserRoleCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ApplicationUserRoleCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationUserRoleCodeGenDto &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(roleId) ^
      runtimeType.hashCode;
}

extension $ApplicationUserRoleCodeGenDtoExtension
    on ApplicationUserRoleCodeGenDto {
  ApplicationUserRoleCodeGenDto copyWith(
      {dynamic role, String? userId, String? roleId}) {
    return ApplicationUserRoleCodeGenDto(
        role: role ?? this.role,
        userId: userId ?? this.userId,
        roleId: roleId ?? this.roleId);
  }

  ApplicationUserRoleCodeGenDto copyWithWrapped(
      {Wrapped<dynamic>? role,
      Wrapped<String?>? userId,
      Wrapped<String?>? roleId}) {
    return ApplicationUserRoleCodeGenDto(
        role: (role != null ? role.value : this.role),
        userId: (userId != null ? userId.value : this.userId),
        roleId: (roleId != null ? roleId.value : this.roleId));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationRoleCodeGenDto {
  ApplicationRoleCodeGenDto({
    this.id,
    this.name,
  });

  factory ApplicationRoleCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationRoleCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ApplicationRoleCodeGenDtoFromJson;
  static const toJsonFactory = _$ApplicationRoleCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ApplicationRoleCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationRoleCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ApplicationRoleCodeGenDtoExtension on ApplicationRoleCodeGenDto {
  ApplicationRoleCodeGenDto copyWith({String? id, String? name}) {
    return ApplicationRoleCodeGenDto(
        id: id ?? this.id, name: name ?? this.name);
  }

  ApplicationRoleCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? name}) {
    return ApplicationRoleCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class PushToken {
  PushToken({
    this.id,
    this.applicationUserId,
    this.applicationUser,
    this.token,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory PushToken.fromJson(Map<String, dynamic> json) =>
      _$PushTokenFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'applicationUserId')
  final String? applicationUserId;
  @JsonKey(name: 'applicationUser')
  final dynamic applicationUser;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$PushTokenFromJson;
  static const toJsonFactory = _$PushTokenToJson;
  Map<String, dynamic> toJson() => _$PushTokenToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PushToken &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.applicationUserId, applicationUserId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationUserId, applicationUserId)) &&
            (identical(other.applicationUser, applicationUser) ||
                const DeepCollectionEquality()
                    .equals(other.applicationUser, applicationUser)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(applicationUserId) ^
      const DeepCollectionEquality().hash(applicationUser) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $PushTokenExtension on PushToken {
  PushToken copyWith(
      {String? id,
      String? applicationUserId,
      dynamic applicationUser,
      String? token,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return PushToken(
        id: id ?? this.id,
        applicationUserId: applicationUserId ?? this.applicationUserId,
        applicationUser: applicationUser ?? this.applicationUser,
        token: token ?? this.token,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  PushToken copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? applicationUserId,
      Wrapped<dynamic>? applicationUser,
      Wrapped<String?>? token,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return PushToken(
        id: (id != null ? id.value : this.id),
        applicationUserId: (applicationUserId != null
            ? applicationUserId.value
            : this.applicationUserId),
        applicationUser: (applicationUser != null
            ? applicationUser.value
            : this.applicationUser),
        token: (token != null ? token.value : this.token),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationUser {
  ApplicationUser({
    this.displayName,
    this.loyaltyPoints,
    this.restaurantId,
    this.restaurant,
    this.clientAddresses,
    this.clientOrders,
    this.courierOrders,
    this.roles,
    this.refreshTokens,
    this.pushTokens,
    this.id,
    this.userName,
    this.normalizedUserName,
    this.email,
    this.normalizedEmail,
    this.emailConfirmed,
    this.passwordHash,
    this.securityStamp,
    this.concurrencyStamp,
    this.phoneNumber,
    this.phoneNumberConfirmed,
    this.twoFactorEnabled,
    this.lockoutEnd,
    this.lockoutEnabled,
    this.accessFailedCount,
  });

  factory ApplicationUser.fromJson(Map<String, dynamic> json) =>
      _$ApplicationUserFromJson(json);

  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'loyaltyPoints')
  final int? loyaltyPoints;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'restaurant')
  final dynamic restaurant;
  @JsonKey(name: 'clientAddresses', defaultValue: <ClientAddress>[])
  final List<ClientAddress>? clientAddresses;
  @JsonKey(name: 'clientOrders', defaultValue: <Order>[])
  final List<Order>? clientOrders;
  @JsonKey(name: 'courierOrders', defaultValue: <Order>[])
  final List<Order>? courierOrders;
  @JsonKey(name: 'roles', defaultValue: <ApplicationUserRole>[])
  final List<ApplicationUserRole>? roles;
  @JsonKey(name: 'refreshTokens', defaultValue: <RefreshToken>[])
  final List<RefreshToken>? refreshTokens;
  @JsonKey(name: 'pushTokens', defaultValue: <PushToken>[])
  final List<PushToken>? pushTokens;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'normalizedUserName')
  final String? normalizedUserName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'normalizedEmail')
  final String? normalizedEmail;
  @JsonKey(name: 'emailConfirmed')
  final bool? emailConfirmed;
  @JsonKey(name: 'passwordHash')
  final String? passwordHash;
  @JsonKey(name: 'securityStamp')
  final String? securityStamp;
  @JsonKey(name: 'concurrencyStamp')
  final String? concurrencyStamp;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'phoneNumberConfirmed')
  final bool? phoneNumberConfirmed;
  @JsonKey(name: 'twoFactorEnabled')
  final bool? twoFactorEnabled;
  @JsonKey(name: 'lockoutEnd')
  final DateTime? lockoutEnd;
  @JsonKey(name: 'lockoutEnabled')
  final bool? lockoutEnabled;
  @JsonKey(name: 'accessFailedCount')
  final int? accessFailedCount;
  static const fromJsonFactory = _$ApplicationUserFromJson;
  static const toJsonFactory = _$ApplicationUserToJson;
  Map<String, dynamic> toJson() => _$ApplicationUserToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationUser &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                const DeepCollectionEquality()
                    .equals(other.loyaltyPoints, loyaltyPoints)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.clientAddresses, clientAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.clientAddresses, clientAddresses)) &&
            (identical(other.clientOrders, clientOrders) ||
                const DeepCollectionEquality()
                    .equals(other.clientOrders, clientOrders)) &&
            (identical(other.courierOrders, courierOrders) ||
                const DeepCollectionEquality()
                    .equals(other.courierOrders, courierOrders)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.refreshTokens, refreshTokens) ||
                const DeepCollectionEquality()
                    .equals(other.refreshTokens, refreshTokens)) &&
            (identical(other.pushTokens, pushTokens) ||
                const DeepCollectionEquality()
                    .equals(other.pushTokens, pushTokens)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.normalizedUserName, normalizedUserName) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedUserName, normalizedUserName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.normalizedEmail, normalizedEmail) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedEmail, normalizedEmail)) &&
            (identical(other.emailConfirmed, emailConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.emailConfirmed, emailConfirmed)) &&
            (identical(other.passwordHash, passwordHash) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHash, passwordHash)) &&
            (identical(other.securityStamp, securityStamp) ||
                const DeepCollectionEquality()
                    .equals(other.securityStamp, securityStamp)) &&
            (identical(other.concurrencyStamp, concurrencyStamp) ||
                const DeepCollectionEquality()
                    .equals(other.concurrencyStamp, concurrencyStamp)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.phoneNumberConfirmed, phoneNumberConfirmed) ||
                const DeepCollectionEquality().equals(
                    other.phoneNumberConfirmed, phoneNumberConfirmed)) &&
            (identical(other.twoFactorEnabled, twoFactorEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.twoFactorEnabled, twoFactorEnabled)) &&
            (identical(other.lockoutEnd, lockoutEnd) ||
                const DeepCollectionEquality()
                    .equals(other.lockoutEnd, lockoutEnd)) &&
            (identical(other.lockoutEnabled, lockoutEnabled) || const DeepCollectionEquality().equals(other.lockoutEnabled, lockoutEnabled)) &&
            (identical(other.accessFailedCount, accessFailedCount) || const DeepCollectionEquality().equals(other.accessFailedCount, accessFailedCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(loyaltyPoints) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(clientAddresses) ^
      const DeepCollectionEquality().hash(clientOrders) ^
      const DeepCollectionEquality().hash(courierOrders) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(refreshTokens) ^
      const DeepCollectionEquality().hash(pushTokens) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(normalizedUserName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(normalizedEmail) ^
      const DeepCollectionEquality().hash(emailConfirmed) ^
      const DeepCollectionEquality().hash(passwordHash) ^
      const DeepCollectionEquality().hash(securityStamp) ^
      const DeepCollectionEquality().hash(concurrencyStamp) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneNumberConfirmed) ^
      const DeepCollectionEquality().hash(twoFactorEnabled) ^
      const DeepCollectionEquality().hash(lockoutEnd) ^
      const DeepCollectionEquality().hash(lockoutEnabled) ^
      const DeepCollectionEquality().hash(accessFailedCount) ^
      runtimeType.hashCode;
}

extension $ApplicationUserExtension on ApplicationUser {
  ApplicationUser copyWith(
      {String? displayName,
      int? loyaltyPoints,
      String? restaurantId,
      dynamic restaurant,
      List<ClientAddress>? clientAddresses,
      List<Order>? clientOrders,
      List<Order>? courierOrders,
      List<ApplicationUserRole>? roles,
      List<RefreshToken>? refreshTokens,
      List<PushToken>? pushTokens,
      String? id,
      String? userName,
      String? normalizedUserName,
      String? email,
      String? normalizedEmail,
      bool? emailConfirmed,
      String? passwordHash,
      String? securityStamp,
      String? concurrencyStamp,
      String? phoneNumber,
      bool? phoneNumberConfirmed,
      bool? twoFactorEnabled,
      DateTime? lockoutEnd,
      bool? lockoutEnabled,
      int? accessFailedCount}) {
    return ApplicationUser(
        displayName: displayName ?? this.displayName,
        loyaltyPoints: loyaltyPoints ?? this.loyaltyPoints,
        restaurantId: restaurantId ?? this.restaurantId,
        restaurant: restaurant ?? this.restaurant,
        clientAddresses: clientAddresses ?? this.clientAddresses,
        clientOrders: clientOrders ?? this.clientOrders,
        courierOrders: courierOrders ?? this.courierOrders,
        roles: roles ?? this.roles,
        refreshTokens: refreshTokens ?? this.refreshTokens,
        pushTokens: pushTokens ?? this.pushTokens,
        id: id ?? this.id,
        userName: userName ?? this.userName,
        normalizedUserName: normalizedUserName ?? this.normalizedUserName,
        email: email ?? this.email,
        normalizedEmail: normalizedEmail ?? this.normalizedEmail,
        emailConfirmed: emailConfirmed ?? this.emailConfirmed,
        passwordHash: passwordHash ?? this.passwordHash,
        securityStamp: securityStamp ?? this.securityStamp,
        concurrencyStamp: concurrencyStamp ?? this.concurrencyStamp,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        phoneNumberConfirmed: phoneNumberConfirmed ?? this.phoneNumberConfirmed,
        twoFactorEnabled: twoFactorEnabled ?? this.twoFactorEnabled,
        lockoutEnd: lockoutEnd ?? this.lockoutEnd,
        lockoutEnabled: lockoutEnabled ?? this.lockoutEnabled,
        accessFailedCount: accessFailedCount ?? this.accessFailedCount);
  }

  ApplicationUser copyWithWrapped(
      {Wrapped<String?>? displayName,
      Wrapped<int?>? loyaltyPoints,
      Wrapped<String?>? restaurantId,
      Wrapped<dynamic>? restaurant,
      Wrapped<List<ClientAddress>?>? clientAddresses,
      Wrapped<List<Order>?>? clientOrders,
      Wrapped<List<Order>?>? courierOrders,
      Wrapped<List<ApplicationUserRole>?>? roles,
      Wrapped<List<RefreshToken>?>? refreshTokens,
      Wrapped<List<PushToken>?>? pushTokens,
      Wrapped<String?>? id,
      Wrapped<String?>? userName,
      Wrapped<String?>? normalizedUserName,
      Wrapped<String?>? email,
      Wrapped<String?>? normalizedEmail,
      Wrapped<bool?>? emailConfirmed,
      Wrapped<String?>? passwordHash,
      Wrapped<String?>? securityStamp,
      Wrapped<String?>? concurrencyStamp,
      Wrapped<String?>? phoneNumber,
      Wrapped<bool?>? phoneNumberConfirmed,
      Wrapped<bool?>? twoFactorEnabled,
      Wrapped<DateTime?>? lockoutEnd,
      Wrapped<bool?>? lockoutEnabled,
      Wrapped<int?>? accessFailedCount}) {
    return ApplicationUser(
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        loyaltyPoints:
            (loyaltyPoints != null ? loyaltyPoints.value : this.loyaltyPoints),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        restaurant: (restaurant != null ? restaurant.value : this.restaurant),
        clientAddresses: (clientAddresses != null
            ? clientAddresses.value
            : this.clientAddresses),
        clientOrders:
            (clientOrders != null ? clientOrders.value : this.clientOrders),
        courierOrders:
            (courierOrders != null ? courierOrders.value : this.courierOrders),
        roles: (roles != null ? roles.value : this.roles),
        refreshTokens:
            (refreshTokens != null ? refreshTokens.value : this.refreshTokens),
        pushTokens: (pushTokens != null ? pushTokens.value : this.pushTokens),
        id: (id != null ? id.value : this.id),
        userName: (userName != null ? userName.value : this.userName),
        normalizedUserName: (normalizedUserName != null
            ? normalizedUserName.value
            : this.normalizedUserName),
        email: (email != null ? email.value : this.email),
        normalizedEmail: (normalizedEmail != null
            ? normalizedEmail.value
            : this.normalizedEmail),
        emailConfirmed: (emailConfirmed != null
            ? emailConfirmed.value
            : this.emailConfirmed),
        passwordHash:
            (passwordHash != null ? passwordHash.value : this.passwordHash),
        securityStamp:
            (securityStamp != null ? securityStamp.value : this.securityStamp),
        concurrencyStamp: (concurrencyStamp != null
            ? concurrencyStamp.value
            : this.concurrencyStamp),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        phoneNumberConfirmed: (phoneNumberConfirmed != null
            ? phoneNumberConfirmed.value
            : this.phoneNumberConfirmed),
        twoFactorEnabled: (twoFactorEnabled != null
            ? twoFactorEnabled.value
            : this.twoFactorEnabled),
        lockoutEnd: (lockoutEnd != null ? lockoutEnd.value : this.lockoutEnd),
        lockoutEnabled: (lockoutEnabled != null
            ? lockoutEnabled.value
            : this.lockoutEnabled),
        accessFailedCount: (accessFailedCount != null
            ? accessFailedCount.value
            : this.accessFailedCount));
  }
}

@JsonSerializable(explicitToJson: true)
class Restaurant {
  Restaurant({
    this.id,
    this.name,
    this.logoId,
    this.description,
    this.isActive,
    this.phone,
    this.vk,
    this.facebook,
    this.instagram,
    this.minimalOrderPrice,
    this.normalDeliveryTime,
    this.deliveryTime,
    this.takeout,
    this.addressId,
    this.address,
    this.workingTimes,
    this.employees,
    this.domainEvents,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'logoId')
  final String? logoId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'vk')
  final String? vk;
  @JsonKey(name: 'facebook')
  final String? facebook;
  @JsonKey(name: 'instagram')
  final String? instagram;
  @JsonKey(name: 'minimalOrderPrice')
  final double? minimalOrderPrice;
  @JsonKey(name: 'normalDeliveryTime')
  final double? normalDeliveryTime;
  @JsonKey(name: 'deliveryTime')
  final double? deliveryTime;
  @JsonKey(name: 'takeout')
  final bool? takeout;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'address')
  final dynamic address;
  @JsonKey(name: 'workingTimes', defaultValue: <RestaurantWorkingTime>[])
  final List<RestaurantWorkingTime>? workingTimes;
  @JsonKey(name: 'employees', defaultValue: <ApplicationUser>[])
  final List<ApplicationUser>? employees;
  @JsonKey(name: 'domainEvents', defaultValue: <DomainEvent>[])
  final List<DomainEvent>? domainEvents;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$RestaurantFromJson;
  static const toJsonFactory = _$RestaurantToJson;
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Restaurant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.logoId, logoId) ||
                const DeepCollectionEquality().equals(other.logoId, logoId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.vk, vk) ||
                const DeepCollectionEquality().equals(other.vk, vk)) &&
            (identical(other.facebook, facebook) ||
                const DeepCollectionEquality()
                    .equals(other.facebook, facebook)) &&
            (identical(other.instagram, instagram) ||
                const DeepCollectionEquality()
                    .equals(other.instagram, instagram)) &&
            (identical(other.minimalOrderPrice, minimalOrderPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minimalOrderPrice, minimalOrderPrice)) &&
            (identical(other.normalDeliveryTime, normalDeliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.normalDeliveryTime, normalDeliveryTime)) &&
            (identical(other.deliveryTime, deliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryTime, deliveryTime)) &&
            (identical(other.takeout, takeout) ||
                const DeepCollectionEquality()
                    .equals(other.takeout, takeout)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.workingTimes, workingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.workingTimes, workingTimes)) &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.domainEvents, domainEvents) ||
                const DeepCollectionEquality()
                    .equals(other.domainEvents, domainEvents)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(logoId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(vk) ^
      const DeepCollectionEquality().hash(facebook) ^
      const DeepCollectionEquality().hash(instagram) ^
      const DeepCollectionEquality().hash(minimalOrderPrice) ^
      const DeepCollectionEquality().hash(normalDeliveryTime) ^
      const DeepCollectionEquality().hash(deliveryTime) ^
      const DeepCollectionEquality().hash(takeout) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(workingTimes) ^
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(domainEvents) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $RestaurantExtension on Restaurant {
  Restaurant copyWith(
      {String? id,
      String? name,
      String? logoId,
      String? description,
      bool? isActive,
      String? phone,
      String? vk,
      String? facebook,
      String? instagram,
      double? minimalOrderPrice,
      double? normalDeliveryTime,
      double? deliveryTime,
      bool? takeout,
      String? addressId,
      dynamic address,
      List<RestaurantWorkingTime>? workingTimes,
      List<ApplicationUser>? employees,
      List<DomainEvent>? domainEvents,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Restaurant(
        id: id ?? this.id,
        name: name ?? this.name,
        logoId: logoId ?? this.logoId,
        description: description ?? this.description,
        isActive: isActive ?? this.isActive,
        phone: phone ?? this.phone,
        vk: vk ?? this.vk,
        facebook: facebook ?? this.facebook,
        instagram: instagram ?? this.instagram,
        minimalOrderPrice: minimalOrderPrice ?? this.minimalOrderPrice,
        normalDeliveryTime: normalDeliveryTime ?? this.normalDeliveryTime,
        deliveryTime: deliveryTime ?? this.deliveryTime,
        takeout: takeout ?? this.takeout,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        workingTimes: workingTimes ?? this.workingTimes,
        employees: employees ?? this.employees,
        domainEvents: domainEvents ?? this.domainEvents,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Restaurant copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? logoId,
      Wrapped<String?>? description,
      Wrapped<bool?>? isActive,
      Wrapped<String?>? phone,
      Wrapped<String?>? vk,
      Wrapped<String?>? facebook,
      Wrapped<String?>? instagram,
      Wrapped<double?>? minimalOrderPrice,
      Wrapped<double?>? normalDeliveryTime,
      Wrapped<double?>? deliveryTime,
      Wrapped<bool?>? takeout,
      Wrapped<String?>? addressId,
      Wrapped<dynamic>? address,
      Wrapped<List<RestaurantWorkingTime>?>? workingTimes,
      Wrapped<List<ApplicationUser>?>? employees,
      Wrapped<List<DomainEvent>?>? domainEvents,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Restaurant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        logoId: (logoId != null ? logoId.value : this.logoId),
        description:
            (description != null ? description.value : this.description),
        isActive: (isActive != null ? isActive.value : this.isActive),
        phone: (phone != null ? phone.value : this.phone),
        vk: (vk != null ? vk.value : this.vk),
        facebook: (facebook != null ? facebook.value : this.facebook),
        instagram: (instagram != null ? instagram.value : this.instagram),
        minimalOrderPrice: (minimalOrderPrice != null
            ? minimalOrderPrice.value
            : this.minimalOrderPrice),
        normalDeliveryTime: (normalDeliveryTime != null
            ? normalDeliveryTime.value
            : this.normalDeliveryTime),
        deliveryTime:
            (deliveryTime != null ? deliveryTime.value : this.deliveryTime),
        takeout: (takeout != null ? takeout.value : this.takeout),
        addressId: (addressId != null ? addressId.value : this.addressId),
        address: (address != null ? address.value : this.address),
        workingTimes:
            (workingTimes != null ? workingTimes.value : this.workingTimes),
        employees: (employees != null ? employees.value : this.employees),
        domainEvents:
            (domainEvents != null ? domainEvents.value : this.domainEvents),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Address {
  Address({
    this.id,
    this.region,
    this.regionCode,
    this.district,
    this.districtCode,
    this.city,
    this.cityCode,
    this.street,
    this.streetCode,
    this.house,
    this.houseCode,
    this.flat,
    this.index,
    this.fiasCode,
    this.kladrCode,
    this.latitude,
    this.longitude,
    this.value,
    this.frontDoor,
    this.floor,
    this.doorPhone,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'region')
  final String? region;
  @JsonKey(name: 'regionCode')
  final String? regionCode;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtCode')
  final String? districtCode;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'cityCode')
  final String? cityCode;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'streetCode')
  final String? streetCode;
  @JsonKey(name: 'house')
  final String? house;
  @JsonKey(name: 'houseCode')
  final String? houseCode;
  @JsonKey(name: 'flat')
  final String? flat;
  @JsonKey(name: 'index')
  final String? index;
  @JsonKey(name: 'fiasCode')
  final String? fiasCode;
  @JsonKey(name: 'kladrCode')
  final String? kladrCode;
  @JsonKey(name: 'latitude')
  final String? latitude;
  @JsonKey(name: 'longitude')
  final String? longitude;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'frontDoor')
  final String? frontDoor;
  @JsonKey(name: 'floor')
  final String? floor;
  @JsonKey(name: 'doorPhone')
  final String? doorPhone;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$AddressFromJson;
  static const toJsonFactory = _$AddressToJson;
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Address &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality()
                    .equals(other.cityCode, cityCode)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.streetCode, streetCode) ||
                const DeepCollectionEquality()
                    .equals(other.streetCode, streetCode)) &&
            (identical(other.house, house) ||
                const DeepCollectionEquality().equals(other.house, house)) &&
            (identical(other.houseCode, houseCode) ||
                const DeepCollectionEquality()
                    .equals(other.houseCode, houseCode)) &&
            (identical(other.flat, flat) ||
                const DeepCollectionEquality().equals(other.flat, flat)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.fiasCode, fiasCode) ||
                const DeepCollectionEquality()
                    .equals(other.fiasCode, fiasCode)) &&
            (identical(other.kladrCode, kladrCode) ||
                const DeepCollectionEquality()
                    .equals(other.kladrCode, kladrCode)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.frontDoor, frontDoor) ||
                const DeepCollectionEquality()
                    .equals(other.frontDoor, frontDoor)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.doorPhone, doorPhone) ||
                const DeepCollectionEquality()
                    .equals(other.doorPhone, doorPhone)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(streetCode) ^
      const DeepCollectionEquality().hash(house) ^
      const DeepCollectionEquality().hash(houseCode) ^
      const DeepCollectionEquality().hash(flat) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(fiasCode) ^
      const DeepCollectionEquality().hash(kladrCode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(frontDoor) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(doorPhone) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $AddressExtension on Address {
  Address copyWith(
      {String? id,
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
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Address(
        id: id ?? this.id,
        region: region ?? this.region,
        regionCode: regionCode ?? this.regionCode,
        district: district ?? this.district,
        districtCode: districtCode ?? this.districtCode,
        city: city ?? this.city,
        cityCode: cityCode ?? this.cityCode,
        street: street ?? this.street,
        streetCode: streetCode ?? this.streetCode,
        house: house ?? this.house,
        houseCode: houseCode ?? this.houseCode,
        flat: flat ?? this.flat,
        index: index ?? this.index,
        fiasCode: fiasCode ?? this.fiasCode,
        kladrCode: kladrCode ?? this.kladrCode,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        value: value ?? this.value,
        frontDoor: frontDoor ?? this.frontDoor,
        floor: floor ?? this.floor,
        doorPhone: doorPhone ?? this.doorPhone,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Address copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? region,
      Wrapped<String?>? regionCode,
      Wrapped<String?>? district,
      Wrapped<String?>? districtCode,
      Wrapped<String?>? city,
      Wrapped<String?>? cityCode,
      Wrapped<String?>? street,
      Wrapped<String?>? streetCode,
      Wrapped<String?>? house,
      Wrapped<String?>? houseCode,
      Wrapped<String?>? flat,
      Wrapped<String?>? index,
      Wrapped<String?>? fiasCode,
      Wrapped<String?>? kladrCode,
      Wrapped<String?>? latitude,
      Wrapped<String?>? longitude,
      Wrapped<String?>? value,
      Wrapped<String?>? frontDoor,
      Wrapped<String?>? floor,
      Wrapped<String?>? doorPhone,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Address(
        id: (id != null ? id.value : this.id),
        region: (region != null ? region.value : this.region),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        district: (district != null ? district.value : this.district),
        districtCode:
            (districtCode != null ? districtCode.value : this.districtCode),
        city: (city != null ? city.value : this.city),
        cityCode: (cityCode != null ? cityCode.value : this.cityCode),
        street: (street != null ? street.value : this.street),
        streetCode: (streetCode != null ? streetCode.value : this.streetCode),
        house: (house != null ? house.value : this.house),
        houseCode: (houseCode != null ? houseCode.value : this.houseCode),
        flat: (flat != null ? flat.value : this.flat),
        index: (index != null ? index.value : this.index),
        fiasCode: (fiasCode != null ? fiasCode.value : this.fiasCode),
        kladrCode: (kladrCode != null ? kladrCode.value : this.kladrCode),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        value: (value != null ? value.value : this.value),
        frontDoor: (frontDoor != null ? frontDoor.value : this.frontDoor),
        floor: (floor != null ? floor.value : this.floor),
        doorPhone: (doorPhone != null ? doorPhone.value : this.doorPhone),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class AuditableEntity {
  AuditableEntity({
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory AuditableEntity.fromJson(Map<String, dynamic> json) =>
      _$AuditableEntityFromJson(json);

  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$AuditableEntityFromJson;
  static const toJsonFactory = _$AuditableEntityToJson;
  Map<String, dynamic> toJson() => _$AuditableEntityToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuditableEntity &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $AuditableEntityExtension on AuditableEntity {
  AuditableEntity copyWith(
      {DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return AuditableEntity(
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  AuditableEntity copyWithWrapped(
      {Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return AuditableEntity(
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class RestaurantWorkingTime {
  RestaurantWorkingTime({
    this.id,
    this.dayOfWeek,
    this.opensAt,
    this.acceptsOrdersUntil,
    this.closesAt,
    this.restaurantId,
    this.restaurant,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory RestaurantWorkingTime.fromJson(Map<String, dynamic> json) =>
      _$RestaurantWorkingTimeFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: dayOfWeekToJson,
    fromJson: dayOfWeekFromJson,
  )
  final enums.DayOfWeek? dayOfWeek;
  @JsonKey(name: 'opensAt')
  final String? opensAt;
  @JsonKey(name: 'acceptsOrdersUntil')
  final String? acceptsOrdersUntil;
  @JsonKey(name: 'closesAt')
  final String? closesAt;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'restaurant')
  final dynamic restaurant;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$RestaurantWorkingTimeFromJson;
  static const toJsonFactory = _$RestaurantWorkingTimeToJson;
  Map<String, dynamic> toJson() => _$RestaurantWorkingTimeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestaurantWorkingTime &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.opensAt, opensAt) ||
                const DeepCollectionEquality()
                    .equals(other.opensAt, opensAt)) &&
            (identical(other.acceptsOrdersUntil, acceptsOrdersUntil) ||
                const DeepCollectionEquality()
                    .equals(other.acceptsOrdersUntil, acceptsOrdersUntil)) &&
            (identical(other.closesAt, closesAt) ||
                const DeepCollectionEquality()
                    .equals(other.closesAt, closesAt)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(opensAt) ^
      const DeepCollectionEquality().hash(acceptsOrdersUntil) ^
      const DeepCollectionEquality().hash(closesAt) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $RestaurantWorkingTimeExtension on RestaurantWorkingTime {
  RestaurantWorkingTime copyWith(
      {String? id,
      enums.DayOfWeek? dayOfWeek,
      String? opensAt,
      String? acceptsOrdersUntil,
      String? closesAt,
      String? restaurantId,
      dynamic restaurant,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return RestaurantWorkingTime(
        id: id ?? this.id,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        opensAt: opensAt ?? this.opensAt,
        acceptsOrdersUntil: acceptsOrdersUntil ?? this.acceptsOrdersUntil,
        closesAt: closesAt ?? this.closesAt,
        restaurantId: restaurantId ?? this.restaurantId,
        restaurant: restaurant ?? this.restaurant,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  RestaurantWorkingTime copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.DayOfWeek?>? dayOfWeek,
      Wrapped<String?>? opensAt,
      Wrapped<String?>? acceptsOrdersUntil,
      Wrapped<String?>? closesAt,
      Wrapped<String?>? restaurantId,
      Wrapped<dynamic>? restaurant,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return RestaurantWorkingTime(
        id: (id != null ? id.value : this.id),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        opensAt: (opensAt != null ? opensAt.value : this.opensAt),
        acceptsOrdersUntil: (acceptsOrdersUntil != null
            ? acceptsOrdersUntil.value
            : this.acceptsOrdersUntil),
        closesAt: (closesAt != null ? closesAt.value : this.closesAt),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        restaurant: (restaurant != null ? restaurant.value : this.restaurant),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class DomainEvent {
  DomainEvent({
    this.isPublished,
    this.dateOccurred,
  });

  factory DomainEvent.fromJson(Map<String, dynamic> json) =>
      _$DomainEventFromJson(json);

  @JsonKey(name: 'isPublished')
  final bool? isPublished;
  @JsonKey(name: 'dateOccurred')
  final DateTime? dateOccurred;
  static const fromJsonFactory = _$DomainEventFromJson;
  static const toJsonFactory = _$DomainEventToJson;
  Map<String, dynamic> toJson() => _$DomainEventToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DomainEvent &&
            (identical(other.isPublished, isPublished) ||
                const DeepCollectionEquality()
                    .equals(other.isPublished, isPublished)) &&
            (identical(other.dateOccurred, dateOccurred) ||
                const DeepCollectionEquality()
                    .equals(other.dateOccurred, dateOccurred)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isPublished) ^
      const DeepCollectionEquality().hash(dateOccurred) ^
      runtimeType.hashCode;
}

extension $DomainEventExtension on DomainEvent {
  DomainEvent copyWith({bool? isPublished, DateTime? dateOccurred}) {
    return DomainEvent(
        isPublished: isPublished ?? this.isPublished,
        dateOccurred: dateOccurred ?? this.dateOccurred);
  }

  DomainEvent copyWithWrapped(
      {Wrapped<bool?>? isPublished, Wrapped<DateTime?>? dateOccurred}) {
    return DomainEvent(
        isPublished:
            (isPublished != null ? isPublished.value : this.isPublished),
        dateOccurred:
            (dateOccurred != null ? dateOccurred.value : this.dateOccurred));
  }
}

@JsonSerializable(explicitToJson: true)
class ClientAddress {
  ClientAddress({
    this.isMainAddress,
    this.clientId,
    this.$client,
    this.addressId,
    this.address,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory ClientAddress.fromJson(Map<String, dynamic> json) =>
      _$ClientAddressFromJson(json);

  @JsonKey(name: 'isMainAddress')
  final bool? isMainAddress;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: '\$client')
  final dynamic $client;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'address')
  final dynamic address;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ClientAddressFromJson;
  static const toJsonFactory = _$ClientAddressToJson;
  Map<String, dynamic> toJson() => _$ClientAddressToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientAddress &&
            (identical(other.isMainAddress, isMainAddress) ||
                const DeepCollectionEquality()
                    .equals(other.isMainAddress, isMainAddress)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality()
                    .equals(other.$client, $client)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isMainAddress) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ClientAddressExtension on ClientAddress {
  ClientAddress copyWith(
      {bool? isMainAddress,
      String? clientId,
      dynamic $client,
      String? addressId,
      dynamic address,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return ClientAddress(
        isMainAddress: isMainAddress ?? this.isMainAddress,
        clientId: clientId ?? this.clientId,
        $client: $client ?? this.$client,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  ClientAddress copyWithWrapped(
      {Wrapped<bool?>? isMainAddress,
      Wrapped<String?>? clientId,
      Wrapped<dynamic>? $client,
      Wrapped<String?>? addressId,
      Wrapped<dynamic>? address,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return ClientAddress(
        isMainAddress:
            (isMainAddress != null ? isMainAddress.value : this.isMainAddress),
        clientId: (clientId != null ? clientId.value : this.clientId),
        $client: ($client != null ? $client.value : this.$client),
        addressId: (addressId != null ? addressId.value : this.addressId),
        address: (address != null ? address.value : this.address),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order {
  Order({
    this.id,
    this.number,
    this.status,
    this.deliveryType,
    this.changeFrom,
    this.finished,
    this.comment,
    this.price,
    this.personsCount,
    this.deliverToDate,
    this.deliveryDate,
    this.clientId,
    this.$client,
    this.courierId,
    this.courier,
    this.addressId,
    this.address,
    this.restaurantId,
    this.restaurant,
    this.paymentMethodId,
    this.paymentMethod,
    this.reviewId,
    this.review,
    this.orderDetails,
    this.orderStatusHistories,
    this.domainEvents,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(
    name: 'deliveryType',
    toJson: orderDeliveryToJson,
    fromJson: orderDeliveryFromJson,
  )
  final enums.OrderDelivery? deliveryType;
  @JsonKey(name: 'changeFrom')
  final double? changeFrom;
  @JsonKey(name: 'finished')
  final DateTime? finished;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'personsCount')
  final int? personsCount;
  @JsonKey(name: 'deliverToDate')
  final bool? deliverToDate;
  @JsonKey(name: 'deliveryDate')
  final String? deliveryDate;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: '\$client')
  final dynamic $client;
  @JsonKey(name: 'courierId')
  final String? courierId;
  @JsonKey(name: 'courier')
  final dynamic courier;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'address')
  final dynamic address;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'restaurant')
  final dynamic restaurant;
  @JsonKey(name: 'paymentMethodId')
  final String? paymentMethodId;
  @JsonKey(name: 'paymentMethod')
  final dynamic paymentMethod;
  @JsonKey(name: 'reviewId')
  final String? reviewId;
  @JsonKey(name: 'review')
  final dynamic review;
  @JsonKey(name: 'orderDetails', defaultValue: <OrderDetail>[])
  final List<OrderDetail>? orderDetails;
  @JsonKey(name: 'orderStatusHistories', defaultValue: <OrderStatusHistory>[])
  final List<OrderStatusHistory>? orderStatusHistories;
  @JsonKey(name: 'domainEvents', defaultValue: <DomainEvent>[])
  final List<DomainEvent>? domainEvents;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$OrderFromJson;
  static const toJsonFactory = _$OrderToJson;
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.changeFrom, changeFrom) ||
                const DeepCollectionEquality()
                    .equals(other.changeFrom, changeFrom)) &&
            (identical(other.finished, finished) ||
                const DeepCollectionEquality()
                    .equals(other.finished, finished)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.personsCount, personsCount) ||
                const DeepCollectionEquality()
                    .equals(other.personsCount, personsCount)) &&
            (identical(other.deliverToDate, deliverToDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliverToDate, deliverToDate)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality()
                    .equals(other.$client, $client)) &&
            (identical(other.courierId, courierId) ||
                const DeepCollectionEquality()
                    .equals(other.courierId, courierId)) &&
            (identical(other.courier, courier) ||
                const DeepCollectionEquality()
                    .equals(other.courier, courier)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodId, paymentMethodId)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.reviewId, reviewId) ||
                const DeepCollectionEquality()
                    .equals(other.reviewId, reviewId)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.orderDetails, orderDetails) ||
                const DeepCollectionEquality()
                    .equals(other.orderDetails, orderDetails)) &&
            (identical(other.orderStatusHistories, orderStatusHistories) || const DeepCollectionEquality().equals(other.orderStatusHistories, orderStatusHistories)) &&
            (identical(other.domainEvents, domainEvents) || const DeepCollectionEquality().equals(other.domainEvents, domainEvents)) &&
            (identical(other.created, created) || const DeepCollectionEquality().equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) || const DeepCollectionEquality().equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) || const DeepCollectionEquality().equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) || const DeepCollectionEquality().equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(changeFrom) ^
      const DeepCollectionEquality().hash(finished) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(personsCount) ^
      const DeepCollectionEquality().hash(deliverToDate) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(courierId) ^
      const DeepCollectionEquality().hash(courier) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(paymentMethodId) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(reviewId) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(orderDetails) ^
      const DeepCollectionEquality().hash(orderStatusHistories) ^
      const DeepCollectionEquality().hash(domainEvents) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $OrderExtension on Order {
  Order copyWith(
      {String? id,
      int? number,
      enums.OrderStatus? status,
      enums.OrderDelivery? deliveryType,
      double? changeFrom,
      DateTime? finished,
      String? comment,
      double? price,
      int? personsCount,
      bool? deliverToDate,
      String? deliveryDate,
      String? clientId,
      dynamic $client,
      String? courierId,
      dynamic courier,
      String? addressId,
      dynamic address,
      String? restaurantId,
      dynamic restaurant,
      String? paymentMethodId,
      dynamic paymentMethod,
      String? reviewId,
      dynamic review,
      List<OrderDetail>? orderDetails,
      List<OrderStatusHistory>? orderStatusHistories,
      List<DomainEvent>? domainEvents,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Order(
        id: id ?? this.id,
        number: number ?? this.number,
        status: status ?? this.status,
        deliveryType: deliveryType ?? this.deliveryType,
        changeFrom: changeFrom ?? this.changeFrom,
        finished: finished ?? this.finished,
        comment: comment ?? this.comment,
        price: price ?? this.price,
        personsCount: personsCount ?? this.personsCount,
        deliverToDate: deliverToDate ?? this.deliverToDate,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        clientId: clientId ?? this.clientId,
        $client: $client ?? this.$client,
        courierId: courierId ?? this.courierId,
        courier: courier ?? this.courier,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        restaurantId: restaurantId ?? this.restaurantId,
        restaurant: restaurant ?? this.restaurant,
        paymentMethodId: paymentMethodId ?? this.paymentMethodId,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        reviewId: reviewId ?? this.reviewId,
        review: review ?? this.review,
        orderDetails: orderDetails ?? this.orderDetails,
        orderStatusHistories: orderStatusHistories ?? this.orderStatusHistories,
        domainEvents: domainEvents ?? this.domainEvents,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Order copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<int?>? number,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<enums.OrderDelivery?>? deliveryType,
      Wrapped<double?>? changeFrom,
      Wrapped<DateTime?>? finished,
      Wrapped<String?>? comment,
      Wrapped<double?>? price,
      Wrapped<int?>? personsCount,
      Wrapped<bool?>? deliverToDate,
      Wrapped<String?>? deliveryDate,
      Wrapped<String?>? clientId,
      Wrapped<dynamic>? $client,
      Wrapped<String?>? courierId,
      Wrapped<dynamic>? courier,
      Wrapped<String?>? addressId,
      Wrapped<dynamic>? address,
      Wrapped<String?>? restaurantId,
      Wrapped<dynamic>? restaurant,
      Wrapped<String?>? paymentMethodId,
      Wrapped<dynamic>? paymentMethod,
      Wrapped<String?>? reviewId,
      Wrapped<dynamic>? review,
      Wrapped<List<OrderDetail>?>? orderDetails,
      Wrapped<List<OrderStatusHistory>?>? orderStatusHistories,
      Wrapped<List<DomainEvent>?>? domainEvents,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Order(
        id: (id != null ? id.value : this.id),
        number: (number != null ? number.value : this.number),
        status: (status != null ? status.value : this.status),
        deliveryType:
            (deliveryType != null ? deliveryType.value : this.deliveryType),
        changeFrom: (changeFrom != null ? changeFrom.value : this.changeFrom),
        finished: (finished != null ? finished.value : this.finished),
        comment: (comment != null ? comment.value : this.comment),
        price: (price != null ? price.value : this.price),
        personsCount:
            (personsCount != null ? personsCount.value : this.personsCount),
        deliverToDate:
            (deliverToDate != null ? deliverToDate.value : this.deliverToDate),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        clientId: (clientId != null ? clientId.value : this.clientId),
        $client: ($client != null ? $client.value : this.$client),
        courierId: (courierId != null ? courierId.value : this.courierId),
        courier: (courier != null ? courier.value : this.courier),
        addressId: (addressId != null ? addressId.value : this.addressId),
        address: (address != null ? address.value : this.address),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        restaurant: (restaurant != null ? restaurant.value : this.restaurant),
        paymentMethodId: (paymentMethodId != null
            ? paymentMethodId.value
            : this.paymentMethodId),
        paymentMethod:
            (paymentMethod != null ? paymentMethod.value : this.paymentMethod),
        reviewId: (reviewId != null ? reviewId.value : this.reviewId),
        review: (review != null ? review.value : this.review),
        orderDetails:
            (orderDetails != null ? orderDetails.value : this.orderDetails),
        orderStatusHistories: (orderStatusHistories != null
            ? orderStatusHistories.value
            : this.orderStatusHistories),
        domainEvents:
            (domainEvents != null ? domainEvents.value : this.domainEvents),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class PaymentMethod {
  PaymentMethod({
    this.id,
    this.name,
    this.hasVariants,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'hasVariants')
  final bool? hasVariants;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$PaymentMethodFromJson;
  static const toJsonFactory = _$PaymentMethodToJson;
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentMethod &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hasVariants, hasVariants) ||
                const DeepCollectionEquality()
                    .equals(other.hasVariants, hasVariants)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hasVariants) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $PaymentMethodExtension on PaymentMethod {
  PaymentMethod copyWith(
      {String? id,
      String? name,
      bool? hasVariants,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return PaymentMethod(
        id: id ?? this.id,
        name: name ?? this.name,
        hasVariants: hasVariants ?? this.hasVariants,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  PaymentMethod copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<bool?>? hasVariants,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return PaymentMethod(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        hasVariants:
            (hasVariants != null ? hasVariants.value : this.hasVariants),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Review {
  Review({
    this.id,
    this.comment,
    this.orderId,
    this.order,
    this.mark,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(
    name: 'mark',
    toJson: markToJson,
    fromJson: markFromJson,
  )
  final enums.Mark? mark;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ReviewFromJson;
  static const toJsonFactory = _$ReviewToJson;
  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.mark, mark) ||
                const DeepCollectionEquality().equals(other.mark, mark)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(mark) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ReviewExtension on Review {
  Review copyWith(
      {String? id,
      String? comment,
      String? orderId,
      dynamic order,
      enums.Mark? mark,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Review(
        id: id ?? this.id,
        comment: comment ?? this.comment,
        orderId: orderId ?? this.orderId,
        order: order ?? this.order,
        mark: mark ?? this.mark,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Review copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? comment,
      Wrapped<String?>? orderId,
      Wrapped<dynamic>? order,
      Wrapped<enums.Mark?>? mark,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Review(
        id: (id != null ? id.value : this.id),
        comment: (comment != null ? comment.value : this.comment),
        orderId: (orderId != null ? orderId.value : this.orderId),
        order: (order != null ? order.value : this.order),
        mark: (mark != null ? mark.value : this.mark),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderDetail {
  OrderDetail({
    this.id,
    this.amount,
    this.price,
    this.orderId,
    this.order,
    this.productId,
    this.product,
    this.productSizeId,
    this.productSize,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'amount')
  final int? amount;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'productSize')
  final dynamic productSize;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$OrderDetailFromJson;
  static const toJsonFactory = _$OrderDetailToJson;
  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.productSize, productSize) ||
                const DeepCollectionEquality()
                    .equals(other.productSize, productSize)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(productSize) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $OrderDetailExtension on OrderDetail {
  OrderDetail copyWith(
      {String? id,
      int? amount,
      double? price,
      String? orderId,
      dynamic order,
      String? productId,
      dynamic product,
      String? productSizeId,
      dynamic productSize,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return OrderDetail(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        price: price ?? this.price,
        orderId: orderId ?? this.orderId,
        order: order ?? this.order,
        productId: productId ?? this.productId,
        product: product ?? this.product,
        productSizeId: productSizeId ?? this.productSizeId,
        productSize: productSize ?? this.productSize,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  OrderDetail copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<int?>? amount,
      Wrapped<double?>? price,
      Wrapped<String?>? orderId,
      Wrapped<dynamic>? order,
      Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? productSizeId,
      Wrapped<dynamic>? productSize,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return OrderDetail(
        id: (id != null ? id.value : this.id),
        amount: (amount != null ? amount.value : this.amount),
        price: (price != null ? price.value : this.price),
        orderId: (orderId != null ? orderId.value : this.orderId),
        order: (order != null ? order.value : this.order),
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        productSize:
            (productSize != null ? productSize.value : this.productSize),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Product {
  Product({
    this.id,
    this.name,
    this.imageId,
    this.description,
    this.price,
    this.weight,
    this.isComplex,
    this.categoryId,
    this.category,
    this.productTags,
    this.productCompositions,
    this.productIngredients,
    this.productSizePrices,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'isComplex')
  final bool? isComplex;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'category')
  final dynamic category;
  @JsonKey(name: 'productTags', defaultValue: <ProductTag>[])
  final List<ProductTag>? productTags;
  @JsonKey(name: 'productCompositions', defaultValue: <ProductComposition>[])
  final List<ProductComposition>? productCompositions;
  @JsonKey(name: 'productIngredients', defaultValue: <ProductIngredient>[])
  final List<ProductIngredient>? productIngredients;
  @JsonKey(name: 'productSizePrices', defaultValue: <ProductSizePrice>[])
  final List<ProductSizePrice>? productSizePrices;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ProductFromJson;
  static const toJsonFactory = _$ProductToJson;
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.isComplex, isComplex) ||
                const DeepCollectionEquality()
                    .equals(other.isComplex, isComplex)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.productTags, productTags) ||
                const DeepCollectionEquality()
                    .equals(other.productTags, productTags)) &&
            (identical(other.productCompositions, productCompositions) ||
                const DeepCollectionEquality()
                    .equals(other.productCompositions, productCompositions)) &&
            (identical(other.productIngredients, productIngredients) ||
                const DeepCollectionEquality()
                    .equals(other.productIngredients, productIngredients)) &&
            (identical(other.productSizePrices, productSizePrices) ||
                const DeepCollectionEquality()
                    .equals(other.productSizePrices, productSizePrices)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(isComplex) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(productTags) ^
      const DeepCollectionEquality().hash(productCompositions) ^
      const DeepCollectionEquality().hash(productIngredients) ^
      const DeepCollectionEquality().hash(productSizePrices) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ProductExtension on Product {
  Product copyWith(
      {String? id,
      String? name,
      String? imageId,
      String? description,
      double? price,
      double? weight,
      bool? isComplex,
      String? categoryId,
      dynamic category,
      List<ProductTag>? productTags,
      List<ProductComposition>? productCompositions,
      List<ProductIngredient>? productIngredients,
      List<ProductSizePrice>? productSizePrices,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Product(
        id: id ?? this.id,
        name: name ?? this.name,
        imageId: imageId ?? this.imageId,
        description: description ?? this.description,
        price: price ?? this.price,
        weight: weight ?? this.weight,
        isComplex: isComplex ?? this.isComplex,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        productTags: productTags ?? this.productTags,
        productCompositions: productCompositions ?? this.productCompositions,
        productIngredients: productIngredients ?? this.productIngredients,
        productSizePrices: productSizePrices ?? this.productSizePrices,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Product copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? imageId,
      Wrapped<String?>? description,
      Wrapped<double?>? price,
      Wrapped<double?>? weight,
      Wrapped<bool?>? isComplex,
      Wrapped<String?>? categoryId,
      Wrapped<dynamic>? category,
      Wrapped<List<ProductTag>?>? productTags,
      Wrapped<List<ProductComposition>?>? productCompositions,
      Wrapped<List<ProductIngredient>?>? productIngredients,
      Wrapped<List<ProductSizePrice>?>? productSizePrices,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Product(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId),
        description:
            (description != null ? description.value : this.description),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight),
        isComplex: (isComplex != null ? isComplex.value : this.isComplex),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        category: (category != null ? category.value : this.category),
        productTags:
            (productTags != null ? productTags.value : this.productTags),
        productCompositions: (productCompositions != null
            ? productCompositions.value
            : this.productCompositions),
        productIngredients: (productIngredients != null
            ? productIngredients.value
            : this.productIngredients),
        productSizePrices: (productSizePrices != null
            ? productSizePrices.value
            : this.productSizePrices),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Category {
  Category({
    this.id,
    this.name,
    this.description,
    this.order,
    this.imageId,
    this.isVisible,
    this.parentCategoryId,
    this.parentCategory,
    this.restaurantId,
    this.restaurant,
    this.childCategories,
    this.products,
    this.productSizes,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'isVisible')
  final bool? isVisible;
  @JsonKey(name: 'parentCategoryId')
  final String? parentCategoryId;
  @JsonKey(name: 'parentCategory')
  final dynamic parentCategory;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'restaurant')
  final dynamic restaurant;
  @JsonKey(name: 'childCategories', defaultValue: <Category>[])
  final List<Category>? childCategories;
  @JsonKey(name: 'products', defaultValue: <Product>[])
  final List<Product>? products;
  @JsonKey(name: 'productSizes', defaultValue: <ProductSize>[])
  final List<ProductSize>? productSizes;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$CategoryFromJson;
  static const toJsonFactory = _$CategoryToJson;
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategoryId, parentCategoryId)) &&
            (identical(other.parentCategory, parentCategory) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategory, parentCategory)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.childCategories, childCategories) ||
                const DeepCollectionEquality()
                    .equals(other.childCategories, childCategories)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.productSizes, productSizes) ||
                const DeepCollectionEquality()
                    .equals(other.productSizes, productSizes)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(isVisible) ^
      const DeepCollectionEquality().hash(parentCategoryId) ^
      const DeepCollectionEquality().hash(parentCategory) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(childCategories) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(productSizes) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $CategoryExtension on Category {
  Category copyWith(
      {String? id,
      String? name,
      String? description,
      int? order,
      String? imageId,
      bool? isVisible,
      String? parentCategoryId,
      dynamic parentCategory,
      String? restaurantId,
      dynamic restaurant,
      List<Category>? childCategories,
      List<Product>? products,
      List<ProductSize>? productSizes,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Category(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        order: order ?? this.order,
        imageId: imageId ?? this.imageId,
        isVisible: isVisible ?? this.isVisible,
        parentCategoryId: parentCategoryId ?? this.parentCategoryId,
        parentCategory: parentCategory ?? this.parentCategory,
        restaurantId: restaurantId ?? this.restaurantId,
        restaurant: restaurant ?? this.restaurant,
        childCategories: childCategories ?? this.childCategories,
        products: products ?? this.products,
        productSizes: productSizes ?? this.productSizes,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Category copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<int?>? order,
      Wrapped<String?>? imageId,
      Wrapped<bool?>? isVisible,
      Wrapped<String?>? parentCategoryId,
      Wrapped<dynamic>? parentCategory,
      Wrapped<String?>? restaurantId,
      Wrapped<dynamic>? restaurant,
      Wrapped<List<Category>?>? childCategories,
      Wrapped<List<Product>?>? products,
      Wrapped<List<ProductSize>?>? productSizes,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Category(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        order: (order != null ? order.value : this.order),
        imageId: (imageId != null ? imageId.value : this.imageId),
        isVisible: (isVisible != null ? isVisible.value : this.isVisible),
        parentCategoryId: (parentCategoryId != null
            ? parentCategoryId.value
            : this.parentCategoryId),
        parentCategory: (parentCategory != null
            ? parentCategory.value
            : this.parentCategory),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        restaurant: (restaurant != null ? restaurant.value : this.restaurant),
        childCategories: (childCategories != null
            ? childCategories.value
            : this.childCategories),
        products: (products != null ? products.value : this.products),
        productSizes:
            (productSizes != null ? productSizes.value : this.productSizes),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSize {
  ProductSize({
    this.id,
    this.categoryId,
    this.category,
    this.name,
    this.productSizePrices,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory ProductSize.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'category')
  final dynamic category;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'productSizePrices', defaultValue: <ProductSizePrice>[])
  final List<ProductSizePrice>? productSizePrices;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ProductSizeFromJson;
  static const toJsonFactory = _$ProductSizeToJson;
  Map<String, dynamic> toJson() => _$ProductSizeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSize &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productSizePrices, productSizePrices) ||
                const DeepCollectionEquality()
                    .equals(other.productSizePrices, productSizePrices)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productSizePrices) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ProductSizeExtension on ProductSize {
  ProductSize copyWith(
      {String? id,
      String? categoryId,
      dynamic category,
      String? name,
      List<ProductSizePrice>? productSizePrices,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return ProductSize(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        name: name ?? this.name,
        productSizePrices: productSizePrices ?? this.productSizePrices,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  ProductSize copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? categoryId,
      Wrapped<dynamic>? category,
      Wrapped<String?>? name,
      Wrapped<List<ProductSizePrice>?>? productSizePrices,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return ProductSize(
        id: (id != null ? id.value : this.id),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        category: (category != null ? category.value : this.category),
        name: (name != null ? name.value : this.name),
        productSizePrices: (productSizePrices != null
            ? productSizePrices.value
            : this.productSizePrices),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSizePrice {
  ProductSizePrice({
    this.productId,
    this.product,
    this.productSizeId,
    this.productSize,
    this.price,
    this.weight,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory ProductSizePrice.fromJson(Map<String, dynamic> json) =>
      _$ProductSizePriceFromJson(json);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'productSize')
  final dynamic productSize;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ProductSizePriceFromJson;
  static const toJsonFactory = _$ProductSizePriceToJson;
  Map<String, dynamic> toJson() => _$ProductSizePriceToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSizePrice &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.productSize, productSize) ||
                const DeepCollectionEquality()
                    .equals(other.productSize, productSize)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(productSize) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ProductSizePriceExtension on ProductSizePrice {
  ProductSizePrice copyWith(
      {String? productId,
      dynamic product,
      String? productSizeId,
      dynamic productSize,
      double? price,
      double? weight,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return ProductSizePrice(
        productId: productId ?? this.productId,
        product: product ?? this.product,
        productSizeId: productSizeId ?? this.productSizeId,
        productSize: productSize ?? this.productSize,
        price: price ?? this.price,
        weight: weight ?? this.weight,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  ProductSizePrice copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? productSizeId,
      Wrapped<dynamic>? productSize,
      Wrapped<double?>? price,
      Wrapped<double?>? weight,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return ProductSizePrice(
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        productSize:
            (productSize != null ? productSize.value : this.productSize),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductTag {
  ProductTag({
    this.productId,
    this.product,
    this.tagId,
    this.tag,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory ProductTag.fromJson(Map<String, dynamic> json) =>
      _$ProductTagFromJson(json);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'tagId')
  final String? tagId;
  @JsonKey(name: 'tag')
  final dynamic tag;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ProductTagFromJson;
  static const toJsonFactory = _$ProductTagToJson;
  Map<String, dynamic> toJson() => _$ProductTagToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductTag &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ProductTagExtension on ProductTag {
  ProductTag copyWith(
      {String? productId,
      dynamic product,
      String? tagId,
      dynamic tag,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return ProductTag(
        productId: productId ?? this.productId,
        product: product ?? this.product,
        tagId: tagId ?? this.tagId,
        tag: tag ?? this.tag,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  ProductTag copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? tagId,
      Wrapped<dynamic>? tag,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return ProductTag(
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        tagId: (tagId != null ? tagId.value : this.tagId),
        tag: (tag != null ? tag.value : this.tag),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Tag {
  Tag({
    this.id,
    this.name,
    this.imageId,
    this.productTags,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'productTags', defaultValue: <ProductTag>[])
  final List<ProductTag>? productTags;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$TagFromJson;
  static const toJsonFactory = _$TagToJson;
  Map<String, dynamic> toJson() => _$TagToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tag &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.productTags, productTags) ||
                const DeepCollectionEquality()
                    .equals(other.productTags, productTags)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(productTags) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $TagExtension on Tag {
  Tag copyWith(
      {String? id,
      String? name,
      String? imageId,
      List<ProductTag>? productTags,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        imageId: imageId ?? this.imageId,
        productTags: productTags ?? this.productTags,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Tag copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? imageId,
      Wrapped<List<ProductTag>?>? productTags,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Tag(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId),
        productTags:
            (productTags != null ? productTags.value : this.productTags),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductComposition {
  ProductComposition({
    this.mainProductId,
    this.mainProduct,
    this.compositeProductId,
    this.compositeProduct,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory ProductComposition.fromJson(Map<String, dynamic> json) =>
      _$ProductCompositionFromJson(json);

  @JsonKey(name: 'mainProductId')
  final String? mainProductId;
  @JsonKey(name: 'mainProduct')
  final dynamic mainProduct;
  @JsonKey(name: 'compositeProductId')
  final String? compositeProductId;
  @JsonKey(name: 'compositeProduct')
  final dynamic compositeProduct;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ProductCompositionFromJson;
  static const toJsonFactory = _$ProductCompositionToJson;
  Map<String, dynamic> toJson() => _$ProductCompositionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductComposition &&
            (identical(other.mainProductId, mainProductId) ||
                const DeepCollectionEquality()
                    .equals(other.mainProductId, mainProductId)) &&
            (identical(other.mainProduct, mainProduct) ||
                const DeepCollectionEquality()
                    .equals(other.mainProduct, mainProduct)) &&
            (identical(other.compositeProductId, compositeProductId) ||
                const DeepCollectionEquality()
                    .equals(other.compositeProductId, compositeProductId)) &&
            (identical(other.compositeProduct, compositeProduct) ||
                const DeepCollectionEquality()
                    .equals(other.compositeProduct, compositeProduct)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mainProductId) ^
      const DeepCollectionEquality().hash(mainProduct) ^
      const DeepCollectionEquality().hash(compositeProductId) ^
      const DeepCollectionEquality().hash(compositeProduct) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ProductCompositionExtension on ProductComposition {
  ProductComposition copyWith(
      {String? mainProductId,
      dynamic mainProduct,
      String? compositeProductId,
      dynamic compositeProduct,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return ProductComposition(
        mainProductId: mainProductId ?? this.mainProductId,
        mainProduct: mainProduct ?? this.mainProduct,
        compositeProductId: compositeProductId ?? this.compositeProductId,
        compositeProduct: compositeProduct ?? this.compositeProduct,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  ProductComposition copyWithWrapped(
      {Wrapped<String?>? mainProductId,
      Wrapped<dynamic>? mainProduct,
      Wrapped<String?>? compositeProductId,
      Wrapped<dynamic>? compositeProduct,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return ProductComposition(
        mainProductId:
            (mainProductId != null ? mainProductId.value : this.mainProductId),
        mainProduct:
            (mainProduct != null ? mainProduct.value : this.mainProduct),
        compositeProductId: (compositeProductId != null
            ? compositeProductId.value
            : this.compositeProductId),
        compositeProduct: (compositeProduct != null
            ? compositeProduct.value
            : this.compositeProduct),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductIngredient {
  ProductIngredient({
    this.productId,
    this.product,
    this.ingredientId,
    this.ingredient,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory ProductIngredient.fromJson(Map<String, dynamic> json) =>
      _$ProductIngredientFromJson(json);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'ingredientId')
  final String? ingredientId;
  @JsonKey(name: 'ingredient')
  final dynamic ingredient;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$ProductIngredientFromJson;
  static const toJsonFactory = _$ProductIngredientToJson;
  Map<String, dynamic> toJson() => _$ProductIngredientToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductIngredient &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.ingredientId, ingredientId) ||
                const DeepCollectionEquality()
                    .equals(other.ingredientId, ingredientId)) &&
            (identical(other.ingredient, ingredient) ||
                const DeepCollectionEquality()
                    .equals(other.ingredient, ingredient)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(ingredientId) ^
      const DeepCollectionEquality().hash(ingredient) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $ProductIngredientExtension on ProductIngredient {
  ProductIngredient copyWith(
      {String? productId,
      dynamic product,
      String? ingredientId,
      dynamic ingredient,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return ProductIngredient(
        productId: productId ?? this.productId,
        product: product ?? this.product,
        ingredientId: ingredientId ?? this.ingredientId,
        ingredient: ingredient ?? this.ingredient,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  ProductIngredient copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? ingredientId,
      Wrapped<dynamic>? ingredient,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return ProductIngredient(
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        ingredientId:
            (ingredientId != null ? ingredientId.value : this.ingredientId),
        ingredient: (ingredient != null ? ingredient.value : this.ingredient),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Ingredient {
  Ingredient({
    this.id,
    this.name,
    this.description,
    this.productIngredients,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'productIngredients', defaultValue: <ProductIngredient>[])
  final List<ProductIngredient>? productIngredients;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$IngredientFromJson;
  static const toJsonFactory = _$IngredientToJson;
  Map<String, dynamic> toJson() => _$IngredientToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ingredient &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.productIngredients, productIngredients) ||
                const DeepCollectionEquality()
                    .equals(other.productIngredients, productIngredients)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(productIngredients) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $IngredientExtension on Ingredient {
  Ingredient copyWith(
      {String? id,
      String? name,
      String? description,
      List<ProductIngredient>? productIngredients,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return Ingredient(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        productIngredients: productIngredients ?? this.productIngredients,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  Ingredient copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<List<ProductIngredient>?>? productIngredients,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return Ingredient(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        productIngredients: (productIngredients != null
            ? productIngredients.value
            : this.productIngredients),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderStatusHistory {
  OrderStatusHistory({
    this.orderId,
    this.order,
    this.status,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory OrderStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusHistoryFromJson(json);

  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$OrderStatusHistoryFromJson;
  static const toJsonFactory = _$OrderStatusHistoryToJson;
  Map<String, dynamic> toJson() => _$OrderStatusHistoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderStatusHistory &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $OrderStatusHistoryExtension on OrderStatusHistory {
  OrderStatusHistory copyWith(
      {String? orderId,
      dynamic order,
      enums.OrderStatus? status,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return OrderStatusHistory(
        orderId: orderId ?? this.orderId,
        order: order ?? this.order,
        status: status ?? this.status,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  OrderStatusHistory copyWithWrapped(
      {Wrapped<String?>? orderId,
      Wrapped<dynamic>? order,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return OrderStatusHistory(
        orderId: (orderId != null ? orderId.value : this.orderId),
        order: (order != null ? order.value : this.order),
        status: (status != null ? status.value : this.status),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationUserRole {
  ApplicationUserRole({
    this.role,
    this.user,
    this.userId,
    this.roleId,
  });

  factory ApplicationUserRole.fromJson(Map<String, dynamic> json) =>
      _$ApplicationUserRoleFromJson(json);

  @JsonKey(name: 'role')
  final dynamic role;
  @JsonKey(name: 'user')
  final dynamic user;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'roleId')
  final String? roleId;
  static const fromJsonFactory = _$ApplicationUserRoleFromJson;
  static const toJsonFactory = _$ApplicationUserRoleToJson;
  Map<String, dynamic> toJson() => _$ApplicationUserRoleToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationUserRole &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(roleId) ^
      runtimeType.hashCode;
}

extension $ApplicationUserRoleExtension on ApplicationUserRole {
  ApplicationUserRole copyWith(
      {dynamic role, dynamic user, String? userId, String? roleId}) {
    return ApplicationUserRole(
        role: role ?? this.role,
        user: user ?? this.user,
        userId: userId ?? this.userId,
        roleId: roleId ?? this.roleId);
  }

  ApplicationUserRole copyWithWrapped(
      {Wrapped<dynamic>? role,
      Wrapped<dynamic>? user,
      Wrapped<String?>? userId,
      Wrapped<String?>? roleId}) {
    return ApplicationUserRole(
        role: (role != null ? role.value : this.role),
        user: (user != null ? user.value : this.user),
        userId: (userId != null ? userId.value : this.userId),
        roleId: (roleId != null ? roleId.value : this.roleId));
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationRole {
  ApplicationRole({
    this.id,
    this.name,
    this.normalizedName,
    this.concurrencyStamp,
  });

  factory ApplicationRole.fromJson(Map<String, dynamic> json) =>
      _$ApplicationRoleFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'normalizedName')
  final String? normalizedName;
  @JsonKey(name: 'concurrencyStamp')
  final String? concurrencyStamp;
  static const fromJsonFactory = _$ApplicationRoleFromJson;
  static const toJsonFactory = _$ApplicationRoleToJson;
  Map<String, dynamic> toJson() => _$ApplicationRoleToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationRole &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.normalizedName, normalizedName) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedName, normalizedName)) &&
            (identical(other.concurrencyStamp, concurrencyStamp) ||
                const DeepCollectionEquality()
                    .equals(other.concurrencyStamp, concurrencyStamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(normalizedName) ^
      const DeepCollectionEquality().hash(concurrencyStamp) ^
      runtimeType.hashCode;
}

extension $ApplicationRoleExtension on ApplicationRole {
  ApplicationRole copyWith(
      {String? id,
      String? name,
      String? normalizedName,
      String? concurrencyStamp}) {
    return ApplicationRole(
        id: id ?? this.id,
        name: name ?? this.name,
        normalizedName: normalizedName ?? this.normalizedName,
        concurrencyStamp: concurrencyStamp ?? this.concurrencyStamp);
  }

  ApplicationRole copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? normalizedName,
      Wrapped<String?>? concurrencyStamp}) {
    return ApplicationRole(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        normalizedName: (normalizedName != null
            ? normalizedName.value
            : this.normalizedName),
        concurrencyStamp: (concurrencyStamp != null
            ? concurrencyStamp.value
            : this.concurrencyStamp));
  }
}

@JsonSerializable(explicitToJson: true)
class IdentityRoleOfGuid {
  IdentityRoleOfGuid({
    this.id,
    this.name,
    this.normalizedName,
    this.concurrencyStamp,
  });

  factory IdentityRoleOfGuid.fromJson(Map<String, dynamic> json) =>
      _$IdentityRoleOfGuidFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'normalizedName')
  final String? normalizedName;
  @JsonKey(name: 'concurrencyStamp')
  final String? concurrencyStamp;
  static const fromJsonFactory = _$IdentityRoleOfGuidFromJson;
  static const toJsonFactory = _$IdentityRoleOfGuidToJson;
  Map<String, dynamic> toJson() => _$IdentityRoleOfGuidToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdentityRoleOfGuid &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.normalizedName, normalizedName) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedName, normalizedName)) &&
            (identical(other.concurrencyStamp, concurrencyStamp) ||
                const DeepCollectionEquality()
                    .equals(other.concurrencyStamp, concurrencyStamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(normalizedName) ^
      const DeepCollectionEquality().hash(concurrencyStamp) ^
      runtimeType.hashCode;
}

extension $IdentityRoleOfGuidExtension on IdentityRoleOfGuid {
  IdentityRoleOfGuid copyWith(
      {String? id,
      String? name,
      String? normalizedName,
      String? concurrencyStamp}) {
    return IdentityRoleOfGuid(
        id: id ?? this.id,
        name: name ?? this.name,
        normalizedName: normalizedName ?? this.normalizedName,
        concurrencyStamp: concurrencyStamp ?? this.concurrencyStamp);
  }

  IdentityRoleOfGuid copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? normalizedName,
      Wrapped<String?>? concurrencyStamp}) {
    return IdentityRoleOfGuid(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        normalizedName: (normalizedName != null
            ? normalizedName.value
            : this.normalizedName),
        concurrencyStamp: (concurrencyStamp != null
            ? concurrencyStamp.value
            : this.concurrencyStamp));
  }
}

@JsonSerializable(explicitToJson: true)
class IdentityUserRoleOfGuid {
  IdentityUserRoleOfGuid({
    this.userId,
    this.roleId,
  });

  factory IdentityUserRoleOfGuid.fromJson(Map<String, dynamic> json) =>
      _$IdentityUserRoleOfGuidFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'roleId')
  final String? roleId;
  static const fromJsonFactory = _$IdentityUserRoleOfGuidFromJson;
  static const toJsonFactory = _$IdentityUserRoleOfGuidToJson;
  Map<String, dynamic> toJson() => _$IdentityUserRoleOfGuidToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdentityUserRoleOfGuid &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(roleId) ^
      runtimeType.hashCode;
}

extension $IdentityUserRoleOfGuidExtension on IdentityUserRoleOfGuid {
  IdentityUserRoleOfGuid copyWith({String? userId, String? roleId}) {
    return IdentityUserRoleOfGuid(
        userId: userId ?? this.userId, roleId: roleId ?? this.roleId);
  }

  IdentityUserRoleOfGuid copyWithWrapped(
      {Wrapped<String?>? userId, Wrapped<String?>? roleId}) {
    return IdentityUserRoleOfGuid(
        userId: (userId != null ? userId.value : this.userId),
        roleId: (roleId != null ? roleId.value : this.roleId));
  }
}

@JsonSerializable(explicitToJson: true)
class RefreshToken {
  RefreshToken({
    this.id,
    this.token,
    this.jwtId,
    this.isUsed,
    this.isRevoked,
    this.expiredDate,
    this.addedDate,
    this.userId,
    this.user,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'jwtId')
  final String? jwtId;
  @JsonKey(name: 'isUsed')
  final bool? isUsed;
  @JsonKey(name: 'isRevoked')
  final bool? isRevoked;
  @JsonKey(name: 'expiredDate')
  final DateTime? expiredDate;
  @JsonKey(name: 'addedDate')
  final DateTime? addedDate;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'user')
  final dynamic user;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$RefreshTokenFromJson;
  static const toJsonFactory = _$RefreshTokenToJson;
  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshToken &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.jwtId, jwtId) ||
                const DeepCollectionEquality().equals(other.jwtId, jwtId)) &&
            (identical(other.isUsed, isUsed) ||
                const DeepCollectionEquality().equals(other.isUsed, isUsed)) &&
            (identical(other.isRevoked, isRevoked) ||
                const DeepCollectionEquality()
                    .equals(other.isRevoked, isRevoked)) &&
            (identical(other.expiredDate, expiredDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiredDate, expiredDate)) &&
            (identical(other.addedDate, addedDate) ||
                const DeepCollectionEquality()
                    .equals(other.addedDate, addedDate)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(jwtId) ^
      const DeepCollectionEquality().hash(isUsed) ^
      const DeepCollectionEquality().hash(isRevoked) ^
      const DeepCollectionEquality().hash(expiredDate) ^
      const DeepCollectionEquality().hash(addedDate) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $RefreshTokenExtension on RefreshToken {
  RefreshToken copyWith(
      {String? id,
      String? token,
      String? jwtId,
      bool? isUsed,
      bool? isRevoked,
      DateTime? expiredDate,
      DateTime? addedDate,
      String? userId,
      dynamic user,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return RefreshToken(
        id: id ?? this.id,
        token: token ?? this.token,
        jwtId: jwtId ?? this.jwtId,
        isUsed: isUsed ?? this.isUsed,
        isRevoked: isRevoked ?? this.isRevoked,
        expiredDate: expiredDate ?? this.expiredDate,
        addedDate: addedDate ?? this.addedDate,
        userId: userId ?? this.userId,
        user: user ?? this.user,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  RefreshToken copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? token,
      Wrapped<String?>? jwtId,
      Wrapped<bool?>? isUsed,
      Wrapped<bool?>? isRevoked,
      Wrapped<DateTime?>? expiredDate,
      Wrapped<DateTime?>? addedDate,
      Wrapped<String?>? userId,
      Wrapped<dynamic>? user,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return RefreshToken(
        id: (id != null ? id.value : this.id),
        token: (token != null ? token.value : this.token),
        jwtId: (jwtId != null ? jwtId.value : this.jwtId),
        isUsed: (isUsed != null ? isUsed.value : this.isUsed),
        isRevoked: (isRevoked != null ? isRevoked.value : this.isRevoked),
        expiredDate:
            (expiredDate != null ? expiredDate.value : this.expiredDate),
        addedDate: (addedDate != null ? addedDate.value : this.addedDate),
        userId: (userId != null ? userId.value : this.userId),
        user: (user != null ? user.value : this.user),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class IdentityUserOfGuid {
  IdentityUserOfGuid({
    this.id,
    this.userName,
    this.normalizedUserName,
    this.email,
    this.normalizedEmail,
    this.emailConfirmed,
    this.passwordHash,
    this.securityStamp,
    this.concurrencyStamp,
    this.phoneNumber,
    this.phoneNumberConfirmed,
    this.twoFactorEnabled,
    this.lockoutEnd,
    this.lockoutEnabled,
    this.accessFailedCount,
  });

  factory IdentityUserOfGuid.fromJson(Map<String, dynamic> json) =>
      _$IdentityUserOfGuidFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'normalizedUserName')
  final String? normalizedUserName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'normalizedEmail')
  final String? normalizedEmail;
  @JsonKey(name: 'emailConfirmed')
  final bool? emailConfirmed;
  @JsonKey(name: 'passwordHash')
  final String? passwordHash;
  @JsonKey(name: 'securityStamp')
  final String? securityStamp;
  @JsonKey(name: 'concurrencyStamp')
  final String? concurrencyStamp;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'phoneNumberConfirmed')
  final bool? phoneNumberConfirmed;
  @JsonKey(name: 'twoFactorEnabled')
  final bool? twoFactorEnabled;
  @JsonKey(name: 'lockoutEnd')
  final DateTime? lockoutEnd;
  @JsonKey(name: 'lockoutEnabled')
  final bool? lockoutEnabled;
  @JsonKey(name: 'accessFailedCount')
  final int? accessFailedCount;
  static const fromJsonFactory = _$IdentityUserOfGuidFromJson;
  static const toJsonFactory = _$IdentityUserOfGuidToJson;
  Map<String, dynamic> toJson() => _$IdentityUserOfGuidToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdentityUserOfGuid &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.normalizedUserName, normalizedUserName) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedUserName, normalizedUserName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.normalizedEmail, normalizedEmail) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedEmail, normalizedEmail)) &&
            (identical(other.emailConfirmed, emailConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.emailConfirmed, emailConfirmed)) &&
            (identical(other.passwordHash, passwordHash) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHash, passwordHash)) &&
            (identical(other.securityStamp, securityStamp) ||
                const DeepCollectionEquality()
                    .equals(other.securityStamp, securityStamp)) &&
            (identical(other.concurrencyStamp, concurrencyStamp) ||
                const DeepCollectionEquality()
                    .equals(other.concurrencyStamp, concurrencyStamp)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.phoneNumberConfirmed, phoneNumberConfirmed) ||
                const DeepCollectionEquality().equals(
                    other.phoneNumberConfirmed, phoneNumberConfirmed)) &&
            (identical(other.twoFactorEnabled, twoFactorEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.twoFactorEnabled, twoFactorEnabled)) &&
            (identical(other.lockoutEnd, lockoutEnd) ||
                const DeepCollectionEquality()
                    .equals(other.lockoutEnd, lockoutEnd)) &&
            (identical(other.lockoutEnabled, lockoutEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.lockoutEnabled, lockoutEnabled)) &&
            (identical(other.accessFailedCount, accessFailedCount) ||
                const DeepCollectionEquality()
                    .equals(other.accessFailedCount, accessFailedCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(normalizedUserName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(normalizedEmail) ^
      const DeepCollectionEquality().hash(emailConfirmed) ^
      const DeepCollectionEquality().hash(passwordHash) ^
      const DeepCollectionEquality().hash(securityStamp) ^
      const DeepCollectionEquality().hash(concurrencyStamp) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneNumberConfirmed) ^
      const DeepCollectionEquality().hash(twoFactorEnabled) ^
      const DeepCollectionEquality().hash(lockoutEnd) ^
      const DeepCollectionEquality().hash(lockoutEnabled) ^
      const DeepCollectionEquality().hash(accessFailedCount) ^
      runtimeType.hashCode;
}

extension $IdentityUserOfGuidExtension on IdentityUserOfGuid {
  IdentityUserOfGuid copyWith(
      {String? id,
      String? userName,
      String? normalizedUserName,
      String? email,
      String? normalizedEmail,
      bool? emailConfirmed,
      String? passwordHash,
      String? securityStamp,
      String? concurrencyStamp,
      String? phoneNumber,
      bool? phoneNumberConfirmed,
      bool? twoFactorEnabled,
      DateTime? lockoutEnd,
      bool? lockoutEnabled,
      int? accessFailedCount}) {
    return IdentityUserOfGuid(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        normalizedUserName: normalizedUserName ?? this.normalizedUserName,
        email: email ?? this.email,
        normalizedEmail: normalizedEmail ?? this.normalizedEmail,
        emailConfirmed: emailConfirmed ?? this.emailConfirmed,
        passwordHash: passwordHash ?? this.passwordHash,
        securityStamp: securityStamp ?? this.securityStamp,
        concurrencyStamp: concurrencyStamp ?? this.concurrencyStamp,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        phoneNumberConfirmed: phoneNumberConfirmed ?? this.phoneNumberConfirmed,
        twoFactorEnabled: twoFactorEnabled ?? this.twoFactorEnabled,
        lockoutEnd: lockoutEnd ?? this.lockoutEnd,
        lockoutEnabled: lockoutEnabled ?? this.lockoutEnabled,
        accessFailedCount: accessFailedCount ?? this.accessFailedCount);
  }

  IdentityUserOfGuid copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? userName,
      Wrapped<String?>? normalizedUserName,
      Wrapped<String?>? email,
      Wrapped<String?>? normalizedEmail,
      Wrapped<bool?>? emailConfirmed,
      Wrapped<String?>? passwordHash,
      Wrapped<String?>? securityStamp,
      Wrapped<String?>? concurrencyStamp,
      Wrapped<String?>? phoneNumber,
      Wrapped<bool?>? phoneNumberConfirmed,
      Wrapped<bool?>? twoFactorEnabled,
      Wrapped<DateTime?>? lockoutEnd,
      Wrapped<bool?>? lockoutEnabled,
      Wrapped<int?>? accessFailedCount}) {
    return IdentityUserOfGuid(
        id: (id != null ? id.value : this.id),
        userName: (userName != null ? userName.value : this.userName),
        normalizedUserName: (normalizedUserName != null
            ? normalizedUserName.value
            : this.normalizedUserName),
        email: (email != null ? email.value : this.email),
        normalizedEmail: (normalizedEmail != null
            ? normalizedEmail.value
            : this.normalizedEmail),
        emailConfirmed: (emailConfirmed != null
            ? emailConfirmed.value
            : this.emailConfirmed),
        passwordHash:
            (passwordHash != null ? passwordHash.value : this.passwordHash),
        securityStamp:
            (securityStamp != null ? securityStamp.value : this.securityStamp),
        concurrencyStamp: (concurrencyStamp != null
            ? concurrencyStamp.value
            : this.concurrencyStamp),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        phoneNumberConfirmed: (phoneNumberConfirmed != null
            ? phoneNumberConfirmed.value
            : this.phoneNumberConfirmed),
        twoFactorEnabled: (twoFactorEnabled != null
            ? twoFactorEnabled.value
            : this.twoFactorEnabled),
        lockoutEnd: (lockoutEnd != null ? lockoutEnd.value : this.lockoutEnd),
        lockoutEnabled: (lockoutEnabled != null
            ? lockoutEnabled.value
            : this.lockoutEnabled),
        accessFailedCount: (accessFailedCount != null
            ? accessFailedCount.value
            : this.accessFailedCount));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserInfoCommand {
  UpdateUserInfoCommand({
    this.id,
    this.displayName,
    this.email,
    this.addresses,
  });

  factory UpdateUserInfoCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInfoCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'addresses', defaultValue: <ClientAddressCodeGenDto>[])
  final List<ClientAddressCodeGenDto>? addresses;
  static const fromJsonFactory = _$UpdateUserInfoCommandFromJson;
  static const toJsonFactory = _$UpdateUserInfoCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateUserInfoCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserInfoCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(addresses) ^
      runtimeType.hashCode;
}

extension $UpdateUserInfoCommandExtension on UpdateUserInfoCommand {
  UpdateUserInfoCommand copyWith(
      {String? id,
      String? displayName,
      String? email,
      List<ClientAddressCodeGenDto>? addresses}) {
    return UpdateUserInfoCommand(
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        addresses: addresses ?? this.addresses);
  }

  UpdateUserInfoCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? displayName,
      Wrapped<String?>? email,
      Wrapped<List<ClientAddressCodeGenDto>?>? addresses}) {
    return UpdateUserInfoCommand(
        id: (id != null ? id.value : this.id),
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        email: (email != null ? email.value : this.email),
        addresses: (addresses != null ? addresses.value : this.addresses));
  }
}

@JsonSerializable(explicitToJson: true)
class SetMainAddressCommand {
  SetMainAddressCommand({
    this.addressId,
  });

  factory SetMainAddressCommand.fromJson(Map<String, dynamic> json) =>
      _$SetMainAddressCommandFromJson(json);

  @JsonKey(name: 'addressId')
  final String? addressId;
  static const fromJsonFactory = _$SetMainAddressCommandFromJson;
  static const toJsonFactory = _$SetMainAddressCommandToJson;
  Map<String, dynamic> toJson() => _$SetMainAddressCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetMainAddressCommand &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addressId) ^ runtimeType.hashCode;
}

extension $SetMainAddressCommandExtension on SetMainAddressCommand {
  SetMainAddressCommand copyWith({String? addressId}) {
    return SetMainAddressCommand(addressId: addressId ?? this.addressId);
  }

  SetMainAddressCommand copyWithWrapped({Wrapped<String?>? addressId}) {
    return SetMainAddressCommand(
        addressId: (addressId != null ? addressId.value : this.addressId));
  }
}

@JsonSerializable(explicitToJson: true)
class AddPushTokenCommand {
  AddPushTokenCommand({
    this.token,
  });

  factory AddPushTokenCommand.fromJson(Map<String, dynamic> json) =>
      _$AddPushTokenCommandFromJson(json);

  @JsonKey(name: 'token')
  final String? token;
  static const fromJsonFactory = _$AddPushTokenCommandFromJson;
  static const toJsonFactory = _$AddPushTokenCommandToJson;
  Map<String, dynamic> toJson() => _$AddPushTokenCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddPushTokenCommand &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^ runtimeType.hashCode;
}

extension $AddPushTokenCommandExtension on AddPushTokenCommand {
  AddPushTokenCommand copyWith({String? token}) {
    return AddPushTokenCommand(token: token ?? this.token);
  }

  AddPushTokenCommand copyWithWrapped({Wrapped<String?>? token}) {
    return AddPushTokenCommand(
        token: (token != null ? token.value : this.token));
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteUserCommand {
  DeleteUserCommand();

  factory DeleteUserCommand.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserCommandFromJson(json);

  static const fromJsonFactory = _$DeleteUserCommandFromJson;
  static const toJsonFactory = _$DeleteUserCommandToJson;
  Map<String, dynamic> toJson() => _$DeleteUserCommandToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfAddressCodeGenDto {
  PaginatedListOfAddressCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfAddressCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfAddressCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <AddressCodeGenDto>[])
  final List<AddressCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfAddressCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfAddressCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfAddressCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfAddressCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfAddressCodeGenDtoExtension
    on PaginatedListOfAddressCodeGenDto {
  PaginatedListOfAddressCodeGenDto copyWith(
      {List<AddressCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfAddressCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfAddressCodeGenDto copyWithWrapped(
      {Wrapped<List<AddressCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfAddressCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAddressCommand {
  CreateAddressCommand({
    this.region,
    this.regionCode,
    this.district,
    this.districtCode,
    this.city,
    this.cityCode,
    this.street,
    this.streetCode,
    this.house,
    this.houseCode,
    this.flat,
    this.index,
    this.fiasCode,
    this.kladrCode,
    this.latitude,
    this.longitude,
    this.value,
    this.frontDoor,
    this.floor,
    this.doorPhone,
  });

  factory CreateAddressCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressCommandFromJson(json);

  @JsonKey(name: 'region')
  final String? region;
  @JsonKey(name: 'regionCode')
  final String? regionCode;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtCode')
  final String? districtCode;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'cityCode')
  final String? cityCode;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'streetCode')
  final String? streetCode;
  @JsonKey(name: 'house')
  final String? house;
  @JsonKey(name: 'houseCode')
  final String? houseCode;
  @JsonKey(name: 'flat')
  final String? flat;
  @JsonKey(name: 'index')
  final String? index;
  @JsonKey(name: 'fiasCode')
  final String? fiasCode;
  @JsonKey(name: 'kladrCode')
  final String? kladrCode;
  @JsonKey(name: 'latitude')
  final String? latitude;
  @JsonKey(name: 'longitude')
  final String? longitude;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'frontDoor')
  final String? frontDoor;
  @JsonKey(name: 'floor')
  final String? floor;
  @JsonKey(name: 'doorPhone')
  final String? doorPhone;
  static const fromJsonFactory = _$CreateAddressCommandFromJson;
  static const toJsonFactory = _$CreateAddressCommandToJson;
  Map<String, dynamic> toJson() => _$CreateAddressCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAddressCommand &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality()
                    .equals(other.cityCode, cityCode)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.streetCode, streetCode) ||
                const DeepCollectionEquality()
                    .equals(other.streetCode, streetCode)) &&
            (identical(other.house, house) ||
                const DeepCollectionEquality().equals(other.house, house)) &&
            (identical(other.houseCode, houseCode) ||
                const DeepCollectionEquality()
                    .equals(other.houseCode, houseCode)) &&
            (identical(other.flat, flat) ||
                const DeepCollectionEquality().equals(other.flat, flat)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.fiasCode, fiasCode) ||
                const DeepCollectionEquality()
                    .equals(other.fiasCode, fiasCode)) &&
            (identical(other.kladrCode, kladrCode) ||
                const DeepCollectionEquality()
                    .equals(other.kladrCode, kladrCode)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.frontDoor, frontDoor) ||
                const DeepCollectionEquality()
                    .equals(other.frontDoor, frontDoor)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.doorPhone, doorPhone) ||
                const DeepCollectionEquality()
                    .equals(other.doorPhone, doorPhone)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(streetCode) ^
      const DeepCollectionEquality().hash(house) ^
      const DeepCollectionEquality().hash(houseCode) ^
      const DeepCollectionEquality().hash(flat) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(fiasCode) ^
      const DeepCollectionEquality().hash(kladrCode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(frontDoor) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(doorPhone) ^
      runtimeType.hashCode;
}

extension $CreateAddressCommandExtension on CreateAddressCommand {
  CreateAddressCommand copyWith(
      {String? region,
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
      String? doorPhone}) {
    return CreateAddressCommand(
        region: region ?? this.region,
        regionCode: regionCode ?? this.regionCode,
        district: district ?? this.district,
        districtCode: districtCode ?? this.districtCode,
        city: city ?? this.city,
        cityCode: cityCode ?? this.cityCode,
        street: street ?? this.street,
        streetCode: streetCode ?? this.streetCode,
        house: house ?? this.house,
        houseCode: houseCode ?? this.houseCode,
        flat: flat ?? this.flat,
        index: index ?? this.index,
        fiasCode: fiasCode ?? this.fiasCode,
        kladrCode: kladrCode ?? this.kladrCode,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        value: value ?? this.value,
        frontDoor: frontDoor ?? this.frontDoor,
        floor: floor ?? this.floor,
        doorPhone: doorPhone ?? this.doorPhone);
  }

  CreateAddressCommand copyWithWrapped(
      {Wrapped<String?>? region,
      Wrapped<String?>? regionCode,
      Wrapped<String?>? district,
      Wrapped<String?>? districtCode,
      Wrapped<String?>? city,
      Wrapped<String?>? cityCode,
      Wrapped<String?>? street,
      Wrapped<String?>? streetCode,
      Wrapped<String?>? house,
      Wrapped<String?>? houseCode,
      Wrapped<String?>? flat,
      Wrapped<String?>? index,
      Wrapped<String?>? fiasCode,
      Wrapped<String?>? kladrCode,
      Wrapped<String?>? latitude,
      Wrapped<String?>? longitude,
      Wrapped<String?>? value,
      Wrapped<String?>? frontDoor,
      Wrapped<String?>? floor,
      Wrapped<String?>? doorPhone}) {
    return CreateAddressCommand(
        region: (region != null ? region.value : this.region),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        district: (district != null ? district.value : this.district),
        districtCode:
            (districtCode != null ? districtCode.value : this.districtCode),
        city: (city != null ? city.value : this.city),
        cityCode: (cityCode != null ? cityCode.value : this.cityCode),
        street: (street != null ? street.value : this.street),
        streetCode: (streetCode != null ? streetCode.value : this.streetCode),
        house: (house != null ? house.value : this.house),
        houseCode: (houseCode != null ? houseCode.value : this.houseCode),
        flat: (flat != null ? flat.value : this.flat),
        index: (index != null ? index.value : this.index),
        fiasCode: (fiasCode != null ? fiasCode.value : this.fiasCode),
        kladrCode: (kladrCode != null ? kladrCode.value : this.kladrCode),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        value: (value != null ? value.value : this.value),
        frontDoor: (frontDoor != null ? frontDoor.value : this.frontDoor),
        floor: (floor != null ? floor.value : this.floor),
        doorPhone: (doorPhone != null ? doorPhone.value : this.doorPhone));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAddressCustomFieldsCommand {
  UpdateAddressCustomFieldsCommand({
    this.id,
    this.frontDoor,
    this.floor,
    this.doorPhone,
    this.flat,
  });

  factory UpdateAddressCustomFieldsCommand.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateAddressCustomFieldsCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'frontDoor')
  final String? frontDoor;
  @JsonKey(name: 'floor')
  final String? floor;
  @JsonKey(name: 'doorPhone')
  final String? doorPhone;
  @JsonKey(name: 'flat')
  final String? flat;
  static const fromJsonFactory = _$UpdateAddressCustomFieldsCommandFromJson;
  static const toJsonFactory = _$UpdateAddressCustomFieldsCommandToJson;
  Map<String, dynamic> toJson() =>
      _$UpdateAddressCustomFieldsCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAddressCustomFieldsCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.frontDoor, frontDoor) ||
                const DeepCollectionEquality()
                    .equals(other.frontDoor, frontDoor)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.doorPhone, doorPhone) ||
                const DeepCollectionEquality()
                    .equals(other.doorPhone, doorPhone)) &&
            (identical(other.flat, flat) ||
                const DeepCollectionEquality().equals(other.flat, flat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(frontDoor) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(doorPhone) ^
      const DeepCollectionEquality().hash(flat) ^
      runtimeType.hashCode;
}

extension $UpdateAddressCustomFieldsCommandExtension
    on UpdateAddressCustomFieldsCommand {
  UpdateAddressCustomFieldsCommand copyWith(
      {String? id,
      String? frontDoor,
      String? floor,
      String? doorPhone,
      String? flat}) {
    return UpdateAddressCustomFieldsCommand(
        id: id ?? this.id,
        frontDoor: frontDoor ?? this.frontDoor,
        floor: floor ?? this.floor,
        doorPhone: doorPhone ?? this.doorPhone,
        flat: flat ?? this.flat);
  }

  UpdateAddressCustomFieldsCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? frontDoor,
      Wrapped<String?>? floor,
      Wrapped<String?>? doorPhone,
      Wrapped<String?>? flat}) {
    return UpdateAddressCustomFieldsCommand(
        id: (id != null ? id.value : this.id),
        frontDoor: (frontDoor != null ? frontDoor.value : this.frontDoor),
        floor: (floor != null ? floor.value : this.floor),
        doorPhone: (doorPhone != null ? doorPhone.value : this.doorPhone),
        flat: (flat != null ? flat.value : this.flat));
  }
}

@JsonSerializable(explicitToJson: true)
class RequestCodeCommand {
  RequestCodeCommand({
    this.phoneNumber,
  });

  factory RequestCodeCommand.fromJson(Map<String, dynamic> json) =>
      _$RequestCodeCommandFromJson(json);

  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  static const fromJsonFactory = _$RequestCodeCommandFromJson;
  static const toJsonFactory = _$RequestCodeCommandToJson;
  Map<String, dynamic> toJson() => _$RequestCodeCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestCodeCommand &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^ runtimeType.hashCode;
}

extension $RequestCodeCommandExtension on RequestCodeCommand {
  RequestCodeCommand copyWith({String? phoneNumber}) {
    return RequestCodeCommand(phoneNumber: phoneNumber ?? this.phoneNumber);
  }

  RequestCodeCommand copyWithWrapped({Wrapped<String?>? phoneNumber}) {
    return RequestCodeCommand(
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthResponse {
  AuthResponse({
    this.id,
    this.displayName,
    this.phone,
    this.roles,
    this.token,
    this.refreshToken,
    this.expiresIn,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'roles')
  final String? roles;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'expiresIn')
  final DateTime? expiresIn;
  static const fromJsonFactory = _$AuthResponseFromJson;
  static const toJsonFactory = _$AuthResponseToJson;
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      runtimeType.hashCode;
}

extension $AuthResponseExtension on AuthResponse {
  AuthResponse copyWith(
      {String? id,
      String? displayName,
      String? phone,
      String? roles,
      String? token,
      String? refreshToken,
      DateTime? expiresIn}) {
    return AuthResponse(
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        phone: phone ?? this.phone,
        roles: roles ?? this.roles,
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
        expiresIn: expiresIn ?? this.expiresIn);
  }

  AuthResponse copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? displayName,
      Wrapped<String?>? phone,
      Wrapped<String?>? roles,
      Wrapped<String?>? token,
      Wrapped<String?>? refreshToken,
      Wrapped<DateTime?>? expiresIn}) {
    return AuthResponse(
        id: (id != null ? id.value : this.id),
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        phone: (phone != null ? phone.value : this.phone),
        roles: (roles != null ? roles.value : this.roles),
        token: (token != null ? token.value : this.token),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn));
  }
}

@JsonSerializable(explicitToJson: true)
class ConfirmPhoneCommand {
  ConfirmPhoneCommand({
    this.phoneNumber,
    this.code,
  });

  factory ConfirmPhoneCommand.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPhoneCommandFromJson(json);

  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'code')
  final String? code;
  static const fromJsonFactory = _$ConfirmPhoneCommandFromJson;
  static const toJsonFactory = _$ConfirmPhoneCommandToJson;
  Map<String, dynamic> toJson() => _$ConfirmPhoneCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPhoneCommand &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $ConfirmPhoneCommandExtension on ConfirmPhoneCommand {
  ConfirmPhoneCommand copyWith({String? phoneNumber, String? code}) {
    return ConfirmPhoneCommand(
        phoneNumber: phoneNumber ?? this.phoneNumber, code: code ?? this.code);
  }

  ConfirmPhoneCommand copyWithWrapped(
      {Wrapped<String?>? phoneNumber, Wrapped<String?>? code}) {
    return ConfirmPhoneCommand(
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class RefreshTokenCommand {
  RefreshTokenCommand({
    this.token,
    this.refreshToken,
  });

  factory RefreshTokenCommand.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenCommandFromJson(json);

  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  static const fromJsonFactory = _$RefreshTokenCommandFromJson;
  static const toJsonFactory = _$RefreshTokenCommandToJson;
  Map<String, dynamic> toJson() => _$RefreshTokenCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshTokenCommand &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $RefreshTokenCommandExtension on RefreshTokenCommand {
  RefreshTokenCommand copyWith({String? token, String? refreshToken}) {
    return RefreshTokenCommand(
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  RefreshTokenCommand copyWithWrapped(
      {Wrapped<String?>? token, Wrapped<String?>? refreshToken}) {
    return RefreshTokenCommand(
        token: (token != null ? token.value : this.token),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfCategoryCodeGenDto {
  PaginatedListOfCategoryCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfCategoryCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfCategoryCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <CategoryCodeGenDto>[])
  final List<CategoryCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfCategoryCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfCategoryCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfCategoryCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfCategoryCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfCategoryCodeGenDtoExtension
    on PaginatedListOfCategoryCodeGenDto {
  PaginatedListOfCategoryCodeGenDto copyWith(
      {List<CategoryCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfCategoryCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfCategoryCodeGenDto copyWithWrapped(
      {Wrapped<List<CategoryCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfCategoryCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryCodeGenDto {
  CategoryCodeGenDto({
    this.id,
    this.name,
    this.description,
    this.order,
    this.imageId,
    this.isVisible,
    this.parentCategoryId,
    this.parentCategory,
    this.restaurantId,
    this.restaurant,
    this.childCategories,
    this.products,
    this.productSizes,
  });

  factory CategoryCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'isVisible')
  final bool? isVisible;
  @JsonKey(name: 'parentCategoryId')
  final String? parentCategoryId;
  @JsonKey(name: 'parentCategory')
  final dynamic parentCategory;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'restaurant')
  final dynamic restaurant;
  @JsonKey(name: 'childCategories', defaultValue: <CategoryCodeGenDto>[])
  final List<CategoryCodeGenDto>? childCategories;
  @JsonKey(name: 'products', defaultValue: <ProductCodeGenDto>[])
  final List<ProductCodeGenDto>? products;
  @JsonKey(name: 'productSizes', defaultValue: <ProductSizeCodeGenDto>[])
  final List<ProductSizeCodeGenDto>? productSizes;
  static const fromJsonFactory = _$CategoryCodeGenDtoFromJson;
  static const toJsonFactory = _$CategoryCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$CategoryCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategoryId, parentCategoryId)) &&
            (identical(other.parentCategory, parentCategory) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategory, parentCategory)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.childCategories, childCategories) ||
                const DeepCollectionEquality()
                    .equals(other.childCategories, childCategories)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.productSizes, productSizes) ||
                const DeepCollectionEquality()
                    .equals(other.productSizes, productSizes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(isVisible) ^
      const DeepCollectionEquality().hash(parentCategoryId) ^
      const DeepCollectionEquality().hash(parentCategory) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(childCategories) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(productSizes) ^
      runtimeType.hashCode;
}

extension $CategoryCodeGenDtoExtension on CategoryCodeGenDto {
  CategoryCodeGenDto copyWith(
      {String? id,
      String? name,
      String? description,
      int? order,
      String? imageId,
      bool? isVisible,
      String? parentCategoryId,
      dynamic parentCategory,
      String? restaurantId,
      dynamic restaurant,
      List<CategoryCodeGenDto>? childCategories,
      List<ProductCodeGenDto>? products,
      List<ProductSizeCodeGenDto>? productSizes}) {
    return CategoryCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        order: order ?? this.order,
        imageId: imageId ?? this.imageId,
        isVisible: isVisible ?? this.isVisible,
        parentCategoryId: parentCategoryId ?? this.parentCategoryId,
        parentCategory: parentCategory ?? this.parentCategory,
        restaurantId: restaurantId ?? this.restaurantId,
        restaurant: restaurant ?? this.restaurant,
        childCategories: childCategories ?? this.childCategories,
        products: products ?? this.products,
        productSizes: productSizes ?? this.productSizes);
  }

  CategoryCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<int?>? order,
      Wrapped<String?>? imageId,
      Wrapped<bool?>? isVisible,
      Wrapped<String?>? parentCategoryId,
      Wrapped<dynamic>? parentCategory,
      Wrapped<String?>? restaurantId,
      Wrapped<dynamic>? restaurant,
      Wrapped<List<CategoryCodeGenDto>?>? childCategories,
      Wrapped<List<ProductCodeGenDto>?>? products,
      Wrapped<List<ProductSizeCodeGenDto>?>? productSizes}) {
    return CategoryCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        order: (order != null ? order.value : this.order),
        imageId: (imageId != null ? imageId.value : this.imageId),
        isVisible: (isVisible != null ? isVisible.value : this.isVisible),
        parentCategoryId: (parentCategoryId != null
            ? parentCategoryId.value
            : this.parentCategoryId),
        parentCategory: (parentCategory != null
            ? parentCategory.value
            : this.parentCategory),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        restaurant: (restaurant != null ? restaurant.value : this.restaurant),
        childCategories: (childCategories != null
            ? childCategories.value
            : this.childCategories),
        products: (products != null ? products.value : this.products),
        productSizes:
            (productSizes != null ? productSizes.value : this.productSizes));
  }
}

@JsonSerializable(explicitToJson: true)
class RestaurantCodeGenDto {
  RestaurantCodeGenDto({
    this.id,
    this.name,
    this.logoId,
    this.description,
    this.isActive,
    this.phone,
    this.vk,
    this.facebook,
    this.instagram,
    this.minimalOrderPrice,
    this.normalDeliveryTime,
    this.deliveryTime,
    this.takeout,
    this.addressId,
    this.address,
    this.workingTimes,
    this.employees,
  });

  factory RestaurantCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'logoId')
  final String? logoId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'vk')
  final String? vk;
  @JsonKey(name: 'facebook')
  final String? facebook;
  @JsonKey(name: 'instagram')
  final String? instagram;
  @JsonKey(name: 'minimalOrderPrice')
  final double? minimalOrderPrice;
  @JsonKey(name: 'normalDeliveryTime')
  final double? normalDeliveryTime;
  @JsonKey(name: 'deliveryTime')
  final double? deliveryTime;
  @JsonKey(name: 'takeout')
  final bool? takeout;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'address')
  final dynamic address;
  @JsonKey(
      name: 'workingTimes', defaultValue: <RestaurantWorkingTimeCodeGenDto>[])
  final List<RestaurantWorkingTimeCodeGenDto>? workingTimes;
  @JsonKey(name: 'employees', defaultValue: <ApplicationUserCodeGenDto>[])
  final List<ApplicationUserCodeGenDto>? employees;
  static const fromJsonFactory = _$RestaurantCodeGenDtoFromJson;
  static const toJsonFactory = _$RestaurantCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$RestaurantCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestaurantCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.logoId, logoId) ||
                const DeepCollectionEquality().equals(other.logoId, logoId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.vk, vk) ||
                const DeepCollectionEquality().equals(other.vk, vk)) &&
            (identical(other.facebook, facebook) ||
                const DeepCollectionEquality()
                    .equals(other.facebook, facebook)) &&
            (identical(other.instagram, instagram) ||
                const DeepCollectionEquality()
                    .equals(other.instagram, instagram)) &&
            (identical(other.minimalOrderPrice, minimalOrderPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minimalOrderPrice, minimalOrderPrice)) &&
            (identical(other.normalDeliveryTime, normalDeliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.normalDeliveryTime, normalDeliveryTime)) &&
            (identical(other.deliveryTime, deliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryTime, deliveryTime)) &&
            (identical(other.takeout, takeout) ||
                const DeepCollectionEquality()
                    .equals(other.takeout, takeout)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.workingTimes, workingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.workingTimes, workingTimes)) &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(logoId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(vk) ^
      const DeepCollectionEquality().hash(facebook) ^
      const DeepCollectionEquality().hash(instagram) ^
      const DeepCollectionEquality().hash(minimalOrderPrice) ^
      const DeepCollectionEquality().hash(normalDeliveryTime) ^
      const DeepCollectionEquality().hash(deliveryTime) ^
      const DeepCollectionEquality().hash(takeout) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(workingTimes) ^
      const DeepCollectionEquality().hash(employees) ^
      runtimeType.hashCode;
}

extension $RestaurantCodeGenDtoExtension on RestaurantCodeGenDto {
  RestaurantCodeGenDto copyWith(
      {String? id,
      String? name,
      String? logoId,
      String? description,
      bool? isActive,
      String? phone,
      String? vk,
      String? facebook,
      String? instagram,
      double? minimalOrderPrice,
      double? normalDeliveryTime,
      double? deliveryTime,
      bool? takeout,
      String? addressId,
      dynamic address,
      List<RestaurantWorkingTimeCodeGenDto>? workingTimes,
      List<ApplicationUserCodeGenDto>? employees}) {
    return RestaurantCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        logoId: logoId ?? this.logoId,
        description: description ?? this.description,
        isActive: isActive ?? this.isActive,
        phone: phone ?? this.phone,
        vk: vk ?? this.vk,
        facebook: facebook ?? this.facebook,
        instagram: instagram ?? this.instagram,
        minimalOrderPrice: minimalOrderPrice ?? this.minimalOrderPrice,
        normalDeliveryTime: normalDeliveryTime ?? this.normalDeliveryTime,
        deliveryTime: deliveryTime ?? this.deliveryTime,
        takeout: takeout ?? this.takeout,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        workingTimes: workingTimes ?? this.workingTimes,
        employees: employees ?? this.employees);
  }

  RestaurantCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? logoId,
      Wrapped<String?>? description,
      Wrapped<bool?>? isActive,
      Wrapped<String?>? phone,
      Wrapped<String?>? vk,
      Wrapped<String?>? facebook,
      Wrapped<String?>? instagram,
      Wrapped<double?>? minimalOrderPrice,
      Wrapped<double?>? normalDeliveryTime,
      Wrapped<double?>? deliveryTime,
      Wrapped<bool?>? takeout,
      Wrapped<String?>? addressId,
      Wrapped<dynamic>? address,
      Wrapped<List<RestaurantWorkingTimeCodeGenDto>?>? workingTimes,
      Wrapped<List<ApplicationUserCodeGenDto>?>? employees}) {
    return RestaurantCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        logoId: (logoId != null ? logoId.value : this.logoId),
        description:
            (description != null ? description.value : this.description),
        isActive: (isActive != null ? isActive.value : this.isActive),
        phone: (phone != null ? phone.value : this.phone),
        vk: (vk != null ? vk.value : this.vk),
        facebook: (facebook != null ? facebook.value : this.facebook),
        instagram: (instagram != null ? instagram.value : this.instagram),
        minimalOrderPrice: (minimalOrderPrice != null
            ? minimalOrderPrice.value
            : this.minimalOrderPrice),
        normalDeliveryTime: (normalDeliveryTime != null
            ? normalDeliveryTime.value
            : this.normalDeliveryTime),
        deliveryTime:
            (deliveryTime != null ? deliveryTime.value : this.deliveryTime),
        takeout: (takeout != null ? takeout.value : this.takeout),
        addressId: (addressId != null ? addressId.value : this.addressId),
        address: (address != null ? address.value : this.address),
        workingTimes:
            (workingTimes != null ? workingTimes.value : this.workingTimes),
        employees: (employees != null ? employees.value : this.employees));
  }
}

@JsonSerializable(explicitToJson: true)
class RestaurantWorkingTimeCodeGenDto {
  RestaurantWorkingTimeCodeGenDto({
    this.id,
    this.dayOfWeek,
    this.opensAt,
    this.acceptsOrdersUntil,
    this.closesAt,
    this.restaurantId,
  });

  factory RestaurantWorkingTimeCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantWorkingTimeCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: dayOfWeekToJson,
    fromJson: dayOfWeekFromJson,
  )
  final enums.DayOfWeek? dayOfWeek;
  @JsonKey(name: 'opensAt')
  final String? opensAt;
  @JsonKey(name: 'acceptsOrdersUntil')
  final String? acceptsOrdersUntil;
  @JsonKey(name: 'closesAt')
  final String? closesAt;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  static const fromJsonFactory = _$RestaurantWorkingTimeCodeGenDtoFromJson;
  static const toJsonFactory = _$RestaurantWorkingTimeCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$RestaurantWorkingTimeCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestaurantWorkingTimeCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.opensAt, opensAt) ||
                const DeepCollectionEquality()
                    .equals(other.opensAt, opensAt)) &&
            (identical(other.acceptsOrdersUntil, acceptsOrdersUntil) ||
                const DeepCollectionEquality()
                    .equals(other.acceptsOrdersUntil, acceptsOrdersUntil)) &&
            (identical(other.closesAt, closesAt) ||
                const DeepCollectionEquality()
                    .equals(other.closesAt, closesAt)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(opensAt) ^
      const DeepCollectionEquality().hash(acceptsOrdersUntil) ^
      const DeepCollectionEquality().hash(closesAt) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      runtimeType.hashCode;
}

extension $RestaurantWorkingTimeCodeGenDtoExtension
    on RestaurantWorkingTimeCodeGenDto {
  RestaurantWorkingTimeCodeGenDto copyWith(
      {String? id,
      enums.DayOfWeek? dayOfWeek,
      String? opensAt,
      String? acceptsOrdersUntil,
      String? closesAt,
      String? restaurantId}) {
    return RestaurantWorkingTimeCodeGenDto(
        id: id ?? this.id,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        opensAt: opensAt ?? this.opensAt,
        acceptsOrdersUntil: acceptsOrdersUntil ?? this.acceptsOrdersUntil,
        closesAt: closesAt ?? this.closesAt,
        restaurantId: restaurantId ?? this.restaurantId);
  }

  RestaurantWorkingTimeCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.DayOfWeek?>? dayOfWeek,
      Wrapped<String?>? opensAt,
      Wrapped<String?>? acceptsOrdersUntil,
      Wrapped<String?>? closesAt,
      Wrapped<String?>? restaurantId}) {
    return RestaurantWorkingTimeCodeGenDto(
        id: (id != null ? id.value : this.id),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        opensAt: (opensAt != null ? opensAt.value : this.opensAt),
        acceptsOrdersUntil: (acceptsOrdersUntil != null
            ? acceptsOrdersUntil.value
            : this.acceptsOrdersUntil),
        closesAt: (closesAt != null ? closesAt.value : this.closesAt),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductCodeGenDto {
  ProductCodeGenDto({
    this.id,
    this.name,
    this.imageId,
    this.description,
    this.price,
    this.weight,
    this.isComplex,
    this.categoryId,
    this.category,
    this.productTags,
    this.productCompositions,
    this.productIngredients,
    this.productSizePrices,
  });

  factory ProductCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'isComplex')
  final bool? isComplex;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'category')
  final dynamic category;
  @JsonKey(name: 'productTags', defaultValue: <ProductTagCodeGenDto>[])
  final List<ProductTagCodeGenDto>? productTags;
  @JsonKey(
      name: 'productCompositions',
      defaultValue: <ProductCompositionCodeGenDto>[])
  final List<ProductCompositionCodeGenDto>? productCompositions;
  @JsonKey(
      name: 'productIngredients', defaultValue: <ProductIngredientCodeGenDto>[])
  final List<ProductIngredientCodeGenDto>? productIngredients;
  @JsonKey(
      name: 'productSizePrices', defaultValue: <ProductSizePriceCodeGenDto>[])
  final List<ProductSizePriceCodeGenDto>? productSizePrices;
  static const fromJsonFactory = _$ProductCodeGenDtoFromJson;
  static const toJsonFactory = _$ProductCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ProductCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.isComplex, isComplex) ||
                const DeepCollectionEquality()
                    .equals(other.isComplex, isComplex)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.productTags, productTags) ||
                const DeepCollectionEquality()
                    .equals(other.productTags, productTags)) &&
            (identical(other.productCompositions, productCompositions) ||
                const DeepCollectionEquality()
                    .equals(other.productCompositions, productCompositions)) &&
            (identical(other.productIngredients, productIngredients) ||
                const DeepCollectionEquality()
                    .equals(other.productIngredients, productIngredients)) &&
            (identical(other.productSizePrices, productSizePrices) ||
                const DeepCollectionEquality()
                    .equals(other.productSizePrices, productSizePrices)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(isComplex) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(productTags) ^
      const DeepCollectionEquality().hash(productCompositions) ^
      const DeepCollectionEquality().hash(productIngredients) ^
      const DeepCollectionEquality().hash(productSizePrices) ^
      runtimeType.hashCode;
}

extension $ProductCodeGenDtoExtension on ProductCodeGenDto {
  ProductCodeGenDto copyWith(
      {String? id,
      String? name,
      String? imageId,
      String? description,
      double? price,
      double? weight,
      bool? isComplex,
      String? categoryId,
      dynamic category,
      List<ProductTagCodeGenDto>? productTags,
      List<ProductCompositionCodeGenDto>? productCompositions,
      List<ProductIngredientCodeGenDto>? productIngredients,
      List<ProductSizePriceCodeGenDto>? productSizePrices}) {
    return ProductCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        imageId: imageId ?? this.imageId,
        description: description ?? this.description,
        price: price ?? this.price,
        weight: weight ?? this.weight,
        isComplex: isComplex ?? this.isComplex,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        productTags: productTags ?? this.productTags,
        productCompositions: productCompositions ?? this.productCompositions,
        productIngredients: productIngredients ?? this.productIngredients,
        productSizePrices: productSizePrices ?? this.productSizePrices);
  }

  ProductCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? imageId,
      Wrapped<String?>? description,
      Wrapped<double?>? price,
      Wrapped<double?>? weight,
      Wrapped<bool?>? isComplex,
      Wrapped<String?>? categoryId,
      Wrapped<dynamic>? category,
      Wrapped<List<ProductTagCodeGenDto>?>? productTags,
      Wrapped<List<ProductCompositionCodeGenDto>?>? productCompositions,
      Wrapped<List<ProductIngredientCodeGenDto>?>? productIngredients,
      Wrapped<List<ProductSizePriceCodeGenDto>?>? productSizePrices}) {
    return ProductCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId),
        description:
            (description != null ? description.value : this.description),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight),
        isComplex: (isComplex != null ? isComplex.value : this.isComplex),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        category: (category != null ? category.value : this.category),
        productTags:
            (productTags != null ? productTags.value : this.productTags),
        productCompositions: (productCompositions != null
            ? productCompositions.value
            : this.productCompositions),
        productIngredients: (productIngredients != null
            ? productIngredients.value
            : this.productIngredients),
        productSizePrices: (productSizePrices != null
            ? productSizePrices.value
            : this.productSizePrices));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductTagCodeGenDto {
  ProductTagCodeGenDto({
    this.productId,
    this.tagId,
    this.tag,
  });

  factory ProductTagCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ProductTagCodeGenDtoFromJson(json);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'tagId')
  final String? tagId;
  @JsonKey(name: 'tag')
  final dynamic tag;
  static const fromJsonFactory = _$ProductTagCodeGenDtoFromJson;
  static const toJsonFactory = _$ProductTagCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ProductTagCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductTagCodeGenDto &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(tag) ^
      runtimeType.hashCode;
}

extension $ProductTagCodeGenDtoExtension on ProductTagCodeGenDto {
  ProductTagCodeGenDto copyWith(
      {String? productId, String? tagId, dynamic tag}) {
    return ProductTagCodeGenDto(
        productId: productId ?? this.productId,
        tagId: tagId ?? this.tagId,
        tag: tag ?? this.tag);
  }

  ProductTagCodeGenDto copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<String?>? tagId,
      Wrapped<dynamic>? tag}) {
    return ProductTagCodeGenDto(
        productId: (productId != null ? productId.value : this.productId),
        tagId: (tagId != null ? tagId.value : this.tagId),
        tag: (tag != null ? tag.value : this.tag));
  }
}

@JsonSerializable(explicitToJson: true)
class TagCodeGenDto {
  TagCodeGenDto({
    this.id,
    this.name,
    this.imageId,
  });

  factory TagCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$TagCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  static const fromJsonFactory = _$TagCodeGenDtoFromJson;
  static const toJsonFactory = _$TagCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$TagCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TagCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality().equals(other.imageId, imageId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      runtimeType.hashCode;
}

extension $TagCodeGenDtoExtension on TagCodeGenDto {
  TagCodeGenDto copyWith({String? id, String? name, String? imageId}) {
    return TagCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        imageId: imageId ?? this.imageId);
  }

  TagCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? imageId}) {
    return TagCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductCompositionCodeGenDto {
  ProductCompositionCodeGenDto({
    this.mainProductId,
    this.mainProduct,
    this.compositeProductId,
    this.compositeProduct,
  });

  factory ProductCompositionCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCompositionCodeGenDtoFromJson(json);

  @JsonKey(name: 'mainProductId')
  final String? mainProductId;
  @JsonKey(name: 'mainProduct')
  final dynamic mainProduct;
  @JsonKey(name: 'compositeProductId')
  final String? compositeProductId;
  @JsonKey(name: 'compositeProduct')
  final dynamic compositeProduct;
  static const fromJsonFactory = _$ProductCompositionCodeGenDtoFromJson;
  static const toJsonFactory = _$ProductCompositionCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ProductCompositionCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductCompositionCodeGenDto &&
            (identical(other.mainProductId, mainProductId) ||
                const DeepCollectionEquality()
                    .equals(other.mainProductId, mainProductId)) &&
            (identical(other.mainProduct, mainProduct) ||
                const DeepCollectionEquality()
                    .equals(other.mainProduct, mainProduct)) &&
            (identical(other.compositeProductId, compositeProductId) ||
                const DeepCollectionEquality()
                    .equals(other.compositeProductId, compositeProductId)) &&
            (identical(other.compositeProduct, compositeProduct) ||
                const DeepCollectionEquality()
                    .equals(other.compositeProduct, compositeProduct)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mainProductId) ^
      const DeepCollectionEquality().hash(mainProduct) ^
      const DeepCollectionEquality().hash(compositeProductId) ^
      const DeepCollectionEquality().hash(compositeProduct) ^
      runtimeType.hashCode;
}

extension $ProductCompositionCodeGenDtoExtension
    on ProductCompositionCodeGenDto {
  ProductCompositionCodeGenDto copyWith(
      {String? mainProductId,
      dynamic mainProduct,
      String? compositeProductId,
      dynamic compositeProduct}) {
    return ProductCompositionCodeGenDto(
        mainProductId: mainProductId ?? this.mainProductId,
        mainProduct: mainProduct ?? this.mainProduct,
        compositeProductId: compositeProductId ?? this.compositeProductId,
        compositeProduct: compositeProduct ?? this.compositeProduct);
  }

  ProductCompositionCodeGenDto copyWithWrapped(
      {Wrapped<String?>? mainProductId,
      Wrapped<dynamic>? mainProduct,
      Wrapped<String?>? compositeProductId,
      Wrapped<dynamic>? compositeProduct}) {
    return ProductCompositionCodeGenDto(
        mainProductId:
            (mainProductId != null ? mainProductId.value : this.mainProductId),
        mainProduct:
            (mainProduct != null ? mainProduct.value : this.mainProduct),
        compositeProductId: (compositeProductId != null
            ? compositeProductId.value
            : this.compositeProductId),
        compositeProduct: (compositeProduct != null
            ? compositeProduct.value
            : this.compositeProduct));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductIngredientCodeGenDto {
  ProductIngredientCodeGenDto({
    this.productId,
    this.ingredientId,
    this.ingredient,
  });

  factory ProductIngredientCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ProductIngredientCodeGenDtoFromJson(json);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'ingredientId')
  final String? ingredientId;
  @JsonKey(name: 'ingredient')
  final dynamic ingredient;
  static const fromJsonFactory = _$ProductIngredientCodeGenDtoFromJson;
  static const toJsonFactory = _$ProductIngredientCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ProductIngredientCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductIngredientCodeGenDto &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.ingredientId, ingredientId) ||
                const DeepCollectionEquality()
                    .equals(other.ingredientId, ingredientId)) &&
            (identical(other.ingredient, ingredient) ||
                const DeepCollectionEquality()
                    .equals(other.ingredient, ingredient)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(ingredientId) ^
      const DeepCollectionEquality().hash(ingredient) ^
      runtimeType.hashCode;
}

extension $ProductIngredientCodeGenDtoExtension on ProductIngredientCodeGenDto {
  ProductIngredientCodeGenDto copyWith(
      {String? productId, String? ingredientId, dynamic ingredient}) {
    return ProductIngredientCodeGenDto(
        productId: productId ?? this.productId,
        ingredientId: ingredientId ?? this.ingredientId,
        ingredient: ingredient ?? this.ingredient);
  }

  ProductIngredientCodeGenDto copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<String?>? ingredientId,
      Wrapped<dynamic>? ingredient}) {
    return ProductIngredientCodeGenDto(
        productId: (productId != null ? productId.value : this.productId),
        ingredientId:
            (ingredientId != null ? ingredientId.value : this.ingredientId),
        ingredient: (ingredient != null ? ingredient.value : this.ingredient));
  }
}

@JsonSerializable(explicitToJson: true)
class IngredientCodeGenDto {
  IngredientCodeGenDto({
    this.id,
    this.name,
    this.description,
  });

  factory IngredientCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$IngredientCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$IngredientCodeGenDtoFromJson;
  static const toJsonFactory = _$IngredientCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$IngredientCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IngredientCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $IngredientCodeGenDtoExtension on IngredientCodeGenDto {
  IngredientCodeGenDto copyWith(
      {String? id, String? name, String? description}) {
    return IngredientCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description);
  }

  IngredientCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description}) {
    return IngredientCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSizePriceCodeGenDto {
  ProductSizePriceCodeGenDto({
    this.productId,
    this.product,
    this.productSizeId,
    this.productSize,
    this.price,
    this.weight,
  });

  factory ProductSizePriceCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ProductSizePriceCodeGenDtoFromJson(json);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'productSize')
  final dynamic productSize;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  static const fromJsonFactory = _$ProductSizePriceCodeGenDtoFromJson;
  static const toJsonFactory = _$ProductSizePriceCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ProductSizePriceCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSizePriceCodeGenDto &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.productSize, productSize) ||
                const DeepCollectionEquality()
                    .equals(other.productSize, productSize)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(productSize) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      runtimeType.hashCode;
}

extension $ProductSizePriceCodeGenDtoExtension on ProductSizePriceCodeGenDto {
  ProductSizePriceCodeGenDto copyWith(
      {String? productId,
      dynamic product,
      String? productSizeId,
      dynamic productSize,
      double? price,
      double? weight}) {
    return ProductSizePriceCodeGenDto(
        productId: productId ?? this.productId,
        product: product ?? this.product,
        productSizeId: productSizeId ?? this.productSizeId,
        productSize: productSize ?? this.productSize,
        price: price ?? this.price,
        weight: weight ?? this.weight);
  }

  ProductSizePriceCodeGenDto copyWithWrapped(
      {Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? productSizeId,
      Wrapped<dynamic>? productSize,
      Wrapped<double?>? price,
      Wrapped<double?>? weight}) {
    return ProductSizePriceCodeGenDto(
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        productSize:
            (productSize != null ? productSize.value : this.productSize),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSizeCodeGenDto {
  ProductSizeCodeGenDto({
    this.id,
    this.categoryId,
    this.category,
    this.name,
    this.productSizePrices,
  });

  factory ProductSizeCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'category')
  final dynamic category;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(
      name: 'productSizePrices', defaultValue: <ProductSizePriceCodeGenDto>[])
  final List<ProductSizePriceCodeGenDto>? productSizePrices;
  static const fromJsonFactory = _$ProductSizeCodeGenDtoFromJson;
  static const toJsonFactory = _$ProductSizeCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ProductSizeCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSizeCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productSizePrices, productSizePrices) ||
                const DeepCollectionEquality()
                    .equals(other.productSizePrices, productSizePrices)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productSizePrices) ^
      runtimeType.hashCode;
}

extension $ProductSizeCodeGenDtoExtension on ProductSizeCodeGenDto {
  ProductSizeCodeGenDto copyWith(
      {String? id,
      String? categoryId,
      dynamic category,
      String? name,
      List<ProductSizePriceCodeGenDto>? productSizePrices}) {
    return ProductSizeCodeGenDto(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        name: name ?? this.name,
        productSizePrices: productSizePrices ?? this.productSizePrices);
  }

  ProductSizeCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? categoryId,
      Wrapped<dynamic>? category,
      Wrapped<String?>? name,
      Wrapped<List<ProductSizePriceCodeGenDto>?>? productSizePrices}) {
    return ProductSizeCodeGenDto(
        id: (id != null ? id.value : this.id),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        category: (category != null ? category.value : this.category),
        name: (name != null ? name.value : this.name),
        productSizePrices: (productSizePrices != null
            ? productSizePrices.value
            : this.productSizePrices));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateCategoryCommand {
  CreateCategoryCommand({
    this.name,
    this.description,
    this.order,
    this.imageId,
    this.isVisible,
    this.parentCategoryId,
    this.restaurantId,
  });

  factory CreateCategoryCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'isVisible')
  final bool? isVisible;
  @JsonKey(name: 'parentCategoryId')
  final String? parentCategoryId;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  static const fromJsonFactory = _$CreateCategoryCommandFromJson;
  static const toJsonFactory = _$CreateCategoryCommandToJson;
  Map<String, dynamic> toJson() => _$CreateCategoryCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCategoryCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategoryId, parentCategoryId)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(isVisible) ^
      const DeepCollectionEquality().hash(parentCategoryId) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      runtimeType.hashCode;
}

extension $CreateCategoryCommandExtension on CreateCategoryCommand {
  CreateCategoryCommand copyWith(
      {String? name,
      String? description,
      int? order,
      String? imageId,
      bool? isVisible,
      String? parentCategoryId,
      String? restaurantId}) {
    return CreateCategoryCommand(
        name: name ?? this.name,
        description: description ?? this.description,
        order: order ?? this.order,
        imageId: imageId ?? this.imageId,
        isVisible: isVisible ?? this.isVisible,
        parentCategoryId: parentCategoryId ?? this.parentCategoryId,
        restaurantId: restaurantId ?? this.restaurantId);
  }

  CreateCategoryCommand copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<int?>? order,
      Wrapped<String?>? imageId,
      Wrapped<bool?>? isVisible,
      Wrapped<String?>? parentCategoryId,
      Wrapped<String?>? restaurantId}) {
    return CreateCategoryCommand(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        order: (order != null ? order.value : this.order),
        imageId: (imageId != null ? imageId.value : this.imageId),
        isVisible: (isVisible != null ? isVisible.value : this.isVisible),
        parentCategoryId: (parentCategoryId != null
            ? parentCategoryId.value
            : this.parentCategoryId),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateCategoryCommand {
  UpdateCategoryCommand({
    this.id,
    this.name,
    this.description,
    this.order,
    this.imageId,
    this.isVisible,
    this.parentCategoryId,
  });

  factory UpdateCategoryCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'isVisible')
  final bool? isVisible;
  @JsonKey(name: 'parentCategoryId')
  final String? parentCategoryId;
  static const fromJsonFactory = _$UpdateCategoryCommandFromJson;
  static const toJsonFactory = _$UpdateCategoryCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateCategoryCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCategoryCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategoryId, parentCategoryId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(isVisible) ^
      const DeepCollectionEquality().hash(parentCategoryId) ^
      runtimeType.hashCode;
}

extension $UpdateCategoryCommandExtension on UpdateCategoryCommand {
  UpdateCategoryCommand copyWith(
      {String? id,
      String? name,
      String? description,
      int? order,
      String? imageId,
      bool? isVisible,
      String? parentCategoryId}) {
    return UpdateCategoryCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        order: order ?? this.order,
        imageId: imageId ?? this.imageId,
        isVisible: isVisible ?? this.isVisible,
        parentCategoryId: parentCategoryId ?? this.parentCategoryId);
  }

  UpdateCategoryCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<int?>? order,
      Wrapped<String?>? imageId,
      Wrapped<bool?>? isVisible,
      Wrapped<String?>? parentCategoryId}) {
    return UpdateCategoryCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        order: (order != null ? order.value : this.order),
        imageId: (imageId != null ? imageId.value : this.imageId),
        isVisible: (isVisible != null ? isVisible.value : this.isVisible),
        parentCategoryId: (parentCategoryId != null
            ? parentCategoryId.value
            : this.parentCategoryId));
  }
}

@JsonSerializable(explicitToJson: true)
class EventMessageCodeGenDto {
  EventMessageCodeGenDto({
    this.id,
    this.type,
    this.title,
    this.message,
    this.eventValue,
  });

  factory EventMessageCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$EventMessageCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'type',
    toJson: eventMessageTypeToJson,
    fromJson: eventMessageTypeFromJson,
  )
  final enums.EventMessageType? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'eventValue')
  final String? eventValue;
  static const fromJsonFactory = _$EventMessageCodeGenDtoFromJson;
  static const toJsonFactory = _$EventMessageCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$EventMessageCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventMessageCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.eventValue, eventValue) ||
                const DeepCollectionEquality()
                    .equals(other.eventValue, eventValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(eventValue) ^
      runtimeType.hashCode;
}

extension $EventMessageCodeGenDtoExtension on EventMessageCodeGenDto {
  EventMessageCodeGenDto copyWith(
      {String? id,
      enums.EventMessageType? type,
      String? title,
      String? message,
      String? eventValue}) {
    return EventMessageCodeGenDto(
        id: id ?? this.id,
        type: type ?? this.type,
        title: title ?? this.title,
        message: message ?? this.message,
        eventValue: eventValue ?? this.eventValue);
  }

  EventMessageCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.EventMessageType?>? type,
      Wrapped<String?>? title,
      Wrapped<String?>? message,
      Wrapped<String?>? eventValue}) {
    return EventMessageCodeGenDto(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        title: (title != null ? title.value : this.title),
        message: (message != null ? message.value : this.message),
        eventValue: (eventValue != null ? eventValue.value : this.eventValue));
  }
}

@JsonSerializable(explicitToJson: true)
class GetEventMessagesListQuery {
  GetEventMessagesListQuery();

  factory GetEventMessagesListQuery.fromJson(Map<String, dynamic> json) =>
      _$GetEventMessagesListQueryFromJson(json);

  static const fromJsonFactory = _$GetEventMessagesListQueryFromJson;
  static const toJsonFactory = _$GetEventMessagesListQueryToJson;
  Map<String, dynamic> toJson() => _$GetEventMessagesListQueryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class UpdateEventMessageCommand {
  UpdateEventMessageCommand({
    this.id,
    this.title,
    this.message,
  });

  factory UpdateEventMessageCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateEventMessageCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$UpdateEventMessageCommandFromJson;
  static const toJsonFactory = _$UpdateEventMessageCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateEventMessageCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateEventMessageCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UpdateEventMessageCommandExtension on UpdateEventMessageCommand {
  UpdateEventMessageCommand copyWith(
      {String? id, String? title, String? message}) {
    return UpdateEventMessageCommand(
        id: id ?? this.id,
        title: title ?? this.title,
        message: message ?? this.message);
  }

  UpdateEventMessageCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? title,
      Wrapped<String?>? message}) {
    return UpdateEventMessageCommand(
        id: (id != null ? id.value : this.id),
        title: (title != null ? title.value : this.title),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfFileDetails {
  PaginatedListOfFileDetails({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfFileDetails.fromJson(Map<String, dynamic> json) =>
      _$PaginatedListOfFileDetailsFromJson(json);

  @JsonKey(name: 'items', defaultValue: <FileDetails>[])
  final List<FileDetails>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfFileDetailsFromJson;
  static const toJsonFactory = _$PaginatedListOfFileDetailsToJson;
  Map<String, dynamic> toJson() => _$PaginatedListOfFileDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfFileDetails &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfFileDetailsExtension on PaginatedListOfFileDetails {
  PaginatedListOfFileDetails copyWith(
      {List<FileDetails>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfFileDetails(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfFileDetails copyWithWrapped(
      {Wrapped<List<FileDetails>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfFileDetails(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class FileDetails {
  FileDetails({
    this.id,
    this.name,
    this.size,
    this.path,
    this.contentType,
    this.created,
    this.createdBy,
    this.lastModified,
    this.lastModifiedBy,
  });

  factory FileDetails.fromJson(Map<String, dynamic> json) =>
      _$FileDetailsFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'size')
  final num? size;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'contentType')
  final String? contentType;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'lastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'lastModifiedBy')
  final String? lastModifiedBy;
  static const fromJsonFactory = _$FileDetailsFromJson;
  static const toJsonFactory = _$FileDetailsToJson;
  Map<String, dynamic> toJson() => _$FileDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedBy, lastModifiedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(lastModifiedBy) ^
      runtimeType.hashCode;
}

extension $FileDetailsExtension on FileDetails {
  FileDetails copyWith(
      {String? id,
      String? name,
      num? size,
      String? path,
      String? contentType,
      DateTime? created,
      String? createdBy,
      DateTime? lastModified,
      String? lastModifiedBy}) {
    return FileDetails(
        id: id ?? this.id,
        name: name ?? this.name,
        size: size ?? this.size,
        path: path ?? this.path,
        contentType: contentType ?? this.contentType,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy,
        lastModified: lastModified ?? this.lastModified,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy);
  }

  FileDetails copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<num?>? size,
      Wrapped<String?>? path,
      Wrapped<String?>? contentType,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy,
      Wrapped<DateTime?>? lastModified,
      Wrapped<String?>? lastModifiedBy}) {
    return FileDetails(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        size: (size != null ? size.value : this.size),
        path: (path != null ? path.value : this.path),
        contentType:
            (contentType != null ? contentType.value : this.contentType),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        lastModifiedBy: (lastModifiedBy != null
            ? lastModifiedBy.value
            : this.lastModifiedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfIngredientCodeGenDto {
  PaginatedListOfIngredientCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfIngredientCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfIngredientCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <IngredientCodeGenDto>[])
  final List<IngredientCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfIngredientCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfIngredientCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfIngredientCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfIngredientCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfIngredientCodeGenDtoExtension
    on PaginatedListOfIngredientCodeGenDto {
  PaginatedListOfIngredientCodeGenDto copyWith(
      {List<IngredientCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfIngredientCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfIngredientCodeGenDto copyWithWrapped(
      {Wrapped<List<IngredientCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfIngredientCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateIngredientCommand {
  CreateIngredientCommand({
    this.name,
    this.description,
  });

  factory CreateIngredientCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateIngredientCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CreateIngredientCommandFromJson;
  static const toJsonFactory = _$CreateIngredientCommandToJson;
  Map<String, dynamic> toJson() => _$CreateIngredientCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateIngredientCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CreateIngredientCommandExtension on CreateIngredientCommand {
  CreateIngredientCommand copyWith({String? name, String? description}) {
    return CreateIngredientCommand(
        name: name ?? this.name, description: description ?? this.description);
  }

  CreateIngredientCommand copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? description}) {
    return CreateIngredientCommand(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateIngredientCommand {
  UpdateIngredientCommand({
    this.id,
    this.name,
    this.description,
  });

  factory UpdateIngredientCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateIngredientCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$UpdateIngredientCommandFromJson;
  static const toJsonFactory = _$UpdateIngredientCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateIngredientCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIngredientCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $UpdateIngredientCommandExtension on UpdateIngredientCommand {
  UpdateIngredientCommand copyWith(
      {String? id, String? name, String? description}) {
    return UpdateIngredientCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description);
  }

  UpdateIngredientCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description}) {
    return UpdateIngredientCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfOrderCodeGenDto {
  PaginatedListOfOrderCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfOrderCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedListOfOrderCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <OrderCodeGenDto>[])
  final List<OrderCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfOrderCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfOrderCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$PaginatedListOfOrderCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfOrderCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfOrderCodeGenDtoExtension
    on PaginatedListOfOrderCodeGenDto {
  PaginatedListOfOrderCodeGenDto copyWith(
      {List<OrderCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfOrderCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfOrderCodeGenDto copyWithWrapped(
      {Wrapped<List<OrderCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfOrderCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderCodeGenDto {
  OrderCodeGenDto({
    this.id,
    this.number,
    this.status,
    this.deliveryType,
    this.changeFrom,
    this.finished,
    this.comment,
    this.price,
    this.personsCount,
    this.deliverToDate,
    this.deliveryDate,
    this.clientId,
    this.$client,
    this.courierId,
    this.courier,
    this.addressId,
    this.address,
    this.restaurantId,
    this.paymentMethodId,
    this.paymentMethod,
    this.reviewId,
    this.review,
    this.orderDetails,
    this.orderStatusHistories,
    this.created,
  });

  factory OrderCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$OrderCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(
    name: 'deliveryType',
    toJson: orderDeliveryToJson,
    fromJson: orderDeliveryFromJson,
  )
  final enums.OrderDelivery? deliveryType;
  @JsonKey(name: 'changeFrom')
  final double? changeFrom;
  @JsonKey(name: 'finished')
  final DateTime? finished;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'personsCount')
  final int? personsCount;
  @JsonKey(name: 'deliverToDate')
  final bool? deliverToDate;
  @JsonKey(name: 'deliveryDate')
  final String? deliveryDate;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: '\$client')
  final dynamic $client;
  @JsonKey(name: 'courierId')
  final String? courierId;
  @JsonKey(name: 'courier')
  final dynamic courier;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'address')
  final dynamic address;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'paymentMethodId')
  final String? paymentMethodId;
  @JsonKey(name: 'paymentMethod')
  final dynamic paymentMethod;
  @JsonKey(name: 'reviewId')
  final String? reviewId;
  @JsonKey(name: 'review')
  final dynamic review;
  @JsonKey(name: 'orderDetails', defaultValue: <OrderDetailCodeGenDto>[])
  final List<OrderDetailCodeGenDto>? orderDetails;
  @JsonKey(
      name: 'orderStatusHistories',
      defaultValue: <OrderStatusHistoryCodeGenDto>[])
  final List<OrderStatusHistoryCodeGenDto>? orderStatusHistories;
  @JsonKey(name: 'created')
  final DateTime? created;
  static const fromJsonFactory = _$OrderCodeGenDtoFromJson;
  static const toJsonFactory = _$OrderCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$OrderCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.changeFrom, changeFrom) ||
                const DeepCollectionEquality()
                    .equals(other.changeFrom, changeFrom)) &&
            (identical(other.finished, finished) ||
                const DeepCollectionEquality()
                    .equals(other.finished, finished)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.personsCount, personsCount) ||
                const DeepCollectionEquality()
                    .equals(other.personsCount, personsCount)) &&
            (identical(other.deliverToDate, deliverToDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliverToDate, deliverToDate)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality()
                    .equals(other.$client, $client)) &&
            (identical(other.courierId, courierId) ||
                const DeepCollectionEquality()
                    .equals(other.courierId, courierId)) &&
            (identical(other.courier, courier) ||
                const DeepCollectionEquality()
                    .equals(other.courier, courier)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodId, paymentMethodId)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.reviewId, reviewId) ||
                const DeepCollectionEquality()
                    .equals(other.reviewId, reviewId)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.orderDetails, orderDetails) ||
                const DeepCollectionEquality()
                    .equals(other.orderDetails, orderDetails)) &&
            (identical(other.orderStatusHistories, orderStatusHistories) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatusHistories, orderStatusHistories)) &&
            (identical(other.created, created) || const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(changeFrom) ^
      const DeepCollectionEquality().hash(finished) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(personsCount) ^
      const DeepCollectionEquality().hash(deliverToDate) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(courierId) ^
      const DeepCollectionEquality().hash(courier) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(paymentMethodId) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(reviewId) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(orderDetails) ^
      const DeepCollectionEquality().hash(orderStatusHistories) ^
      const DeepCollectionEquality().hash(created) ^
      runtimeType.hashCode;
}

extension $OrderCodeGenDtoExtension on OrderCodeGenDto {
  OrderCodeGenDto copyWith(
      {String? id,
      int? number,
      enums.OrderStatus? status,
      enums.OrderDelivery? deliveryType,
      double? changeFrom,
      DateTime? finished,
      String? comment,
      double? price,
      int? personsCount,
      bool? deliverToDate,
      String? deliveryDate,
      String? clientId,
      dynamic $client,
      String? courierId,
      dynamic courier,
      String? addressId,
      dynamic address,
      String? restaurantId,
      String? paymentMethodId,
      dynamic paymentMethod,
      String? reviewId,
      dynamic review,
      List<OrderDetailCodeGenDto>? orderDetails,
      List<OrderStatusHistoryCodeGenDto>? orderStatusHistories,
      DateTime? created}) {
    return OrderCodeGenDto(
        id: id ?? this.id,
        number: number ?? this.number,
        status: status ?? this.status,
        deliveryType: deliveryType ?? this.deliveryType,
        changeFrom: changeFrom ?? this.changeFrom,
        finished: finished ?? this.finished,
        comment: comment ?? this.comment,
        price: price ?? this.price,
        personsCount: personsCount ?? this.personsCount,
        deliverToDate: deliverToDate ?? this.deliverToDate,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        clientId: clientId ?? this.clientId,
        $client: $client ?? this.$client,
        courierId: courierId ?? this.courierId,
        courier: courier ?? this.courier,
        addressId: addressId ?? this.addressId,
        address: address ?? this.address,
        restaurantId: restaurantId ?? this.restaurantId,
        paymentMethodId: paymentMethodId ?? this.paymentMethodId,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        reviewId: reviewId ?? this.reviewId,
        review: review ?? this.review,
        orderDetails: orderDetails ?? this.orderDetails,
        orderStatusHistories: orderStatusHistories ?? this.orderStatusHistories,
        created: created ?? this.created);
  }

  OrderCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<int?>? number,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<enums.OrderDelivery?>? deliveryType,
      Wrapped<double?>? changeFrom,
      Wrapped<DateTime?>? finished,
      Wrapped<String?>? comment,
      Wrapped<double?>? price,
      Wrapped<int?>? personsCount,
      Wrapped<bool?>? deliverToDate,
      Wrapped<String?>? deliveryDate,
      Wrapped<String?>? clientId,
      Wrapped<dynamic>? $client,
      Wrapped<String?>? courierId,
      Wrapped<dynamic>? courier,
      Wrapped<String?>? addressId,
      Wrapped<dynamic>? address,
      Wrapped<String?>? restaurantId,
      Wrapped<String?>? paymentMethodId,
      Wrapped<dynamic>? paymentMethod,
      Wrapped<String?>? reviewId,
      Wrapped<dynamic>? review,
      Wrapped<List<OrderDetailCodeGenDto>?>? orderDetails,
      Wrapped<List<OrderStatusHistoryCodeGenDto>?>? orderStatusHistories,
      Wrapped<DateTime?>? created}) {
    return OrderCodeGenDto(
        id: (id != null ? id.value : this.id),
        number: (number != null ? number.value : this.number),
        status: (status != null ? status.value : this.status),
        deliveryType:
            (deliveryType != null ? deliveryType.value : this.deliveryType),
        changeFrom: (changeFrom != null ? changeFrom.value : this.changeFrom),
        finished: (finished != null ? finished.value : this.finished),
        comment: (comment != null ? comment.value : this.comment),
        price: (price != null ? price.value : this.price),
        personsCount:
            (personsCount != null ? personsCount.value : this.personsCount),
        deliverToDate:
            (deliverToDate != null ? deliverToDate.value : this.deliverToDate),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        clientId: (clientId != null ? clientId.value : this.clientId),
        $client: ($client != null ? $client.value : this.$client),
        courierId: (courierId != null ? courierId.value : this.courierId),
        courier: (courier != null ? courier.value : this.courier),
        addressId: (addressId != null ? addressId.value : this.addressId),
        address: (address != null ? address.value : this.address),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        paymentMethodId: (paymentMethodId != null
            ? paymentMethodId.value
            : this.paymentMethodId),
        paymentMethod:
            (paymentMethod != null ? paymentMethod.value : this.paymentMethod),
        reviewId: (reviewId != null ? reviewId.value : this.reviewId),
        review: (review != null ? review.value : this.review),
        orderDetails:
            (orderDetails != null ? orderDetails.value : this.orderDetails),
        orderStatusHistories: (orderStatusHistories != null
            ? orderStatusHistories.value
            : this.orderStatusHistories),
        created: (created != null ? created.value : this.created));
  }
}

@JsonSerializable(explicitToJson: true)
class PaymentMethodCodeGenDto {
  PaymentMethodCodeGenDto({
    this.id,
    this.name,
    this.hasVariants,
  });

  factory PaymentMethodCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'hasVariants')
  final bool? hasVariants;
  static const fromJsonFactory = _$PaymentMethodCodeGenDtoFromJson;
  static const toJsonFactory = _$PaymentMethodCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$PaymentMethodCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentMethodCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hasVariants, hasVariants) ||
                const DeepCollectionEquality()
                    .equals(other.hasVariants, hasVariants)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hasVariants) ^
      runtimeType.hashCode;
}

extension $PaymentMethodCodeGenDtoExtension on PaymentMethodCodeGenDto {
  PaymentMethodCodeGenDto copyWith(
      {String? id, String? name, bool? hasVariants}) {
    return PaymentMethodCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        hasVariants: hasVariants ?? this.hasVariants);
  }

  PaymentMethodCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<bool?>? hasVariants}) {
    return PaymentMethodCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        hasVariants:
            (hasVariants != null ? hasVariants.value : this.hasVariants));
  }
}

@JsonSerializable(explicitToJson: true)
class ReviewCodeGenDto {
  ReviewCodeGenDto({
    this.id,
    this.comment,
    this.orderId,
    this.order,
    this.mark,
  });

  factory ReviewCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(
    name: 'mark',
    toJson: markToJson,
    fromJson: markFromJson,
  )
  final enums.Mark? mark;
  static const fromJsonFactory = _$ReviewCodeGenDtoFromJson;
  static const toJsonFactory = _$ReviewCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$ReviewCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReviewCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.mark, mark) ||
                const DeepCollectionEquality().equals(other.mark, mark)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(mark) ^
      runtimeType.hashCode;
}

extension $ReviewCodeGenDtoExtension on ReviewCodeGenDto {
  ReviewCodeGenDto copyWith(
      {String? id,
      String? comment,
      String? orderId,
      dynamic order,
      enums.Mark? mark}) {
    return ReviewCodeGenDto(
        id: id ?? this.id,
        comment: comment ?? this.comment,
        orderId: orderId ?? this.orderId,
        order: order ?? this.order,
        mark: mark ?? this.mark);
  }

  ReviewCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? comment,
      Wrapped<String?>? orderId,
      Wrapped<dynamic>? order,
      Wrapped<enums.Mark?>? mark}) {
    return ReviewCodeGenDto(
        id: (id != null ? id.value : this.id),
        comment: (comment != null ? comment.value : this.comment),
        orderId: (orderId != null ? orderId.value : this.orderId),
        order: (order != null ? order.value : this.order),
        mark: (mark != null ? mark.value : this.mark));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderDetailCodeGenDto {
  OrderDetailCodeGenDto({
    this.id,
    this.amount,
    this.price,
    this.orderId,
    this.order,
    this.productId,
    this.product,
    this.productSizeId,
    this.productSize,
  });

  factory OrderDetailCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'amount')
  final int? amount;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'productSize')
  final dynamic productSize;
  static const fromJsonFactory = _$OrderDetailCodeGenDtoFromJson;
  static const toJsonFactory = _$OrderDetailCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$OrderDetailCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderDetailCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.productSize, productSize) ||
                const DeepCollectionEquality()
                    .equals(other.productSize, productSize)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(productSize) ^
      runtimeType.hashCode;
}

extension $OrderDetailCodeGenDtoExtension on OrderDetailCodeGenDto {
  OrderDetailCodeGenDto copyWith(
      {String? id,
      int? amount,
      double? price,
      String? orderId,
      dynamic order,
      String? productId,
      dynamic product,
      String? productSizeId,
      dynamic productSize}) {
    return OrderDetailCodeGenDto(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        price: price ?? this.price,
        orderId: orderId ?? this.orderId,
        order: order ?? this.order,
        productId: productId ?? this.productId,
        product: product ?? this.product,
        productSizeId: productSizeId ?? this.productSizeId,
        productSize: productSize ?? this.productSize);
  }

  OrderDetailCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<int?>? amount,
      Wrapped<double?>? price,
      Wrapped<String?>? orderId,
      Wrapped<dynamic>? order,
      Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? productSizeId,
      Wrapped<dynamic>? productSize}) {
    return OrderDetailCodeGenDto(
        id: (id != null ? id.value : this.id),
        amount: (amount != null ? amount.value : this.amount),
        price: (price != null ? price.value : this.price),
        orderId: (orderId != null ? orderId.value : this.orderId),
        order: (order != null ? order.value : this.order),
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        productSize:
            (productSize != null ? productSize.value : this.productSize));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderStatusHistoryCodeGenDto {
  OrderStatusHistoryCodeGenDto({
    this.orderId,
    this.status,
    this.created,
    this.createdBy,
  });

  factory OrderStatusHistoryCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusHistoryCodeGenDtoFromJson(json);

  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  static const fromJsonFactory = _$OrderStatusHistoryCodeGenDtoFromJson;
  static const toJsonFactory = _$OrderStatusHistoryCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$OrderStatusHistoryCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderStatusHistoryCodeGenDto &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdBy) ^
      runtimeType.hashCode;
}

extension $OrderStatusHistoryCodeGenDtoExtension
    on OrderStatusHistoryCodeGenDto {
  OrderStatusHistoryCodeGenDto copyWith(
      {String? orderId,
      enums.OrderStatus? status,
      DateTime? created,
      String? createdBy}) {
    return OrderStatusHistoryCodeGenDto(
        orderId: orderId ?? this.orderId,
        status: status ?? this.status,
        created: created ?? this.created,
        createdBy: createdBy ?? this.createdBy);
  }

  OrderStatusHistoryCodeGenDto copyWithWrapped(
      {Wrapped<String?>? orderId,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? createdBy}) {
    return OrderStatusHistoryCodeGenDto(
        orderId: (orderId != null ? orderId.value : this.orderId),
        status: (status != null ? status.value : this.status),
        created: (created != null ? created.value : this.created),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderShortViewModel {
  OrderShortViewModel({
    this.id,
    this.number,
    this.status,
    this.created,
    this.price,
  });

  factory OrderShortViewModel.fromJson(Map<String, dynamic> json) =>
      _$OrderShortViewModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$OrderShortViewModelFromJson;
  static const toJsonFactory = _$OrderShortViewModelToJson;
  Map<String, dynamic> toJson() => _$OrderShortViewModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderShortViewModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $OrderShortViewModelExtension on OrderShortViewModel {
  OrderShortViewModel copyWith(
      {String? id,
      int? number,
      enums.OrderStatus? status,
      DateTime? created,
      double? price}) {
    return OrderShortViewModel(
        id: id ?? this.id,
        number: number ?? this.number,
        status: status ?? this.status,
        created: created ?? this.created,
        price: price ?? this.price);
  }

  OrderShortViewModel copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<int?>? number,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<DateTime?>? created,
      Wrapped<double?>? price}) {
    return OrderShortViewModel(
        id: (id != null ? id.value : this.id),
        number: (number != null ? number.value : this.number),
        status: (status != null ? status.value : this.status),
        created: (created != null ? created.value : this.created),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOrderCommand {
  CreateOrderCommand({
    this.changeFrom,
    this.comment,
    this.deliverToDate,
    this.deliveryDate,
    this.clientId,
    this.courierId,
    this.addressModel,
    this.restaurantId,
    this.paymentMethodId,
    this.personsCount,
    this.orderDelivery,
    this.orderDetails,
  });

  factory CreateOrderCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderCommandFromJson(json);

  @JsonKey(name: 'changeFrom')
  final double? changeFrom;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'deliverToDate')
  final bool? deliverToDate;
  @JsonKey(name: 'deliveryDate')
  final String? deliveryDate;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'courierId')
  final String? courierId;
  @JsonKey(name: 'addressModel')
  final dynamic addressModel;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'paymentMethodId')
  final String? paymentMethodId;
  @JsonKey(name: 'personsCount')
  final int? personsCount;
  @JsonKey(
    name: 'orderDelivery',
    toJson: orderDeliveryToJson,
    fromJson: orderDeliveryFromJson,
  )
  final enums.OrderDelivery? orderDelivery;
  @JsonKey(
      name: 'orderDetails', defaultValue: <OrderDetailCalculateViewModel>[])
  final List<OrderDetailCalculateViewModel>? orderDetails;
  static const fromJsonFactory = _$CreateOrderCommandFromJson;
  static const toJsonFactory = _$CreateOrderCommandToJson;
  Map<String, dynamic> toJson() => _$CreateOrderCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOrderCommand &&
            (identical(other.changeFrom, changeFrom) ||
                const DeepCollectionEquality()
                    .equals(other.changeFrom, changeFrom)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.deliverToDate, deliverToDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliverToDate, deliverToDate)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.courierId, courierId) ||
                const DeepCollectionEquality()
                    .equals(other.courierId, courierId)) &&
            (identical(other.addressModel, addressModel) ||
                const DeepCollectionEquality()
                    .equals(other.addressModel, addressModel)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodId, paymentMethodId)) &&
            (identical(other.personsCount, personsCount) ||
                const DeepCollectionEquality()
                    .equals(other.personsCount, personsCount)) &&
            (identical(other.orderDelivery, orderDelivery) ||
                const DeepCollectionEquality()
                    .equals(other.orderDelivery, orderDelivery)) &&
            (identical(other.orderDetails, orderDetails) ||
                const DeepCollectionEquality()
                    .equals(other.orderDetails, orderDetails)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changeFrom) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(deliverToDate) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(courierId) ^
      const DeepCollectionEquality().hash(addressModel) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(paymentMethodId) ^
      const DeepCollectionEquality().hash(personsCount) ^
      const DeepCollectionEquality().hash(orderDelivery) ^
      const DeepCollectionEquality().hash(orderDetails) ^
      runtimeType.hashCode;
}

extension $CreateOrderCommandExtension on CreateOrderCommand {
  CreateOrderCommand copyWith(
      {double? changeFrom,
      String? comment,
      bool? deliverToDate,
      String? deliveryDate,
      String? clientId,
      String? courierId,
      dynamic addressModel,
      String? restaurantId,
      String? paymentMethodId,
      int? personsCount,
      enums.OrderDelivery? orderDelivery,
      List<OrderDetailCalculateViewModel>? orderDetails}) {
    return CreateOrderCommand(
        changeFrom: changeFrom ?? this.changeFrom,
        comment: comment ?? this.comment,
        deliverToDate: deliverToDate ?? this.deliverToDate,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        clientId: clientId ?? this.clientId,
        courierId: courierId ?? this.courierId,
        addressModel: addressModel ?? this.addressModel,
        restaurantId: restaurantId ?? this.restaurantId,
        paymentMethodId: paymentMethodId ?? this.paymentMethodId,
        personsCount: personsCount ?? this.personsCount,
        orderDelivery: orderDelivery ?? this.orderDelivery,
        orderDetails: orderDetails ?? this.orderDetails);
  }

  CreateOrderCommand copyWithWrapped(
      {Wrapped<double?>? changeFrom,
      Wrapped<String?>? comment,
      Wrapped<bool?>? deliverToDate,
      Wrapped<String?>? deliveryDate,
      Wrapped<String?>? clientId,
      Wrapped<String?>? courierId,
      Wrapped<dynamic>? addressModel,
      Wrapped<String?>? restaurantId,
      Wrapped<String?>? paymentMethodId,
      Wrapped<int?>? personsCount,
      Wrapped<enums.OrderDelivery?>? orderDelivery,
      Wrapped<List<OrderDetailCalculateViewModel>?>? orderDetails}) {
    return CreateOrderCommand(
        changeFrom: (changeFrom != null ? changeFrom.value : this.changeFrom),
        comment: (comment != null ? comment.value : this.comment),
        deliverToDate:
            (deliverToDate != null ? deliverToDate.value : this.deliverToDate),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        clientId: (clientId != null ? clientId.value : this.clientId),
        courierId: (courierId != null ? courierId.value : this.courierId),
        addressModel:
            (addressModel != null ? addressModel.value : this.addressModel),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        paymentMethodId: (paymentMethodId != null
            ? paymentMethodId.value
            : this.paymentMethodId),
        personsCount:
            (personsCount != null ? personsCount.value : this.personsCount),
        orderDelivery:
            (orderDelivery != null ? orderDelivery.value : this.orderDelivery),
        orderDetails:
            (orderDetails != null ? orderDetails.value : this.orderDetails));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderDetailCalculateViewModel {
  OrderDetailCalculateViewModel({
    this.amount,
    this.price,
    this.orderId,
    this.productId,
    this.product,
    this.productSizeId,
    this.productSize,
  });

  factory OrderDetailCalculateViewModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailCalculateViewModelFromJson(json);

  @JsonKey(name: 'amount')
  final int? amount;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'product')
  final dynamic product;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'productSize')
  final dynamic productSize;
  static const fromJsonFactory = _$OrderDetailCalculateViewModelFromJson;
  static const toJsonFactory = _$OrderDetailCalculateViewModelToJson;
  Map<String, dynamic> toJson() => _$OrderDetailCalculateViewModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderDetailCalculateViewModel &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.productSize, productSize) ||
                const DeepCollectionEquality()
                    .equals(other.productSize, productSize)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(productSize) ^
      runtimeType.hashCode;
}

extension $OrderDetailCalculateViewModelExtension
    on OrderDetailCalculateViewModel {
  OrderDetailCalculateViewModel copyWith(
      {int? amount,
      double? price,
      String? orderId,
      String? productId,
      dynamic product,
      String? productSizeId,
      dynamic productSize}) {
    return OrderDetailCalculateViewModel(
        amount: amount ?? this.amount,
        price: price ?? this.price,
        orderId: orderId ?? this.orderId,
        productId: productId ?? this.productId,
        product: product ?? this.product,
        productSizeId: productSizeId ?? this.productSizeId,
        productSize: productSize ?? this.productSize);
  }

  OrderDetailCalculateViewModel copyWithWrapped(
      {Wrapped<int?>? amount,
      Wrapped<double?>? price,
      Wrapped<String?>? orderId,
      Wrapped<String?>? productId,
      Wrapped<dynamic>? product,
      Wrapped<String?>? productSizeId,
      Wrapped<dynamic>? productSize}) {
    return OrderDetailCalculateViewModel(
        amount: (amount != null ? amount.value : this.amount),
        price: (price != null ? price.value : this.price),
        orderId: (orderId != null ? orderId.value : this.orderId),
        productId: (productId != null ? productId.value : this.productId),
        product: (product != null ? product.value : this.product),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        productSize:
            (productSize != null ? productSize.value : this.productSize));
  }
}

@JsonSerializable(explicitToJson: true)
class CalculatePriceCommand {
  CalculatePriceCommand({
    this.restaurantId,
    this.details,
    this.price,
  });

  factory CalculatePriceCommand.fromJson(Map<String, dynamic> json) =>
      _$CalculatePriceCommandFromJson(json);

  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(name: 'details', defaultValue: <OrderDetailCalculateViewModel>[])
  final List<OrderDetailCalculateViewModel>? details;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$CalculatePriceCommandFromJson;
  static const toJsonFactory = _$CalculatePriceCommandToJson;
  Map<String, dynamic> toJson() => _$CalculatePriceCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CalculatePriceCommand &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $CalculatePriceCommandExtension on CalculatePriceCommand {
  CalculatePriceCommand copyWith(
      {String? restaurantId,
      List<OrderDetailCalculateViewModel>? details,
      double? price}) {
    return CalculatePriceCommand(
        restaurantId: restaurantId ?? this.restaurantId,
        details: details ?? this.details,
        price: price ?? this.price);
  }

  CalculatePriceCommand copyWithWrapped(
      {Wrapped<String?>? restaurantId,
      Wrapped<List<OrderDetailCalculateViewModel>?>? details,
      Wrapped<double?>? price}) {
    return CalculatePriceCommand(
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        details: (details != null ? details.value : this.details),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeOrderStatusCommand {
  ChangeOrderStatusCommand({
    this.orderId,
    this.status,
  });

  factory ChangeOrderStatusCommand.fromJson(Map<String, dynamic> json) =>
      _$ChangeOrderStatusCommandFromJson(json);

  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  static const fromJsonFactory = _$ChangeOrderStatusCommandFromJson;
  static const toJsonFactory = _$ChangeOrderStatusCommandToJson;
  Map<String, dynamic> toJson() => _$ChangeOrderStatusCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeOrderStatusCommand &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $ChangeOrderStatusCommandExtension on ChangeOrderStatusCommand {
  ChangeOrderStatusCommand copyWith(
      {String? orderId, enums.OrderStatus? status}) {
    return ChangeOrderStatusCommand(
        orderId: orderId ?? this.orderId, status: status ?? this.status);
  }

  ChangeOrderStatusCommand copyWithWrapped(
      {Wrapped<String?>? orderId, Wrapped<enums.OrderStatus?>? status}) {
    return ChangeOrderStatusCommand(
        orderId: (orderId != null ? orderId.value : this.orderId),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateOrderDetailsCommand {
  UpdateOrderDetailsCommand({
    this.orderId,
    this.changeFrom,
    this.comment,
    this.deliverToDate,
    this.deliveryType,
    this.deliveryDate,
    this.status,
    this.courierId,
    this.addressModel,
    this.paymentMethodId,
    this.orderDetails,
  });

  factory UpdateOrderDetailsCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderDetailsCommandFromJson(json);

  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(name: 'changeFrom')
  final double? changeFrom;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'deliverToDate')
  final bool? deliverToDate;
  @JsonKey(
    name: 'deliveryType',
    toJson: orderDeliveryToJson,
    fromJson: orderDeliveryFromJson,
  )
  final enums.OrderDelivery? deliveryType;
  @JsonKey(name: 'deliveryDate')
  final String? deliveryDate;
  @JsonKey(
    name: 'status',
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(name: 'courierId')
  final String? courierId;
  @JsonKey(name: 'addressModel')
  final dynamic addressModel;
  @JsonKey(name: 'paymentMethodId')
  final String? paymentMethodId;
  @JsonKey(
      name: 'orderDetails', defaultValue: <OrderDetailCalculateViewModel>[])
  final List<OrderDetailCalculateViewModel>? orderDetails;
  static const fromJsonFactory = _$UpdateOrderDetailsCommandFromJson;
  static const toJsonFactory = _$UpdateOrderDetailsCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateOrderDetailsCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateOrderDetailsCommand &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.changeFrom, changeFrom) ||
                const DeepCollectionEquality()
                    .equals(other.changeFrom, changeFrom)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.deliverToDate, deliverToDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliverToDate, deliverToDate)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.courierId, courierId) ||
                const DeepCollectionEquality()
                    .equals(other.courierId, courierId)) &&
            (identical(other.addressModel, addressModel) ||
                const DeepCollectionEquality()
                    .equals(other.addressModel, addressModel)) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodId, paymentMethodId)) &&
            (identical(other.orderDetails, orderDetails) ||
                const DeepCollectionEquality()
                    .equals(other.orderDetails, orderDetails)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(changeFrom) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(deliverToDate) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(courierId) ^
      const DeepCollectionEquality().hash(addressModel) ^
      const DeepCollectionEquality().hash(paymentMethodId) ^
      const DeepCollectionEquality().hash(orderDetails) ^
      runtimeType.hashCode;
}

extension $UpdateOrderDetailsCommandExtension on UpdateOrderDetailsCommand {
  UpdateOrderDetailsCommand copyWith(
      {String? orderId,
      double? changeFrom,
      String? comment,
      bool? deliverToDate,
      enums.OrderDelivery? deliveryType,
      String? deliveryDate,
      enums.OrderStatus? status,
      String? courierId,
      dynamic addressModel,
      String? paymentMethodId,
      List<OrderDetailCalculateViewModel>? orderDetails}) {
    return UpdateOrderDetailsCommand(
        orderId: orderId ?? this.orderId,
        changeFrom: changeFrom ?? this.changeFrom,
        comment: comment ?? this.comment,
        deliverToDate: deliverToDate ?? this.deliverToDate,
        deliveryType: deliveryType ?? this.deliveryType,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        status: status ?? this.status,
        courierId: courierId ?? this.courierId,
        addressModel: addressModel ?? this.addressModel,
        paymentMethodId: paymentMethodId ?? this.paymentMethodId,
        orderDetails: orderDetails ?? this.orderDetails);
  }

  UpdateOrderDetailsCommand copyWithWrapped(
      {Wrapped<String?>? orderId,
      Wrapped<double?>? changeFrom,
      Wrapped<String?>? comment,
      Wrapped<bool?>? deliverToDate,
      Wrapped<enums.OrderDelivery?>? deliveryType,
      Wrapped<String?>? deliveryDate,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<String?>? courierId,
      Wrapped<dynamic>? addressModel,
      Wrapped<String?>? paymentMethodId,
      Wrapped<List<OrderDetailCalculateViewModel>?>? orderDetails}) {
    return UpdateOrderDetailsCommand(
        orderId: (orderId != null ? orderId.value : this.orderId),
        changeFrom: (changeFrom != null ? changeFrom.value : this.changeFrom),
        comment: (comment != null ? comment.value : this.comment),
        deliverToDate:
            (deliverToDate != null ? deliverToDate.value : this.deliverToDate),
        deliveryType:
            (deliveryType != null ? deliveryType.value : this.deliveryType),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        status: (status != null ? status.value : this.status),
        courierId: (courierId != null ? courierId.value : this.courierId),
        addressModel:
            (addressModel != null ? addressModel.value : this.addressModel),
        paymentMethodId: (paymentMethodId != null
            ? paymentMethodId.value
            : this.paymentMethodId),
        orderDetails:
            (orderDetails != null ? orderDetails.value : this.orderDetails));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfPaymentMethodCodeGenDto {
  PaginatedListOfPaymentMethodCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfPaymentMethodCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfPaymentMethodCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <PaymentMethodCodeGenDto>[])
  final List<PaymentMethodCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory =
      _$PaginatedListOfPaymentMethodCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfPaymentMethodCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfPaymentMethodCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfPaymentMethodCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfPaymentMethodCodeGenDtoExtension
    on PaginatedListOfPaymentMethodCodeGenDto {
  PaginatedListOfPaymentMethodCodeGenDto copyWith(
      {List<PaymentMethodCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfPaymentMethodCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfPaymentMethodCodeGenDto copyWithWrapped(
      {Wrapped<List<PaymentMethodCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfPaymentMethodCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreatePaymentMethodCommand {
  CreatePaymentMethodCommand({
    this.name,
    this.hasVariants,
  });

  factory CreatePaymentMethodCommand.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentMethodCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'hasVariants')
  final bool? hasVariants;
  static const fromJsonFactory = _$CreatePaymentMethodCommandFromJson;
  static const toJsonFactory = _$CreatePaymentMethodCommandToJson;
  Map<String, dynamic> toJson() => _$CreatePaymentMethodCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePaymentMethodCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hasVariants, hasVariants) ||
                const DeepCollectionEquality()
                    .equals(other.hasVariants, hasVariants)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hasVariants) ^
      runtimeType.hashCode;
}

extension $CreatePaymentMethodCommandExtension on CreatePaymentMethodCommand {
  CreatePaymentMethodCommand copyWith({String? name, bool? hasVariants}) {
    return CreatePaymentMethodCommand(
        name: name ?? this.name, hasVariants: hasVariants ?? this.hasVariants);
  }

  CreatePaymentMethodCommand copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<bool?>? hasVariants}) {
    return CreatePaymentMethodCommand(
        name: (name != null ? name.value : this.name),
        hasVariants:
            (hasVariants != null ? hasVariants.value : this.hasVariants));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdatePaymentMethodCommand {
  UpdatePaymentMethodCommand({
    this.id,
    this.name,
    this.hasVariants,
  });

  factory UpdatePaymentMethodCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdatePaymentMethodCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'hasVariants')
  final bool? hasVariants;
  static const fromJsonFactory = _$UpdatePaymentMethodCommandFromJson;
  static const toJsonFactory = _$UpdatePaymentMethodCommandToJson;
  Map<String, dynamic> toJson() => _$UpdatePaymentMethodCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePaymentMethodCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hasVariants, hasVariants) ||
                const DeepCollectionEquality()
                    .equals(other.hasVariants, hasVariants)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hasVariants) ^
      runtimeType.hashCode;
}

extension $UpdatePaymentMethodCommandExtension on UpdatePaymentMethodCommand {
  UpdatePaymentMethodCommand copyWith(
      {String? id, String? name, bool? hasVariants}) {
    return UpdatePaymentMethodCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        hasVariants: hasVariants ?? this.hasVariants);
  }

  UpdatePaymentMethodCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<bool?>? hasVariants}) {
    return UpdatePaymentMethodCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        hasVariants:
            (hasVariants != null ? hasVariants.value : this.hasVariants));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfProductCodeGenDto {
  PaginatedListOfProductCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfProductCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfProductCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <ProductCodeGenDto>[])
  final List<ProductCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfProductCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfProductCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfProductCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfProductCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfProductCodeGenDtoExtension
    on PaginatedListOfProductCodeGenDto {
  PaginatedListOfProductCodeGenDto copyWith(
      {List<ProductCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfProductCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfProductCodeGenDto copyWithWrapped(
      {Wrapped<List<ProductCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfProductCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateProductCommand {
  CreateProductCommand({
    this.name,
    this.imageId,
    this.description,
    this.price,
    this.weight,
    this.isComplex,
    this.categoryId,
    this.productSizePrices,
    this.tags,
    this.ingredients,
    this.composites,
  });

  factory CreateProductCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateProductCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'isComplex')
  final bool? isComplex;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(
      name: 'productSizePrices', defaultValue: <ProductSizePriceViewModel>[])
  final List<ProductSizePriceViewModel>? productSizePrices;
  @JsonKey(name: 'tags', defaultValue: <String>[])
  final List<String>? tags;
  @JsonKey(name: 'ingredients', defaultValue: <String>[])
  final List<String>? ingredients;
  @JsonKey(name: 'composites', defaultValue: <String>[])
  final List<String>? composites;
  static const fromJsonFactory = _$CreateProductCommandFromJson;
  static const toJsonFactory = _$CreateProductCommandToJson;
  Map<String, dynamic> toJson() => _$CreateProductCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateProductCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.isComplex, isComplex) ||
                const DeepCollectionEquality()
                    .equals(other.isComplex, isComplex)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.productSizePrices, productSizePrices) ||
                const DeepCollectionEquality()
                    .equals(other.productSizePrices, productSizePrices)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.composites, composites) ||
                const DeepCollectionEquality()
                    .equals(other.composites, composites)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(isComplex) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productSizePrices) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(composites) ^
      runtimeType.hashCode;
}

extension $CreateProductCommandExtension on CreateProductCommand {
  CreateProductCommand copyWith(
      {String? name,
      String? imageId,
      String? description,
      double? price,
      double? weight,
      bool? isComplex,
      String? categoryId,
      List<ProductSizePriceViewModel>? productSizePrices,
      List<String>? tags,
      List<String>? ingredients,
      List<String>? composites}) {
    return CreateProductCommand(
        name: name ?? this.name,
        imageId: imageId ?? this.imageId,
        description: description ?? this.description,
        price: price ?? this.price,
        weight: weight ?? this.weight,
        isComplex: isComplex ?? this.isComplex,
        categoryId: categoryId ?? this.categoryId,
        productSizePrices: productSizePrices ?? this.productSizePrices,
        tags: tags ?? this.tags,
        ingredients: ingredients ?? this.ingredients,
        composites: composites ?? this.composites);
  }

  CreateProductCommand copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? imageId,
      Wrapped<String?>? description,
      Wrapped<double?>? price,
      Wrapped<double?>? weight,
      Wrapped<bool?>? isComplex,
      Wrapped<String?>? categoryId,
      Wrapped<List<ProductSizePriceViewModel>?>? productSizePrices,
      Wrapped<List<String>?>? tags,
      Wrapped<List<String>?>? ingredients,
      Wrapped<List<String>?>? composites}) {
    return CreateProductCommand(
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId),
        description:
            (description != null ? description.value : this.description),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight),
        isComplex: (isComplex != null ? isComplex.value : this.isComplex),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        productSizePrices: (productSizePrices != null
            ? productSizePrices.value
            : this.productSizePrices),
        tags: (tags != null ? tags.value : this.tags),
        ingredients:
            (ingredients != null ? ingredients.value : this.ingredients),
        composites: (composites != null ? composites.value : this.composites));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductSizePriceViewModel {
  ProductSizePriceViewModel({
    this.productSizeId,
    this.price,
    this.weight,
  });

  factory ProductSizePriceViewModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSizePriceViewModelFromJson(json);

  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  static const fromJsonFactory = _$ProductSizePriceViewModelFromJson;
  static const toJsonFactory = _$ProductSizePriceViewModelToJson;
  Map<String, dynamic> toJson() => _$ProductSizePriceViewModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSizePriceViewModel &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      runtimeType.hashCode;
}

extension $ProductSizePriceViewModelExtension on ProductSizePriceViewModel {
  ProductSizePriceViewModel copyWith(
      {String? productSizeId, double? price, double? weight}) {
    return ProductSizePriceViewModel(
        productSizeId: productSizeId ?? this.productSizeId,
        price: price ?? this.price,
        weight: weight ?? this.weight);
  }

  ProductSizePriceViewModel copyWithWrapped(
      {Wrapped<String?>? productSizeId,
      Wrapped<double?>? price,
      Wrapped<double?>? weight}) {
    return ProductSizePriceViewModel(
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateProductCommand {
  UpdateProductCommand({
    this.id,
    this.name,
    this.imageId,
    this.description,
    this.price,
    this.weight,
    this.isComplex,
    this.categoryId,
    this.productSizePrices,
    this.tags,
    this.ingredients,
    this.composites,
  });

  factory UpdateProductCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'isComplex')
  final bool? isComplex;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(
      name: 'productSizePrices', defaultValue: <ProductSizePriceViewModel>[])
  final List<ProductSizePriceViewModel>? productSizePrices;
  @JsonKey(name: 'tags', defaultValue: <String>[])
  final List<String>? tags;
  @JsonKey(name: 'ingredients', defaultValue: <String>[])
  final List<String>? ingredients;
  @JsonKey(name: 'composites', defaultValue: <String>[])
  final List<String>? composites;
  static const fromJsonFactory = _$UpdateProductCommandFromJson;
  static const toJsonFactory = _$UpdateProductCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateProductCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProductCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.isComplex, isComplex) ||
                const DeepCollectionEquality()
                    .equals(other.isComplex, isComplex)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.productSizePrices, productSizePrices) ||
                const DeepCollectionEquality()
                    .equals(other.productSizePrices, productSizePrices)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.composites, composites) ||
                const DeepCollectionEquality()
                    .equals(other.composites, composites)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(isComplex) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productSizePrices) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(composites) ^
      runtimeType.hashCode;
}

extension $UpdateProductCommandExtension on UpdateProductCommand {
  UpdateProductCommand copyWith(
      {String? id,
      String? name,
      String? imageId,
      String? description,
      double? price,
      double? weight,
      bool? isComplex,
      String? categoryId,
      List<ProductSizePriceViewModel>? productSizePrices,
      List<String>? tags,
      List<String>? ingredients,
      List<String>? composites}) {
    return UpdateProductCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        imageId: imageId ?? this.imageId,
        description: description ?? this.description,
        price: price ?? this.price,
        weight: weight ?? this.weight,
        isComplex: isComplex ?? this.isComplex,
        categoryId: categoryId ?? this.categoryId,
        productSizePrices: productSizePrices ?? this.productSizePrices,
        tags: tags ?? this.tags,
        ingredients: ingredients ?? this.ingredients,
        composites: composites ?? this.composites);
  }

  UpdateProductCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? imageId,
      Wrapped<String?>? description,
      Wrapped<double?>? price,
      Wrapped<double?>? weight,
      Wrapped<bool?>? isComplex,
      Wrapped<String?>? categoryId,
      Wrapped<List<ProductSizePriceViewModel>?>? productSizePrices,
      Wrapped<List<String>?>? tags,
      Wrapped<List<String>?>? ingredients,
      Wrapped<List<String>?>? composites}) {
    return UpdateProductCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId),
        description:
            (description != null ? description.value : this.description),
        price: (price != null ? price.value : this.price),
        weight: (weight != null ? weight.value : this.weight),
        isComplex: (isComplex != null ? isComplex.value : this.isComplex),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        productSizePrices: (productSizePrices != null
            ? productSizePrices.value
            : this.productSizePrices),
        tags: (tags != null ? tags.value : this.tags),
        ingredients:
            (ingredients != null ? ingredients.value : this.ingredients),
        composites: (composites != null ? composites.value : this.composites));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfProductSizeCodeGenDto {
  PaginatedListOfProductSizeCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfProductSizeCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfProductSizeCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <ProductSizeCodeGenDto>[])
  final List<ProductSizeCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfProductSizeCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfProductSizeCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfProductSizeCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfProductSizeCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfProductSizeCodeGenDtoExtension
    on PaginatedListOfProductSizeCodeGenDto {
  PaginatedListOfProductSizeCodeGenDto copyWith(
      {List<ProductSizeCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfProductSizeCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfProductSizeCodeGenDto copyWithWrapped(
      {Wrapped<List<ProductSizeCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfProductSizeCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateProductSizeCommand {
  CreateProductSizeCommand({
    this.categoryId,
    this.name,
  });

  factory CreateProductSizeCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateProductSizeCommandFromJson(json);

  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$CreateProductSizeCommandFromJson;
  static const toJsonFactory = _$CreateProductSizeCommandToJson;
  Map<String, dynamic> toJson() => _$CreateProductSizeCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateProductSizeCommand &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CreateProductSizeCommandExtension on CreateProductSizeCommand {
  CreateProductSizeCommand copyWith({String? categoryId, String? name}) {
    return CreateProductSizeCommand(
        categoryId: categoryId ?? this.categoryId, name: name ?? this.name);
  }

  CreateProductSizeCommand copyWithWrapped(
      {Wrapped<String?>? categoryId, Wrapped<String?>? name}) {
    return CreateProductSizeCommand(
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateProductSizeCommand {
  UpdateProductSizeCommand({
    this.id,
    this.name,
    this.categoryId,
  });

  factory UpdateProductSizeCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductSizeCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  static const fromJsonFactory = _$UpdateProductSizeCommandFromJson;
  static const toJsonFactory = _$UpdateProductSizeCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateProductSizeCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProductSizeCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(categoryId) ^
      runtimeType.hashCode;
}

extension $UpdateProductSizeCommandExtension on UpdateProductSizeCommand {
  UpdateProductSizeCommand copyWith(
      {String? id, String? name, String? categoryId}) {
    return UpdateProductSizeCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        categoryId: categoryId ?? this.categoryId);
  }

  UpdateProductSizeCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? categoryId}) {
    return UpdateProductSizeCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfPromoCodeGenDto {
  PaginatedListOfPromoCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfPromoCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedListOfPromoCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <PromoCodeGenDto>[])
  final List<PromoCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfPromoCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfPromoCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$PaginatedListOfPromoCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfPromoCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfPromoCodeGenDtoExtension
    on PaginatedListOfPromoCodeGenDto {
  PaginatedListOfPromoCodeGenDto copyWith(
      {List<PromoCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfPromoCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfPromoCodeGenDto copyWithWrapped(
      {Wrapped<List<PromoCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfPromoCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class PromoCodeGenDto {
  PromoCodeGenDto({
    this.id,
    this.name,
    this.description,
    this.active,
    this.type,
    this.price,
    this.discountModifier,
    this.imageId,
    this.productSizeId,
    this.productSize,
    this.categoryId,
    this.category,
    this.restaurantId,
    this.promoWorkingTimes,
  });

  factory PromoCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PromoCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(
    name: 'type',
    toJson: promoTypeToJson,
    fromJson: promoTypeFromJson,
  )
  final enums.PromoType? type;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'discountModifier')
  final double? discountModifier;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'productSize')
  final dynamic productSize;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'category')
  final dynamic category;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(
      name: 'promoWorkingTimes', defaultValue: <PromoWorkingTimeCodeGenDto>[])
  final List<PromoWorkingTimeCodeGenDto>? promoWorkingTimes;
  static const fromJsonFactory = _$PromoCodeGenDtoFromJson;
  static const toJsonFactory = _$PromoCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$PromoCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PromoCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountModifier, discountModifier) ||
                const DeepCollectionEquality()
                    .equals(other.discountModifier, discountModifier)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.productSize, productSize) ||
                const DeepCollectionEquality()
                    .equals(other.productSize, productSize)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.promoWorkingTimes, promoWorkingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.promoWorkingTimes, promoWorkingTimes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountModifier) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(productSize) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(promoWorkingTimes) ^
      runtimeType.hashCode;
}

extension $PromoCodeGenDtoExtension on PromoCodeGenDto {
  PromoCodeGenDto copyWith(
      {String? id,
      String? name,
      String? description,
      bool? active,
      enums.PromoType? type,
      double? price,
      double? discountModifier,
      String? imageId,
      String? productSizeId,
      dynamic productSize,
      String? categoryId,
      dynamic category,
      String? restaurantId,
      List<PromoWorkingTimeCodeGenDto>? promoWorkingTimes}) {
    return PromoCodeGenDto(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        active: active ?? this.active,
        type: type ?? this.type,
        price: price ?? this.price,
        discountModifier: discountModifier ?? this.discountModifier,
        imageId: imageId ?? this.imageId,
        productSizeId: productSizeId ?? this.productSizeId,
        productSize: productSize ?? this.productSize,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        restaurantId: restaurantId ?? this.restaurantId,
        promoWorkingTimes: promoWorkingTimes ?? this.promoWorkingTimes);
  }

  PromoCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<bool?>? active,
      Wrapped<enums.PromoType?>? type,
      Wrapped<double?>? price,
      Wrapped<double?>? discountModifier,
      Wrapped<String?>? imageId,
      Wrapped<String?>? productSizeId,
      Wrapped<dynamic>? productSize,
      Wrapped<String?>? categoryId,
      Wrapped<dynamic>? category,
      Wrapped<String?>? restaurantId,
      Wrapped<List<PromoWorkingTimeCodeGenDto>?>? promoWorkingTimes}) {
    return PromoCodeGenDto(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        active: (active != null ? active.value : this.active),
        type: (type != null ? type.value : this.type),
        price: (price != null ? price.value : this.price),
        discountModifier: (discountModifier != null
            ? discountModifier.value
            : this.discountModifier),
        imageId: (imageId != null ? imageId.value : this.imageId),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        productSize:
            (productSize != null ? productSize.value : this.productSize),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        category: (category != null ? category.value : this.category),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        promoWorkingTimes: (promoWorkingTimes != null
            ? promoWorkingTimes.value
            : this.promoWorkingTimes));
  }
}

@JsonSerializable(explicitToJson: true)
class PromoWorkingTimeCodeGenDto {
  PromoWorkingTimeCodeGenDto({
    this.id,
    this.dayOfWeek,
    this.from,
    this.to,
    this.promoId,
  });

  factory PromoWorkingTimeCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PromoWorkingTimeCodeGenDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: dayOfWeekToJson,
    fromJson: dayOfWeekFromJson,
  )
  final enums.DayOfWeek? dayOfWeek;
  @JsonKey(name: 'from')
  final String? from;
  @JsonKey(name: 'to')
  final String? to;
  @JsonKey(name: 'promoId')
  final String? promoId;
  static const fromJsonFactory = _$PromoWorkingTimeCodeGenDtoFromJson;
  static const toJsonFactory = _$PromoWorkingTimeCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$PromoWorkingTimeCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PromoWorkingTimeCodeGenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.promoId, promoId) ||
                const DeepCollectionEquality().equals(other.promoId, promoId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(promoId) ^
      runtimeType.hashCode;
}

extension $PromoWorkingTimeCodeGenDtoExtension on PromoWorkingTimeCodeGenDto {
  PromoWorkingTimeCodeGenDto copyWith(
      {String? id,
      enums.DayOfWeek? dayOfWeek,
      String? from,
      String? to,
      String? promoId}) {
    return PromoWorkingTimeCodeGenDto(
        id: id ?? this.id,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        from: from ?? this.from,
        to: to ?? this.to,
        promoId: promoId ?? this.promoId);
  }

  PromoWorkingTimeCodeGenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.DayOfWeek?>? dayOfWeek,
      Wrapped<String?>? from,
      Wrapped<String?>? to,
      Wrapped<String?>? promoId}) {
    return PromoWorkingTimeCodeGenDto(
        id: (id != null ? id.value : this.id),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        from: (from != null ? from.value : this.from),
        to: (to != null ? to.value : this.to),
        promoId: (promoId != null ? promoId.value : this.promoId));
  }
}

@JsonSerializable(explicitToJson: true)
class CreatePromoCommand {
  CreatePromoCommand({
    this.name,
    this.description,
    this.active,
    this.type,
    this.price,
    this.discountModifier,
    this.imageId,
    this.productSizeId,
    this.categoryId,
    this.restaurantId,
    this.promoWorkingTimes,
  });

  factory CreatePromoCommand.fromJson(Map<String, dynamic> json) =>
      _$CreatePromoCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(
    name: 'type',
    toJson: promoTypeToJson,
    fromJson: promoTypeFromJson,
  )
  final enums.PromoType? type;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'discountModifier')
  final double? discountModifier;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(
      name: 'promoWorkingTimes', defaultValue: <PromoWorkingTimeViewModel>[])
  final List<PromoWorkingTimeViewModel>? promoWorkingTimes;
  static const fromJsonFactory = _$CreatePromoCommandFromJson;
  static const toJsonFactory = _$CreatePromoCommandToJson;
  Map<String, dynamic> toJson() => _$CreatePromoCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePromoCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountModifier, discountModifier) ||
                const DeepCollectionEquality()
                    .equals(other.discountModifier, discountModifier)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.promoWorkingTimes, promoWorkingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.promoWorkingTimes, promoWorkingTimes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountModifier) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(promoWorkingTimes) ^
      runtimeType.hashCode;
}

extension $CreatePromoCommandExtension on CreatePromoCommand {
  CreatePromoCommand copyWith(
      {String? name,
      String? description,
      bool? active,
      enums.PromoType? type,
      double? price,
      double? discountModifier,
      String? imageId,
      String? productSizeId,
      String? categoryId,
      String? restaurantId,
      List<PromoWorkingTimeViewModel>? promoWorkingTimes}) {
    return CreatePromoCommand(
        name: name ?? this.name,
        description: description ?? this.description,
        active: active ?? this.active,
        type: type ?? this.type,
        price: price ?? this.price,
        discountModifier: discountModifier ?? this.discountModifier,
        imageId: imageId ?? this.imageId,
        productSizeId: productSizeId ?? this.productSizeId,
        categoryId: categoryId ?? this.categoryId,
        restaurantId: restaurantId ?? this.restaurantId,
        promoWorkingTimes: promoWorkingTimes ?? this.promoWorkingTimes);
  }

  CreatePromoCommand copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<bool?>? active,
      Wrapped<enums.PromoType?>? type,
      Wrapped<double?>? price,
      Wrapped<double?>? discountModifier,
      Wrapped<String?>? imageId,
      Wrapped<String?>? productSizeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? restaurantId,
      Wrapped<List<PromoWorkingTimeViewModel>?>? promoWorkingTimes}) {
    return CreatePromoCommand(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        active: (active != null ? active.value : this.active),
        type: (type != null ? type.value : this.type),
        price: (price != null ? price.value : this.price),
        discountModifier: (discountModifier != null
            ? discountModifier.value
            : this.discountModifier),
        imageId: (imageId != null ? imageId.value : this.imageId),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        promoWorkingTimes: (promoWorkingTimes != null
            ? promoWorkingTimes.value
            : this.promoWorkingTimes));
  }
}

@JsonSerializable(explicitToJson: true)
class PromoWorkingTimeViewModel {
  PromoWorkingTimeViewModel({
    this.id,
    this.dayOfWeek,
    this.from,
    this.to,
    this.promoId,
  });

  factory PromoWorkingTimeViewModel.fromJson(Map<String, dynamic> json) =>
      _$PromoWorkingTimeViewModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: dayOfWeekToJson,
    fromJson: dayOfWeekFromJson,
  )
  final enums.DayOfWeek? dayOfWeek;
  @JsonKey(name: 'from')
  final String? from;
  @JsonKey(name: 'to')
  final String? to;
  @JsonKey(name: 'promoId')
  final String? promoId;
  static const fromJsonFactory = _$PromoWorkingTimeViewModelFromJson;
  static const toJsonFactory = _$PromoWorkingTimeViewModelToJson;
  Map<String, dynamic> toJson() => _$PromoWorkingTimeViewModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PromoWorkingTimeViewModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.promoId, promoId) ||
                const DeepCollectionEquality().equals(other.promoId, promoId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(promoId) ^
      runtimeType.hashCode;
}

extension $PromoWorkingTimeViewModelExtension on PromoWorkingTimeViewModel {
  PromoWorkingTimeViewModel copyWith(
      {String? id,
      enums.DayOfWeek? dayOfWeek,
      String? from,
      String? to,
      String? promoId}) {
    return PromoWorkingTimeViewModel(
        id: id ?? this.id,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        from: from ?? this.from,
        to: to ?? this.to,
        promoId: promoId ?? this.promoId);
  }

  PromoWorkingTimeViewModel copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.DayOfWeek?>? dayOfWeek,
      Wrapped<String?>? from,
      Wrapped<String?>? to,
      Wrapped<String?>? promoId}) {
    return PromoWorkingTimeViewModel(
        id: (id != null ? id.value : this.id),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        from: (from != null ? from.value : this.from),
        to: (to != null ? to.value : this.to),
        promoId: (promoId != null ? promoId.value : this.promoId));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdatePromoCommand {
  UpdatePromoCommand({
    this.id,
    this.name,
    this.description,
    this.active,
    this.type,
    this.price,
    this.discountModifier,
    this.imageId,
    this.productSizeId,
    this.categoryId,
    this.restaurantId,
    this.promoWorkingTimes,
  });

  factory UpdatePromoCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdatePromoCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(
    name: 'type',
    toJson: promoTypeToJson,
    fromJson: promoTypeFromJson,
  )
  final enums.PromoType? type;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'discountModifier')
  final double? discountModifier;
  @JsonKey(name: 'imageId')
  final String? imageId;
  @JsonKey(name: 'productSizeId')
  final String? productSizeId;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  @JsonKey(
      name: 'promoWorkingTimes', defaultValue: <PromoWorkingTimeViewModel>[])
  final List<PromoWorkingTimeViewModel>? promoWorkingTimes;
  static const fromJsonFactory = _$UpdatePromoCommandFromJson;
  static const toJsonFactory = _$UpdatePromoCommandToJson;
  Map<String, dynamic> toJson() => _$UpdatePromoCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePromoCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountModifier, discountModifier) ||
                const DeepCollectionEquality()
                    .equals(other.discountModifier, discountModifier)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.productSizeId, productSizeId) ||
                const DeepCollectionEquality()
                    .equals(other.productSizeId, productSizeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.promoWorkingTimes, promoWorkingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.promoWorkingTimes, promoWorkingTimes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountModifier) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(productSizeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(promoWorkingTimes) ^
      runtimeType.hashCode;
}

extension $UpdatePromoCommandExtension on UpdatePromoCommand {
  UpdatePromoCommand copyWith(
      {String? id,
      String? name,
      String? description,
      bool? active,
      enums.PromoType? type,
      double? price,
      double? discountModifier,
      String? imageId,
      String? productSizeId,
      String? categoryId,
      String? restaurantId,
      List<PromoWorkingTimeViewModel>? promoWorkingTimes}) {
    return UpdatePromoCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        active: active ?? this.active,
        type: type ?? this.type,
        price: price ?? this.price,
        discountModifier: discountModifier ?? this.discountModifier,
        imageId: imageId ?? this.imageId,
        productSizeId: productSizeId ?? this.productSizeId,
        categoryId: categoryId ?? this.categoryId,
        restaurantId: restaurantId ?? this.restaurantId,
        promoWorkingTimes: promoWorkingTimes ?? this.promoWorkingTimes);
  }

  UpdatePromoCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<bool?>? active,
      Wrapped<enums.PromoType?>? type,
      Wrapped<double?>? price,
      Wrapped<double?>? discountModifier,
      Wrapped<String?>? imageId,
      Wrapped<String?>? productSizeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? restaurantId,
      Wrapped<List<PromoWorkingTimeViewModel>?>? promoWorkingTimes}) {
    return UpdatePromoCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        active: (active != null ? active.value : this.active),
        type: (type != null ? type.value : this.type),
        price: (price != null ? price.value : this.price),
        discountModifier: (discountModifier != null
            ? discountModifier.value
            : this.discountModifier),
        imageId: (imageId != null ? imageId.value : this.imageId),
        productSizeId:
            (productSizeId != null ? productSizeId.value : this.productSizeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId),
        promoWorkingTimes: (promoWorkingTimes != null
            ? promoWorkingTimes.value
            : this.promoWorkingTimes));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfRestaurantCodeGenDto {
  PaginatedListOfRestaurantCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfRestaurantCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfRestaurantCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <RestaurantCodeGenDto>[])
  final List<RestaurantCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfRestaurantCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfRestaurantCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfRestaurantCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfRestaurantCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfRestaurantCodeGenDtoExtension
    on PaginatedListOfRestaurantCodeGenDto {
  PaginatedListOfRestaurantCodeGenDto copyWith(
      {List<RestaurantCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfRestaurantCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfRestaurantCodeGenDto copyWithWrapped(
      {Wrapped<List<RestaurantCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfRestaurantCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateRestaurantCommand {
  CreateRestaurantCommand({
    this.name,
    this.logoId,
    this.description,
    this.isActive,
    this.takeout,
    this.addressId,
    this.phone,
    this.vk,
    this.facebook,
    this.instagram,
    this.minimalOrderPrice,
    this.normalDeliveryTime,
    this.workingTimes,
    this.employees,
  });

  factory CreateRestaurantCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateRestaurantCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'logoId')
  final String? logoId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'takeout')
  final bool? takeout;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'vk')
  final String? vk;
  @JsonKey(name: 'facebook')
  final String? facebook;
  @JsonKey(name: 'instagram')
  final String? instagram;
  @JsonKey(name: 'minimalOrderPrice')
  final double? minimalOrderPrice;
  @JsonKey(name: 'normalDeliveryTime')
  final double? normalDeliveryTime;
  @JsonKey(
      name: 'workingTimes', defaultValue: <RestaurantWorkingTimeViewModel>[])
  final List<RestaurantWorkingTimeViewModel>? workingTimes;
  @JsonKey(name: 'employees', defaultValue: <String>[])
  final List<String>? employees;
  static const fromJsonFactory = _$CreateRestaurantCommandFromJson;
  static const toJsonFactory = _$CreateRestaurantCommandToJson;
  Map<String, dynamic> toJson() => _$CreateRestaurantCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateRestaurantCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.logoId, logoId) ||
                const DeepCollectionEquality().equals(other.logoId, logoId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.takeout, takeout) ||
                const DeepCollectionEquality()
                    .equals(other.takeout, takeout)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.vk, vk) ||
                const DeepCollectionEquality().equals(other.vk, vk)) &&
            (identical(other.facebook, facebook) ||
                const DeepCollectionEquality()
                    .equals(other.facebook, facebook)) &&
            (identical(other.instagram, instagram) ||
                const DeepCollectionEquality()
                    .equals(other.instagram, instagram)) &&
            (identical(other.minimalOrderPrice, minimalOrderPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minimalOrderPrice, minimalOrderPrice)) &&
            (identical(other.normalDeliveryTime, normalDeliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.normalDeliveryTime, normalDeliveryTime)) &&
            (identical(other.workingTimes, workingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.workingTimes, workingTimes)) &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(logoId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(takeout) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(vk) ^
      const DeepCollectionEquality().hash(facebook) ^
      const DeepCollectionEquality().hash(instagram) ^
      const DeepCollectionEquality().hash(minimalOrderPrice) ^
      const DeepCollectionEquality().hash(normalDeliveryTime) ^
      const DeepCollectionEquality().hash(workingTimes) ^
      const DeepCollectionEquality().hash(employees) ^
      runtimeType.hashCode;
}

extension $CreateRestaurantCommandExtension on CreateRestaurantCommand {
  CreateRestaurantCommand copyWith(
      {String? name,
      String? logoId,
      String? description,
      bool? isActive,
      bool? takeout,
      String? addressId,
      String? phone,
      String? vk,
      String? facebook,
      String? instagram,
      double? minimalOrderPrice,
      double? normalDeliveryTime,
      List<RestaurantWorkingTimeViewModel>? workingTimes,
      List<String>? employees}) {
    return CreateRestaurantCommand(
        name: name ?? this.name,
        logoId: logoId ?? this.logoId,
        description: description ?? this.description,
        isActive: isActive ?? this.isActive,
        takeout: takeout ?? this.takeout,
        addressId: addressId ?? this.addressId,
        phone: phone ?? this.phone,
        vk: vk ?? this.vk,
        facebook: facebook ?? this.facebook,
        instagram: instagram ?? this.instagram,
        minimalOrderPrice: minimalOrderPrice ?? this.minimalOrderPrice,
        normalDeliveryTime: normalDeliveryTime ?? this.normalDeliveryTime,
        workingTimes: workingTimes ?? this.workingTimes,
        employees: employees ?? this.employees);
  }

  CreateRestaurantCommand copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? logoId,
      Wrapped<String?>? description,
      Wrapped<bool?>? isActive,
      Wrapped<bool?>? takeout,
      Wrapped<String?>? addressId,
      Wrapped<String?>? phone,
      Wrapped<String?>? vk,
      Wrapped<String?>? facebook,
      Wrapped<String?>? instagram,
      Wrapped<double?>? minimalOrderPrice,
      Wrapped<double?>? normalDeliveryTime,
      Wrapped<List<RestaurantWorkingTimeViewModel>?>? workingTimes,
      Wrapped<List<String>?>? employees}) {
    return CreateRestaurantCommand(
        name: (name != null ? name.value : this.name),
        logoId: (logoId != null ? logoId.value : this.logoId),
        description:
            (description != null ? description.value : this.description),
        isActive: (isActive != null ? isActive.value : this.isActive),
        takeout: (takeout != null ? takeout.value : this.takeout),
        addressId: (addressId != null ? addressId.value : this.addressId),
        phone: (phone != null ? phone.value : this.phone),
        vk: (vk != null ? vk.value : this.vk),
        facebook: (facebook != null ? facebook.value : this.facebook),
        instagram: (instagram != null ? instagram.value : this.instagram),
        minimalOrderPrice: (minimalOrderPrice != null
            ? minimalOrderPrice.value
            : this.minimalOrderPrice),
        normalDeliveryTime: (normalDeliveryTime != null
            ? normalDeliveryTime.value
            : this.normalDeliveryTime),
        workingTimes:
            (workingTimes != null ? workingTimes.value : this.workingTimes),
        employees: (employees != null ? employees.value : this.employees));
  }
}

@JsonSerializable(explicitToJson: true)
class RestaurantWorkingTimeViewModel {
  RestaurantWorkingTimeViewModel({
    this.id,
    this.dayOfWeek,
    this.opensAt,
    this.acceptsOrdersUntil,
    this.closesAt,
    this.restaurantId,
  });

  factory RestaurantWorkingTimeViewModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantWorkingTimeViewModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: dayOfWeekToJson,
    fromJson: dayOfWeekFromJson,
  )
  final enums.DayOfWeek? dayOfWeek;
  @JsonKey(name: 'opensAt')
  final String? opensAt;
  @JsonKey(name: 'acceptsOrdersUntil')
  final String? acceptsOrdersUntil;
  @JsonKey(name: 'closesAt')
  final String? closesAt;
  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  static const fromJsonFactory = _$RestaurantWorkingTimeViewModelFromJson;
  static const toJsonFactory = _$RestaurantWorkingTimeViewModelToJson;
  Map<String, dynamic> toJson() => _$RestaurantWorkingTimeViewModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestaurantWorkingTimeViewModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.opensAt, opensAt) ||
                const DeepCollectionEquality()
                    .equals(other.opensAt, opensAt)) &&
            (identical(other.acceptsOrdersUntil, acceptsOrdersUntil) ||
                const DeepCollectionEquality()
                    .equals(other.acceptsOrdersUntil, acceptsOrdersUntil)) &&
            (identical(other.closesAt, closesAt) ||
                const DeepCollectionEquality()
                    .equals(other.closesAt, closesAt)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(opensAt) ^
      const DeepCollectionEquality().hash(acceptsOrdersUntil) ^
      const DeepCollectionEquality().hash(closesAt) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      runtimeType.hashCode;
}

extension $RestaurantWorkingTimeViewModelExtension
    on RestaurantWorkingTimeViewModel {
  RestaurantWorkingTimeViewModel copyWith(
      {String? id,
      enums.DayOfWeek? dayOfWeek,
      String? opensAt,
      String? acceptsOrdersUntil,
      String? closesAt,
      String? restaurantId}) {
    return RestaurantWorkingTimeViewModel(
        id: id ?? this.id,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        opensAt: opensAt ?? this.opensAt,
        acceptsOrdersUntil: acceptsOrdersUntil ?? this.acceptsOrdersUntil,
        closesAt: closesAt ?? this.closesAt,
        restaurantId: restaurantId ?? this.restaurantId);
  }

  RestaurantWorkingTimeViewModel copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<enums.DayOfWeek?>? dayOfWeek,
      Wrapped<String?>? opensAt,
      Wrapped<String?>? acceptsOrdersUntil,
      Wrapped<String?>? closesAt,
      Wrapped<String?>? restaurantId}) {
    return RestaurantWorkingTimeViewModel(
        id: (id != null ? id.value : this.id),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        opensAt: (opensAt != null ? opensAt.value : this.opensAt),
        acceptsOrdersUntil: (acceptsOrdersUntil != null
            ? acceptsOrdersUntil.value
            : this.acceptsOrdersUntil),
        closesAt: (closesAt != null ? closesAt.value : this.closesAt),
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId));
  }
}

@JsonSerializable(explicitToJson: true)
class CopyRestaurantCommand {
  CopyRestaurantCommand({
    this.restaurantId,
  });

  factory CopyRestaurantCommand.fromJson(Map<String, dynamic> json) =>
      _$CopyRestaurantCommandFromJson(json);

  @JsonKey(name: 'restaurantId')
  final String? restaurantId;
  static const fromJsonFactory = _$CopyRestaurantCommandFromJson;
  static const toJsonFactory = _$CopyRestaurantCommandToJson;
  Map<String, dynamic> toJson() => _$CopyRestaurantCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyRestaurantCommand &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(restaurantId) ^ runtimeType.hashCode;
}

extension $CopyRestaurantCommandExtension on CopyRestaurantCommand {
  CopyRestaurantCommand copyWith({String? restaurantId}) {
    return CopyRestaurantCommand(
        restaurantId: restaurantId ?? this.restaurantId);
  }

  CopyRestaurantCommand copyWithWrapped({Wrapped<String?>? restaurantId}) {
    return CopyRestaurantCommand(
        restaurantId:
            (restaurantId != null ? restaurantId.value : this.restaurantId));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateRestaurantCommand {
  UpdateRestaurantCommand({
    this.id,
    this.name,
    this.logoId,
    this.description,
    this.isActive,
    this.takeout,
    this.addressId,
    this.phone,
    this.vk,
    this.facebook,
    this.instagram,
    this.minimalOrderPrice,
    this.normalDeliveryTime,
    this.deliveryTime,
    this.workingTimes,
    this.employees,
  });

  factory UpdateRestaurantCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateRestaurantCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'logoId')
  final String? logoId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'takeout')
  final bool? takeout;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'vk')
  final String? vk;
  @JsonKey(name: 'facebook')
  final String? facebook;
  @JsonKey(name: 'instagram')
  final String? instagram;
  @JsonKey(name: 'minimalOrderPrice')
  final double? minimalOrderPrice;
  @JsonKey(name: 'normalDeliveryTime')
  final double? normalDeliveryTime;
  @JsonKey(name: 'deliveryTime')
  final double? deliveryTime;
  @JsonKey(
      name: 'workingTimes', defaultValue: <RestaurantWorkingTimeViewModel>[])
  final List<RestaurantWorkingTimeViewModel>? workingTimes;
  @JsonKey(name: 'employees', defaultValue: <String>[])
  final List<String>? employees;
  static const fromJsonFactory = _$UpdateRestaurantCommandFromJson;
  static const toJsonFactory = _$UpdateRestaurantCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateRestaurantCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRestaurantCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.logoId, logoId) ||
                const DeepCollectionEquality().equals(other.logoId, logoId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.takeout, takeout) ||
                const DeepCollectionEquality()
                    .equals(other.takeout, takeout)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.vk, vk) ||
                const DeepCollectionEquality().equals(other.vk, vk)) &&
            (identical(other.facebook, facebook) ||
                const DeepCollectionEquality()
                    .equals(other.facebook, facebook)) &&
            (identical(other.instagram, instagram) ||
                const DeepCollectionEquality()
                    .equals(other.instagram, instagram)) &&
            (identical(other.minimalOrderPrice, minimalOrderPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minimalOrderPrice, minimalOrderPrice)) &&
            (identical(other.normalDeliveryTime, normalDeliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.normalDeliveryTime, normalDeliveryTime)) &&
            (identical(other.deliveryTime, deliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryTime, deliveryTime)) &&
            (identical(other.workingTimes, workingTimes) ||
                const DeepCollectionEquality()
                    .equals(other.workingTimes, workingTimes)) &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(logoId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(takeout) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(vk) ^
      const DeepCollectionEquality().hash(facebook) ^
      const DeepCollectionEquality().hash(instagram) ^
      const DeepCollectionEquality().hash(minimalOrderPrice) ^
      const DeepCollectionEquality().hash(normalDeliveryTime) ^
      const DeepCollectionEquality().hash(deliveryTime) ^
      const DeepCollectionEquality().hash(workingTimes) ^
      const DeepCollectionEquality().hash(employees) ^
      runtimeType.hashCode;
}

extension $UpdateRestaurantCommandExtension on UpdateRestaurantCommand {
  UpdateRestaurantCommand copyWith(
      {String? id,
      String? name,
      String? logoId,
      String? description,
      bool? isActive,
      bool? takeout,
      String? addressId,
      String? phone,
      String? vk,
      String? facebook,
      String? instagram,
      double? minimalOrderPrice,
      double? normalDeliveryTime,
      double? deliveryTime,
      List<RestaurantWorkingTimeViewModel>? workingTimes,
      List<String>? employees}) {
    return UpdateRestaurantCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        logoId: logoId ?? this.logoId,
        description: description ?? this.description,
        isActive: isActive ?? this.isActive,
        takeout: takeout ?? this.takeout,
        addressId: addressId ?? this.addressId,
        phone: phone ?? this.phone,
        vk: vk ?? this.vk,
        facebook: facebook ?? this.facebook,
        instagram: instagram ?? this.instagram,
        minimalOrderPrice: minimalOrderPrice ?? this.minimalOrderPrice,
        normalDeliveryTime: normalDeliveryTime ?? this.normalDeliveryTime,
        deliveryTime: deliveryTime ?? this.deliveryTime,
        workingTimes: workingTimes ?? this.workingTimes,
        employees: employees ?? this.employees);
  }

  UpdateRestaurantCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? logoId,
      Wrapped<String?>? description,
      Wrapped<bool?>? isActive,
      Wrapped<bool?>? takeout,
      Wrapped<String?>? addressId,
      Wrapped<String?>? phone,
      Wrapped<String?>? vk,
      Wrapped<String?>? facebook,
      Wrapped<String?>? instagram,
      Wrapped<double?>? minimalOrderPrice,
      Wrapped<double?>? normalDeliveryTime,
      Wrapped<double?>? deliveryTime,
      Wrapped<List<RestaurantWorkingTimeViewModel>?>? workingTimes,
      Wrapped<List<String>?>? employees}) {
    return UpdateRestaurantCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        logoId: (logoId != null ? logoId.value : this.logoId),
        description:
            (description != null ? description.value : this.description),
        isActive: (isActive != null ? isActive.value : this.isActive),
        takeout: (takeout != null ? takeout.value : this.takeout),
        addressId: (addressId != null ? addressId.value : this.addressId),
        phone: (phone != null ? phone.value : this.phone),
        vk: (vk != null ? vk.value : this.vk),
        facebook: (facebook != null ? facebook.value : this.facebook),
        instagram: (instagram != null ? instagram.value : this.instagram),
        minimalOrderPrice: (minimalOrderPrice != null
            ? minimalOrderPrice.value
            : this.minimalOrderPrice),
        normalDeliveryTime: (normalDeliveryTime != null
            ? normalDeliveryTime.value
            : this.normalDeliveryTime),
        deliveryTime:
            (deliveryTime != null ? deliveryTime.value : this.deliveryTime),
        workingTimes:
            (workingTimes != null ? workingTimes.value : this.workingTimes),
        employees: (employees != null ? employees.value : this.employees));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateDeliveryTimeCommand {
  UpdateDeliveryTimeCommand({
    this.id,
    this.deliveryTime,
  });

  factory UpdateDeliveryTimeCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateDeliveryTimeCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'deliveryTime')
  final double? deliveryTime;
  static const fromJsonFactory = _$UpdateDeliveryTimeCommandFromJson;
  static const toJsonFactory = _$UpdateDeliveryTimeCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateDeliveryTimeCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateDeliveryTimeCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.deliveryTime, deliveryTime) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryTime, deliveryTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(deliveryTime) ^
      runtimeType.hashCode;
}

extension $UpdateDeliveryTimeCommandExtension on UpdateDeliveryTimeCommand {
  UpdateDeliveryTimeCommand copyWith({String? id, double? deliveryTime}) {
    return UpdateDeliveryTimeCommand(
        id: id ?? this.id, deliveryTime: deliveryTime ?? this.deliveryTime);
  }

  UpdateDeliveryTimeCommand copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<double?>? deliveryTime}) {
    return UpdateDeliveryTimeCommand(
        id: (id != null ? id.value : this.id),
        deliveryTime:
            (deliveryTime != null ? deliveryTime.value : this.deliveryTime));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfReviewCodeGenDto {
  PaginatedListOfReviewCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfReviewCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedListOfReviewCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <ReviewCodeGenDto>[])
  final List<ReviewCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfReviewCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfReviewCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfReviewCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfReviewCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfReviewCodeGenDtoExtension
    on PaginatedListOfReviewCodeGenDto {
  PaginatedListOfReviewCodeGenDto copyWith(
      {List<ReviewCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfReviewCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfReviewCodeGenDto copyWithWrapped(
      {Wrapped<List<ReviewCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfReviewCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateReviewCommand {
  CreateReviewCommand({
    this.comment,
    this.orderId,
    this.mark,
  });

  factory CreateReviewCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateReviewCommandFromJson(json);

  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'orderId')
  final String? orderId;
  @JsonKey(
    name: 'mark',
    toJson: markToJson,
    fromJson: markFromJson,
  )
  final enums.Mark? mark;
  static const fromJsonFactory = _$CreateReviewCommandFromJson;
  static const toJsonFactory = _$CreateReviewCommandToJson;
  Map<String, dynamic> toJson() => _$CreateReviewCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateReviewCommand &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.mark, mark) ||
                const DeepCollectionEquality().equals(other.mark, mark)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(mark) ^
      runtimeType.hashCode;
}

extension $CreateReviewCommandExtension on CreateReviewCommand {
  CreateReviewCommand copyWith(
      {String? comment, String? orderId, enums.Mark? mark}) {
    return CreateReviewCommand(
        comment: comment ?? this.comment,
        orderId: orderId ?? this.orderId,
        mark: mark ?? this.mark);
  }

  CreateReviewCommand copyWithWrapped(
      {Wrapped<String?>? comment,
      Wrapped<String?>? orderId,
      Wrapped<enums.Mark?>? mark}) {
    return CreateReviewCommand(
        comment: (comment != null ? comment.value : this.comment),
        orderId: (orderId != null ? orderId.value : this.orderId),
        mark: (mark != null ? mark.value : this.mark));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfTagCodeGenDto {
  PaginatedListOfTagCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfTagCodeGenDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedListOfTagCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <TagCodeGenDto>[])
  final List<TagCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory = _$PaginatedListOfTagCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfTagCodeGenDtoToJson;
  Map<String, dynamic> toJson() => _$PaginatedListOfTagCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfTagCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfTagCodeGenDtoExtension
    on PaginatedListOfTagCodeGenDto {
  PaginatedListOfTagCodeGenDto copyWith(
      {List<TagCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfTagCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfTagCodeGenDto copyWithWrapped(
      {Wrapped<List<TagCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfTagCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTagCommand {
  CreateTagCommand({
    this.name,
    this.imageId,
  });

  factory CreateTagCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateTagCommandFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  static const fromJsonFactory = _$CreateTagCommandFromJson;
  static const toJsonFactory = _$CreateTagCommandToJson;
  Map<String, dynamic> toJson() => _$CreateTagCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTagCommand &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality().equals(other.imageId, imageId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      runtimeType.hashCode;
}

extension $CreateTagCommandExtension on CreateTagCommand {
  CreateTagCommand copyWith({String? name, String? imageId}) {
    return CreateTagCommand(
        name: name ?? this.name, imageId: imageId ?? this.imageId);
  }

  CreateTagCommand copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? imageId}) {
    return CreateTagCommand(
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateTagCommand {
  UpdateTagCommand({
    this.id,
    this.name,
    this.imageId,
  });

  factory UpdateTagCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateTagCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageId')
  final String? imageId;
  static const fromJsonFactory = _$UpdateTagCommandFromJson;
  static const toJsonFactory = _$UpdateTagCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateTagCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTagCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality().equals(other.imageId, imageId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageId) ^
      runtimeType.hashCode;
}

extension $UpdateTagCommandExtension on UpdateTagCommand {
  UpdateTagCommand copyWith({String? id, String? name, String? imageId}) {
    return UpdateTagCommand(
        id: id ?? this.id,
        name: name ?? this.name,
        imageId: imageId ?? this.imageId);
  }

  UpdateTagCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? imageId}) {
    return UpdateTagCommand(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        imageId: (imageId != null ? imageId.value : this.imageId));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedListOfApplicationUserCodeGenDto {
  PaginatedListOfApplicationUserCodeGenDto({
    this.items,
    this.pageIndex,
    this.totalPages,
    this.totalCount,
    this.hasPreviousPage,
    this.hasNextPage,
  });

  factory PaginatedListOfApplicationUserCodeGenDto.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatedListOfApplicationUserCodeGenDtoFromJson(json);

  @JsonKey(name: 'items', defaultValue: <ApplicationUserCodeGenDto>[])
  final List<ApplicationUserCodeGenDto>? items;
  @JsonKey(name: 'pageIndex')
  final int? pageIndex;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  static const fromJsonFactory =
      _$PaginatedListOfApplicationUserCodeGenDtoFromJson;
  static const toJsonFactory = _$PaginatedListOfApplicationUserCodeGenDtoToJson;
  Map<String, dynamic> toJson() =>
      _$PaginatedListOfApplicationUserCodeGenDtoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedListOfApplicationUserCodeGenDto &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousPage, hasPreviousPage)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(hasPreviousPage) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      runtimeType.hashCode;
}

extension $PaginatedListOfApplicationUserCodeGenDtoExtension
    on PaginatedListOfApplicationUserCodeGenDto {
  PaginatedListOfApplicationUserCodeGenDto copyWith(
      {List<ApplicationUserCodeGenDto>? items,
      int? pageIndex,
      int? totalPages,
      int? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage}) {
    return PaginatedListOfApplicationUserCodeGenDto(
        items: items ?? this.items,
        pageIndex: pageIndex ?? this.pageIndex,
        totalPages: totalPages ?? this.totalPages,
        totalCount: totalCount ?? this.totalCount,
        hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
        hasNextPage: hasNextPage ?? this.hasNextPage);
  }

  PaginatedListOfApplicationUserCodeGenDto copyWithWrapped(
      {Wrapped<List<ApplicationUserCodeGenDto>?>? items,
      Wrapped<int?>? pageIndex,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalCount,
      Wrapped<bool?>? hasPreviousPage,
      Wrapped<bool?>? hasNextPage}) {
    return PaginatedListOfApplicationUserCodeGenDto(
        items: (items != null ? items.value : this.items),
        pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalCount: (totalCount != null ? totalCount.value : this.totalCount),
        hasPreviousPage: (hasPreviousPage != null
            ? hasPreviousPage.value
            : this.hasPreviousPage),
        hasNextPage:
            (hasNextPage != null ? hasNextPage.value : this.hasNextPage));
  }
}

@JsonSerializable(explicitToJson: true)
class GetAvailableRolesQuery {
  GetAvailableRolesQuery();

  factory GetAvailableRolesQuery.fromJson(Map<String, dynamic> json) =>
      _$GetAvailableRolesQueryFromJson(json);

  static const fromJsonFactory = _$GetAvailableRolesQueryFromJson;
  static const toJsonFactory = _$GetAvailableRolesQueryToJson;
  Map<String, dynamic> toJson() => _$GetAvailableRolesQueryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class CreateUserCommand {
  CreateUserCommand({
    this.userName,
    this.displayName,
    this.email,
    this.phoneNumber,
    this.role,
  });

  factory CreateUserCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateUserCommandFromJson(json);

  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'role')
  final String? role;
  static const fromJsonFactory = _$CreateUserCommandFromJson;
  static const toJsonFactory = _$CreateUserCommandToJson;
  Map<String, dynamic> toJson() => _$CreateUserCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUserCommand &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $CreateUserCommandExtension on CreateUserCommand {
  CreateUserCommand copyWith(
      {String? userName,
      String? displayName,
      String? email,
      String? phoneNumber,
      String? role}) {
    return CreateUserCommand(
        userName: userName ?? this.userName,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        role: role ?? this.role);
  }

  CreateUserCommand copyWithWrapped(
      {Wrapped<String?>? userName,
      Wrapped<String?>? displayName,
      Wrapped<String?>? email,
      Wrapped<String?>? phoneNumber,
      Wrapped<String?>? role}) {
    return CreateUserCommand(
        userName: (userName != null ? userName.value : this.userName),
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        email: (email != null ? email.value : this.email),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserCommand {
  UpdateUserCommand({
    this.id,
    this.userName,
    this.displayName,
    this.email,
    this.phoneNumber,
    this.role,
  });

  factory UpdateUserCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserCommandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'role')
  final String? role;
  static const fromJsonFactory = _$UpdateUserCommandFromJson;
  static const toJsonFactory = _$UpdateUserCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateUserCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserCommand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $UpdateUserCommandExtension on UpdateUserCommand {
  UpdateUserCommand copyWith(
      {String? id,
      String? userName,
      String? displayName,
      String? email,
      String? phoneNumber,
      String? role}) {
    return UpdateUserCommand(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        role: role ?? this.role);
  }

  UpdateUserCommand copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? userName,
      Wrapped<String?>? displayName,
      Wrapped<String?>? email,
      Wrapped<String?>? phoneNumber,
      Wrapped<String?>? role}) {
    return UpdateUserCommand(
        id: (id != null ? id.value : this.id),
        userName: (userName != null ? userName.value : this.userName),
        displayName:
            (displayName != null ? displayName.value : this.displayName),
        email: (email != null ? email.value : this.email),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class AssignUserToRoleCommand {
  AssignUserToRoleCommand({
    this.userId,
    this.role,
  });

  factory AssignUserToRoleCommand.fromJson(Map<String, dynamic> json) =>
      _$AssignUserToRoleCommandFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'role')
  final String? role;
  static const fromJsonFactory = _$AssignUserToRoleCommandFromJson;
  static const toJsonFactory = _$AssignUserToRoleCommandToJson;
  Map<String, dynamic> toJson() => _$AssignUserToRoleCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AssignUserToRoleCommand &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $AssignUserToRoleCommandExtension on AssignUserToRoleCommand {
  AssignUserToRoleCommand copyWith({String? userId, String? role}) {
    return AssignUserToRoleCommand(
        userId: userId ?? this.userId, role: role ?? this.role);
  }

  AssignUserToRoleCommand copyWithWrapped(
      {Wrapped<String?>? userId, Wrapped<String?>? role}) {
    return AssignUserToRoleCommand(
        userId: (userId != null ? userId.value : this.userId),
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserAddressesCommand {
  UpdateUserAddressesCommand({
    this.userId,
    this.addresses,
  });

  factory UpdateUserAddressesCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserAddressesCommandFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'addresses', defaultValue: <String>[])
  final List<String>? addresses;
  static const fromJsonFactory = _$UpdateUserAddressesCommandFromJson;
  static const toJsonFactory = _$UpdateUserAddressesCommandToJson;
  Map<String, dynamic> toJson() => _$UpdateUserAddressesCommandToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserAddressesCommand &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(addresses) ^
      runtimeType.hashCode;
}

extension $UpdateUserAddressesCommandExtension on UpdateUserAddressesCommand {
  UpdateUserAddressesCommand copyWith(
      {String? userId, List<String>? addresses}) {
    return UpdateUserAddressesCommand(
        userId: userId ?? this.userId, addresses: addresses ?? this.addresses);
  }

  UpdateUserAddressesCommand copyWithWrapped(
      {Wrapped<String?>? userId, Wrapped<List<String>?>? addresses}) {
    return UpdateUserAddressesCommand(
        userId: (userId != null ? userId.value : this.userId),
        addresses: (addresses != null ? addresses.value : this.addresses));
  }
}

int? dayOfWeekToJson(enums.DayOfWeek? dayOfWeek) {
  return enums.$DayOfWeekMap[dayOfWeek];
}

enums.DayOfWeek dayOfWeekFromJson(
  Object? dayOfWeek, [
  enums.DayOfWeek? defaultValue,
]) {
  if (dayOfWeek is int) {
    return enums.$DayOfWeekMap.entries
        .firstWhere((element) => element.value == dayOfWeek,
            orElse: () =>
                const MapEntry(enums.DayOfWeek.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$DayOfWeekMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.DayOfWeek.swaggerGeneratedUnknown;
}

List<int> dayOfWeekListToJson(List<enums.DayOfWeek>? dayOfWeek) {
  if (dayOfWeek == null) {
    return [];
  }

  return dayOfWeek.map((e) => enums.$DayOfWeekMap[e]!).toList();
}

List<enums.DayOfWeek> dayOfWeekListFromJson(
  List? dayOfWeek, [
  List<enums.DayOfWeek>? defaultValue,
]) {
  if (dayOfWeek == null) {
    return defaultValue ?? [];
  }

  return dayOfWeek.map((e) => dayOfWeekFromJson(e.toString())).toList();
}

List<enums.DayOfWeek>? dayOfWeekNullableListFromJson(
  List? dayOfWeek, [
  List<enums.DayOfWeek>? defaultValue,
]) {
  if (dayOfWeek == null) {
    return defaultValue;
  }

  return dayOfWeek.map((e) => dayOfWeekFromJson(e.toString())).toList();
}

int? orderStatusToJson(enums.OrderStatus? orderStatus) {
  return enums.$OrderStatusMap[orderStatus];
}

enums.OrderStatus orderStatusFromJson(
  Object? orderStatus, [
  enums.OrderStatus? defaultValue,
]) {
  if (orderStatus is int) {
    return enums.$OrderStatusMap.entries
        .firstWhere((element) => element.value == orderStatus,
            orElse: () =>
                const MapEntry(enums.OrderStatus.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$OrderStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.OrderStatus.swaggerGeneratedUnknown;
}

List<int> orderStatusListToJson(List<enums.OrderStatus>? orderStatus) {
  if (orderStatus == null) {
    return [];
  }

  return orderStatus.map((e) => enums.$OrderStatusMap[e]!).toList();
}

List<enums.OrderStatus> orderStatusListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue ?? [];
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

List<enums.OrderStatus>? orderStatusNullableListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue;
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

int? orderDeliveryToJson(enums.OrderDelivery? orderDelivery) {
  return enums.$OrderDeliveryMap[orderDelivery];
}

enums.OrderDelivery orderDeliveryFromJson(
  Object? orderDelivery, [
  enums.OrderDelivery? defaultValue,
]) {
  if (orderDelivery is int) {
    return enums.$OrderDeliveryMap.entries
        .firstWhere((element) => element.value == orderDelivery,
            orElse: () =>
                const MapEntry(enums.OrderDelivery.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$OrderDeliveryMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.OrderDelivery.swaggerGeneratedUnknown;
}

List<int> orderDeliveryListToJson(List<enums.OrderDelivery>? orderDelivery) {
  if (orderDelivery == null) {
    return [];
  }

  return orderDelivery.map((e) => enums.$OrderDeliveryMap[e]!).toList();
}

List<enums.OrderDelivery> orderDeliveryListFromJson(
  List? orderDelivery, [
  List<enums.OrderDelivery>? defaultValue,
]) {
  if (orderDelivery == null) {
    return defaultValue ?? [];
  }

  return orderDelivery.map((e) => orderDeliveryFromJson(e.toString())).toList();
}

List<enums.OrderDelivery>? orderDeliveryNullableListFromJson(
  List? orderDelivery, [
  List<enums.OrderDelivery>? defaultValue,
]) {
  if (orderDelivery == null) {
    return defaultValue;
  }

  return orderDelivery.map((e) => orderDeliveryFromJson(e.toString())).toList();
}

int? markToJson(enums.Mark? mark) {
  return enums.$MarkMap[mark];
}

enums.Mark markFromJson(
  Object? mark, [
  enums.Mark? defaultValue,
]) {
  if (mark is int) {
    return enums.$MarkMap.entries
        .firstWhere((element) => element.value == mark,
            orElse: () => const MapEntry(enums.Mark.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$MarkMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ?? defaultValue ?? enums.Mark.swaggerGeneratedUnknown;
}

List<int> markListToJson(List<enums.Mark>? mark) {
  if (mark == null) {
    return [];
  }

  return mark.map((e) => enums.$MarkMap[e]!).toList();
}

List<enums.Mark> markListFromJson(
  List? mark, [
  List<enums.Mark>? defaultValue,
]) {
  if (mark == null) {
    return defaultValue ?? [];
  }

  return mark.map((e) => markFromJson(e.toString())).toList();
}

List<enums.Mark>? markNullableListFromJson(
  List? mark, [
  List<enums.Mark>? defaultValue,
]) {
  if (mark == null) {
    return defaultValue;
  }

  return mark.map((e) => markFromJson(e.toString())).toList();
}

int? eventMessageTypeToJson(enums.EventMessageType? eventMessageType) {
  return enums.$EventMessageTypeMap[eventMessageType];
}

enums.EventMessageType eventMessageTypeFromJson(
  Object? eventMessageType, [
  enums.EventMessageType? defaultValue,
]) {
  if (eventMessageType is int) {
    return enums.$EventMessageTypeMap.entries
        .firstWhere((element) => element.value == eventMessageType,
            orElse: () => const MapEntry(
                enums.EventMessageType.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$EventMessageTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.EventMessageType.swaggerGeneratedUnknown;
}

List<int> eventMessageTypeListToJson(
    List<enums.EventMessageType>? eventMessageType) {
  if (eventMessageType == null) {
    return [];
  }

  return eventMessageType.map((e) => enums.$EventMessageTypeMap[e]!).toList();
}

List<enums.EventMessageType> eventMessageTypeListFromJson(
  List? eventMessageType, [
  List<enums.EventMessageType>? defaultValue,
]) {
  if (eventMessageType == null) {
    return defaultValue ?? [];
  }

  return eventMessageType
      .map((e) => eventMessageTypeFromJson(e.toString()))
      .toList();
}

List<enums.EventMessageType>? eventMessageTypeNullableListFromJson(
  List? eventMessageType, [
  List<enums.EventMessageType>? defaultValue,
]) {
  if (eventMessageType == null) {
    return defaultValue;
  }

  return eventMessageType
      .map((e) => eventMessageTypeFromJson(e.toString()))
      .toList();
}

int? promoTypeToJson(enums.PromoType? promoType) {
  return enums.$PromoTypeMap[promoType];
}

enums.PromoType promoTypeFromJson(
  Object? promoType, [
  enums.PromoType? defaultValue,
]) {
  if (promoType is int) {
    return enums.$PromoTypeMap.entries
        .firstWhere((element) => element.value == promoType,
            orElse: () =>
                const MapEntry(enums.PromoType.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PromoTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PromoType.swaggerGeneratedUnknown;
}

List<int> promoTypeListToJson(List<enums.PromoType>? promoType) {
  if (promoType == null) {
    return [];
  }

  return promoType.map((e) => enums.$PromoTypeMap[e]!).toList();
}

List<enums.PromoType> promoTypeListFromJson(
  List? promoType, [
  List<enums.PromoType>? defaultValue,
]) {
  if (promoType == null) {
    return defaultValue ?? [];
  }

  return promoType.map((e) => promoTypeFromJson(e.toString())).toList();
}

List<enums.PromoType>? promoTypeNullableListFromJson(
  List? promoType, [
  List<enums.PromoType>? defaultValue,
]) {
  if (promoType == null) {
    return defaultValue;
  }

  return promoType.map((e) => promoTypeFromJson(e.toString())).toList();
}

@JsonSerializable(explicitToJson: true)
class FilePost$RequestBody {
  FilePost$RequestBody({
    this.file,
  });

  factory FilePost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$FilePost$RequestBodyFromJson(json);

  @JsonKey(name: 'File')
  final String? file;
  static const fromJsonFactory = _$FilePost$RequestBodyFromJson;
  static const toJsonFactory = _$FilePost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$FilePost$RequestBodyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilePost$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $FilePost$RequestBodyExtension on FilePost$RequestBody {
  FilePost$RequestBody copyWith({String? file}) {
    return FilePost$RequestBody(file: file ?? this.file);
  }

  FilePost$RequestBody copyWithWrapped({Wrapped<String?>? file}) {
    return FilePost$RequestBody(file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class FileIdPut$RequestBody {
  FileIdPut$RequestBody({
    this.file,
  });

  factory FileIdPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$FileIdPut$RequestBodyFromJson(json);

  @JsonKey(name: 'File')
  final String? file;
  static const fromJsonFactory = _$FileIdPut$RequestBodyFromJson;
  static const toJsonFactory = _$FileIdPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$FileIdPut$RequestBodyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileIdPut$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $FileIdPut$RequestBodyExtension on FileIdPut$RequestBody {
  FileIdPut$RequestBody copyWith({String? file}) {
    return FileIdPut$RequestBody(file: file ?? this.file);
  }

  FileIdPut$RequestBody copyWithWrapped({Wrapped<String?>? file}) {
    return FileIdPut$RequestBody(file: (file != null ? file.value : this.file));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
