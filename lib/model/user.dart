class User {
  String errorCode;
  String errorMessage;
  int total;
  List<Data> data;
  // Null extension;

  User(
      {this.errorCode,
        this.errorMessage,
        this.total,
        this.data,
        // this.extension
      });

  User.fromJson(Map<String, dynamic> json) {
    errorCode = json['ErrorCode'];
    errorMessage = json['ErrorMessage'];
    total = json['Total'];
    if (json['Data'] != null) {
      data = new List<Data>();
      json['Data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    // extension = json['Extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ErrorCode'] = this.errorCode;
    data['ErrorMessage'] = this.errorMessage;
    data['Total'] = this.total;
    if (this.data != null) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    // data['Extension'] = this.extension;
    return data;
  }
}

class Data {
  String name;
  // String customerCode;
  // String mobile;
  // Null email;
  // Null identity;
  // String address;
  // int debAmount;
  // String sex;
  // Null birthDay;
  // String birthDayStr;
  // Null note;
  // Null registerDate;
  // String registerDateStr;
  // Null cardCode;
  // Null managementCode;
  String imageUrl;
  // int enrollNumber;
  // String sourceId;
  // String sourceIdStr;
  // Null sourceName;
  // String createdBy;
  // String createdDate;
  // String createdDateStr;
  // Null gioiTinh;
  // Null serviceCreatedDateStr;
  // Null serviceActivedDateStr;
  // Null serviceEndDateStr;
  // Null introduceBy;
  // String introduceById;
  // Null introduceByName;
  // String introduceByIdStr;
  // String introduceCustomerBy;
  // String introduceCustomerId;
  // String introduceCustomerIdStr;
  // Null jobCode;
  // String jobId;
  // String jobIdStr;
  // String departmentCode;
  // bool isDeleted;
  // Null deletedBy;
  // Null deletedDate;
  // String deletedDateStr;
  // int customerType;
  // int machineStatus;
  // String fingerData;
  // String provinceId;
  // String provinceIdStr;
  // String districtId;
  // String districtIdStr;
  // String communeId;
  // String communeIdStr;
  // List<String> departmentList;
  // String departmentListIdStr;
  // Null statusName;
  // Null cSKHName;
  MainService mainService;
  // int countService;
  // Null textScore;
  // Null hlv;
  // bool hasFinger;
  // Null base64Image;
  // Null departmentIdStr;
  // bool isActive;
  // Null serviceInfos;
  // String mainCusId;
  // String mainCusIdStr;
  // Null childrens;
  // String listChildrenStr;
  // int subType;
  // bool isFamiliar;
  // int pointUsing;
  // String modifiedDate;
  // String modifiedDateStr;
  // Null contractNo;
  // Null receiveInvoiceNo;
  // Null createdFromSource;
  // Null facebook;
  // Null addressType;
  // String levelId;
  // String levelIdStr;
  // Null levelName;
  // String supportedBy;
  // Null supportedByName;
  // Null departmentListName;
  // String supportedByStr;
  // int countSoGoi;
  // Null goiDangHoc;
  // Null hLVName;
  // Null deliveryDate;
  // String deliveryDateStr;
  // Null level;
  // Null fromMonth;
  // Null toMonth;
  // int orderLamita;
  // Null state;
  // Null uploadImage;
  // Null tieuSuBenhLy;
  // Null tieuSuDiUng;
  // Null faceImageUrl;
  // Null contractUrl;
  // bool registerNewFinger;
  // String memberId;
  // String memberIdStr;
  // int point;
  // String sId;
  // String domainId;
  // String idStr;
  // String domainIdStr;

  Data(
      {this.name,
        // this.customerCode,
        // this.mobile,
        // this.email,
        // this.identity,
        // this.address,
        // this.debAmount,
        // this.sex,
        // this.birthDay,
        // this.birthDayStr,
        // this.note,
        // this.registerDate,
        // this.registerDateStr,
        // this.cardCode,
        // this.managementCode,
        this.imageUrl,
        // this.enrollNumber,
        // this.sourceId,
        // this.sourceIdStr,
        // this.sourceName,
        // this.createdBy,
        // this.createdDate,
        // this.createdDateStr,
        // this.gioiTinh,
        // this.serviceCreatedDateStr,
        // this.serviceActivedDateStr,
        // this.serviceEndDateStr,
        // this.introduceBy,
        // this.introduceById,
        // this.introduceByName,
        // this.introduceByIdStr,
        // this.introduceCustomerBy,
        // this.introduceCustomerId,
        // this.introduceCustomerIdStr,
        // this.jobCode,
        // this.jobId,
        // this.jobIdStr,
        // this.departmentCode,
        // this.isDeleted,
        // this.deletedBy,
        // this.deletedDate,
        // this.deletedDateStr,
        // this.customerType,
        // this.machineStatus,
        // this.fingerData,
        // this.provinceId,
        // this.provinceIdStr,
        // this.districtId,
        // this.districtIdStr,
        // this.communeId,
        // this.communeIdStr,
        // this.departmentList,
        // this.departmentListIdStr,
        // this.statusName,
        // this.cSKHName,
        this.mainService,
        // this.countService,
        // this.textScore,
        // this.hlv,
        // this.hasFinger,
        // this.base64Image,
        // this.departmentIdStr,
        // this.isActive,
        // this.serviceInfos,
        // this.mainCusId,
        // this.mainCusIdStr,
        // this.childrens,
        // this.listChildrenStr,
        // this.subType,
        // this.isFamiliar,
        // this.pointUsing,
        // this.modifiedDate,
        // this.modifiedDateStr,
        // this.contractNo,
        // this.receiveInvoiceNo,
        // this.createdFromSource,
        // this.facebook,
        // this.addressType,
        // this.levelId,
        // this.levelIdStr,
        // this.levelName,
        // this.supportedBy,
        // this.supportedByName,
        // this.departmentListName,
        // this.supportedByStr,
        // this.countSoGoi,
        // this.goiDangHoc,
        // this.hLVName,
        // this.deliveryDate,
        // this.deliveryDateStr,
        // this.level,
        // this.fromMonth,
        // this.toMonth,
        // this.orderLamita,
        // this.state,
        // this.uploadImage,
        // this.tieuSuBenhLy,
        // this.tieuSuDiUng,
        // this.faceImageUrl,
        // this.contractUrl,
        // this.registerNewFinger,
        // this.memberId,
        // this.memberIdStr,
        // this.point,
        // this.sId,
        // this.domainId,
        // this.idStr,
        // this.domainIdStr
      });

  Data.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    // customerCode = json['CustomerCode'];
    // mobile = json['Mobile'];
    // email = json['Email'];
    // identity = json['Identity'];
    // address = json['Address'];
    // debAmount = json['DebAmount'];
    // sex = json['Sex'];
    // birthDay = json['BirthDay'];
    // birthDayStr = json['BirthDayStr'];
    // note = json['Note'];
    // registerDate = json['RegisterDate'];
    // registerDateStr = json['RegisterDateStr'];
    // cardCode = json['CardCode'];
    // managementCode = json['ManagementCode'];
    imageUrl = json['ImageUrl'];
    // enrollNumber = json['EnrollNumber'];
    // sourceId = json['SourceId'];
    // sourceIdStr = json['SourceIdStr'];
    // sourceName = json['SourceName'];
    // createdBy = json['CreatedBy'];
    // createdDate = json['CreatedDate'];
    // createdDateStr = json['CreatedDateStr'];
    // gioiTinh = json['GioiTinh'];
    // serviceCreatedDateStr = json['ServiceCreatedDateStr'];
    // serviceActivedDateStr = json['ServiceActivedDateStr'];
    // serviceEndDateStr = json['ServiceEndDateStr'];
    // introduceBy = json['IntroduceBy'];
    // introduceById = json['IntroduceById'];
    // introduceByName = json['IntroduceByName'];
    // introduceByIdStr = json['IntroduceByIdStr'];
    // introduceCustomerBy = json['IntroduceCustomerBy'];
    // introduceCustomerId = json['IntroduceCustomerId'];
    // introduceCustomerIdStr = json['IntroduceCustomerIdStr'];
    // jobCode = json['JobCode'];
    // jobId = json['JobId'];
    // jobIdStr = json['JobIdStr'];
    // departmentCode = json['DepartmentCode'];
    // isDeleted = json['IsDeleted'];
    // deletedBy = json['DeletedBy'];
    // deletedDate = json['DeletedDate'];
    // deletedDateStr = json['DeletedDateStr'];
    // customerType = json['CustomerType'];
    // machineStatus = json['MachineStatus'];
    // fingerData = json['FingerData'];
    // provinceId = json['ProvinceId'];
    // provinceIdStr = json['ProvinceIdStr'];
    // districtId = json['DistrictId'];
    // districtIdStr = json['DistrictIdStr'];
    // communeId = json['CommuneId'];
    // communeIdStr = json['CommuneIdStr'];
    // departmentList = json['DepartmentList'].cast<String>();
    // departmentListIdStr = json['DepartmentListIdStr'];
    // statusName = json['StatusName'];
    // cSKHName = json['CSKHName'];
    mainService = json['MainService'] != null
        ? new MainService.fromJson(json['MainService'])
        : null;
    // countService = json['CountService'];
    // textScore = json['textScore'];
    // hlv = json['Hlv'];
    // hasFinger = json['HasFinger'];
    // base64Image = json['Base64Image'];
    // departmentIdStr = json['DepartmentIdStr'];
    // isActive = json['IsActive'];
    // serviceInfos = json['ServiceInfos'];
    // mainCusId = json['MainCusId'];
    // mainCusIdStr = json['MainCusIdStr'];
    // childrens = json['Childrens'];
    // listChildrenStr = json['ListChildrenStr'];
    // subType = json['SubType'];
    // isFamiliar = json['IsFamiliar'];
    // pointUsing = json['PointUsing'];
    // modifiedDate = json['ModifiedDate'];
    // modifiedDateStr = json['ModifiedDateStr'];
    // contractNo = json['ContractNo'];
    // receiveInvoiceNo = json['ReceiveInvoiceNo'];
    // createdFromSource = json['CreatedFromSource'];
    // facebook = json['Facebook'];
    // addressType = json['AddressType'];
    // levelId = json['LevelId'];
    // levelIdStr = json['LevelIdStr'];
    // levelName = json['LevelName'];
    // supportedBy = json['SupportedBy'];
    // supportedByName = json['SupportedByName'];
    // departmentListName = json['DepartmentListName'];
    // supportedByStr = json['SupportedByStr'];
    // countSoGoi = json['CountSoGoi'];
    // goiDangHoc = json['GoiDangHoc'];
    // hLVName = json['HLVName'];
    // deliveryDate = json['DeliveryDate'];
    // deliveryDateStr = json['DeliveryDateStr'];
    // level = json['Level'];
    // fromMonth = json['FromMonth'];
    // toMonth = json['ToMonth'];
    // orderLamita = json['OrderLamita'];
    // state = json['State'];
    // uploadImage = json['UploadImage'];
    // tieuSuBenhLy = json['TieuSuBenhLy'];
    // tieuSuDiUng = json['TieuSuDiUng'];
    // faceImageUrl = json['FaceImageUrl'];
    // contractUrl = json['ContractUrl'];
    // registerNewFinger = json['RegisterNewFinger'];
    // memberId = json['MemberId'];
    // memberIdStr = json['MemberIdStr'];
    // point = json['Point'];
    // sId = json['_id'];
    // domainId = json['DomainId'];
    // idStr = json['IdStr'];
    // domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    // data['CustomerCode'] = this.customerCode;
    // data['Mobile'] = this.mobile;
    // data['Email'] = this.email;
    // data['Identity'] = this.identity;
    // data['Address'] = this.address;
    // data['DebAmount'] = this.debAmount;
    // data['Sex'] = this.sex;
    // data['BirthDay'] = this.birthDay;
    // data['BirthDayStr'] = this.birthDayStr;
    // data['Note'] = this.note;
    // data['RegisterDate'] = this.registerDate;
    // data['RegisterDateStr'] = this.registerDateStr;
    // data['CardCode'] = this.cardCode;
    // data['ManagementCode'] = this.managementCode;
    data['ImageUrl'] = this.imageUrl;
    // data['EnrollNumber'] = this.enrollNumber;
    // data['SourceId'] = this.sourceId;
    // data['SourceIdStr'] = this.sourceIdStr;
    // data['SourceName'] = this.sourceName;
    // data['CreatedBy'] = this.createdBy;
    // data['CreatedDate'] = this.createdDate;
    // data['CreatedDateStr'] = this.createdDateStr;
    // data['GioiTinh'] = this.gioiTinh;
    // data['ServiceCreatedDateStr'] = this.serviceCreatedDateStr;
    // data['ServiceActivedDateStr'] = this.serviceActivedDateStr;
    // data['ServiceEndDateStr'] = this.serviceEndDateStr;
    // data['IntroduceBy'] = this.introduceBy;
    // data['IntroduceById'] = this.introduceById;
    // data['IntroduceByName'] = this.introduceByName;
    // data['IntroduceByIdStr'] = this.introduceByIdStr;
    // data['IntroduceCustomerBy'] = this.introduceCustomerBy;
    // data['IntroduceCustomerId'] = this.introduceCustomerId;
    // data['IntroduceCustomerIdStr'] = this.introduceCustomerIdStr;
    // data['JobCode'] = this.jobCode;
    // data['JobId'] = this.jobId;
    // data['JobIdStr'] = this.jobIdStr;
    // data['DepartmentCode'] = this.departmentCode;
    // data['IsDeleted'] = this.isDeleted;
    // data['DeletedBy'] = this.deletedBy;
    // data['DeletedDate'] = this.deletedDate;
    // data['DeletedDateStr'] = this.deletedDateStr;
    // data['CustomerType'] = this.customerType;
    // data['MachineStatus'] = this.machineStatus;
    // data['FingerData'] = this.fingerData;
    // data['ProvinceId'] = this.provinceId;
    // data['ProvinceIdStr'] = this.provinceIdStr;
    // data['DistrictId'] = this.districtId;
    // data['DistrictIdStr'] = this.districtIdStr;
    // data['CommuneId'] = this.communeId;
    // data['CommuneIdStr'] = this.communeIdStr;
    // data['DepartmentList'] = this.departmentList;
    // data['DepartmentListIdStr'] = this.departmentListIdStr;
    // data['StatusName'] = this.statusName;
    // data['CSKHName'] = this.cSKHName;
    if (this.mainService != null) {
      data['MainService'] = this.mainService.toJson();
    }
    // data['CountService'] = this.countService;
    // data['textScore'] = this.textScore;
    // data['Hlv'] = this.hlv;
    // data['HasFinger'] = this.hasFinger;
    // data['Base64Image'] = this.base64Image;
    // data['DepartmentIdStr'] = this.departmentIdStr;
    // data['IsActive'] = this.isActive;
    // data['ServiceInfos'] = this.serviceInfos;
    // data['MainCusId'] = this.mainCusId;
    // data['MainCusIdStr'] = this.mainCusIdStr;
    // data['Childrens'] = this.childrens;
    // data['ListChildrenStr'] = this.listChildrenStr;
    // data['SubType'] = this.subType;
    // data['IsFamiliar'] = this.isFamiliar;
    // data['PointUsing'] = this.pointUsing;
    // data['ModifiedDate'] = this.modifiedDate;
    // data['ModifiedDateStr'] = this.modifiedDateStr;
    // data['ContractNo'] = this.contractNo;
    // data['ReceiveInvoiceNo'] = this.receiveInvoiceNo;
    // data['CreatedFromSource'] = this.createdFromSource;
    // data['Facebook'] = this.facebook;
    // data['AddressType'] = this.addressType;
    // data['LevelId'] = this.levelId;
    // data['LevelIdStr'] = this.levelIdStr;
    // data['LevelName'] = this.levelName;
    // data['SupportedBy'] = this.supportedBy;
    // data['SupportedByName'] = this.supportedByName;
    // data['DepartmentListName'] = this.departmentListName;
    // data['SupportedByStr'] = this.supportedByStr;
    // data['CountSoGoi'] = this.countSoGoi;
    // data['GoiDangHoc'] = this.goiDangHoc;
    // data['HLVName'] = this.hLVName;
    // data['DeliveryDate'] = this.deliveryDate;
    // data['DeliveryDateStr'] = this.deliveryDateStr;
    // data['Level'] = this.level;
    // data['FromMonth'] = this.fromMonth;
    // data['ToMonth'] = this.toMonth;
    // data['OrderLamita'] = this.orderLamita;
    // data['State'] = this.state;
    // data['UploadImage'] = this.uploadImage;
    // data['TieuSuBenhLy'] = this.tieuSuBenhLy;
    // data['TieuSuDiUng'] = this.tieuSuDiUng;
    // data['FaceImageUrl'] = this.faceImageUrl;
    // data['ContractUrl'] = this.contractUrl;
    // data['RegisterNewFinger'] = this.registerNewFinger;
    // data['MemberId'] = this.memberId;
    // data['MemberIdStr'] = this.memberIdStr;
    // data['Point'] = this.point;
    // data['_id'] = this.sId;
    // data['DomainId'] = this.domainId;
    // data['IdStr'] = this.idStr;
    // data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class MainService {
  // Null customerCode;
  // String customerId;
  // String productId;
  // Null trainerCode;
  String productName;
  // int productType;
  // int usageType;
  // int productValue;
  // int trainerValue;
  // int productPrice;
  // String startDate;
  // String endDate;
  // int totalExtend;
  // Null extendDate;
  // int status;
  // int price;
  // int value;
  // String note;
  // String serviceCode;
  // int goneDay;
  int remain;
  // String promotionId;
  // Null promotionName;
  // int promotionValue;
  // int promotionType;
  // String createdBy;
  // Null createdCode;
  // String createdDate;
  // Null introduceBy;
  // String introduceById;
  // String introduceCustomerName;
  // String introduceCustomerId;
  // String activedDate;
  // String departmentCode;
  // int discountType;
  // int discountValue;
  // Null pauseDate;
  // Null deletedBy;
  // int serviceType;
  // Null textScore;
  // String statusName;
  // String transferServiceId;
  // String departmentId;
  // String departmentIdStr;
  // String cancelDate;
  // int commType1;
  // int commType1Amount;
  // int commType2;
  // int commType2Amount;
  // String commType2EmployeeId;
  // String commType2EmployeeIdStr;
  // int commType3;
  // int commType3Amount;
  // String commType3CustomerId;
  // String commType3CustomerIdStr;
  // int commType4;
  // int commType4Amount;
  // int paymentType;
  // String bankAccountId;
  // int timesProductCheckInType;
  // bool isSubService;
  // Null subCustomerName;
  // Null subCustomerImgURL;
  // bool multipleDepartment;
  // Null otherDepartments;
  // int pointUsing;
  // Null expiredRealDate;
  // bool isApproved;
  // String modifiedDate;
  // String classId;
  // String sellerId;
  // Null sellerName;
  // List<String> sellerIdList;
  // Null sellerNameList;
  // Null sellerIdListStr;
  // Null classInfo;
  // int quantity;
  // Null lstPromotionInfo;
  // String lstPromotionNameStr;
  // Null contractNo;
  // Null attachFileUrl;
  // Null lstPromotionInfoExt;
  // Null dayContract;
  // Null numberOfContract;
  // Null counselor;
  // Null nhanVienTuVan;
  // int sellerCommission;
  // int customerIntroCommission;
  // int employeeIntroCommission;
  // Null trainerIdStr;
  // int oldVasSericeActionType;
  // Null finTranHisCode;
  // String modifiedDateStr;
  // String customerIdStr;
  // Null customerInfo;
  // String productIdStr;
  // ProductInfo productInfo;
  // String startDateStr;
  // String endDateStr;
  // String extendDateStr;
  // String promotionIdStr;
  // String createdDateStr;
  // String introduceByIdStr;
  // String introduceCustomerIdStr;
  // String activedDateStr;
  // String pauseDateStr;
  // Null deletedDate;
  // String deletedDateStr;
  // String districtIdStr;
  // Null customerName;
  // Null customerImageUrl;
  // Null departmentName;
  // Null customerMobile;
  // Null usageTypeName;
  // Null districtName;
  // String districtId;
  // Null serviceTypeName;
  // Null otherDepartmentsIdStr;
  // Null otherDepartmentInfos;
  // Null lstWorkshift;
  // Null lstTrainerClass;
  // String productGroupId;
  // String productGroupIdStr;
  // Null productGroupName;
  // Null registerDepartmentInfo;
  // String sellerIdStr;
  // Null sellerCode;
  // Null levelName;
  // Null levelNameLamita;
  // Null stateLamita;
  // Null cSKHName;
  // Null hLVName;
  // Null cusName;
  // Null cusMobile;
  // Null cusEmail;
  // Null cusAddress;
  // Null cusModifiedDate;
  // int countSoGoi;
  // int soBuoiDaHoc;
  // Null listCoSo;
  // Null coSoHocNhieuNhat;
  // Null goiDangHoc;
  // Null gioiTinh;
  // String cancelDateStr;
  // String bankAccountIdStr;
  // Null createdByName;
  // Null districtCode;
  // String expiredRealDateStr;
  // int usedTimes;
  // String classIdStr;
  // String invoiceId;
  // String invoiceIdStr;
  // String sId;
  // String domainId;
  // String idStr;
  // String domainIdStr;

  MainService(
      {
        // this.customerCode,
        // this.customerId,
        // this.productId,
        // this.trainerCode,
        this.productName,
        // this.productType,
        // this.usageType,
        // this.productValue,
        // this.trainerValue,
        // this.productPrice,
        // this.startDate,
        // this.endDate,
        // this.totalExtend,
        // this.extendDate,
        // this.status,
        // this.price,
        // this.value,
        // this.note,
        // this.serviceCode,
        // this.goneDay,
        this.remain,
        // this.promotionId,
  //         // this.promotionName,
  //         // this.promotionValue,
  //         // this.promotionType,
  //         // this.createdBy,
  //         // this.createdCode,
  //         // this.createdDate,
  //         // this.introduceBy,
  //         // this.introduceById,
  //         // this.introduceCustomerName,
  //         // this.introduceCustomerId,
  //         // this.activedDate,
  //         // this.departmentCode,
  //         // this.discountType,
  //         // this.discountValue,
  //         // this.pauseDate,
  //         // this.deletedBy,
  //         // this.serviceType,
  //         // this.textScore,
  //         // this.statusName,
  //         // this.transferServiceId,
  //         // this.departmentId,
  //         // this.departmentIdStr,
  //         // this.cancelDate,
  //         // this.commType1,
  //         // this.commType1Amount,
  //         // this.commType2,
  //         // this.commType2Amount,
  //         // this.commType2EmployeeId,
  //         // this.commType2EmployeeIdStr,
  //         // this.commType3,
  //         // this.commType3Amount,
  //         // this.commType3CustomerId,
  //         // this.commType3CustomerIdStr,
  //         // this.commType4,
  //         // this.commType4Amount,
  //         // this.paymentType,
  //         // this.bankAccountId,
  //         // this.timesProductCheckInType,
  //         // this.isSubService,
  //         // this.subCustomerName,
  //         // this.subCustomerImgURL,
  //         // this.multipleDepartment,
  //         // this.otherDepartments,
  //         // this.pointUsing,
  //         // this.expiredRealDate,
  //         // this.isApproved,
  //         // this.modifiedDate,
  //         // this.classId,
  //         // this.sellerId,
  //         // this.sellerName,
  //         // this.sellerIdList,
  //         // this.sellerNameList,
  //         // this.sellerIdListStr,
  //         // this.classInfo,
  //         // this.quantity,
  //         // this.lstPromotionInfo,
  //         // this.lstPromotionNameStr,
  //         // this.contractNo,
  //         // this.attachFileUrl,
  //         // this.lstPromotionInfoExt,
  //         // this.dayContract,
  //         // this.numberOfContract,
  //         // this.counselor,
  //         // this.nhanVienTuVan,
  //         // this.sellerCommission,
  //         // this.customerIntroCommission,
  //         // this.employeeIntroCommission,
  //         // this.trainerIdStr,
  //         // this.oldVasSericeActionType,
  //         // this.finTranHisCode,
  //         // this.modifiedDateStr,
  //         // this.customerIdStr,
  //         // this.customerInfo,
  //         // this.productIdStr,
  //         // this.productInfo,
  //         // this.startDateStr,
  //         // this.endDateStr,
  //         // this.extendDateStr,
  //         // this.promotionIdStr,
  //         // this.createdDateStr,
  //         // this.introduceByIdStr,
  //         // this.introduceCustomerIdStr,
  //         // this.activedDateStr,
  //         // this.pauseDateStr,
  //         // this.deletedDate,
  //         // this.deletedDateStr,
  //         // this.districtIdStr,
  //         // this.customerName,
  //         // this.customerImageUrl,
  //         // this.departmentName,
  //         // this.customerMobile,
  //         // this.usageTypeName,
  //         // this.districtName,
  //         // this.districtId,
  //         // this.serviceTypeName,
  //         // this.otherDepartmentsIdStr,
  //         // this.otherDepartmentInfos,
  //         // this.lstWorkshift,
  //         // this.lstTrainerClass,
  //         // this.productGroupId,
  //         // this.productGroupIdStr,
  //         // this.productGroupName,
  //         // this.registerDepartmentInfo,
  //         // this.sellerIdStr,
  //         // this.sellerCode,
  //         // this.levelName,
  //         // this.levelNameLamita,
  //         // this.stateLamita,
  //         // this.cSKHName,
  //         // this.hLVName,
  //         // this.cusName,
  //         // this.cusMobile,
  //         // this.cusEmail,
  //         // this.cusAddress,
  //         // this.cusModifiedDate,
  //         // this.countSoGoi,
  //         // this.soBuoiDaHoc,
  //         // this.listCoSo,
  //         // this.coSoHocNhieuNhat,
  //         // this.goiDangHoc,
  //         // this.gioiTinh,
  //         // this.cancelDateStr,
  //         // this.bankAccountIdStr,
  //         // this.createdByName,
  //         // this.districtCode,
  //         // this.expiredRealDateStr,
  //         // this.usedTimes,
  //         // this.classIdStr,
  //         // this.invoiceId,
  //         // this.invoiceIdStr,
  //         // this.sId,
  //         // this.domainId,
  //         // this.idStr,
  //         // this.domainIdStr
          });

  MainService.fromJson(Map<String, dynamic> json) {
    // customerCode = json['CustomerCode'];
    // customerId = json['CustomerId'];
    // productId = json['ProductId'];
    // trainerCode = json['TrainerCode'];
    productName = json['ProductName'];
    // productType = json['ProductType'];
    // usageType = json['UsageType'];
    // productValue = json['ProductValue'];
    // trainerValue = json['TrainerValue'];
    // productPrice = json['ProductPrice'];
    // startDate = json['StartDate'];
    // endDate = json['EndDate'];
    // totalExtend = json['TotalExtend'];
    // extendDate = json['ExtendDate'];
    // status = json['Status'];
    // price = json['Price'];
    // value = json['Value'];
    // note = json['Note'];
    // serviceCode = json['ServiceCode'];
    // goneDay = json['GoneDay'];
    remain = json['Remain'];
    // promotionId = json['PromotionId'];
    // promotionName = json['PromotionName'];
    // promotionValue = json['PromotionValue'];
    // promotionType = json['PromotionType'];
    // createdBy = json['CreatedBy'];
    // createdCode = json['CreatedCode'];
    // createdDate = json['CreatedDate'];
    // introduceBy = json['IntroduceBy'];
    // introduceById = json['IntroduceById'];
    // introduceCustomerName = json['IntroduceCustomerName'];
    // introduceCustomerId = json['IntroduceCustomerId'];
    // activedDate = json['ActivedDate'];
    // departmentCode = json['DepartmentCode'];
    // discountType = json['DiscountType'];
    // discountValue = json['DiscountValue'];
    // pauseDate = json['PauseDate'];
    // deletedBy = json['DeletedBy'];
    // serviceType = json['ServiceType'];
    // textScore = json['textScore'];
    // statusName = json['StatusName'];
    // transferServiceId = json['TransferServiceId'];
    // departmentId = json['DepartmentId'];
    // departmentIdStr = json['DepartmentIdStr'];
    // cancelDate = json['CancelDate'];
    // commType1 = json['CommType1'];
    // commType1Amount = json['CommType1Amount'];
    // commType2 = json['CommType2'];
    // commType2Amount = json['CommType2Amount'];
    // commType2EmployeeId = json['CommType2EmployeeId'];
    // commType2EmployeeIdStr = json['CommType2EmployeeIdStr'];
    // commType3 = json['CommType3'];
    // commType3Amount = json['CommType3Amount'];
    // commType3CustomerId = json['CommType3CustomerId'];
    // commType3CustomerIdStr = json['CommType3CustomerIdStr'];
    // commType4 = json['CommType4'];
    // commType4Amount = json['CommType4Amount'];
    // paymentType = json['PaymentType'];
    // bankAccountId = json['BankAccountId'];
    // timesProductCheckInType = json['TimesProductCheckInType'];
    // isSubService = json['IsSubService'];
    // subCustomerName = json['SubCustomerName'];
    // subCustomerImgURL = json['SubCustomerImgURL'];
    // multipleDepartment = json['MultipleDepartment'];
    // otherDepartments = json['OtherDepartments'];
    // pointUsing = json['PointUsing'];
    // expiredRealDate = json['ExpiredRealDate'];
    // isApproved = json['IsApproved'];
    // modifiedDate = json['ModifiedDate'];
    // classId = json['ClassId'];
    // sellerId = json['SellerId'];
    // sellerName = json['SellerName'];
    // sellerIdList = json['SellerIdList'].cast<String>();
    // sellerNameList = json['SellerNameList'];
    // sellerIdListStr = json['SellerIdListStr'];
    // classInfo = json['ClassInfo'];
    // quantity = json['Quantity'];
    // lstPromotionInfo = json['LstPromotionInfo'];
    // lstPromotionNameStr = json['LstPromotionNameStr'];
    // contractNo = json['ContractNo'];
    // attachFileUrl = json['AttachFileUrl'];
    // lstPromotionInfoExt = json['LstPromotionInfoExt'];
    // dayContract = json['DayContract'];
    // numberOfContract = json['NumberOfContract'];
    // counselor = json['Counselor'];
    // nhanVienTuVan = json['NhanVienTuVan'];
    // sellerCommission = json['SellerCommission'];
    // customerIntroCommission = json['CustomerIntroCommission'];
    // employeeIntroCommission = json['EmployeeIntroCommission'];
    // trainerIdStr = json['TrainerIdStr'];
    // oldVasSericeActionType = json['OldVasSericeActionType'];
    // finTranHisCode = json['FinTranHisCode'];
    // modifiedDateStr = json['ModifiedDateStr'];
    // customerIdStr = json['CustomerIdStr'];
    // customerInfo = json['CustomerInfo'];
    // productIdStr = json['ProductIdStr'];
    // productInfo = json['ProductInfo'] != null
    //     ? new ProductInfo.fromJson(json['ProductInfo'])
    //     : null;
    // startDateStr = json['StartDateStr'];
    // endDateStr = json['EndDateStr'];
    // extendDateStr = json['ExtendDateStr'];
    // promotionIdStr = json['PromotionIdStr'];
    // createdDateStr = json['CreatedDateStr'];
    // introduceByIdStr = json['IntroduceByIdStr'];
    // introduceCustomerIdStr = json['IntroduceCustomerIdStr'];
    // activedDateStr = json['ActivedDateStr'];
    // pauseDateStr = json['PauseDateStr'];
    // deletedDate = json['DeletedDate'];
    // deletedDateStr = json['DeletedDateStr'];
    // districtIdStr = json['DistrictIdStr'];
    // customerName = json['CustomerName'];
    // customerImageUrl = json['CustomerImageUrl'];
    // departmentName = json['DepartmentName'];
    // customerMobile = json['CustomerMobile'];
    // usageTypeName = json['UsageTypeName'];
    // districtName = json['DistrictName'];
    // districtId = json['DistrictId'];
    // serviceTypeName = json['ServiceTypeName'];
    // otherDepartmentsIdStr = json['OtherDepartmentsIdStr'];
    // otherDepartmentInfos = json['OtherDepartmentInfos'];
    // lstWorkshift = json['LstWorkshift'];
    // lstTrainerClass = json['LstTrainerClass'];
    // productGroupId = json['ProductGroupId'];
    // productGroupIdStr = json['ProductGroupIdStr'];
    // productGroupName = json['ProductGroupName'];
    // registerDepartmentInfo = json['RegisterDepartmentInfo'];
    // sellerIdStr = json['SellerIdStr'];
    // sellerCode = json['SellerCode'];
    // levelName = json['LevelName'];
    // levelNameLamita = json['LevelNameLamita'];
    // stateLamita = json['StateLamita'];
    // cSKHName = json['CSKHName'];
    // hLVName = json['HLVName'];
    // cusName = json['CusName'];
    // cusMobile = json['CusMobile'];
    // cusEmail = json['CusEmail'];
    // cusAddress = json['CusAddress'];
    // cusModifiedDate = json['CusModifiedDate'];
    // countSoGoi = json['CountSoGoi'];
    // soBuoiDaHoc = json['SoBuoiDaHoc'];
    // listCoSo = json['ListCoSo'];
    // coSoHocNhieuNhat = json['CoSoHocNhieuNhat'];
    // goiDangHoc = json['GoiDangHoc'];
    // gioiTinh = json['GioiTinh'];
    // cancelDateStr = json['CancelDateStr'];
    // bankAccountIdStr = json['BankAccountIdStr'];
    // createdByName = json['CreatedByName'];
    // districtCode = json['DistrictCode'];
    // expiredRealDateStr = json['ExpiredRealDateStr'];
    // usedTimes = json['UsedTimes'];
    // classIdStr = json['ClassIdStr'];
    // invoiceId = json['InvoiceId'];
    // invoiceIdStr = json['InvoiceIdStr'];
    // sId = json['_id'];
    // domainId = json['DomainId'];
    // idStr = json['IdStr'];
    // domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['CustomerCode'] = this.customerCode;
    // data['CustomerId'] = this.customerId;
    // data['ProductId'] = this.productId;
    // data['TrainerCode'] = this.trainerCode;
    data['ProductName'] = this.productName;
    // data['ProductType'] = this.productType;
    // data['UsageType'] = this.usageType;
    // data['ProductValue'] = this.productValue;
    // data['TrainerValue'] = this.trainerValue;
    // data['ProductPrice'] = this.productPrice;
    // data['StartDate'] = this.startDate;
    // data['EndDate'] = this.endDate;
    // data['TotalExtend'] = this.totalExtend;
    // data['ExtendDate'] = this.extendDate;
    // data['Status'] = this.status;
    // data['Price'] = this.price;
    // data['Value'] = this.value;
    // data['Note'] = this.note;
    // data['ServiceCode'] = this.serviceCode;
    // data['GoneDay'] = this.goneDay;
    data['Remain'] = this.remain;
    // data['PromotionId'] = this.promotionId;
    // data['PromotionName'] = this.promotionName;
    // data['PromotionValue'] = this.promotionValue;
    // data['PromotionType'] = this.promotionType;
    // data['CreatedBy'] = this.createdBy;
    // data['CreatedCode'] = this.createdCode;
    // data['CreatedDate'] = this.createdDate;
    // data['IntroduceBy'] = this.introduceBy;
    // data['IntroduceById'] = this.introduceById;
    // data['IntroduceCustomerName'] = this.introduceCustomerName;
    // data['IntroduceCustomerId'] = this.introduceCustomerId;
    // data['ActivedDate'] = this.activedDate;
    // data['DepartmentCode'] = this.departmentCode;
    // data['DiscountType'] = this.discountType;
    // data['DiscountValue'] = this.discountValue;
    // data['PauseDate'] = this.pauseDate;
    // data['DeletedBy'] = this.deletedBy;
    // data['ServiceType'] = this.serviceType;
    // data['textScore'] = this.textScore;
    // data['StatusName'] = this.statusName;
    // data['TransferServiceId'] = this.transferServiceId;
    // data['DepartmentId'] = this.departmentId;
    // data['DepartmentIdStr'] = this.departmentIdStr;
    // data['CancelDate'] = this.cancelDate;
    // data['CommType1'] = this.commType1;
    // data['CommType1Amount'] = this.commType1Amount;
    // data['CommType2'] = this.commType2;
    // data['CommType2Amount'] = this.commType2Amount;
    // data['CommType2EmployeeId'] = this.commType2EmployeeId;
    // data['CommType2EmployeeIdStr'] = this.commType2EmployeeIdStr;
    // data['CommType3'] = this.commType3;
    // data['CommType3Amount'] = this.commType3Amount;
    // data['CommType3CustomerId'] = this.commType3CustomerId;
    // data['CommType3CustomerIdStr'] = this.commType3CustomerIdStr;
    // data['CommType4'] = this.commType4;
    // data['CommType4Amount'] = this.commType4Amount;
    // data['PaymentType'] = this.paymentType;
    // data['BankAccountId'] = this.bankAccountId;
    // data['TimesProductCheckInType'] = this.timesProductCheckInType;
    // data['IsSubService'] = this.isSubService;
    // data['SubCustomerName'] = this.subCustomerName;
    // data['SubCustomerImgURL'] = this.subCustomerImgURL;
    // data['MultipleDepartment'] = this.multipleDepartment;
    // data['OtherDepartments'] = this.otherDepartments;
    // data['PointUsing'] = this.pointUsing;
    // data['ExpiredRealDate'] = this.expiredRealDate;
    // data['IsApproved'] = this.isApproved;
    // data['ModifiedDate'] = this.modifiedDate;
    // data['ClassId'] = this.classId;
    // data['SellerId'] = this.sellerId;
    // data['SellerName'] = this.sellerName;
    // data['SellerIdList'] = this.sellerIdList;
    // data['SellerNameList'] = this.sellerNameList;
    // data['SellerIdListStr'] = this.sellerIdListStr;
    // data['ClassInfo'] = this.classInfo;
    // data['Quantity'] = this.quantity;
    // data['LstPromotionInfo'] = this.lstPromotionInfo;
    // data['LstPromotionNameStr'] = this.lstPromotionNameStr;
    // data['ContractNo'] = this.contractNo;
    // data['AttachFileUrl'] = this.attachFileUrl;
    // data['LstPromotionInfoExt'] = this.lstPromotionInfoExt;
    // data['DayContract'] = this.dayContract;
    // data['NumberOfContract'] = this.numberOfContract;
    // data['Counselor'] = this.counselor;
    // data['NhanVienTuVan'] = this.nhanVienTuVan;
    // data['SellerCommission'] = this.sellerCommission;
    // data['CustomerIntroCommission'] = this.customerIntroCommission;
    // data['EmployeeIntroCommission'] = this.employeeIntroCommission;
    // data['TrainerIdStr'] = this.trainerIdStr;
    // data['OldVasSericeActionType'] = this.oldVasSericeActionType;
    // data['FinTranHisCode'] = this.finTranHisCode;
    // data['ModifiedDateStr'] = this.modifiedDateStr;
    // data['CustomerIdStr'] = this.customerIdStr;
    // data['CustomerInfo'] = this.customerInfo;
    // data['ProductIdStr'] = this.productIdStr;
    // if (this.productInfo != null) {
    //   data['ProductInfo'] = this.productInfo.toJson();
    // }
    // data['StartDateStr'] = this.startDateStr;
    // data['EndDateStr'] = this.endDateStr;
    // data['ExtendDateStr'] = this.extendDateStr;
    // data['PromotionIdStr'] = this.promotionIdStr;
    // data['CreatedDateStr'] = this.createdDateStr;
    // data['IntroduceByIdStr'] = this.introduceByIdStr;
    // data['IntroduceCustomerIdStr'] = this.introduceCustomerIdStr;
    // data['ActivedDateStr'] = this.activedDateStr;
    // data['PauseDateStr'] = this.pauseDateStr;
    // data['DeletedDate'] = this.deletedDate;
    // data['DeletedDateStr'] = this.deletedDateStr;
    // data['DistrictIdStr'] = this.districtIdStr;
    // data['CustomerName'] = this.customerName;
    // data['CustomerImageUrl'] = this.customerImageUrl;
    // data['DepartmentName'] = this.departmentName;
    // data['CustomerMobile'] = this.customerMobile;
    // data['UsageTypeName'] = this.usageTypeName;
    // data['DistrictName'] = this.districtName;
    // data['DistrictId'] = this.districtId;
    // data['ServiceTypeName'] = this.serviceTypeName;
    // data['OtherDepartmentsIdStr'] = this.otherDepartmentsIdStr;
    // data['OtherDepartmentInfos'] = this.otherDepartmentInfos;
    // data['LstWorkshift'] = this.lstWorkshift;
    // data['LstTrainerClass'] = this.lstTrainerClass;
    // data['ProductGroupId'] = this.productGroupId;
    // data['ProductGroupIdStr'] = this.productGroupIdStr;
    // data['ProductGroupName'] = this.productGroupName;
    // data['RegisterDepartmentInfo'] = this.registerDepartmentInfo;
    // data['SellerIdStr'] = this.sellerIdStr;
    // data['SellerCode'] = this.sellerCode;
    // data['LevelName'] = this.levelName;
    // data['LevelNameLamita'] = this.levelNameLamita;
    // data['StateLamita'] = this.stateLamita;
    // data['CSKHName'] = this.cSKHName;
    // data['HLVName'] = this.hLVName;
    // data['CusName'] = this.cusName;
    // data['CusMobile'] = this.cusMobile;
    // data['CusEmail'] = this.cusEmail;
    // data['CusAddress'] = this.cusAddress;
    // data['CusModifiedDate'] = this.cusModifiedDate;
    // data['CountSoGoi'] = this.countSoGoi;
    // data['SoBuoiDaHoc'] = this.soBuoiDaHoc;
    // data['ListCoSo'] = this.listCoSo;
    // data['CoSoHocNhieuNhat'] = this.coSoHocNhieuNhat;
    // data['GoiDangHoc'] = this.goiDangHoc;
    // data['GioiTinh'] = this.gioiTinh;
    // data['CancelDateStr'] = this.cancelDateStr;
    // data['BankAccountIdStr'] = this.bankAccountIdStr;
    // data['CreatedByName'] = this.createdByName;
    // data['DistrictCode'] = this.districtCode;
    // data['ExpiredRealDateStr'] = this.expiredRealDateStr;
    // data['UsedTimes'] = this.usedTimes;
    // data['ClassIdStr'] = this.classIdStr;
    // data['InvoiceId'] = this.invoiceId;
    // data['InvoiceIdStr'] = this.invoiceIdStr;
    // data['_id'] = this.sId;
    // data['DomainId'] = this.domainId;
    // data['IdStr'] = this.idStr;
    // data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

// class ProductInfo {
//   // String productCode;
//   String name;
//   int price;
//   Null description;
//   String startDate;
//   String endDate;
//   Null workShiftCode;
//   List<Null> workShifts;
//   int status;
//   int amount;
//   int isGroupProduct;
//   int numOfMemberGroup;
//   Null groupName;
//   Null fromTime;
//   Null toTime;
//   String createdDate;
//   String createdBy;
//   bool isDeleted;
//   Null deletedDate;
//   Null deletedBy;
//   int productType;
//   int usageType;
//   List<Null> dayOfWeeks;
//   List<String> listMachineId;
//   String registerMachineId;
//   String departmentId;
//   int commType1;
//   int commType1Amount;
//   int commType2;
//   int commType2Amount;
//   int commType3;
//   int commType3Amount;
//   int commType4;
//   int commType4Amount;
//   int timesProductCheckInType;
//   int timesProductDuration;
//   bool allowPublicInternet;
//   int categoryType;
//   int pointWhenBuy;
//   int pointWhenCheckin;
//   String productGroupId;
//   int workshiftType;
//   List<Null> workshiftList;
//   String spaFormularId;
//   int serviceDuration;
//   bool isSellOnline;
//   bool allowRegisterOnline;
//   bool hidePrice;
//   String onlinePromotionId;
//   int onlinePromotionType;
//   int onlinePromotionValue;
//   String registerPromotionId;
//   int registerPromotionType;
//   int registerPromotionValue;
//   bool freeParking;
//   bool freeTowel;
//   bool freeWater;
//   int spaNumMonthExpire;
//   bool hasPT;
//   bool reservePT;
//   int noOfTrainer;
//   int belifeGroupType;
//   List<ListLoTrinhTriLieu> listLoTrinhTriLieu;
//   String onlineImageUrl;
//   String onlineDescription;
//   bool isCombo;
//   List<ComboList> comboList;
//   Null textScore;
//   Null workShiftsStr;
//   String listMachineIdStr;
//   String deletedDateStr;
//   String registerMachineIdStr;
//   String departmentIdStr;
//   String productGroupIdStr;
//   String workshiftListStr;
//   String spaFormularIdStr;
//   Null spaFormularName;
//   String onlinePromotionIdStr;
//   String registerPromotionIdStr;
//   int saleOnlinePrice;
//   String startDateStr;
//   String endDateStr;
//   Null workShiftInfo;
//   String createdDateStr;
//   String sId;
//   String domainId;
//   String idStr;
//   String domainIdStr;
//
//   ProductInfo(
//       {this.productCode,
//         this.name,
//         this.price,
//         this.description,
//         this.startDate,
//         this.endDate,
//         this.workShiftCode,
//         this.workShifts,
//         this.status,
//         this.amount,
//         this.isGroupProduct,
//         this.numOfMemberGroup,
//         this.groupName,
//         this.fromTime,
//         this.toTime,
//         this.createdDate,
//         this.createdBy,
//         this.isDeleted,
//         this.deletedDate,
//         this.deletedBy,
//         this.productType,
//         this.usageType,
//         this.dayOfWeeks,
//         this.listMachineId,
//         this.registerMachineId,
//         this.departmentId,
//         this.commType1,
//         this.commType1Amount,
//         this.commType2,
//         this.commType2Amount,
//         this.commType3,
//         this.commType3Amount,
//         this.commType4,
//         this.commType4Amount,
//         this.timesProductCheckInType,
//         this.timesProductDuration,
//         this.allowPublicInternet,
//         this.categoryType,
//         this.pointWhenBuy,
//         this.pointWhenCheckin,
//         this.productGroupId,
//         this.workshiftType,
//         this.workshiftList,
//         this.spaFormularId,
//         this.serviceDuration,
//         this.isSellOnline,
//         this.allowRegisterOnline,
//         this.hidePrice,
//         this.onlinePromotionId,
//         this.onlinePromotionType,
//         this.onlinePromotionValue,
//         this.registerPromotionId,
//         this.registerPromotionType,
//         this.registerPromotionValue,
//         this.freeParking,
//         this.freeTowel,
//         this.freeWater,
//         this.spaNumMonthExpire,
//         this.hasPT,
//         this.reservePT,
//         this.noOfTrainer,
//         this.belifeGroupType,
//         this.listLoTrinhTriLieu,
//         this.onlineImageUrl,
//         this.onlineDescription,
//         this.isCombo,
//         this.comboList,
//         this.textScore,
//         this.workShiftsStr,
//         this.listMachineIdStr,
//         this.deletedDateStr,
//         this.registerMachineIdStr,
//         this.departmentIdStr,
//         this.productGroupIdStr,
//         this.workshiftListStr,
//         this.spaFormularIdStr,
//         this.spaFormularName,
//         this.onlinePromotionIdStr,
//         this.registerPromotionIdStr,
//         this.saleOnlinePrice,
//         this.startDateStr,
//         this.endDateStr,
//         this.workShiftInfo,
//         this.createdDateStr,
//         this.sId,
//         this.domainId,
//         this.idStr,
//         this.domainIdStr});
//
//   ProductInfo.fromJson(Map<String, dynamic> json) {
//     productCode = json['ProductCode'];
//     name = json['Name'];
//     price = json['Price'];
//     description = json['Description'];
//     startDate = json['StartDate'];
//     endDate = json['EndDate'];
//     workShiftCode = json['WorkShiftCode'];
//     if (json['WorkShifts'] != null) {
//       workShifts = new List<Null>();
//       json['WorkShifts'].forEach((v) {
//         workShifts.add(new Null.fromJson(v));
//       });
//     }
//     status = json['Status'];
//     amount = json['Amount'];
//     isGroupProduct = json['IsGroupProduct'];
//     numOfMemberGroup = json['NumOfMemberGroup'];
//     groupName = json['GroupName'];
//     fromTime = json['FromTime'];
//     toTime = json['ToTime'];
//     createdDate = json['CreatedDate'];
//     createdBy = json['CreatedBy'];
//     isDeleted = json['IsDeleted'];
//     deletedDate = json['DeletedDate'];
//     deletedBy = json['DeletedBy'];
//     productType = json['ProductType'];
//     usageType = json['UsageType'];
//     if (json['DayOfWeeks'] != null) {
//       dayOfWeeks = new List<Null>();
//       json['DayOfWeeks'].forEach((v) {
//         dayOfWeeks.add(new Null.fromJson(v));
//       });
//     }
//     listMachineId = json['ListMachineId'].cast<String>();
//     registerMachineId = json['RegisterMachineId'];
//     departmentId = json['DepartmentId'];
//     commType1 = json['CommType1'];
//     commType1Amount = json['CommType1Amount'];
//     commType2 = json['CommType2'];
//     commType2Amount = json['CommType2Amount'];
//     commType3 = json['CommType3'];
//     commType3Amount = json['CommType3Amount'];
//     commType4 = json['CommType4'];
//     commType4Amount = json['CommType4Amount'];
//     timesProductCheckInType = json['TimesProductCheckInType'];
//     timesProductDuration = json['TimesProductDuration'];
//     allowPublicInternet = json['AllowPublicInternet'];
//     categoryType = json['CategoryType'];
//     pointWhenBuy = json['PointWhenBuy'];
//     pointWhenCheckin = json['PointWhenCheckin'];
//     productGroupId = json['ProductGroupId'];
//     workshiftType = json['WorkshiftType'];
//     if (json['WorkshiftList'] != null) {
//       workshiftList = new List<Null>();
//       json['WorkshiftList'].forEach((v) {
//         workshiftList.add(new Null.fromJson(v));
//       });
//     }
//     spaFormularId = json['SpaFormularId'];
//     serviceDuration = json['ServiceDuration'];
//     isSellOnline = json['IsSellOnline'];
//     allowRegisterOnline = json['AllowRegisterOnline'];
//     hidePrice = json['HidePrice'];
//     onlinePromotionId = json['OnlinePromotionId'];
//     onlinePromotionType = json['OnlinePromotionType'];
//     onlinePromotionValue = json['OnlinePromotionValue'];
//     registerPromotionId = json['RegisterPromotionId'];
//     registerPromotionType = json['RegisterPromotionType'];
//     registerPromotionValue = json['RegisterPromotionValue'];
//     freeParking = json['FreeParking'];
//     freeTowel = json['FreeTowel'];
//     freeWater = json['FreeWater'];
//     spaNumMonthExpire = json['SpaNumMonthExpire'];
//     hasPT = json['HasPT'];
//     reservePT = json['ReservePT'];
//     noOfTrainer = json['NoOfTrainer'];
//     belifeGroupType = json['BelifeGroupType'];
//     if (json['ListLoTrinhTriLieu'] != null) {
//       listLoTrinhTriLieu = new List<ListLoTrinhTriLieu>();
//       json['ListLoTrinhTriLieu'].forEach((v) {
//         listLoTrinhTriLieu.add(new ListLoTrinhTriLieu.fromJson(v));
//       });
//     }
//     onlineImageUrl = json['OnlineImageUrl'];
//     onlineDescription = json['OnlineDescription'];
//     isCombo = json['IsCombo'];
//     if (json['ComboList'] != null) {
//       comboList = new List<ComboList>();
//       json['ComboList'].forEach((v) {
//         comboList.add(new ComboList.fromJson(v));
//       });
//     }
//     textScore = json['textScore'];
//     workShiftsStr = json['WorkShiftsStr'];
//     listMachineIdStr = json['ListMachineIdStr'];
//     deletedDateStr = json['DeletedDateStr'];
//     registerMachineIdStr = json['RegisterMachineIdStr'];
//     departmentIdStr = json['DepartmentIdStr'];
//     productGroupIdStr = json['ProductGroupIdStr'];
//     workshiftListStr = json['WorkshiftListStr'];
//     spaFormularIdStr = json['SpaFormularIdStr'];
//     spaFormularName = json['SpaFormularName'];
//     onlinePromotionIdStr = json['OnlinePromotionIdStr'];
//     registerPromotionIdStr = json['RegisterPromotionIdStr'];
//     saleOnlinePrice = json['SaleOnlinePrice'];
//     startDateStr = json['StartDateStr'];
//     endDateStr = json['EndDateStr'];
//     workShiftInfo = json['WorkShiftInfo'];
//     createdDateStr = json['CreatedDateStr'];
//     sId = json['_id'];
//     domainId = json['DomainId'];
//     idStr = json['IdStr'];
//     domainIdStr = json['DomainIdStr'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['ProductCode'] = this.productCode;
//     data['Name'] = this.name;
//     data['Price'] = this.price;
//     data['Description'] = this.description;
//     data['StartDate'] = this.startDate;
//     data['EndDate'] = this.endDate;
//     data['WorkShiftCode'] = this.workShiftCode;
//     if (this.workShifts != null) {
//       data['WorkShifts'] = this.workShifts.map((v) => v.toJson()).toList();
//     }
//     data['Status'] = this.status;
//     data['Amount'] = this.amount;
//     data['IsGroupProduct'] = this.isGroupProduct;
//     data['NumOfMemberGroup'] = this.numOfMemberGroup;
//     data['GroupName'] = this.groupName;
//     data['FromTime'] = this.fromTime;
//     data['ToTime'] = this.toTime;
//     data['CreatedDate'] = this.createdDate;
//     data['CreatedBy'] = this.createdBy;
//     data['IsDeleted'] = this.isDeleted;
//     data['DeletedDate'] = this.deletedDate;
//     data['DeletedBy'] = this.deletedBy;
//     data['ProductType'] = this.productType;
//     data['UsageType'] = this.usageType;
//     if (this.dayOfWeeks != null) {
//       data['DayOfWeeks'] = this.dayOfWeeks.map((v) => v.toJson()).toList();
//     }
//     data['ListMachineId'] = this.listMachineId;
//     data['RegisterMachineId'] = this.registerMachineId;
//     data['DepartmentId'] = this.departmentId;
//     data['CommType1'] = this.commType1;
//     data['CommType1Amount'] = this.commType1Amount;
//     data['CommType2'] = this.commType2;
//     data['CommType2Amount'] = this.commType2Amount;
//     data['CommType3'] = this.commType3;
//     data['CommType3Amount'] = this.commType3Amount;
//     data['CommType4'] = this.commType4;
//     data['CommType4Amount'] = this.commType4Amount;
//     data['TimesProductCheckInType'] = this.timesProductCheckInType;
//     data['TimesProductDuration'] = this.timesProductDuration;
//     data['AllowPublicInternet'] = this.allowPublicInternet;
//     data['CategoryType'] = this.categoryType;
//     data['PointWhenBuy'] = this.pointWhenBuy;
//     data['PointWhenCheckin'] = this.pointWhenCheckin;
//     data['ProductGroupId'] = this.productGroupId;
//     data['WorkshiftType'] = this.workshiftType;
//     if (this.workshiftList != null) {
//       data['WorkshiftList'] =
//           this.workshiftList.map((v) => v.toJson()).toList();
//     }
//     data['SpaFormularId'] = this.spaFormularId;
//     data['ServiceDuration'] = this.serviceDuration;
//     data['IsSellOnline'] = this.isSellOnline;
//     data['AllowRegisterOnline'] = this.allowRegisterOnline;
//     data['HidePrice'] = this.hidePrice;
//     data['OnlinePromotionId'] = this.onlinePromotionId;
//     data['OnlinePromotionType'] = this.onlinePromotionType;
//     data['OnlinePromotionValue'] = this.onlinePromotionValue;
//     data['RegisterPromotionId'] = this.registerPromotionId;
//     data['RegisterPromotionType'] = this.registerPromotionType;
//     data['RegisterPromotionValue'] = this.registerPromotionValue;
//     data['FreeParking'] = this.freeParking;
//     data['FreeTowel'] = this.freeTowel;
//     data['FreeWater'] = this.freeWater;
//     data['SpaNumMonthExpire'] = this.spaNumMonthExpire;
//     data['HasPT'] = this.hasPT;
//     data['ReservePT'] = this.reservePT;
//     data['NoOfTrainer'] = this.noOfTrainer;
//     data['BelifeGroupType'] = this.belifeGroupType;
//     if (this.listLoTrinhTriLieu != null) {
//       data['ListLoTrinhTriLieu'] =
//           this.listLoTrinhTriLieu.map((v) => v.toJson()).toList();
//     }
//     data['OnlineImageUrl'] = this.onlineImageUrl;
//     data['OnlineDescription'] = this.onlineDescription;
//     data['IsCombo'] = this.isCombo;
//     if (this.comboList != null) {
//       data['ComboList'] = this.comboList.map((v) => v.toJson()).toList();
//     }
//     data['textScore'] = this.textScore;
//     data['WorkShiftsStr'] = this.workShiftsStr;
//     data['ListMachineIdStr'] = this.listMachineIdStr;
//     data['DeletedDateStr'] = this.deletedDateStr;
//     data['RegisterMachineIdStr'] = this.registerMachineIdStr;
//     data['DepartmentIdStr'] = this.departmentIdStr;
//     data['ProductGroupIdStr'] = this.productGroupIdStr;
//     data['WorkshiftListStr'] = this.workshiftListStr;
//     data['SpaFormularIdStr'] = this.spaFormularIdStr;
//     data['SpaFormularName'] = this.spaFormularName;
//     data['OnlinePromotionIdStr'] = this.onlinePromotionIdStr;
//     data['RegisterPromotionIdStr'] = this.registerPromotionIdStr;
//     data['SaleOnlinePrice'] = this.saleOnlinePrice;
//     data['StartDateStr'] = this.startDateStr;
//     data['EndDateStr'] = this.endDateStr;
//     data['WorkShiftInfo'] = this.workShiftInfo;
//     data['CreatedDateStr'] = this.createdDateStr;
//     data['_id'] = this.sId;
//     data['DomainId'] = this.domainId;
//     data['IdStr'] = this.idStr;
//     data['DomainIdStr'] = this.domainIdStr;
//     return data;
//   }
// }
//
// class ListLoTrinhTriLieu {
//   String name;
//   String description;
//   String productId;
//   int index;
//   String departmentId;
//   bool isDeleted;
//   String createdDate;
//   String createdDateStr;
//   String createdBy;
//   String createdByStr;
//   Null modifiedDate;
//   String modifiedDateStr;
//   String modifiedBy;
//   String modifiedByStr;
//   String departmentIdStr;
//   String productIdStr;
//   Null textScore;
//   Null employeeIdList;
//   List<Null> employeeIdListStr;
//   String sId;
//   String domainId;
//   String idStr;
//   String domainIdStr;
//
//   ListLoTrinhTriLieu(
//       {this.name,
//         this.description,
//         this.productId,
//         this.index,
//         this.departmentId,
//         this.isDeleted,
//         this.createdDate,
//         this.createdDateStr,
//         this.createdBy,
//         this.createdByStr,
//         this.modifiedDate,
//         this.modifiedDateStr,
//         this.modifiedBy,
//         this.modifiedByStr,
//         this.departmentIdStr,
//         this.productIdStr,
//         this.textScore,
//         this.employeeIdList,
//         this.employeeIdListStr,
//         this.sId,
//         this.domainId,
//         this.idStr,
//         this.domainIdStr});
//
//   ListLoTrinhTriLieu.fromJson(Map<String, dynamic> json) {
//     name = json['Name'];
//     description = json['Description'];
//     productId = json['ProductId'];
//     index = json['Index'];
//     departmentId = json['DepartmentId'];
//     isDeleted = json['IsDeleted'];
//     createdDate = json['CreatedDate'];
//     createdDateStr = json['CreatedDateStr'];
//     createdBy = json['CreatedBy'];
//     createdByStr = json['CreatedByStr'];
//     modifiedDate = json['ModifiedDate'];
//     modifiedDateStr = json['ModifiedDateStr'];
//     modifiedBy = json['ModifiedBy'];
//     modifiedByStr = json['ModifiedByStr'];
//     departmentIdStr = json['DepartmentIdStr'];
//     productIdStr = json['ProductIdStr'];
//     textScore = json['textScore'];
//     employeeIdList = json['EmployeeIdList'];
//     if (json['EmployeeIdListStr'] != null) {
//       employeeIdListStr = new List<Null>();
//       json['EmployeeIdListStr'].forEach((v) {
//         employeeIdListStr.add(new Null.fromJson(v));
//       });
//     }
//     sId = json['_id'];
//     domainId = json['DomainId'];
//     idStr = json['IdStr'];
//     domainIdStr = json['DomainIdStr'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Name'] = this.name;
//     data['Description'] = this.description;
//     data['ProductId'] = this.productId;
//     data['Index'] = this.index;
//     data['DepartmentId'] = this.departmentId;
//     data['IsDeleted'] = this.isDeleted;
//     data['CreatedDate'] = this.createdDate;
//     data['CreatedDateStr'] = this.createdDateStr;
//     data['CreatedBy'] = this.createdBy;
//     data['CreatedByStr'] = this.createdByStr;
//     data['ModifiedDate'] = this.modifiedDate;
//     data['ModifiedDateStr'] = this.modifiedDateStr;
//     data['ModifiedBy'] = this.modifiedBy;
//     data['ModifiedByStr'] = this.modifiedByStr;
//     data['DepartmentIdStr'] = this.departmentIdStr;
//     data['ProductIdStr'] = this.productIdStr;
//     data['textScore'] = this.textScore;
//     data['EmployeeIdList'] = this.employeeIdList;
//     if (this.employeeIdListStr != null) {
//       data['EmployeeIdListStr'] =
//           this.employeeIdListStr.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = this.sId;
//     data['DomainId'] = this.domainId;
//     data['IdStr'] = this.idStr;
//     data['DomainIdStr'] = this.domainIdStr;
//     return data;
//   }
// }
//
// class ComboList {
//   String productId;
//   int amount;
//   String productName;
//   String productIdStr;
//
//   ComboList({this.productId, this.amount, this.productName, this.productIdStr});
//
//   ComboList.fromJson(Map<String, dynamic> json) {
//     productId = json['ProductId'];
//     amount = json['Amount'];
//     productName = json['ProductName'];
//     productIdStr = json['ProductIdStr'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['ProductId'] = this.productId;
//     data['Amount'] = this.amount;
//     data['ProductName'] = this.productName;
//     data['ProductIdStr'] = this.productIdStr;
//     return data;
//   }
// }