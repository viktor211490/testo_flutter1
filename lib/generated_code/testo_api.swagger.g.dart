// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testo_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationUserCodeGenDto _$ApplicationUserCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ApplicationUserCodeGenDto(
      displayName: json['displayName'] as String?,
      loyaltyPoints: json['loyaltyPoints'] as int?,
      restaurantId: json['restaurantId'] as String?,
      clientAddresses: (json['clientAddresses'] as List<dynamic>?)
              ?.map((e) =>
                  ClientAddressCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      roles: (json['roles'] as List<dynamic>?)
              ?.map((e) => ApplicationUserRoleCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      pushTokens: (json['pushTokens'] as List<dynamic>?)
              ?.map((e) => PushToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
    );

Map<String, dynamic> _$ApplicationUserCodeGenDtoToJson(
        ApplicationUserCodeGenDto instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'loyaltyPoints': instance.loyaltyPoints,
      'restaurantId': instance.restaurantId,
      'clientAddresses':
          instance.clientAddresses?.map((e) => e.toJson()).toList(),
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'pushTokens': instance.pushTokens?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'emailConfirmed': instance.emailConfirmed,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberConfirmed': instance.phoneNumberConfirmed,
    };

ClientAddressCodeGenDto _$ClientAddressCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ClientAddressCodeGenDto(
      isMainAddress: json['isMainAddress'] as bool?,
      clientId: json['clientId'] as String?,
      addressId: json['addressId'] as String?,
      address: json['address'],
    );

Map<String, dynamic> _$ClientAddressCodeGenDtoToJson(
        ClientAddressCodeGenDto instance) =>
    <String, dynamic>{
      'isMainAddress': instance.isMainAddress,
      'clientId': instance.clientId,
      'addressId': instance.addressId,
      'address': instance.address,
    };

AddressCodeGenDto _$AddressCodeGenDtoFromJson(Map<String, dynamic> json) =>
    AddressCodeGenDto(
      id: json['id'] as String?,
      region: json['region'] as String?,
      regionCode: json['regionCode'] as String?,
      district: json['district'] as String?,
      districtCode: json['districtCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      streetCode: json['streetCode'] as String?,
      house: json['house'] as String?,
      houseCode: json['houseCode'] as String?,
      flat: json['flat'] as String?,
      index: json['index'] as String?,
      fiasCode: json['fiasCode'] as String?,
      kladrCode: json['kladrCode'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      value: json['value'] as String?,
      frontDoor: json['frontDoor'] as String?,
      floor: json['floor'] as String?,
      doorPhone: json['doorPhone'] as String?,
    );

Map<String, dynamic> _$AddressCodeGenDtoToJson(AddressCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'region': instance.region,
      'regionCode': instance.regionCode,
      'district': instance.district,
      'districtCode': instance.districtCode,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'street': instance.street,
      'streetCode': instance.streetCode,
      'house': instance.house,
      'houseCode': instance.houseCode,
      'flat': instance.flat,
      'index': instance.index,
      'fiasCode': instance.fiasCode,
      'kladrCode': instance.kladrCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'value': instance.value,
      'frontDoor': instance.frontDoor,
      'floor': instance.floor,
      'doorPhone': instance.doorPhone,
    };

ApplicationUserRoleCodeGenDto _$ApplicationUserRoleCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ApplicationUserRoleCodeGenDto(
      role: json['role'],
      userId: json['userId'] as String?,
      roleId: json['roleId'] as String?,
    );

Map<String, dynamic> _$ApplicationUserRoleCodeGenDtoToJson(
        ApplicationUserRoleCodeGenDto instance) =>
    <String, dynamic>{
      'role': instance.role,
      'userId': instance.userId,
      'roleId': instance.roleId,
    };

ApplicationRoleCodeGenDto _$ApplicationRoleCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ApplicationRoleCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ApplicationRoleCodeGenDtoToJson(
        ApplicationRoleCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

PushToken _$PushTokenFromJson(Map<String, dynamic> json) => PushToken(
      id: json['id'] as String?,
      applicationUserId: json['applicationUserId'] as String?,
      applicationUser: json['applicationUser'],
      token: json['token'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$PushTokenToJson(PushToken instance) => <String, dynamic>{
      'id': instance.id,
      'applicationUserId': instance.applicationUserId,
      'applicationUser': instance.applicationUser,
      'token': instance.token,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ApplicationUser _$ApplicationUserFromJson(Map<String, dynamic> json) =>
    ApplicationUser(
      displayName: json['displayName'] as String?,
      loyaltyPoints: json['loyaltyPoints'] as int?,
      restaurantId: json['restaurantId'] as String?,
      restaurant: json['restaurant'],
      clientAddresses: (json['clientAddresses'] as List<dynamic>?)
              ?.map((e) => ClientAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      clientOrders: (json['clientOrders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      courierOrders: (json['courierOrders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      roles: (json['roles'] as List<dynamic>?)
              ?.map((e) =>
                  ApplicationUserRole.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      refreshTokens: (json['refreshTokens'] as List<dynamic>?)
              ?.map((e) => RefreshToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pushTokens: (json['pushTokens'] as List<dynamic>?)
              ?.map((e) => PushToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      normalizedUserName: json['normalizedUserName'] as String?,
      email: json['email'] as String?,
      normalizedEmail: json['normalizedEmail'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      passwordHash: json['passwordHash'] as String?,
      securityStamp: json['securityStamp'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
      twoFactorEnabled: json['twoFactorEnabled'] as bool?,
      lockoutEnd: json['lockoutEnd'] == null
          ? null
          : DateTime.parse(json['lockoutEnd'] as String),
      lockoutEnabled: json['lockoutEnabled'] as bool?,
      accessFailedCount: json['accessFailedCount'] as int?,
    );

Map<String, dynamic> _$ApplicationUserToJson(ApplicationUser instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'loyaltyPoints': instance.loyaltyPoints,
      'restaurantId': instance.restaurantId,
      'restaurant': instance.restaurant,
      'clientAddresses':
          instance.clientAddresses?.map((e) => e.toJson()).toList(),
      'clientOrders': instance.clientOrders?.map((e) => e.toJson()).toList(),
      'courierOrders': instance.courierOrders?.map((e) => e.toJson()).toList(),
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'refreshTokens': instance.refreshTokens?.map((e) => e.toJson()).toList(),
      'pushTokens': instance.pushTokens?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'userName': instance.userName,
      'normalizedUserName': instance.normalizedUserName,
      'email': instance.email,
      'normalizedEmail': instance.normalizedEmail,
      'emailConfirmed': instance.emailConfirmed,
      'passwordHash': instance.passwordHash,
      'securityStamp': instance.securityStamp,
      'concurrencyStamp': instance.concurrencyStamp,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberConfirmed': instance.phoneNumberConfirmed,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'lockoutEnd': instance.lockoutEnd?.toIso8601String(),
      'lockoutEnabled': instance.lockoutEnabled,
      'accessFailedCount': instance.accessFailedCount,
    };

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logoId: json['logoId'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool?,
      phone: json['phone'] as String?,
      vk: json['vk'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      minimalOrderPrice: (json['minimalOrderPrice'] as num?)?.toDouble(),
      normalDeliveryTime: (json['normalDeliveryTime'] as num?)?.toDouble(),
      deliveryTime: (json['deliveryTime'] as num?)?.toDouble(),
      takeout: json['takeout'] as bool?,
      addressId: json['addressId'] as String?,
      address: json['address'],
      workingTimes: (json['workingTimes'] as List<dynamic>?)
              ?.map((e) =>
                  RestaurantWorkingTime.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      employees: (json['employees'] as List<dynamic>?)
              ?.map((e) => ApplicationUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      domainEvents: (json['domainEvents'] as List<dynamic>?)
              ?.map((e) => DomainEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoId': instance.logoId,
      'description': instance.description,
      'isActive': instance.isActive,
      'phone': instance.phone,
      'vk': instance.vk,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'minimalOrderPrice': instance.minimalOrderPrice,
      'normalDeliveryTime': instance.normalDeliveryTime,
      'deliveryTime': instance.deliveryTime,
      'takeout': instance.takeout,
      'addressId': instance.addressId,
      'address': instance.address,
      'workingTimes': instance.workingTimes?.map((e) => e.toJson()).toList(),
      'employees': instance.employees?.map((e) => e.toJson()).toList(),
      'domainEvents': instance.domainEvents?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as String?,
      region: json['region'] as String?,
      regionCode: json['regionCode'] as String?,
      district: json['district'] as String?,
      districtCode: json['districtCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      streetCode: json['streetCode'] as String?,
      house: json['house'] as String?,
      houseCode: json['houseCode'] as String?,
      flat: json['flat'] as String?,
      index: json['index'] as String?,
      fiasCode: json['fiasCode'] as String?,
      kladrCode: json['kladrCode'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      value: json['value'] as String?,
      frontDoor: json['frontDoor'] as String?,
      floor: json['floor'] as String?,
      doorPhone: json['doorPhone'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'region': instance.region,
      'regionCode': instance.regionCode,
      'district': instance.district,
      'districtCode': instance.districtCode,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'street': instance.street,
      'streetCode': instance.streetCode,
      'house': instance.house,
      'houseCode': instance.houseCode,
      'flat': instance.flat,
      'index': instance.index,
      'fiasCode': instance.fiasCode,
      'kladrCode': instance.kladrCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'value': instance.value,
      'frontDoor': instance.frontDoor,
      'floor': instance.floor,
      'doorPhone': instance.doorPhone,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

AuditableEntity _$AuditableEntityFromJson(Map<String, dynamic> json) =>
    AuditableEntity(
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$AuditableEntityToJson(AuditableEntity instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

RestaurantWorkingTime _$RestaurantWorkingTimeFromJson(
        Map<String, dynamic> json) =>
    RestaurantWorkingTime(
      id: json['id'] as String?,
      dayOfWeek: dayOfWeekFromJson(json['dayOfWeek']),
      opensAt: json['opensAt'] as String?,
      acceptsOrdersUntil: json['acceptsOrdersUntil'] as String?,
      closesAt: json['closesAt'] as String?,
      restaurantId: json['restaurantId'] as String?,
      restaurant: json['restaurant'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$RestaurantWorkingTimeToJson(
        RestaurantWorkingTime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayOfWeek': dayOfWeekToJson(instance.dayOfWeek),
      'opensAt': instance.opensAt,
      'acceptsOrdersUntil': instance.acceptsOrdersUntil,
      'closesAt': instance.closesAt,
      'restaurantId': instance.restaurantId,
      'restaurant': instance.restaurant,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

DomainEvent _$DomainEventFromJson(Map<String, dynamic> json) => DomainEvent(
      isPublished: json['isPublished'] as bool?,
      dateOccurred: json['dateOccurred'] == null
          ? null
          : DateTime.parse(json['dateOccurred'] as String),
    );

Map<String, dynamic> _$DomainEventToJson(DomainEvent instance) =>
    <String, dynamic>{
      'isPublished': instance.isPublished,
      'dateOccurred': instance.dateOccurred?.toIso8601String(),
    };

ClientAddress _$ClientAddressFromJson(Map<String, dynamic> json) =>
    ClientAddress(
      isMainAddress: json['isMainAddress'] as bool?,
      clientId: json['clientId'] as String?,
      $client: json[r'$client'],
      addressId: json['addressId'] as String?,
      address: json['address'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ClientAddressToJson(ClientAddress instance) =>
    <String, dynamic>{
      'isMainAddress': instance.isMainAddress,
      'clientId': instance.clientId,
      r'$client': instance.$client,
      'addressId': instance.addressId,
      'address': instance.address,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String?,
      number: json['number'] as int?,
      status: orderStatusFromJson(json['status']),
      deliveryType: orderDeliveryFromJson(json['deliveryType']),
      changeFrom: (json['changeFrom'] as num?)?.toDouble(),
      finished: json['finished'] == null
          ? null
          : DateTime.parse(json['finished'] as String),
      comment: json['comment'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      personsCount: json['personsCount'] as int?,
      deliverToDate: json['deliverToDate'] as bool?,
      deliveryDate: json['deliveryDate'] as String?,
      clientId: json['clientId'] as String?,
      $client: json[r'$client'],
      courierId: json['courierId'] as String?,
      courier: json['courier'],
      addressId: json['addressId'] as String?,
      address: json['address'],
      restaurantId: json['restaurantId'] as String?,
      restaurant: json['restaurant'],
      paymentMethodId: json['paymentMethodId'] as String?,
      paymentMethod: json['paymentMethod'],
      reviewId: json['reviewId'] as String?,
      review: json['review'],
      orderDetails: (json['orderDetails'] as List<dynamic>?)
              ?.map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      orderStatusHistories: (json['orderStatusHistories'] as List<dynamic>?)
              ?.map(
                  (e) => OrderStatusHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      domainEvents: (json['domainEvents'] as List<dynamic>?)
              ?.map((e) => DomainEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'status': orderStatusToJson(instance.status),
      'deliveryType': orderDeliveryToJson(instance.deliveryType),
      'changeFrom': instance.changeFrom,
      'finished': instance.finished?.toIso8601String(),
      'comment': instance.comment,
      'price': instance.price,
      'personsCount': instance.personsCount,
      'deliverToDate': instance.deliverToDate,
      'deliveryDate': instance.deliveryDate,
      'clientId': instance.clientId,
      r'$client': instance.$client,
      'courierId': instance.courierId,
      'courier': instance.courier,
      'addressId': instance.addressId,
      'address': instance.address,
      'restaurantId': instance.restaurantId,
      'restaurant': instance.restaurant,
      'paymentMethodId': instance.paymentMethodId,
      'paymentMethod': instance.paymentMethod,
      'reviewId': instance.reviewId,
      'review': instance.review,
      'orderDetails': instance.orderDetails?.map((e) => e.toJson()).toList(),
      'orderStatusHistories':
          instance.orderStatusHistories?.map((e) => e.toJson()).toList(),
      'domainEvents': instance.domainEvents?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as String?,
      name: json['name'] as String?,
      hasVariants: json['hasVariants'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hasVariants': instance.hasVariants,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      id: json['id'] as String?,
      comment: json['comment'] as String?,
      orderId: json['orderId'] as String?,
      order: json['order'],
      mark: markFromJson(json['mark']),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'orderId': instance.orderId,
      'order': instance.order,
      'mark': markToJson(instance.mark),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => OrderDetail(
      id: json['id'] as String?,
      amount: json['amount'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      orderId: json['orderId'] as String?,
      order: json['order'],
      productId: json['productId'] as String?,
      product: json['product'],
      productSizeId: json['productSizeId'] as String?,
      productSize: json['productSize'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'price': instance.price,
      'orderId': instance.orderId,
      'order': instance.order,
      'productId': instance.productId,
      'product': instance.product,
      'productSizeId': instance.productSizeId,
      'productSize': instance.productSize,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      isComplex: json['isComplex'] as bool?,
      categoryId: json['categoryId'] as String?,
      category: json['category'],
      productTags: (json['productTags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productCompositions: (json['productCompositions'] as List<dynamic>?)
              ?.map(
                  (e) => ProductComposition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productIngredients: (json['productIngredients'] as List<dynamic>?)
              ?.map(
                  (e) => ProductIngredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productSizePrices: (json['productSizePrices'] as List<dynamic>?)
              ?.map((e) => ProductSizePrice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageId': instance.imageId,
      'description': instance.description,
      'price': instance.price,
      'weight': instance.weight,
      'isComplex': instance.isComplex,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'productTags': instance.productTags?.map((e) => e.toJson()).toList(),
      'productCompositions':
          instance.productCompositions?.map((e) => e.toJson()).toList(),
      'productIngredients':
          instance.productIngredients?.map((e) => e.toJson()).toList(),
      'productSizePrices':
          instance.productSizePrices?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      imageId: json['imageId'] as String?,
      isVisible: json['isVisible'] as bool?,
      parentCategoryId: json['parentCategoryId'] as String?,
      parentCategory: json['parentCategory'],
      restaurantId: json['restaurantId'] as String?,
      restaurant: json['restaurant'],
      childCategories: (json['childCategories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productSizes: (json['productSizes'] as List<dynamic>?)
              ?.map((e) => ProductSize.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'imageId': instance.imageId,
      'isVisible': instance.isVisible,
      'parentCategoryId': instance.parentCategoryId,
      'parentCategory': instance.parentCategory,
      'restaurantId': instance.restaurantId,
      'restaurant': instance.restaurant,
      'childCategories':
          instance.childCategories?.map((e) => e.toJson()).toList(),
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'productSizes': instance.productSizes?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ProductSize _$ProductSizeFromJson(Map<String, dynamic> json) => ProductSize(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      category: json['category'],
      name: json['name'] as String?,
      productSizePrices: (json['productSizePrices'] as List<dynamic>?)
              ?.map((e) => ProductSizePrice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ProductSizeToJson(ProductSize instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'name': instance.name,
      'productSizePrices':
          instance.productSizePrices?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ProductSizePrice _$ProductSizePriceFromJson(Map<String, dynamic> json) =>
    ProductSizePrice(
      productId: json['productId'] as String?,
      product: json['product'],
      productSizeId: json['productSizeId'] as String?,
      productSize: json['productSize'],
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ProductSizePriceToJson(ProductSizePrice instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product,
      'productSizeId': instance.productSizeId,
      'productSize': instance.productSize,
      'price': instance.price,
      'weight': instance.weight,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ProductTag _$ProductTagFromJson(Map<String, dynamic> json) => ProductTag(
      productId: json['productId'] as String?,
      product: json['product'],
      tagId: json['tagId'] as String?,
      tag: json['tag'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ProductTagToJson(ProductTag instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product,
      'tagId': instance.tagId,
      'tag': instance.tag,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
      productTags: (json['productTags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageId': instance.imageId,
      'productTags': instance.productTags?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ProductComposition _$ProductCompositionFromJson(Map<String, dynamic> json) =>
    ProductComposition(
      mainProductId: json['mainProductId'] as String?,
      mainProduct: json['mainProduct'],
      compositeProductId: json['compositeProductId'] as String?,
      compositeProduct: json['compositeProduct'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ProductCompositionToJson(ProductComposition instance) =>
    <String, dynamic>{
      'mainProductId': instance.mainProductId,
      'mainProduct': instance.mainProduct,
      'compositeProductId': instance.compositeProductId,
      'compositeProduct': instance.compositeProduct,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ProductIngredient _$ProductIngredientFromJson(Map<String, dynamic> json) =>
    ProductIngredient(
      productId: json['productId'] as String?,
      product: json['product'],
      ingredientId: json['ingredientId'] as String?,
      ingredient: json['ingredient'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$ProductIngredientToJson(ProductIngredient instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product,
      'ingredientId': instance.ingredientId,
      'ingredient': instance.ingredient,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

Ingredient _$IngredientFromJson(Map<String, dynamic> json) => Ingredient(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      productIngredients: (json['productIngredients'] as List<dynamic>?)
              ?.map(
                  (e) => ProductIngredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$IngredientToJson(Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'productIngredients':
          instance.productIngredients?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

OrderStatusHistory _$OrderStatusHistoryFromJson(Map<String, dynamic> json) =>
    OrderStatusHistory(
      orderId: json['orderId'] as String?,
      order: json['order'],
      status: orderStatusFromJson(json['status']),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$OrderStatusHistoryToJson(OrderStatusHistory instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'order': instance.order,
      'status': orderStatusToJson(instance.status),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

ApplicationUserRole _$ApplicationUserRoleFromJson(Map<String, dynamic> json) =>
    ApplicationUserRole(
      role: json['role'],
      user: json['user'],
      userId: json['userId'] as String?,
      roleId: json['roleId'] as String?,
    );

Map<String, dynamic> _$ApplicationUserRoleToJson(
        ApplicationUserRole instance) =>
    <String, dynamic>{
      'role': instance.role,
      'user': instance.user,
      'userId': instance.userId,
      'roleId': instance.roleId,
    };

ApplicationRole _$ApplicationRoleFromJson(Map<String, dynamic> json) =>
    ApplicationRole(
      id: json['id'] as String?,
      name: json['name'] as String?,
      normalizedName: json['normalizedName'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
    );

Map<String, dynamic> _$ApplicationRoleToJson(ApplicationRole instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'normalizedName': instance.normalizedName,
      'concurrencyStamp': instance.concurrencyStamp,
    };

IdentityRoleOfGuid _$IdentityRoleOfGuidFromJson(Map<String, dynamic> json) =>
    IdentityRoleOfGuid(
      id: json['id'] as String?,
      name: json['name'] as String?,
      normalizedName: json['normalizedName'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
    );

Map<String, dynamic> _$IdentityRoleOfGuidToJson(IdentityRoleOfGuid instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'normalizedName': instance.normalizedName,
      'concurrencyStamp': instance.concurrencyStamp,
    };

IdentityUserRoleOfGuid _$IdentityUserRoleOfGuidFromJson(
        Map<String, dynamic> json) =>
    IdentityUserRoleOfGuid(
      userId: json['userId'] as String?,
      roleId: json['roleId'] as String?,
    );

Map<String, dynamic> _$IdentityUserRoleOfGuidToJson(
        IdentityUserRoleOfGuid instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roleId': instance.roleId,
    };

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      id: json['id'] as String?,
      token: json['token'] as String?,
      jwtId: json['jwtId'] as String?,
      isUsed: json['isUsed'] as bool?,
      isRevoked: json['isRevoked'] as bool?,
      expiredDate: json['expiredDate'] == null
          ? null
          : DateTime.parse(json['expiredDate'] as String),
      addedDate: json['addedDate'] == null
          ? null
          : DateTime.parse(json['addedDate'] as String),
      userId: json['userId'] as String?,
      user: json['user'],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'jwtId': instance.jwtId,
      'isUsed': instance.isUsed,
      'isRevoked': instance.isRevoked,
      'expiredDate': instance.expiredDate?.toIso8601String(),
      'addedDate': instance.addedDate?.toIso8601String(),
      'userId': instance.userId,
      'user': instance.user,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

IdentityUserOfGuid _$IdentityUserOfGuidFromJson(Map<String, dynamic> json) =>
    IdentityUserOfGuid(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      normalizedUserName: json['normalizedUserName'] as String?,
      email: json['email'] as String?,
      normalizedEmail: json['normalizedEmail'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      passwordHash: json['passwordHash'] as String?,
      securityStamp: json['securityStamp'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
      twoFactorEnabled: json['twoFactorEnabled'] as bool?,
      lockoutEnd: json['lockoutEnd'] == null
          ? null
          : DateTime.parse(json['lockoutEnd'] as String),
      lockoutEnabled: json['lockoutEnabled'] as bool?,
      accessFailedCount: json['accessFailedCount'] as int?,
    );

Map<String, dynamic> _$IdentityUserOfGuidToJson(IdentityUserOfGuid instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'normalizedUserName': instance.normalizedUserName,
      'email': instance.email,
      'normalizedEmail': instance.normalizedEmail,
      'emailConfirmed': instance.emailConfirmed,
      'passwordHash': instance.passwordHash,
      'securityStamp': instance.securityStamp,
      'concurrencyStamp': instance.concurrencyStamp,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberConfirmed': instance.phoneNumberConfirmed,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'lockoutEnd': instance.lockoutEnd?.toIso8601String(),
      'lockoutEnabled': instance.lockoutEnabled,
      'accessFailedCount': instance.accessFailedCount,
    };

UpdateUserInfoCommand _$UpdateUserInfoCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateUserInfoCommand(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) =>
                  ClientAddressCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdateUserInfoCommandToJson(
        UpdateUserInfoCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'email': instance.email,
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
    };

SetMainAddressCommand _$SetMainAddressCommandFromJson(
        Map<String, dynamic> json) =>
    SetMainAddressCommand(
      addressId: json['addressId'] as String?,
    );

Map<String, dynamic> _$SetMainAddressCommandToJson(
        SetMainAddressCommand instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
    };

AddPushTokenCommand _$AddPushTokenCommandFromJson(Map<String, dynamic> json) =>
    AddPushTokenCommand(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$AddPushTokenCommandToJson(
        AddPushTokenCommand instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

DeleteUserCommand _$DeleteUserCommandFromJson(Map<String, dynamic> json) =>
    DeleteUserCommand();

Map<String, dynamic> _$DeleteUserCommandToJson(DeleteUserCommand instance) =>
    <String, dynamic>{};

PaginatedListOfAddressCodeGenDto _$PaginatedListOfAddressCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfAddressCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => AddressCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfAddressCodeGenDtoToJson(
        PaginatedListOfAddressCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateAddressCommand _$CreateAddressCommandFromJson(
        Map<String, dynamic> json) =>
    CreateAddressCommand(
      region: json['region'] as String?,
      regionCode: json['regionCode'] as String?,
      district: json['district'] as String?,
      districtCode: json['districtCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      streetCode: json['streetCode'] as String?,
      house: json['house'] as String?,
      houseCode: json['houseCode'] as String?,
      flat: json['flat'] as String?,
      index: json['index'] as String?,
      fiasCode: json['fiasCode'] as String?,
      kladrCode: json['kladrCode'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      value: json['value'] as String?,
      frontDoor: json['frontDoor'] as String?,
      floor: json['floor'] as String?,
      doorPhone: json['doorPhone'] as String?,
    );

Map<String, dynamic> _$CreateAddressCommandToJson(
        CreateAddressCommand instance) =>
    <String, dynamic>{
      'region': instance.region,
      'regionCode': instance.regionCode,
      'district': instance.district,
      'districtCode': instance.districtCode,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'street': instance.street,
      'streetCode': instance.streetCode,
      'house': instance.house,
      'houseCode': instance.houseCode,
      'flat': instance.flat,
      'index': instance.index,
      'fiasCode': instance.fiasCode,
      'kladrCode': instance.kladrCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'value': instance.value,
      'frontDoor': instance.frontDoor,
      'floor': instance.floor,
      'doorPhone': instance.doorPhone,
    };

UpdateAddressCustomFieldsCommand _$UpdateAddressCustomFieldsCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateAddressCustomFieldsCommand(
      id: json['id'] as String?,
      frontDoor: json['frontDoor'] as String?,
      floor: json['floor'] as String?,
      doorPhone: json['doorPhone'] as String?,
      flat: json['flat'] as String?,
    );

Map<String, dynamic> _$UpdateAddressCustomFieldsCommandToJson(
        UpdateAddressCustomFieldsCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frontDoor': instance.frontDoor,
      'floor': instance.floor,
      'doorPhone': instance.doorPhone,
      'flat': instance.flat,
    };

RequestCodeCommand _$RequestCodeCommandFromJson(Map<String, dynamic> json) =>
    RequestCodeCommand(
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$RequestCodeCommandToJson(RequestCodeCommand instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
    };

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      roles: json['roles'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresIn: json['expiresIn'] == null
          ? null
          : DateTime.parse(json['expiresIn'] as String),
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'phone': instance.phone,
      'roles': instance.roles,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn?.toIso8601String(),
    };

ConfirmPhoneCommand _$ConfirmPhoneCommandFromJson(Map<String, dynamic> json) =>
    ConfirmPhoneCommand(
      phoneNumber: json['phoneNumber'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ConfirmPhoneCommandToJson(
        ConfirmPhoneCommand instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
    };

RefreshTokenCommand _$RefreshTokenCommandFromJson(Map<String, dynamic> json) =>
    RefreshTokenCommand(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$RefreshTokenCommandToJson(
        RefreshTokenCommand instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

PaginatedListOfCategoryCodeGenDto _$PaginatedListOfCategoryCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfCategoryCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfCategoryCodeGenDtoToJson(
        PaginatedListOfCategoryCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CategoryCodeGenDto _$CategoryCodeGenDtoFromJson(Map<String, dynamic> json) =>
    CategoryCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      imageId: json['imageId'] as String?,
      isVisible: json['isVisible'] as bool?,
      parentCategoryId: json['parentCategoryId'] as String?,
      parentCategory: json['parentCategory'],
      restaurantId: json['restaurantId'] as String?,
      restaurant: json['restaurant'],
      childCategories: (json['childCategories'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      products: (json['products'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productSizes: (json['productSizes'] as List<dynamic>?)
              ?.map((e) =>
                  ProductSizeCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CategoryCodeGenDtoToJson(CategoryCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'imageId': instance.imageId,
      'isVisible': instance.isVisible,
      'parentCategoryId': instance.parentCategoryId,
      'parentCategory': instance.parentCategory,
      'restaurantId': instance.restaurantId,
      'restaurant': instance.restaurant,
      'childCategories':
          instance.childCategories?.map((e) => e.toJson()).toList(),
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'productSizes': instance.productSizes?.map((e) => e.toJson()).toList(),
    };

RestaurantCodeGenDto _$RestaurantCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    RestaurantCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logoId: json['logoId'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool?,
      phone: json['phone'] as String?,
      vk: json['vk'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      minimalOrderPrice: (json['minimalOrderPrice'] as num?)?.toDouble(),
      normalDeliveryTime: (json['normalDeliveryTime'] as num?)?.toDouble(),
      deliveryTime: (json['deliveryTime'] as num?)?.toDouble(),
      takeout: json['takeout'] as bool?,
      addressId: json['addressId'] as String?,
      address: json['address'],
      workingTimes: (json['workingTimes'] as List<dynamic>?)
              ?.map((e) => RestaurantWorkingTimeCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      employees: (json['employees'] as List<dynamic>?)
              ?.map((e) =>
                  ApplicationUserCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RestaurantCodeGenDtoToJson(
        RestaurantCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoId': instance.logoId,
      'description': instance.description,
      'isActive': instance.isActive,
      'phone': instance.phone,
      'vk': instance.vk,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'minimalOrderPrice': instance.minimalOrderPrice,
      'normalDeliveryTime': instance.normalDeliveryTime,
      'deliveryTime': instance.deliveryTime,
      'takeout': instance.takeout,
      'addressId': instance.addressId,
      'address': instance.address,
      'workingTimes': instance.workingTimes?.map((e) => e.toJson()).toList(),
      'employees': instance.employees?.map((e) => e.toJson()).toList(),
    };

RestaurantWorkingTimeCodeGenDto _$RestaurantWorkingTimeCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    RestaurantWorkingTimeCodeGenDto(
      id: json['id'] as String?,
      dayOfWeek: dayOfWeekFromJson(json['dayOfWeek']),
      opensAt: json['opensAt'] as String?,
      acceptsOrdersUntil: json['acceptsOrdersUntil'] as String?,
      closesAt: json['closesAt'] as String?,
      restaurantId: json['restaurantId'] as String?,
    );

Map<String, dynamic> _$RestaurantWorkingTimeCodeGenDtoToJson(
        RestaurantWorkingTimeCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayOfWeek': dayOfWeekToJson(instance.dayOfWeek),
      'opensAt': instance.opensAt,
      'acceptsOrdersUntil': instance.acceptsOrdersUntil,
      'closesAt': instance.closesAt,
      'restaurantId': instance.restaurantId,
    };

ProductCodeGenDto _$ProductCodeGenDtoFromJson(Map<String, dynamic> json) =>
    ProductCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      isComplex: json['isComplex'] as bool?,
      categoryId: json['categoryId'] as String?,
      category: json['category'],
      productTags: (json['productTags'] as List<dynamic>?)
              ?.map((e) =>
                  ProductTagCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productCompositions: (json['productCompositions'] as List<dynamic>?)
              ?.map((e) => ProductCompositionCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      productIngredients: (json['productIngredients'] as List<dynamic>?)
              ?.map((e) => ProductIngredientCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      productSizePrices: (json['productSizePrices'] as List<dynamic>?)
              ?.map((e) => ProductSizePriceCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductCodeGenDtoToJson(ProductCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageId': instance.imageId,
      'description': instance.description,
      'price': instance.price,
      'weight': instance.weight,
      'isComplex': instance.isComplex,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'productTags': instance.productTags?.map((e) => e.toJson()).toList(),
      'productCompositions':
          instance.productCompositions?.map((e) => e.toJson()).toList(),
      'productIngredients':
          instance.productIngredients?.map((e) => e.toJson()).toList(),
      'productSizePrices':
          instance.productSizePrices?.map((e) => e.toJson()).toList(),
    };

ProductTagCodeGenDto _$ProductTagCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ProductTagCodeGenDto(
      productId: json['productId'] as String?,
      tagId: json['tagId'] as String?,
      tag: json['tag'],
    );

Map<String, dynamic> _$ProductTagCodeGenDtoToJson(
        ProductTagCodeGenDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'tagId': instance.tagId,
      'tag': instance.tag,
    };

TagCodeGenDto _$TagCodeGenDtoFromJson(Map<String, dynamic> json) =>
    TagCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
    );

Map<String, dynamic> _$TagCodeGenDtoToJson(TagCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageId': instance.imageId,
    };

ProductCompositionCodeGenDto _$ProductCompositionCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ProductCompositionCodeGenDto(
      mainProductId: json['mainProductId'] as String?,
      mainProduct: json['mainProduct'],
      compositeProductId: json['compositeProductId'] as String?,
      compositeProduct: json['compositeProduct'],
    );

Map<String, dynamic> _$ProductCompositionCodeGenDtoToJson(
        ProductCompositionCodeGenDto instance) =>
    <String, dynamic>{
      'mainProductId': instance.mainProductId,
      'mainProduct': instance.mainProduct,
      'compositeProductId': instance.compositeProductId,
      'compositeProduct': instance.compositeProduct,
    };

ProductIngredientCodeGenDto _$ProductIngredientCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ProductIngredientCodeGenDto(
      productId: json['productId'] as String?,
      ingredientId: json['ingredientId'] as String?,
      ingredient: json['ingredient'],
    );

Map<String, dynamic> _$ProductIngredientCodeGenDtoToJson(
        ProductIngredientCodeGenDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'ingredientId': instance.ingredientId,
      'ingredient': instance.ingredient,
    };

IngredientCodeGenDto _$IngredientCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    IngredientCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$IngredientCodeGenDtoToJson(
        IngredientCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

ProductSizePriceCodeGenDto _$ProductSizePriceCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ProductSizePriceCodeGenDto(
      productId: json['productId'] as String?,
      product: json['product'],
      productSizeId: json['productSizeId'] as String?,
      productSize: json['productSize'],
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductSizePriceCodeGenDtoToJson(
        ProductSizePriceCodeGenDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product,
      'productSizeId': instance.productSizeId,
      'productSize': instance.productSize,
      'price': instance.price,
      'weight': instance.weight,
    };

ProductSizeCodeGenDto _$ProductSizeCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    ProductSizeCodeGenDto(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      category: json['category'],
      name: json['name'] as String?,
      productSizePrices: (json['productSizePrices'] as List<dynamic>?)
              ?.map((e) => ProductSizePriceCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductSizeCodeGenDtoToJson(
        ProductSizeCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'name': instance.name,
      'productSizePrices':
          instance.productSizePrices?.map((e) => e.toJson()).toList(),
    };

CreateCategoryCommand _$CreateCategoryCommandFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryCommand(
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      imageId: json['imageId'] as String?,
      isVisible: json['isVisible'] as bool?,
      parentCategoryId: json['parentCategoryId'] as String?,
      restaurantId: json['restaurantId'] as String?,
    );

Map<String, dynamic> _$CreateCategoryCommandToJson(
        CreateCategoryCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'imageId': instance.imageId,
      'isVisible': instance.isVisible,
      'parentCategoryId': instance.parentCategoryId,
      'restaurantId': instance.restaurantId,
    };

UpdateCategoryCommand _$UpdateCategoryCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      imageId: json['imageId'] as String?,
      isVisible: json['isVisible'] as bool?,
      parentCategoryId: json['parentCategoryId'] as String?,
    );

Map<String, dynamic> _$UpdateCategoryCommandToJson(
        UpdateCategoryCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'imageId': instance.imageId,
      'isVisible': instance.isVisible,
      'parentCategoryId': instance.parentCategoryId,
    };

EventMessageCodeGenDto _$EventMessageCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    EventMessageCodeGenDto(
      id: json['id'] as String?,
      type: eventMessageTypeFromJson(json['type']),
      title: json['title'] as String?,
      message: json['message'] as String?,
      eventValue: json['eventValue'] as String?,
    );

Map<String, dynamic> _$EventMessageCodeGenDtoToJson(
        EventMessageCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': eventMessageTypeToJson(instance.type),
      'title': instance.title,
      'message': instance.message,
      'eventValue': instance.eventValue,
    };

GetEventMessagesListQuery _$GetEventMessagesListQueryFromJson(
        Map<String, dynamic> json) =>
    GetEventMessagesListQuery();

Map<String, dynamic> _$GetEventMessagesListQueryToJson(
        GetEventMessagesListQuery instance) =>
    <String, dynamic>{};

UpdateEventMessageCommand _$UpdateEventMessageCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateEventMessageCommand(
      id: json['id'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdateEventMessageCommandToJson(
        UpdateEventMessageCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
    };

PaginatedListOfFileDetails _$PaginatedListOfFileDetailsFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfFileDetails(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => FileDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfFileDetailsToJson(
        PaginatedListOfFileDetails instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

FileDetails _$FileDetailsFromJson(Map<String, dynamic> json) => FileDetails(
      id: json['id'] as String?,
      name: json['name'] as String?,
      size: json['size'] as num?,
      path: json['path'] as String?,
      contentType: json['contentType'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
    );

Map<String, dynamic> _$FileDetailsToJson(FileDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'path': instance.path,
      'contentType': instance.contentType,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastModified': instance.lastModified?.toIso8601String(),
      'lastModifiedBy': instance.lastModifiedBy,
    };

PaginatedListOfIngredientCodeGenDto
    _$PaginatedListOfIngredientCodeGenDtoFromJson(Map<String, dynamic> json) =>
        PaginatedListOfIngredientCodeGenDto(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) =>
                      IngredientCodeGenDto.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          pageIndex: json['pageIndex'] as int?,
          totalPages: json['totalPages'] as int?,
          totalCount: json['totalCount'] as int?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          hasNextPage: json['hasNextPage'] as bool?,
        );

Map<String, dynamic> _$PaginatedListOfIngredientCodeGenDtoToJson(
        PaginatedListOfIngredientCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateIngredientCommand _$CreateIngredientCommandFromJson(
        Map<String, dynamic> json) =>
    CreateIngredientCommand(
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateIngredientCommandToJson(
        CreateIngredientCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

UpdateIngredientCommand _$UpdateIngredientCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateIngredientCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateIngredientCommandToJson(
        UpdateIngredientCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

PaginatedListOfOrderCodeGenDto _$PaginatedListOfOrderCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfOrderCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfOrderCodeGenDtoToJson(
        PaginatedListOfOrderCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

OrderCodeGenDto _$OrderCodeGenDtoFromJson(Map<String, dynamic> json) =>
    OrderCodeGenDto(
      id: json['id'] as String?,
      number: json['number'] as int?,
      status: orderStatusFromJson(json['status']),
      deliveryType: orderDeliveryFromJson(json['deliveryType']),
      changeFrom: (json['changeFrom'] as num?)?.toDouble(),
      finished: json['finished'] == null
          ? null
          : DateTime.parse(json['finished'] as String),
      comment: json['comment'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      personsCount: json['personsCount'] as int?,
      deliverToDate: json['deliverToDate'] as bool?,
      deliveryDate: json['deliveryDate'] as String?,
      clientId: json['clientId'] as String?,
      $client: json[r'$client'],
      courierId: json['courierId'] as String?,
      courier: json['courier'],
      addressId: json['addressId'] as String?,
      address: json['address'],
      restaurantId: json['restaurantId'] as String?,
      paymentMethodId: json['paymentMethodId'] as String?,
      paymentMethod: json['paymentMethod'],
      reviewId: json['reviewId'] as String?,
      review: json['review'],
      orderDetails: (json['orderDetails'] as List<dynamic>?)
              ?.map((e) =>
                  OrderDetailCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      orderStatusHistories: (json['orderStatusHistories'] as List<dynamic>?)
              ?.map((e) => OrderStatusHistoryCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$OrderCodeGenDtoToJson(OrderCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'status': orderStatusToJson(instance.status),
      'deliveryType': orderDeliveryToJson(instance.deliveryType),
      'changeFrom': instance.changeFrom,
      'finished': instance.finished?.toIso8601String(),
      'comment': instance.comment,
      'price': instance.price,
      'personsCount': instance.personsCount,
      'deliverToDate': instance.deliverToDate,
      'deliveryDate': instance.deliveryDate,
      'clientId': instance.clientId,
      r'$client': instance.$client,
      'courierId': instance.courierId,
      'courier': instance.courier,
      'addressId': instance.addressId,
      'address': instance.address,
      'restaurantId': instance.restaurantId,
      'paymentMethodId': instance.paymentMethodId,
      'paymentMethod': instance.paymentMethod,
      'reviewId': instance.reviewId,
      'review': instance.review,
      'orderDetails': instance.orderDetails?.map((e) => e.toJson()).toList(),
      'orderStatusHistories':
          instance.orderStatusHistories?.map((e) => e.toJson()).toList(),
      'created': instance.created?.toIso8601String(),
    };

PaymentMethodCodeGenDto _$PaymentMethodCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      hasVariants: json['hasVariants'] as bool?,
    );

Map<String, dynamic> _$PaymentMethodCodeGenDtoToJson(
        PaymentMethodCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hasVariants': instance.hasVariants,
    };

ReviewCodeGenDto _$ReviewCodeGenDtoFromJson(Map<String, dynamic> json) =>
    ReviewCodeGenDto(
      id: json['id'] as String?,
      comment: json['comment'] as String?,
      orderId: json['orderId'] as String?,
      order: json['order'],
      mark: markFromJson(json['mark']),
    );

Map<String, dynamic> _$ReviewCodeGenDtoToJson(ReviewCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'orderId': instance.orderId,
      'order': instance.order,
      'mark': markToJson(instance.mark),
    };

OrderDetailCodeGenDto _$OrderDetailCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    OrderDetailCodeGenDto(
      id: json['id'] as String?,
      amount: json['amount'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      orderId: json['orderId'] as String?,
      order: json['order'],
      productId: json['productId'] as String?,
      product: json['product'],
      productSizeId: json['productSizeId'] as String?,
      productSize: json['productSize'],
    );

Map<String, dynamic> _$OrderDetailCodeGenDtoToJson(
        OrderDetailCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'price': instance.price,
      'orderId': instance.orderId,
      'order': instance.order,
      'productId': instance.productId,
      'product': instance.product,
      'productSizeId': instance.productSizeId,
      'productSize': instance.productSize,
    };

OrderStatusHistoryCodeGenDto _$OrderStatusHistoryCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    OrderStatusHistoryCodeGenDto(
      orderId: json['orderId'] as String?,
      status: orderStatusFromJson(json['status']),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$OrderStatusHistoryCodeGenDtoToJson(
        OrderStatusHistoryCodeGenDto instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'status': orderStatusToJson(instance.status),
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
    };

OrderShortViewModel _$OrderShortViewModelFromJson(Map<String, dynamic> json) =>
    OrderShortViewModel(
      id: json['id'] as String?,
      number: json['number'] as int?,
      status: orderStatusFromJson(json['status']),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderShortViewModelToJson(
        OrderShortViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'status': orderStatusToJson(instance.status),
      'created': instance.created?.toIso8601String(),
      'price': instance.price,
    };

CreateOrderCommand _$CreateOrderCommandFromJson(Map<String, dynamic> json) =>
    CreateOrderCommand(
      changeFrom: (json['changeFrom'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      deliverToDate: json['deliverToDate'] as bool?,
      deliveryDate: json['deliveryDate'] as String?,
      clientId: json['clientId'] as String?,
      courierId: json['courierId'] as String?,
      addressModel: json['addressModel'],
      restaurantId: json['restaurantId'] as String?,
      paymentMethodId: json['paymentMethodId'] as String?,
      personsCount: json['personsCount'] as int?,
      orderDelivery: orderDeliveryFromJson(json['orderDelivery']),
      orderDetails: (json['orderDetails'] as List<dynamic>?)
              ?.map((e) => OrderDetailCalculateViewModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateOrderCommandToJson(CreateOrderCommand instance) =>
    <String, dynamic>{
      'changeFrom': instance.changeFrom,
      'comment': instance.comment,
      'deliverToDate': instance.deliverToDate,
      'deliveryDate': instance.deliveryDate,
      'clientId': instance.clientId,
      'courierId': instance.courierId,
      'addressModel': instance.addressModel,
      'restaurantId': instance.restaurantId,
      'paymentMethodId': instance.paymentMethodId,
      'personsCount': instance.personsCount,
      'orderDelivery': orderDeliveryToJson(instance.orderDelivery),
      'orderDetails': instance.orderDetails?.map((e) => e.toJson()).toList(),
    };

OrderDetailCalculateViewModel _$OrderDetailCalculateViewModelFromJson(
        Map<String, dynamic> json) =>
    OrderDetailCalculateViewModel(
      amount: json['amount'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      orderId: json['orderId'] as String?,
      productId: json['productId'] as String?,
      product: json['product'],
      productSizeId: json['productSizeId'] as String?,
      productSize: json['productSize'],
    );

Map<String, dynamic> _$OrderDetailCalculateViewModelToJson(
        OrderDetailCalculateViewModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'price': instance.price,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'product': instance.product,
      'productSizeId': instance.productSizeId,
      'productSize': instance.productSize,
    };

CalculatePriceCommand _$CalculatePriceCommandFromJson(
        Map<String, dynamic> json) =>
    CalculatePriceCommand(
      restaurantId: json['restaurantId'] as String?,
      details: (json['details'] as List<dynamic>?)
              ?.map((e) => OrderDetailCalculateViewModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CalculatePriceCommandToJson(
        CalculatePriceCommand instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'details': instance.details?.map((e) => e.toJson()).toList(),
      'price': instance.price,
    };

ChangeOrderStatusCommand _$ChangeOrderStatusCommandFromJson(
        Map<String, dynamic> json) =>
    ChangeOrderStatusCommand(
      orderId: json['orderId'] as String?,
      status: orderStatusFromJson(json['status']),
    );

Map<String, dynamic> _$ChangeOrderStatusCommandToJson(
        ChangeOrderStatusCommand instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'status': orderStatusToJson(instance.status),
    };

UpdateOrderDetailsCommand _$UpdateOrderDetailsCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderDetailsCommand(
      orderId: json['orderId'] as String?,
      changeFrom: (json['changeFrom'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      deliverToDate: json['deliverToDate'] as bool?,
      deliveryType: orderDeliveryFromJson(json['deliveryType']),
      deliveryDate: json['deliveryDate'] as String?,
      status: orderStatusFromJson(json['status']),
      courierId: json['courierId'] as String?,
      addressModel: json['addressModel'],
      paymentMethodId: json['paymentMethodId'] as String?,
      orderDetails: (json['orderDetails'] as List<dynamic>?)
              ?.map((e) => OrderDetailCalculateViewModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdateOrderDetailsCommandToJson(
        UpdateOrderDetailsCommand instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'changeFrom': instance.changeFrom,
      'comment': instance.comment,
      'deliverToDate': instance.deliverToDate,
      'deliveryType': orderDeliveryToJson(instance.deliveryType),
      'deliveryDate': instance.deliveryDate,
      'status': orderStatusToJson(instance.status),
      'courierId': instance.courierId,
      'addressModel': instance.addressModel,
      'paymentMethodId': instance.paymentMethodId,
      'orderDetails': instance.orderDetails?.map((e) => e.toJson()).toList(),
    };

PaginatedListOfPaymentMethodCodeGenDto
    _$PaginatedListOfPaymentMethodCodeGenDtoFromJson(
            Map<String, dynamic> json) =>
        PaginatedListOfPaymentMethodCodeGenDto(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => PaymentMethodCodeGenDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          pageIndex: json['pageIndex'] as int?,
          totalPages: json['totalPages'] as int?,
          totalCount: json['totalCount'] as int?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          hasNextPage: json['hasNextPage'] as bool?,
        );

Map<String, dynamic> _$PaginatedListOfPaymentMethodCodeGenDtoToJson(
        PaginatedListOfPaymentMethodCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreatePaymentMethodCommand _$CreatePaymentMethodCommandFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentMethodCommand(
      name: json['name'] as String?,
      hasVariants: json['hasVariants'] as bool?,
    );

Map<String, dynamic> _$CreatePaymentMethodCommandToJson(
        CreatePaymentMethodCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hasVariants': instance.hasVariants,
    };

UpdatePaymentMethodCommand _$UpdatePaymentMethodCommandFromJson(
        Map<String, dynamic> json) =>
    UpdatePaymentMethodCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      hasVariants: json['hasVariants'] as bool?,
    );

Map<String, dynamic> _$UpdatePaymentMethodCommandToJson(
        UpdatePaymentMethodCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hasVariants': instance.hasVariants,
    };

PaginatedListOfProductCodeGenDto _$PaginatedListOfProductCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfProductCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfProductCodeGenDtoToJson(
        PaginatedListOfProductCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateProductCommand _$CreateProductCommandFromJson(
        Map<String, dynamic> json) =>
    CreateProductCommand(
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      isComplex: json['isComplex'] as bool?,
      categoryId: json['categoryId'] as String?,
      productSizePrices: (json['productSizePrices'] as List<dynamic>?)
              ?.map((e) =>
                  ProductSizePriceViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      composites: (json['composites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateProductCommandToJson(
        CreateProductCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageId': instance.imageId,
      'description': instance.description,
      'price': instance.price,
      'weight': instance.weight,
      'isComplex': instance.isComplex,
      'categoryId': instance.categoryId,
      'productSizePrices':
          instance.productSizePrices?.map((e) => e.toJson()).toList(),
      'tags': instance.tags,
      'ingredients': instance.ingredients,
      'composites': instance.composites,
    };

ProductSizePriceViewModel _$ProductSizePriceViewModelFromJson(
        Map<String, dynamic> json) =>
    ProductSizePriceViewModel(
      productSizeId: json['productSizeId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductSizePriceViewModelToJson(
        ProductSizePriceViewModel instance) =>
    <String, dynamic>{
      'productSizeId': instance.productSizeId,
      'price': instance.price,
      'weight': instance.weight,
    };

UpdateProductCommand _$UpdateProductCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateProductCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      isComplex: json['isComplex'] as bool?,
      categoryId: json['categoryId'] as String?,
      productSizePrices: (json['productSizePrices'] as List<dynamic>?)
              ?.map((e) =>
                  ProductSizePriceViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      composites: (json['composites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdateProductCommandToJson(
        UpdateProductCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageId': instance.imageId,
      'description': instance.description,
      'price': instance.price,
      'weight': instance.weight,
      'isComplex': instance.isComplex,
      'categoryId': instance.categoryId,
      'productSizePrices':
          instance.productSizePrices?.map((e) => e.toJson()).toList(),
      'tags': instance.tags,
      'ingredients': instance.ingredients,
      'composites': instance.composites,
    };

PaginatedListOfProductSizeCodeGenDto
    _$PaginatedListOfProductSizeCodeGenDtoFromJson(Map<String, dynamic> json) =>
        PaginatedListOfProductSizeCodeGenDto(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) =>
                      ProductSizeCodeGenDto.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          pageIndex: json['pageIndex'] as int?,
          totalPages: json['totalPages'] as int?,
          totalCount: json['totalCount'] as int?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          hasNextPage: json['hasNextPage'] as bool?,
        );

Map<String, dynamic> _$PaginatedListOfProductSizeCodeGenDtoToJson(
        PaginatedListOfProductSizeCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateProductSizeCommand _$CreateProductSizeCommandFromJson(
        Map<String, dynamic> json) =>
    CreateProductSizeCommand(
      categoryId: json['categoryId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CreateProductSizeCommandToJson(
        CreateProductSizeCommand instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
    };

UpdateProductSizeCommand _$UpdateProductSizeCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateProductSizeCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      categoryId: json['categoryId'] as String?,
    );

Map<String, dynamic> _$UpdateProductSizeCommandToJson(
        UpdateProductSizeCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
    };

PaginatedListOfPromoCodeGenDto _$PaginatedListOfPromoCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfPromoCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PromoCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfPromoCodeGenDtoToJson(
        PaginatedListOfPromoCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

PromoCodeGenDto _$PromoCodeGenDtoFromJson(Map<String, dynamic> json) =>
    PromoCodeGenDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      active: json['active'] as bool?,
      type: promoTypeFromJson(json['type']),
      price: (json['price'] as num?)?.toDouble(),
      discountModifier: (json['discountModifier'] as num?)?.toDouble(),
      imageId: json['imageId'] as String?,
      productSizeId: json['productSizeId'] as String?,
      productSize: json['productSize'],
      categoryId: json['categoryId'] as String?,
      category: json['category'],
      restaurantId: json['restaurantId'] as String?,
      promoWorkingTimes: (json['promoWorkingTimes'] as List<dynamic>?)
              ?.map((e) => PromoWorkingTimeCodeGenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PromoCodeGenDtoToJson(PromoCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'type': promoTypeToJson(instance.type),
      'price': instance.price,
      'discountModifier': instance.discountModifier,
      'imageId': instance.imageId,
      'productSizeId': instance.productSizeId,
      'productSize': instance.productSize,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'restaurantId': instance.restaurantId,
      'promoWorkingTimes':
          instance.promoWorkingTimes?.map((e) => e.toJson()).toList(),
    };

PromoWorkingTimeCodeGenDto _$PromoWorkingTimeCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PromoWorkingTimeCodeGenDto(
      id: json['id'] as String?,
      dayOfWeek: dayOfWeekFromJson(json['dayOfWeek']),
      from: json['from'] as String?,
      to: json['to'] as String?,
      promoId: json['promoId'] as String?,
    );

Map<String, dynamic> _$PromoWorkingTimeCodeGenDtoToJson(
        PromoWorkingTimeCodeGenDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayOfWeek': dayOfWeekToJson(instance.dayOfWeek),
      'from': instance.from,
      'to': instance.to,
      'promoId': instance.promoId,
    };

CreatePromoCommand _$CreatePromoCommandFromJson(Map<String, dynamic> json) =>
    CreatePromoCommand(
      name: json['name'] as String?,
      description: json['description'] as String?,
      active: json['active'] as bool?,
      type: promoTypeFromJson(json['type']),
      price: (json['price'] as num?)?.toDouble(),
      discountModifier: (json['discountModifier'] as num?)?.toDouble(),
      imageId: json['imageId'] as String?,
      productSizeId: json['productSizeId'] as String?,
      categoryId: json['categoryId'] as String?,
      restaurantId: json['restaurantId'] as String?,
      promoWorkingTimes: (json['promoWorkingTimes'] as List<dynamic>?)
              ?.map((e) =>
                  PromoWorkingTimeViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreatePromoCommandToJson(CreatePromoCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'type': promoTypeToJson(instance.type),
      'price': instance.price,
      'discountModifier': instance.discountModifier,
      'imageId': instance.imageId,
      'productSizeId': instance.productSizeId,
      'categoryId': instance.categoryId,
      'restaurantId': instance.restaurantId,
      'promoWorkingTimes':
          instance.promoWorkingTimes?.map((e) => e.toJson()).toList(),
    };

PromoWorkingTimeViewModel _$PromoWorkingTimeViewModelFromJson(
        Map<String, dynamic> json) =>
    PromoWorkingTimeViewModel(
      id: json['id'] as String?,
      dayOfWeek: dayOfWeekFromJson(json['dayOfWeek']),
      from: json['from'] as String?,
      to: json['to'] as String?,
      promoId: json['promoId'] as String?,
    );

Map<String, dynamic> _$PromoWorkingTimeViewModelToJson(
        PromoWorkingTimeViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayOfWeek': dayOfWeekToJson(instance.dayOfWeek),
      'from': instance.from,
      'to': instance.to,
      'promoId': instance.promoId,
    };

UpdatePromoCommand _$UpdatePromoCommandFromJson(Map<String, dynamic> json) =>
    UpdatePromoCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      active: json['active'] as bool?,
      type: promoTypeFromJson(json['type']),
      price: (json['price'] as num?)?.toDouble(),
      discountModifier: (json['discountModifier'] as num?)?.toDouble(),
      imageId: json['imageId'] as String?,
      productSizeId: json['productSizeId'] as String?,
      categoryId: json['categoryId'] as String?,
      restaurantId: json['restaurantId'] as String?,
      promoWorkingTimes: (json['promoWorkingTimes'] as List<dynamic>?)
              ?.map((e) =>
                  PromoWorkingTimeViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdatePromoCommandToJson(UpdatePromoCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'type': promoTypeToJson(instance.type),
      'price': instance.price,
      'discountModifier': instance.discountModifier,
      'imageId': instance.imageId,
      'productSizeId': instance.productSizeId,
      'categoryId': instance.categoryId,
      'restaurantId': instance.restaurantId,
      'promoWorkingTimes':
          instance.promoWorkingTimes?.map((e) => e.toJson()).toList(),
    };

PaginatedListOfRestaurantCodeGenDto
    _$PaginatedListOfRestaurantCodeGenDtoFromJson(Map<String, dynamic> json) =>
        PaginatedListOfRestaurantCodeGenDto(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) =>
                      RestaurantCodeGenDto.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          pageIndex: json['pageIndex'] as int?,
          totalPages: json['totalPages'] as int?,
          totalCount: json['totalCount'] as int?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          hasNextPage: json['hasNextPage'] as bool?,
        );

Map<String, dynamic> _$PaginatedListOfRestaurantCodeGenDtoToJson(
        PaginatedListOfRestaurantCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateRestaurantCommand _$CreateRestaurantCommandFromJson(
        Map<String, dynamic> json) =>
    CreateRestaurantCommand(
      name: json['name'] as String?,
      logoId: json['logoId'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool?,
      takeout: json['takeout'] as bool?,
      addressId: json['addressId'] as String?,
      phone: json['phone'] as String?,
      vk: json['vk'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      minimalOrderPrice: (json['minimalOrderPrice'] as num?)?.toDouble(),
      normalDeliveryTime: (json['normalDeliveryTime'] as num?)?.toDouble(),
      workingTimes: (json['workingTimes'] as List<dynamic>?)
              ?.map((e) => RestaurantWorkingTimeViewModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      employees: (json['employees'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateRestaurantCommandToJson(
        CreateRestaurantCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logoId': instance.logoId,
      'description': instance.description,
      'isActive': instance.isActive,
      'takeout': instance.takeout,
      'addressId': instance.addressId,
      'phone': instance.phone,
      'vk': instance.vk,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'minimalOrderPrice': instance.minimalOrderPrice,
      'normalDeliveryTime': instance.normalDeliveryTime,
      'workingTimes': instance.workingTimes?.map((e) => e.toJson()).toList(),
      'employees': instance.employees,
    };

RestaurantWorkingTimeViewModel _$RestaurantWorkingTimeViewModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantWorkingTimeViewModel(
      id: json['id'] as String?,
      dayOfWeek: dayOfWeekFromJson(json['dayOfWeek']),
      opensAt: json['opensAt'] as String?,
      acceptsOrdersUntil: json['acceptsOrdersUntil'] as String?,
      closesAt: json['closesAt'] as String?,
      restaurantId: json['restaurantId'] as String?,
    );

Map<String, dynamic> _$RestaurantWorkingTimeViewModelToJson(
        RestaurantWorkingTimeViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayOfWeek': dayOfWeekToJson(instance.dayOfWeek),
      'opensAt': instance.opensAt,
      'acceptsOrdersUntil': instance.acceptsOrdersUntil,
      'closesAt': instance.closesAt,
      'restaurantId': instance.restaurantId,
    };

CopyRestaurantCommand _$CopyRestaurantCommandFromJson(
        Map<String, dynamic> json) =>
    CopyRestaurantCommand(
      restaurantId: json['restaurantId'] as String?,
    );

Map<String, dynamic> _$CopyRestaurantCommandToJson(
        CopyRestaurantCommand instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
    };

UpdateRestaurantCommand _$UpdateRestaurantCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateRestaurantCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logoId: json['logoId'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool?,
      takeout: json['takeout'] as bool?,
      addressId: json['addressId'] as String?,
      phone: json['phone'] as String?,
      vk: json['vk'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      minimalOrderPrice: (json['minimalOrderPrice'] as num?)?.toDouble(),
      normalDeliveryTime: (json['normalDeliveryTime'] as num?)?.toDouble(),
      deliveryTime: (json['deliveryTime'] as num?)?.toDouble(),
      workingTimes: (json['workingTimes'] as List<dynamic>?)
              ?.map((e) => RestaurantWorkingTimeViewModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      employees: (json['employees'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdateRestaurantCommandToJson(
        UpdateRestaurantCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoId': instance.logoId,
      'description': instance.description,
      'isActive': instance.isActive,
      'takeout': instance.takeout,
      'addressId': instance.addressId,
      'phone': instance.phone,
      'vk': instance.vk,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'minimalOrderPrice': instance.minimalOrderPrice,
      'normalDeliveryTime': instance.normalDeliveryTime,
      'deliveryTime': instance.deliveryTime,
      'workingTimes': instance.workingTimes?.map((e) => e.toJson()).toList(),
      'employees': instance.employees,
    };

UpdateDeliveryTimeCommand _$UpdateDeliveryTimeCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateDeliveryTimeCommand(
      id: json['id'] as String?,
      deliveryTime: (json['deliveryTime'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateDeliveryTimeCommandToJson(
        UpdateDeliveryTimeCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deliveryTime': instance.deliveryTime,
    };

PaginatedListOfReviewCodeGenDto _$PaginatedListOfReviewCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfReviewCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ReviewCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfReviewCodeGenDtoToJson(
        PaginatedListOfReviewCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateReviewCommand _$CreateReviewCommandFromJson(Map<String, dynamic> json) =>
    CreateReviewCommand(
      comment: json['comment'] as String?,
      orderId: json['orderId'] as String?,
      mark: markFromJson(json['mark']),
    );

Map<String, dynamic> _$CreateReviewCommandToJson(
        CreateReviewCommand instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'orderId': instance.orderId,
      'mark': markToJson(instance.mark),
    };

PaginatedListOfTagCodeGenDto _$PaginatedListOfTagCodeGenDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedListOfTagCodeGenDto(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => TagCodeGenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pageIndex: json['pageIndex'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PaginatedListOfTagCodeGenDtoToJson(
        PaginatedListOfTagCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

CreateTagCommand _$CreateTagCommandFromJson(Map<String, dynamic> json) =>
    CreateTagCommand(
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
    );

Map<String, dynamic> _$CreateTagCommandToJson(CreateTagCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageId': instance.imageId,
    };

UpdateTagCommand _$UpdateTagCommandFromJson(Map<String, dynamic> json) =>
    UpdateTagCommand(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageId: json['imageId'] as String?,
    );

Map<String, dynamic> _$UpdateTagCommandToJson(UpdateTagCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageId': instance.imageId,
    };

PaginatedListOfApplicationUserCodeGenDto
    _$PaginatedListOfApplicationUserCodeGenDtoFromJson(
            Map<String, dynamic> json) =>
        PaginatedListOfApplicationUserCodeGenDto(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => ApplicationUserCodeGenDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          pageIndex: json['pageIndex'] as int?,
          totalPages: json['totalPages'] as int?,
          totalCount: json['totalCount'] as int?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          hasNextPage: json['hasNextPage'] as bool?,
        );

Map<String, dynamic> _$PaginatedListOfApplicationUserCodeGenDtoToJson(
        PaginatedListOfApplicationUserCodeGenDto instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'pageIndex': instance.pageIndex,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

GetAvailableRolesQuery _$GetAvailableRolesQueryFromJson(
        Map<String, dynamic> json) =>
    GetAvailableRolesQuery();

Map<String, dynamic> _$GetAvailableRolesQueryToJson(
        GetAvailableRolesQuery instance) =>
    <String, dynamic>{};

CreateUserCommand _$CreateUserCommandFromJson(Map<String, dynamic> json) =>
    CreateUserCommand(
      userName: json['userName'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$CreateUserCommandToJson(CreateUserCommand instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'displayName': instance.displayName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
    };

UpdateUserCommand _$UpdateUserCommandFromJson(Map<String, dynamic> json) =>
    UpdateUserCommand(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$UpdateUserCommandToJson(UpdateUserCommand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'displayName': instance.displayName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
    };

AssignUserToRoleCommand _$AssignUserToRoleCommandFromJson(
        Map<String, dynamic> json) =>
    AssignUserToRoleCommand(
      userId: json['userId'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$AssignUserToRoleCommandToJson(
        AssignUserToRoleCommand instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'role': instance.role,
    };

UpdateUserAddressesCommand _$UpdateUserAddressesCommandFromJson(
        Map<String, dynamic> json) =>
    UpdateUserAddressesCommand(
      userId: json['userId'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$UpdateUserAddressesCommandToJson(
        UpdateUserAddressesCommand instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'addresses': instance.addresses,
    };

FilePost$RequestBody _$FilePost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    FilePost$RequestBody(
      file: json['File'] as String?,
    );

Map<String, dynamic> _$FilePost$RequestBodyToJson(
        FilePost$RequestBody instance) =>
    <String, dynamic>{
      'File': instance.file,
    };

FileIdPut$RequestBody _$FileIdPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    FileIdPut$RequestBody(
      file: json['File'] as String?,
    );

Map<String, dynamic> _$FileIdPut$RequestBodyToJson(
        FileIdPut$RequestBody instance) =>
    <String, dynamic>{
      'File': instance.file,
    };
