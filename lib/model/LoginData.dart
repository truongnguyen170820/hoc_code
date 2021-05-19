class LoginData {
  String sessionId;
  int userType;
  int userStatus;
  String userName;
  String iD;
  String domainName;
  String domainId;
  UserInfo userInfo;
  //List<AllDepartment> allDepartment;
  DomainInfo domainInfo;
  int productPackageType;
  bool hasApproveManagementRight;
  bool hasApproveExpenditureRight;

  LoginData(
      {this.sessionId,
        this.userType,
        this.userStatus,
        this.userName,
        this.iD,
        this.domainName,
        this.domainId,
        this.userInfo,
        // this.allDepartment,
        this.domainInfo,
        this.productPackageType,
        this.hasApproveManagementRight,
        this.hasApproveExpenditureRight});

  LoginData.fromJson(Map<String, dynamic> json) {
    sessionId = json['SessionId'];
    userType = json['UserType'];
    userStatus = json['UserStatus'];
    userName = json['UserName'];
    iD = json['ID'];
    domainName = json['DomainName'];
    domainId = json['DomainId'];
    userInfo = json['UserInfo'] != null
        ? new UserInfo.fromJson(json['UserInfo'])
        : null;
//    if (json['AllDepartment'] != null) {
//      allDepartment = new List<AllDepartment>();
//      json['AllDepartment'].forEach((v) {
//        allDepartment.add(new AllDepartment.fromJson(v));
//      });
//    }
    domainInfo = json['DomainInfo'] != null
        ? new DomainInfo.fromJson(json['DomainInfo'])
        : null;
    productPackageType = json['ProductPackageType'];
    hasApproveManagementRight = json['HasApproveManagementRight'];
    hasApproveExpenditureRight = json['HasApproveExpenditureRight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SessionId'] = this.sessionId;
    data['UserType'] = this.userType;
    data['UserStatus'] = this.userStatus;
    data['UserName'] = this.userName;
    data['ID'] = this.iD;
    data['DomainName'] = this.domainName;
    data['DomainId'] = this.domainId;
    if (this.userInfo != null) {
      data['UserInfo'] = this.userInfo.toJson();
    }
//    if (this.allDepartment != null) {
//      data['AllDepartment'] =
//          this.allDepartment.map((v) => v.toJson()).toList();
//    }
    if (this.domainInfo != null) {
      data['DomainInfo'] = this.domainInfo.toJson();
    }
    data['ProductPackageType'] = this.productPackageType;
    data['HasApproveManagementRight'] = this.hasApproveManagementRight;
    data['HasApproveExpenditureRight'] = this.hasApproveExpenditureRight;
    return data;
  }
}

class UserInfo {
  String userName;
  String pwd;
  int userStatus;
  bool isLock;
  bool isDeleted;
  String salt;
  String email;
  String mobile;
  String fullName;
  String creationDate;
  String lastLoginTime;
  int noOfWrongPwd;
  String lastActivityDate;
  String passwordQuestion;
  String passwordAnswer;
  bool isApproved;
  String lastPasswordChangedDate;
  String lastLockoutDate;
  String comment;
  int userType;
  // List<Roles> roles;
  Profile profile;
  // List<Null> domainRoles;
//  CurrentDepartment currentDepartment;
//  CurrentDepartment homeDepartment;
  String menu;
  String employeeId;
  String employeeIdStr;
  // String employeeInfo;
  int remainNotify;
  String domainRolesId;
  String accessFunctionList;
  String advanceMenu;
  bool isAdministrator;
  bool allowCheckinAllDep;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  UserInfo(
      {this.userName,
        this.pwd,
        this.userStatus,
        this.isLock,
        this.isDeleted,
        this.salt,
        this.email,
        this.mobile,
        this.fullName,
        this.creationDate,
        this.lastLoginTime,
        this.noOfWrongPwd,
        this.lastActivityDate,
        this.passwordQuestion,
        this.passwordAnswer,
        this.isApproved,
        this.lastPasswordChangedDate,
        this.lastLockoutDate,
        this.comment,
        this.userType,
        //   this.roles,
        this.profile,
        //  this.domainRoles,
        //   this.currentDepartment,
        //    this.homeDepartment,
        this.menu,
        this.employeeId,
        this.employeeIdStr,
        // this.employeeInfo,
        this.remainNotify,
        this.domainRolesId,
        this.accessFunctionList,
        this.advanceMenu,
        this.isAdministrator,
        this.allowCheckinAllDep,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  UserInfo.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    pwd = json['Pwd'];
    userStatus = json['UserStatus'];
    isLock = json['IsLock'];
    isDeleted = json['IsDeleted'];
    salt = json['Salt'];
    email = json['Email'];
    mobile = json['Mobile'];
    fullName = json['FullName'];
    creationDate = json['CreationDate'];
    lastLoginTime = json['LastLoginTime'];
    noOfWrongPwd = json['NoOfWrongPwd'];
    lastActivityDate = json['LastActivityDate'];
    passwordQuestion = json['PasswordQuestion'];
    passwordAnswer = json['PasswordAnswer'];
    isApproved = json['IsApproved'];
    lastPasswordChangedDate = json['LastPasswordChangedDate'];
    lastLockoutDate = json['LastLockoutDate'];
    comment = json['Comment'];
    userType = json['UserType'];
//    if (json['Roles'] != null) {
//      roles = new List<Roles>();
//      json['Roles'].forEach((v) {
//        roles.add(new Roles.fromJson(v));
//      });
//    }
    profile =
    json['Profile'] != null ? new Profile.fromJson(json['Profile']) : null;
//    if (json['DomainRoles'] != null) {
//      domainRoles = new List<Null>();
////      json['DomainRoles'].forEach((v) {
////       // domainRoles.add(new Null.fromJson(v));
////      });
//    }
//    currentDepartment = json['CurrentDepartment'] != null
//        ? new CurrentDepartment.fromJson(json['CurrentDepartment'])
//        : null;
//    homeDepartment = json['HomeDepartment'] != null
//        ? new CurrentDepartment.fromJson(json['HomeDepartment'])
//        : null;
    menu = json['Menu'];
    employeeId = json['EmployeeId'];
    employeeIdStr = json['EmployeeIdStr'];
    // employeeInfo = json['EmployeeInfo'];
    remainNotify = json['RemainNotify'];
    domainRolesId = json['DomainRolesId'];
    accessFunctionList = json['AccessFunctionList'];
    advanceMenu = json['AdvanceMenu'];
    isAdministrator = json['IsAdministrator'];
    allowCheckinAllDep = json['AllowCheckinAllDep'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this.userName;
    data['Pwd'] = this.pwd;
    data['UserStatus'] = this.userStatus;
    data['IsLock'] = this.isLock;
    data['IsDeleted'] = this.isDeleted;
    data['Salt'] = this.salt;
    data['Email'] = this.email;
    data['Mobile'] = this.mobile;
    data['FullName'] = this.fullName;
    data['CreationDate'] = this.creationDate;
    data['LastLoginTime'] = this.lastLoginTime;
    data['NoOfWrongPwd'] = this.noOfWrongPwd;
    data['LastActivityDate'] = this.lastActivityDate;
    data['PasswordQuestion'] = this.passwordQuestion;
    data['PasswordAnswer'] = this.passwordAnswer;
    data['IsApproved'] = this.isApproved;
    data['LastPasswordChangedDate'] = this.lastPasswordChangedDate;
    data['LastLockoutDate'] = this.lastLockoutDate;
    data['Comment'] = this.comment;
    data['UserType'] = this.userType;
//    if (this.roles != null) {
//      data['Roles'] = this.roles.map((v) => v.toJson()).toList();
//    }
    if (this.profile != null) {
      data['Profile'] = this.profile.toJson();
    }
//    if (this.domainRoles != null) {
//     // data['DomainRoles'] = this.domainRoles.map((v) => v.toJson()).toList();
//    }
//    if (this.currentDepartment != null) {
//      data['CurrentDepartment'] = this.currentDepartment.toJson();
//    }
//    if (this.homeDepartment != null) {
//      data['HomeDepartment'] = this.homeDepartment.toJson();
//    }
    data['Menu'] = this.menu;
    data['EmployeeId'] = this.employeeId;
    data['EmployeeIdStr'] = this.employeeIdStr;
    // data['EmployeeInfo'] = this.employeeInfo;
    data['RemainNotify'] = this.remainNotify;
    data['DomainRolesId'] = this.domainRolesId;
    data['AccessFunctionList'] = this.accessFunctionList;
    data['AdvanceMenu'] = this.advanceMenu;
    data['IsAdministrator'] = this.isAdministrator;
    data['AllowCheckinAllDep'] = this.allowCheckinAllDep;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class Roles {
  String name;
  String loweredRoleName;
  String description;
  String creationDate;
  String createdDateStr;
  bool isDeleted;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  Roles(
      {this.name,
        this.loweredRoleName,
        this.description,
        this.creationDate,
        this.createdDateStr,
        this.isDeleted,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  Roles.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    loweredRoleName = json['LoweredRoleName'];
    description = json['Description'];
    creationDate = json['CreationDate'];
    createdDateStr = json['CreatedDateStr'];
    isDeleted = json['IsDeleted'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['LoweredRoleName'] = this.loweredRoleName;
    data['Description'] = this.description;
    data['CreationDate'] = this.creationDate;
    data['CreatedDateStr'] = this.createdDateStr;
    data['IsDeleted'] = this.isDeleted;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class Profile {
  String fullName;
  String phone;
  String address;
  String gender;
  String facebookAccount;
  String website;
  String birthday;
  String birthdayStr;
  String province;
  String country;
  String workingPlace;
  String avatarUrl;
  String signature;
  String activateKey;
  String activateId;
  String resetPasswordKey;
  String avatarImageId;
  String email;
  String currentDepartment;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  Profile(
      {this.fullName,
        this.phone,
        this.address,
        this.gender,
        this.facebookAccount,
        this.website,
        this.birthday,
        this.birthdayStr,
        this.province,
        this.country,
        this.workingPlace,
        this.avatarUrl,
        this.signature,
        this.activateKey,
        this.activateId,
        this.resetPasswordKey,
        this.avatarImageId,
        this.email,
        this.currentDepartment,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  Profile.fromJson(Map<String, dynamic> json) {
    fullName = json['FullName'];
    phone = json['Phone'];
    address = json['Address'];
    gender = json['Gender'];
    facebookAccount = json['FacebookAccount'];
    website = json['Website'];
    birthday = json['Birthday'];
    birthdayStr = json['BirthdayStr'];
    province = json['Province'];
    country = json['Country'];
    workingPlace = json['WorkingPlace'];
    avatarUrl = json['AvatarUrl'];
    signature = json['Signature'];
    activateKey = json['ActivateKey'];
    activateId = json['ActivateId'];
    resetPasswordKey = json['ResetPasswordKey'];
    avatarImageId = json['AvatarImageId'];
    email = json['Email'];
    currentDepartment = json['CurrentDepartment'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FullName'] = this.fullName;
    data['Phone'] = this.phone;
    data['Address'] = this.address;
    data['Gender'] = this.gender;
    data['FacebookAccount'] = this.facebookAccount;
    data['Website'] = this.website;
    data['Birthday'] = this.birthday;
    data['BirthdayStr'] = this.birthdayStr;
    data['Province'] = this.province;
    data['Country'] = this.country;
    data['WorkingPlace'] = this.workingPlace;
    data['AvatarUrl'] = this.avatarUrl;
    data['Signature'] = this.signature;
    data['ActivateKey'] = this.activateKey;
    data['ActivateId'] = this.activateId;
    data['ResetPasswordKey'] = this.resetPasswordKey;
    data['AvatarImageId'] = this.avatarImageId;
    data['Email'] = this.email;
    data['CurrentDepartment'] = this.currentDepartment;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class CurrentDepartment {
  String deparmentCode;
  String name;
  String description;
  String parentCode;
  String parentInfo;
  String parentName;
  String createdDate;
  String createdDateStr;
  int cardCodeLengthFrom;
  int cardCodeLengthTo;
  String createdBy;
  bool isDeleted;
  String deletedDate;
  String deletedDateStr;
  String deletedBy;
  String companyCode;
  String address;
  String mobileNumber;
  String phoneNumber;
  int type;
  int numOrder;
  String path;
  String email;
  double lng;
  int lat;
  bool hasTrainerService;
  bool freeParking;
  bool towelRent;
  bool freeWater;
  String introductionText;
  String website;
  bool isPublic;
  String parentId;
  String parentIdStr;
  String textScore;
  List<String> imageList;
  String serviceList;
  bool isAutoBlockOnMachine;
  String logoUrl;
  String domainInfo;
  bool allowMultiActivatedService;
  bool isUnCheckMobile;
  String iPPublic;
  List<String> otherIpList;
  bool checkAccessIp;
  String otherIpListStr;
  bool usingSystemSmtp;
  SmtpInfo smtpInfo;
  bool autoSendBirthdayEmail;
  String domainEmailTemplateId;
  String domainEmailTemplateIdStr;
  int pointToMoneyRate;
  bool autoCheckinClass;
  int productPackageType;
  int rate;
  int noOfRate;
  int qualityRate;
  String provinceId;
  String provinceName;
  String districtId;
  String districtName;
  String communeId;
  String communeName;
  String provinceIdStr;
  String districtIdStr;
  String communeIdStr;
  int point;
  String belifeDescription;
  bool requireClientConfirmPt;
  int minCheckoutDuration;
  String productPackageInfo;
  int expiryDay;
  String startDateStr;
  String endDateStr;
  String productName;
  String depNotifyConfInfo;
  bool activeWhenSell;
  List<String> listTicketMachineIds;
  String listTicketMachineIdStr;
  String wifiNames;
  bool autoCheckinBarCode;
  String socialGroupId;
  String socialGroupIdStr;
  bool faceRecognize;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  CurrentDepartment(
      {this.deparmentCode,
        this.name,
        this.description,
        this.parentCode,
        this.parentInfo,
        this.parentName,
        this.createdDate,
        this.createdDateStr,
        this.cardCodeLengthFrom,
        this.cardCodeLengthTo,
        this.createdBy,
        this.isDeleted,
        this.deletedDate,
        this.deletedDateStr,
        this.deletedBy,
        this.companyCode,
        this.address,
        this.mobileNumber,
        this.phoneNumber,
        this.type,
        this.numOrder,
        this.path,
        this.email,
        this.lng,
        this.lat,
        this.hasTrainerService,
        this.freeParking,
        this.towelRent,
        this.freeWater,
        this.introductionText,
        this.website,
        this.isPublic,
        this.parentId,
        this.parentIdStr,
        this.textScore,
        this.imageList,
        this.serviceList,
        this.isAutoBlockOnMachine,
        this.logoUrl,
        this.domainInfo,
        this.allowMultiActivatedService,
        this.isUnCheckMobile,
        this.iPPublic,
        this.otherIpList,
        this.checkAccessIp,
        this.otherIpListStr,
        this.usingSystemSmtp,
        this.smtpInfo,
        this.autoSendBirthdayEmail,
        this.domainEmailTemplateId,
        this.domainEmailTemplateIdStr,
        this.pointToMoneyRate,
        this.autoCheckinClass,
        this.productPackageType,
        this.rate,
        this.noOfRate,
        this.qualityRate,
        this.provinceId,
        this.provinceName,
        this.districtId,
        this.districtName,
        this.communeId,
        this.communeName,
        this.provinceIdStr,
        this.districtIdStr,
        this.communeIdStr,
        this.point,
        this.belifeDescription,
        this.requireClientConfirmPt,
        this.minCheckoutDuration,
        this.productPackageInfo,
        this.expiryDay,
        this.startDateStr,
        this.endDateStr,
        this.productName,
        this.depNotifyConfInfo,
        this.activeWhenSell,
        this.listTicketMachineIds,
        this.listTicketMachineIdStr,
        this.wifiNames,
        this.autoCheckinBarCode,
        this.socialGroupId,
        this.socialGroupIdStr,
        this.faceRecognize,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  CurrentDepartment.fromJson(Map<String, dynamic> json) {
    deparmentCode = json['DeparmentCode'];
    name = json['Name'];
    description = json['Description'];
    parentCode = json['ParentCode'];
    parentInfo = json['ParentInfo'];
    parentName = json['ParentName'];
    createdDate = json['CreatedDate'];
    createdDateStr = json['CreatedDateStr'];
    cardCodeLengthFrom = json['CardCodeLengthFrom'];
    cardCodeLengthTo = json['CardCodeLengthTo'];
    createdBy = json['CreatedBy'];
    isDeleted = json['IsDeleted'];
    deletedDate = json['DeletedDate'];
    deletedDateStr = json['DeletedDateStr'];
    deletedBy = json['DeletedBy'];
    companyCode = json['CompanyCode'];
    address = json['Address'];
    mobileNumber = json['MobileNumber'];
    phoneNumber = json['PhoneNumber'];
    type = json['Type'];
    numOrder = json['NumOrder'];
    path = json['Path'];
    email = json['Email'];
    lng = json['Lng'];
    lat = json['Lat'];
    hasTrainerService = json['HasTrainerService'];
    freeParking = json['FreeParking'];
    towelRent = json['TowelRent'];
    freeWater = json['FreeWater'];
    introductionText = json['IntroductionText'];
    website = json['Website'];
    isPublic = json['IsPublic'];
    parentId = json['ParentId'];
    parentIdStr = json['ParentIdStr'];
    textScore = json['textScore'];
    imageList = json['ImageList'].cast<String>();
    serviceList = json['ServiceList'];
    isAutoBlockOnMachine = json['IsAutoBlockOnMachine'];
    logoUrl = json['LogoUrl'];
    domainInfo = json['DomainInfo'];
    allowMultiActivatedService = json['AllowMultiActivatedService'];
    isUnCheckMobile = json['IsUnCheckMobile'];
    iPPublic = json['IPPublic'];
    otherIpList = json['OtherIpList'].cast<String>();
    checkAccessIp = json['CheckAccessIp'];
    otherIpListStr = json['OtherIpListStr'];
    usingSystemSmtp = json['UsingSystemSmtp'];
    smtpInfo = json['SmtpInfo'] != null
        ? new SmtpInfo.fromJson(json['SmtpInfo'])
        : null;
    autoSendBirthdayEmail = json['AutoSendBirthdayEmail'];
    domainEmailTemplateId = json['DomainEmailTemplateId'];
    domainEmailTemplateIdStr = json['DomainEmailTemplateIdStr'];
    pointToMoneyRate = json['PointToMoneyRate'];
    autoCheckinClass = json['AutoCheckinClass'];
    productPackageType = json['ProductPackageType'];
    rate = json['Rate'];
    noOfRate = json['NoOfRate'];
    qualityRate = json['QualityRate'];
    provinceId = json['ProvinceId'];
    provinceName = json['ProvinceName'];
    districtId = json['DistrictId'];
    districtName = json['DistrictName'];
    communeId = json['CommuneId'];
    communeName = json['CommuneName'];
    provinceIdStr = json['ProvinceIdStr'];
    districtIdStr = json['DistrictIdStr'];
    communeIdStr = json['CommuneIdStr'];
    point = json['Point'];
    belifeDescription = json['BelifeDescription'];
    requireClientConfirmPt = json['RequireClientConfirmPt'];
    minCheckoutDuration = json['MinCheckoutDuration'];
    productPackageInfo = json['ProductPackageInfo'];
    expiryDay = json['ExpiryDay'];
    startDateStr = json['StartDateStr'];
    endDateStr = json['EndDateStr'];
    productName = json['ProductName'];
    depNotifyConfInfo = json['DepNotifyConfInfo'];
    activeWhenSell = json['ActiveWhenSell'];
    listTicketMachineIds = json['ListTicketMachineIds'].cast<String>();
    listTicketMachineIdStr = json['ListTicketMachineIdStr'];
    wifiNames = json['WifiNames'];
    autoCheckinBarCode = json['AutoCheckinBarCode'];
    socialGroupId = json['SocialGroupId'];
    socialGroupIdStr = json['SocialGroupIdStr'];
    faceRecognize = json['FaceRecognize'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DeparmentCode'] = this.deparmentCode;
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['ParentCode'] = this.parentCode;
    data['ParentInfo'] = this.parentInfo;
    data['ParentName'] = this.parentName;
    data['CreatedDate'] = this.createdDate;
    data['CreatedDateStr'] = this.createdDateStr;
    data['CardCodeLengthFrom'] = this.cardCodeLengthFrom;
    data['CardCodeLengthTo'] = this.cardCodeLengthTo;
    data['CreatedBy'] = this.createdBy;
    data['IsDeleted'] = this.isDeleted;
    data['DeletedDate'] = this.deletedDate;
    data['DeletedDateStr'] = this.deletedDateStr;
    data['DeletedBy'] = this.deletedBy;
    data['CompanyCode'] = this.companyCode;
    data['Address'] = this.address;
    data['MobileNumber'] = this.mobileNumber;
    data['PhoneNumber'] = this.phoneNumber;
    data['Type'] = this.type;
    data['NumOrder'] = this.numOrder;
    data['Path'] = this.path;
    data['Email'] = this.email;
    data['Lng'] = this.lng;
    data['Lat'] = this.lat;
    data['HasTrainerService'] = this.hasTrainerService;
    data['FreeParking'] = this.freeParking;
    data['TowelRent'] = this.towelRent;
    data['FreeWater'] = this.freeWater;
    data['IntroductionText'] = this.introductionText;
    data['Website'] = this.website;
    data['IsPublic'] = this.isPublic;
    data['ParentId'] = this.parentId;
    data['ParentIdStr'] = this.parentIdStr;
    data['textScore'] = this.textScore;
    data['ImageList'] = this.imageList;
    data['ServiceList'] = this.serviceList;
    data['IsAutoBlockOnMachine'] = this.isAutoBlockOnMachine;
    data['LogoUrl'] = this.logoUrl;
    data['DomainInfo'] = this.domainInfo;
    data['AllowMultiActivatedService'] = this.allowMultiActivatedService;
    data['IsUnCheckMobile'] = this.isUnCheckMobile;
    data['IPPublic'] = this.iPPublic;
    data['OtherIpList'] = this.otherIpList;
    data['CheckAccessIp'] = this.checkAccessIp;
    data['OtherIpListStr'] = this.otherIpListStr;
    data['UsingSystemSmtp'] = this.usingSystemSmtp;
    if (this.smtpInfo != null) {
      data['SmtpInfo'] = this.smtpInfo.toJson();
    }
    data['AutoSendBirthdayEmail'] = this.autoSendBirthdayEmail;
    data['DomainEmailTemplateId'] = this.domainEmailTemplateId;
    data['DomainEmailTemplateIdStr'] = this.domainEmailTemplateIdStr;
    data['PointToMoneyRate'] = this.pointToMoneyRate;
    data['AutoCheckinClass'] = this.autoCheckinClass;
    data['ProductPackageType'] = this.productPackageType;
    data['Rate'] = this.rate;
    data['NoOfRate'] = this.noOfRate;
    data['QualityRate'] = this.qualityRate;
    data['ProvinceId'] = this.provinceId;
    data['ProvinceName'] = this.provinceName;
    data['DistrictId'] = this.districtId;
    data['DistrictName'] = this.districtName;
    data['CommuneId'] = this.communeId;
    data['CommuneName'] = this.communeName;
    data['ProvinceIdStr'] = this.provinceIdStr;
    data['DistrictIdStr'] = this.districtIdStr;
    data['CommuneIdStr'] = this.communeIdStr;
    data['Point'] = this.point;
    data['BelifeDescription'] = this.belifeDescription;
    data['RequireClientConfirmPt'] = this.requireClientConfirmPt;
    data['MinCheckoutDuration'] = this.minCheckoutDuration;
    data['ProductPackageInfo'] = this.productPackageInfo;
    data['ExpiryDay'] = this.expiryDay;
    data['StartDateStr'] = this.startDateStr;
    data['EndDateStr'] = this.endDateStr;
    data['ProductName'] = this.productName;
    data['DepNotifyConfInfo'] = this.depNotifyConfInfo;
    data['ActiveWhenSell'] = this.activeWhenSell;
    data['ListTicketMachineIds'] = this.listTicketMachineIds;
    data['ListTicketMachineIdStr'] = this.listTicketMachineIdStr;
    data['WifiNames'] = this.wifiNames;
    data['AutoCheckinBarCode'] = this.autoCheckinBarCode;
    data['SocialGroupId'] = this.socialGroupId;
    data['SocialGroupIdStr'] = this.socialGroupIdStr;
    data['FaceRecognize'] = this.faceRecognize;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class SmtpInfo {
  String smtpServer;
  int port;
  String smtpEmailAddress;
  String smtpUserName;
  String smtpPassword;
  bool smtpEnableSsl;
  String hubPartnerId;
  String hubPartnerIdStr;
  String hubPartnerTokenKey;

  SmtpInfo(
      {this.smtpServer,
        this.port,
        this.smtpEmailAddress,
        this.smtpUserName,
        this.smtpPassword,
        this.smtpEnableSsl,
        this.hubPartnerId,
        this.hubPartnerIdStr,
        this.hubPartnerTokenKey});

  SmtpInfo.fromJson(Map<String, dynamic> json) {
    smtpServer = json['SmtpServer'];
    port = json['Port'];
    smtpEmailAddress = json['SmtpEmailAddress'];
    smtpUserName = json['SmtpUserName'];
    smtpPassword = json['SmtpPassword'];
    smtpEnableSsl = json['SmtpEnableSsl'];
    hubPartnerId = json['HubPartnerId'];
    hubPartnerIdStr = json['HubPartnerIdStr'];
    hubPartnerTokenKey = json['HubPartnerTokenKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SmtpServer'] = this.smtpServer;
    data['Port'] = this.port;
    data['SmtpEmailAddress'] = this.smtpEmailAddress;
    data['SmtpUserName'] = this.smtpUserName;
    data['SmtpPassword'] = this.smtpPassword;
    data['SmtpEnableSsl'] = this.smtpEnableSsl;
    data['HubPartnerId'] = this.hubPartnerId;
    data['HubPartnerIdStr'] = this.hubPartnerIdStr;
    data['HubPartnerTokenKey'] = this.hubPartnerTokenKey;
    return data;
  }
}

class AllDepartment {
  String deparmentCode;
  String name;
  String description;
  String parentCode;
  ParentInfo parentInfo;
  String parentName;
  String createdDate;
  String createdDateStr;
  int cardCodeLengthFrom;
  int cardCodeLengthTo;
  String createdBy;
  bool isDeleted;
  String deletedDate;
  String deletedDateStr;
  String deletedBy;
  String companyCode;
  String address;
  String mobileNumber;
  String phoneNumber;
  int type;
  int numOrder;
  String path;
  String email;
  double lng;
  double lat;
  bool hasTrainerService;
  bool freeParking;
  bool towelRent;
  bool freeWater;
  String introductionText;
  String website;
  bool isPublic;
  String parentId;
  String parentIdStr;
  String textScore;
  List<String> imageList;
  List<String> serviceList;
  bool isAutoBlockOnMachine;
  String logoUrl;
  Null domainInfo;
  bool allowMultiActivatedService;
  bool isUnCheckMobile;
  String iPPublic;
  List<String> otherIpList;
  bool checkAccessIp;
  String otherIpListStr;
  bool usingSystemSmtp;
  SmtpInfo smtpInfo;
  bool autoSendBirthdayEmail;
  String domainEmailTemplateId;
  String domainEmailTemplateIdStr;
  int pointToMoneyRate;
  bool autoCheckinClass;
  int productPackageType;
  int rate;
  int noOfRate;
  int qualityRate;
  String provinceId;
  String provinceName;
  String districtId;
  String districtName;
  String communeId;
  String communeName;
  String provinceIdStr;
  String districtIdStr;
  String communeIdStr;
  int point;
  String belifeDescription;
  bool requireClientConfirmPt;
  int minCheckoutDuration;
  String productPackageInfo;
  int expiryDay;
  String startDateStr;
  String endDateStr;
  String productName;
  String depNotifyConfInfo;
  bool activeWhenSell;
  List<String> listTicketMachineIds;
  String listTicketMachineIdStr;
  String wifiNames;
  bool autoCheckinBarCode;
  String socialGroupId;
  String socialGroupIdStr;
  bool faceRecognize;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  AllDepartment(
      {this.deparmentCode,
        this.name,
        this.description,
        this.parentCode,
        this.parentInfo,
        this.parentName,
        this.createdDate,
        this.createdDateStr,
        this.cardCodeLengthFrom,
        this.cardCodeLengthTo,
        this.createdBy,
        this.isDeleted,
        this.deletedDate,
        this.deletedDateStr,
        this.deletedBy,
        this.companyCode,
        this.address,
        this.mobileNumber,
        this.phoneNumber,
        this.type,
        this.numOrder,
        this.path,
        this.email,
        this.lng,
        this.lat,
        this.hasTrainerService,
        this.freeParking,
        this.towelRent,
        this.freeWater,
        this.introductionText,
        this.website,
        this.isPublic,
        this.parentId,
        this.parentIdStr,
        this.textScore,
        this.imageList,
        this.serviceList,
        this.isAutoBlockOnMachine,
        this.logoUrl,
        this.domainInfo,
        this.allowMultiActivatedService,
        this.isUnCheckMobile,
        this.iPPublic,
        this.otherIpList,
        this.checkAccessIp,
        this.otherIpListStr,
        this.usingSystemSmtp,
        this.smtpInfo,
        this.autoSendBirthdayEmail,
        this.domainEmailTemplateId,
        this.domainEmailTemplateIdStr,
        this.pointToMoneyRate,
        this.autoCheckinClass,
        this.productPackageType,
        this.rate,
        this.noOfRate,
        this.qualityRate,
        this.provinceId,
        this.provinceName,
        this.districtId,
        this.districtName,
        this.communeId,
        this.communeName,
        this.provinceIdStr,
        this.districtIdStr,
        this.communeIdStr,
        this.point,
        this.belifeDescription,
        this.requireClientConfirmPt,
        this.minCheckoutDuration,
        this.productPackageInfo,
        this.expiryDay,
        this.startDateStr,
        this.endDateStr,
        this.productName,
        this.depNotifyConfInfo,
        this.activeWhenSell,
        this.listTicketMachineIds,
        this.listTicketMachineIdStr,
        this.wifiNames,
        this.autoCheckinBarCode,
        this.socialGroupId,
        this.socialGroupIdStr,
        this.faceRecognize,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  AllDepartment.fromJson(Map<String, dynamic> json) {
    deparmentCode = json['DeparmentCode'];
    name = json['Name'];
    description = json['Description'];
    parentCode = json['ParentCode'];
    parentInfo = json['ParentInfo'] != null
        ? new ParentInfo.fromJson(json['ParentInfo'])
        : null;
    parentName = json['ParentName'];
    createdDate = json['CreatedDate'];
    createdDateStr = json['CreatedDateStr'];
    cardCodeLengthFrom = json['CardCodeLengthFrom'];
    cardCodeLengthTo = json['CardCodeLengthTo'];
    createdBy = json['CreatedBy'];
    isDeleted = json['IsDeleted'];
    deletedDate = json['DeletedDate'];
    deletedDateStr = json['DeletedDateStr'];
    deletedBy = json['DeletedBy'];
    companyCode = json['CompanyCode'];
    address = json['Address'];
    mobileNumber = json['MobileNumber'];
    phoneNumber = json['PhoneNumber'];
    type = json['Type'];
    numOrder = json['NumOrder'];
    path = json['Path'];
    email = json['Email'];
    lng = json['Lng'];
    lat = json['Lat'];
    hasTrainerService = json['HasTrainerService'];
    freeParking = json['FreeParking'];
    towelRent = json['TowelRent'];
    freeWater = json['FreeWater'];
    introductionText = json['IntroductionText'];
    website = json['Website'];
    isPublic = json['IsPublic'];
    parentId = json['ParentId'];
    parentIdStr = json['ParentIdStr'];
    textScore = json['textScore'];
    imageList = json['ImageList'].cast<String>();
    serviceList = json['ServiceList'].cast<String>();
    isAutoBlockOnMachine = json['IsAutoBlockOnMachine'];
    logoUrl = json['LogoUrl'];
    domainInfo = json['DomainInfo'];
    allowMultiActivatedService = json['AllowMultiActivatedService'];
    isUnCheckMobile = json['IsUnCheckMobile'];
    iPPublic = json['IPPublic'];
    otherIpList = json['OtherIpList'].cast<String>();
    checkAccessIp = json['CheckAccessIp'];
    otherIpListStr = json['OtherIpListStr'];
    usingSystemSmtp = json['UsingSystemSmtp'];
    smtpInfo = json['SmtpInfo'] != null
        ? new SmtpInfo.fromJson(json['SmtpInfo'])
        : null;
    autoSendBirthdayEmail = json['AutoSendBirthdayEmail'];
    domainEmailTemplateId = json['DomainEmailTemplateId'];
    domainEmailTemplateIdStr = json['DomainEmailTemplateIdStr'];
    pointToMoneyRate = json['PointToMoneyRate'];
    autoCheckinClass = json['AutoCheckinClass'];
    productPackageType = json['ProductPackageType'];
    rate = json['Rate'];
    noOfRate = json['NoOfRate'];
    qualityRate = json['QualityRate'];
    provinceId = json['ProvinceId'];
    provinceName = json['ProvinceName'];
    districtId = json['DistrictId'];
    districtName = json['DistrictName'];
    communeId = json['CommuneId'];
    communeName = json['CommuneName'];
    provinceIdStr = json['ProvinceIdStr'];
    districtIdStr = json['DistrictIdStr'];
    communeIdStr = json['CommuneIdStr'];
    point = json['Point'];
    belifeDescription = json['BelifeDescription'];
    requireClientConfirmPt = json['RequireClientConfirmPt'];
    minCheckoutDuration = json['MinCheckoutDuration'];
    productPackageInfo = json['ProductPackageInfo'];
    expiryDay = json['ExpiryDay'];
    startDateStr = json['StartDateStr'];
    endDateStr = json['EndDateStr'];
    productName = json['ProductName'];
    depNotifyConfInfo = json['DepNotifyConfInfo'];
    activeWhenSell = json['ActiveWhenSell'];
    listTicketMachineIds = json['ListTicketMachineIds'].cast<String>();
    listTicketMachineIdStr = json['ListTicketMachineIdStr'];
    wifiNames = json['WifiNames'];
    autoCheckinBarCode = json['AutoCheckinBarCode'];
    socialGroupId = json['SocialGroupId'];
    socialGroupIdStr = json['SocialGroupIdStr'];
    faceRecognize = json['FaceRecognize'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DeparmentCode'] = this.deparmentCode;
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['ParentCode'] = this.parentCode;
    if (this.parentInfo != null) {
      data['ParentInfo'] = this.parentInfo.toJson();
    }
    data['ParentName'] = this.parentName;
    data['CreatedDate'] = this.createdDate;
    data['CreatedDateStr'] = this.createdDateStr;
    data['CardCodeLengthFrom'] = this.cardCodeLengthFrom;
    data['CardCodeLengthTo'] = this.cardCodeLengthTo;
    data['CreatedBy'] = this.createdBy;
    data['IsDeleted'] = this.isDeleted;
    data['DeletedDate'] = this.deletedDate;
    data['DeletedDateStr'] = this.deletedDateStr;
    data['DeletedBy'] = this.deletedBy;
    data['CompanyCode'] = this.companyCode;
    data['Address'] = this.address;
    data['MobileNumber'] = this.mobileNumber;
    data['PhoneNumber'] = this.phoneNumber;
    data['Type'] = this.type;
    data['NumOrder'] = this.numOrder;
    data['Path'] = this.path;
    data['Email'] = this.email;
    data['Lng'] = this.lng;
    data['Lat'] = this.lat;
    data['HasTrainerService'] = this.hasTrainerService;
    data['FreeParking'] = this.freeParking;
    data['TowelRent'] = this.towelRent;
    data['FreeWater'] = this.freeWater;
    data['IntroductionText'] = this.introductionText;
    data['Website'] = this.website;
    data['IsPublic'] = this.isPublic;
    data['ParentId'] = this.parentId;
    data['ParentIdStr'] = this.parentIdStr;
    data['textScore'] = this.textScore;
    data['ImageList'] = this.imageList;
    data['ServiceList'] = this.serviceList;
    data['IsAutoBlockOnMachine'] = this.isAutoBlockOnMachine;
    data['LogoUrl'] = this.logoUrl;
    data['DomainInfo'] = this.domainInfo;
    data['AllowMultiActivatedService'] = this.allowMultiActivatedService;
    data['IsUnCheckMobile'] = this.isUnCheckMobile;
    data['IPPublic'] = this.iPPublic;
    data['OtherIpList'] = this.otherIpList;
    data['CheckAccessIp'] = this.checkAccessIp;
    data['OtherIpListStr'] = this.otherIpListStr;
    data['UsingSystemSmtp'] = this.usingSystemSmtp;
    if (this.smtpInfo != null) {
      data['SmtpInfo'] = this.smtpInfo.toJson();
    }
    data['AutoSendBirthdayEmail'] = this.autoSendBirthdayEmail;
    data['DomainEmailTemplateId'] = this.domainEmailTemplateId;
    data['DomainEmailTemplateIdStr'] = this.domainEmailTemplateIdStr;
    data['PointToMoneyRate'] = this.pointToMoneyRate;
    data['AutoCheckinClass'] = this.autoCheckinClass;
    data['ProductPackageType'] = this.productPackageType;
    data['Rate'] = this.rate;
    data['NoOfRate'] = this.noOfRate;
    data['QualityRate'] = this.qualityRate;
    data['ProvinceId'] = this.provinceId;
    data['ProvinceName'] = this.provinceName;
    data['DistrictId'] = this.districtId;
    data['DistrictName'] = this.districtName;
    data['CommuneId'] = this.communeId;
    data['CommuneName'] = this.communeName;
    data['ProvinceIdStr'] = this.provinceIdStr;
    data['DistrictIdStr'] = this.districtIdStr;
    data['CommuneIdStr'] = this.communeIdStr;
    data['Point'] = this.point;
    data['BelifeDescription'] = this.belifeDescription;
    data['RequireClientConfirmPt'] = this.requireClientConfirmPt;
    data['MinCheckoutDuration'] = this.minCheckoutDuration;
    data['ProductPackageInfo'] = this.productPackageInfo;
    data['ExpiryDay'] = this.expiryDay;
    data['StartDateStr'] = this.startDateStr;
    data['EndDateStr'] = this.endDateStr;
    data['ProductName'] = this.productName;
    data['DepNotifyConfInfo'] = this.depNotifyConfInfo;
    data['ActiveWhenSell'] = this.activeWhenSell;
    data['ListTicketMachineIds'] = this.listTicketMachineIds;
    data['ListTicketMachineIdStr'] = this.listTicketMachineIdStr;
    data['WifiNames'] = this.wifiNames;
    data['AutoCheckinBarCode'] = this.autoCheckinBarCode;
    data['SocialGroupId'] = this.socialGroupId;
    data['SocialGroupIdStr'] = this.socialGroupIdStr;
    data['FaceRecognize'] = this.faceRecognize;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class ParentInfo {
  String deparmentCode;
  String name;
  String description;
  String parentCode;
  String parentInfo;
  String parentName;
  String createdDate;
  String createdDateStr;
  int cardCodeLengthFrom;
  int cardCodeLengthTo;
  String createdBy;
  bool isDeleted;
  String deletedDate;
  String deletedDateStr;
  String deletedBy;
  String companyCode;
  String address;
  String mobileNumber;
  String phoneNumber;
  int type;
  int numOrder;
  String path;
  String email;
  double lng;
  double lat;
  bool hasTrainerService;
  bool freeParking;
  bool towelRent;
  bool freeWater;
  String introductionText;
  String website;
  bool isPublic;
  String parentId;
  String parentIdStr;
  String textScore;
  List<String> imageList;
  List<String> serviceList;
  bool isAutoBlockOnMachine;
  String logoUrl;
  String domainInfo;
  bool allowMultiActivatedService;
  bool isUnCheckMobile;
  String iPPublic;
  List<String> otherIpList;
  bool checkAccessIp;
  String otherIpListStr;
  bool usingSystemSmtp;
  String smtpInfo;
  bool autoSendBirthdayEmail;
  String domainEmailTemplateId;
  String domainEmailTemplateIdStr;
  int pointToMoneyRate;
  bool autoCheckinClass;
  int productPackageType;
  int rate;
  int noOfRate;
  int qualityRate;
  String provinceId;
  String provinceName;
  String districtId;
  String districtName;
  String communeId;
  String communeName;
  String provinceIdStr;
  String districtIdStr;
  String communeIdStr;
  int point;
  String belifeDescription;
  bool requireClientConfirmPt;
  int minCheckoutDuration;
  String productPackageInfo;
  int expiryDay;
  String startDateStr;
  String endDateStr;
  String productName;
  String depNotifyConfInfo;
  bool activeWhenSell;
  String listTicketMachineIds;
  String listTicketMachineIdStr;
  String wifiNames;
  bool autoCheckinBarCode;
  String socialGroupId;
  String socialGroupIdStr;
  bool faceRecognize;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  ParentInfo(
      {this.deparmentCode,
        this.name,
        this.description,
        this.parentCode,
        this.parentInfo,
        this.parentName,
        this.createdDate,
        this.createdDateStr,
        this.cardCodeLengthFrom,
        this.cardCodeLengthTo,
        this.createdBy,
        this.isDeleted,
        this.deletedDate,
        this.deletedDateStr,
        this.deletedBy,
        this.companyCode,
        this.address,
        this.mobileNumber,
        this.phoneNumber,
        this.type,
        this.numOrder,
        this.path,
        this.email,
        this.lng,
        this.lat,
        this.hasTrainerService,
        this.freeParking,
        this.towelRent,
        this.freeWater,
        this.introductionText,
        this.website,
        this.isPublic,
        this.parentId,
        this.parentIdStr,
        this.textScore,
        this.imageList,
        this.serviceList,
        this.isAutoBlockOnMachine,
        this.logoUrl,
        this.domainInfo,
        this.allowMultiActivatedService,
        this.isUnCheckMobile,
        this.iPPublic,
        this.otherIpList,
        this.checkAccessIp,
        this.otherIpListStr,
        this.usingSystemSmtp,
        this.smtpInfo,
        this.autoSendBirthdayEmail,
        this.domainEmailTemplateId,
        this.domainEmailTemplateIdStr,
        this.pointToMoneyRate,
        this.autoCheckinClass,
        this.productPackageType,
        this.rate,
        this.noOfRate,
        this.qualityRate,
        this.provinceId,
        this.provinceName,
        this.districtId,
        this.districtName,
        this.communeId,
        this.communeName,
        this.provinceIdStr,
        this.districtIdStr,
        this.communeIdStr,
        this.point,
        this.belifeDescription,
        this.requireClientConfirmPt,
        this.minCheckoutDuration,
        this.productPackageInfo,
        this.expiryDay,
        this.startDateStr,
        this.endDateStr,
        this.productName,
        this.depNotifyConfInfo,
        this.activeWhenSell,
        this.listTicketMachineIds,
        this.listTicketMachineIdStr,
        this.wifiNames,
        this.autoCheckinBarCode,
        this.socialGroupId,
        this.socialGroupIdStr,
        this.faceRecognize,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  ParentInfo.fromJson(Map<String, dynamic> json) {
    deparmentCode = json['DeparmentCode'];
    name = json['Name'];
    description = json['Description'];
    parentCode = json['ParentCode'];
    parentInfo = json['ParentInfo'];
    parentName = json['ParentName'];
    createdDate = json['CreatedDate'];
    createdDateStr = json['CreatedDateStr'];
    cardCodeLengthFrom = json['CardCodeLengthFrom'];
    cardCodeLengthTo = json['CardCodeLengthTo'];
    createdBy = json['CreatedBy'];
    isDeleted = json['IsDeleted'];
    deletedDate = json['DeletedDate'];
    deletedDateStr = json['DeletedDateStr'];
    deletedBy = json['DeletedBy'];
    companyCode = json['CompanyCode'];
    address = json['Address'];
    mobileNumber = json['MobileNumber'];
    phoneNumber = json['PhoneNumber'];
    type = json['Type'];
    numOrder = json['NumOrder'];
    path = json['Path'];
    email = json['Email'];
    lng = json['Lng'];
    lat = json['Lat'];
    hasTrainerService = json['HasTrainerService'];
    freeParking = json['FreeParking'];
    towelRent = json['TowelRent'];
    freeWater = json['FreeWater'];
    introductionText = json['IntroductionText'];
    website = json['Website'];
    isPublic = json['IsPublic'];
    parentId = json['ParentId'];
    parentIdStr = json['ParentIdStr'];
    textScore = json['textScore'];
    imageList = json['ImageList'].cast<String>();
    serviceList = json['ServiceList'].cast<String>();
    isAutoBlockOnMachine = json['IsAutoBlockOnMachine'];
    logoUrl = json['LogoUrl'];
    domainInfo = json['DomainInfo'];
    allowMultiActivatedService = json['AllowMultiActivatedService'];
    isUnCheckMobile = json['IsUnCheckMobile'];
    iPPublic = json['IPPublic'];
    otherIpList = json['OtherIpList'].cast<String>();
    checkAccessIp = json['CheckAccessIp'];
    otherIpListStr = json['OtherIpListStr'];
    usingSystemSmtp = json['UsingSystemSmtp'];
    smtpInfo = json['SmtpInfo'];
    autoSendBirthdayEmail = json['AutoSendBirthdayEmail'];
    domainEmailTemplateId = json['DomainEmailTemplateId'];
    domainEmailTemplateIdStr = json['DomainEmailTemplateIdStr'];
    pointToMoneyRate = json['PointToMoneyRate'];
    autoCheckinClass = json['AutoCheckinClass'];
    productPackageType = json['ProductPackageType'];
    rate = json['Rate'];
    noOfRate = json['NoOfRate'];
    qualityRate = json['QualityRate'];
    provinceId = json['ProvinceId'];
    provinceName = json['ProvinceName'];
    districtId = json['DistrictId'];
    districtName = json['DistrictName'];
    communeId = json['CommuneId'];
    communeName = json['CommuneName'];
    provinceIdStr = json['ProvinceIdStr'];
    districtIdStr = json['DistrictIdStr'];
    communeIdStr = json['CommuneIdStr'];
    point = json['Point'];
    belifeDescription = json['BelifeDescription'];
    requireClientConfirmPt = json['RequireClientConfirmPt'];
    minCheckoutDuration = json['MinCheckoutDuration'];
    productPackageInfo = json['ProductPackageInfo'];
    expiryDay = json['ExpiryDay'];
    startDateStr = json['StartDateStr'];
    endDateStr = json['EndDateStr'];
    productName = json['ProductName'];
    depNotifyConfInfo = json['DepNotifyConfInfo'];
    activeWhenSell = json['ActiveWhenSell'];
    listTicketMachineIds = json['ListTicketMachineIds'];
    listTicketMachineIdStr = json['ListTicketMachineIdStr'];
    wifiNames = json['WifiNames'];
    autoCheckinBarCode = json['AutoCheckinBarCode'];
    socialGroupId = json['SocialGroupId'];
    socialGroupIdStr = json['SocialGroupIdStr'];
    faceRecognize = json['FaceRecognize'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DeparmentCode'] = this.deparmentCode;
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['ParentCode'] = this.parentCode;
    data['ParentInfo'] = this.parentInfo;
    data['ParentName'] = this.parentName;
    data['CreatedDate'] = this.createdDate;
    data['CreatedDateStr'] = this.createdDateStr;
    data['CardCodeLengthFrom'] = this.cardCodeLengthFrom;
    data['CardCodeLengthTo'] = this.cardCodeLengthTo;
    data['CreatedBy'] = this.createdBy;
    data['IsDeleted'] = this.isDeleted;
    data['DeletedDate'] = this.deletedDate;
    data['DeletedDateStr'] = this.deletedDateStr;
    data['DeletedBy'] = this.deletedBy;
    data['CompanyCode'] = this.companyCode;
    data['Address'] = this.address;
    data['MobileNumber'] = this.mobileNumber;
    data['PhoneNumber'] = this.phoneNumber;
    data['Type'] = this.type;
    data['NumOrder'] = this.numOrder;
    data['Path'] = this.path;
    data['Email'] = this.email;
    data['Lng'] = this.lng;
    data['Lat'] = this.lat;
    data['HasTrainerService'] = this.hasTrainerService;
    data['FreeParking'] = this.freeParking;
    data['TowelRent'] = this.towelRent;
    data['FreeWater'] = this.freeWater;
    data['IntroductionText'] = this.introductionText;
    data['Website'] = this.website;
    data['IsPublic'] = this.isPublic;
    data['ParentId'] = this.parentId;
    data['ParentIdStr'] = this.parentIdStr;
    data['textScore'] = this.textScore;
    data['ImageList'] = this.imageList;
    data['ServiceList'] = this.serviceList;
    data['IsAutoBlockOnMachine'] = this.isAutoBlockOnMachine;
    data['LogoUrl'] = this.logoUrl;
    data['DomainInfo'] = this.domainInfo;
    data['AllowMultiActivatedService'] = this.allowMultiActivatedService;
    data['IsUnCheckMobile'] = this.isUnCheckMobile;
    data['IPPublic'] = this.iPPublic;
    data['OtherIpList'] = this.otherIpList;
    data['CheckAccessIp'] = this.checkAccessIp;
    data['OtherIpListStr'] = this.otherIpListStr;
    data['UsingSystemSmtp'] = this.usingSystemSmtp;
    data['SmtpInfo'] = this.smtpInfo;
    data['AutoSendBirthdayEmail'] = this.autoSendBirthdayEmail;
    data['DomainEmailTemplateId'] = this.domainEmailTemplateId;
    data['DomainEmailTemplateIdStr'] = this.domainEmailTemplateIdStr;
    data['PointToMoneyRate'] = this.pointToMoneyRate;
    data['AutoCheckinClass'] = this.autoCheckinClass;
    data['ProductPackageType'] = this.productPackageType;
    data['Rate'] = this.rate;
    data['NoOfRate'] = this.noOfRate;
    data['QualityRate'] = this.qualityRate;
    data['ProvinceId'] = this.provinceId;
    data['ProvinceName'] = this.provinceName;
    data['DistrictId'] = this.districtId;
    data['DistrictName'] = this.districtName;
    data['CommuneId'] = this.communeId;
    data['CommuneName'] = this.communeName;
    data['ProvinceIdStr'] = this.provinceIdStr;
    data['DistrictIdStr'] = this.districtIdStr;
    data['CommuneIdStr'] = this.communeIdStr;
    data['Point'] = this.point;
    data['BelifeDescription'] = this.belifeDescription;
    data['RequireClientConfirmPt'] = this.requireClientConfirmPt;
    data['MinCheckoutDuration'] = this.minCheckoutDuration;
    data['ProductPackageInfo'] = this.productPackageInfo;
    data['ExpiryDay'] = this.expiryDay;
    data['StartDateStr'] = this.startDateStr;
    data['EndDateStr'] = this.endDateStr;
    data['ProductName'] = this.productName;
    data['DepNotifyConfInfo'] = this.depNotifyConfInfo;
    data['ActiveWhenSell'] = this.activeWhenSell;
    data['ListTicketMachineIds'] = this.listTicketMachineIds;
    data['ListTicketMachineIdStr'] = this.listTicketMachineIdStr;
    data['WifiNames'] = this.wifiNames;
    data['AutoCheckinBarCode'] = this.autoCheckinBarCode;
    data['SocialGroupId'] = this.socialGroupId;
    data['SocialGroupIdStr'] = this.socialGroupIdStr;
    data['FaceRecognize'] = this.faceRecognize;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

class DomainInfo {
  String name;
  String webTitle;
  String description;
  String phone;
  String email;
  String address;
  String mobile;
  String logo;
  String facebookFanpage;
  String facebookGroup;
  String zaloPage;
  List<String> domainNameList;
  String textScore;
  String nganLuongPaymentInfo;
  String defaultIntroduceVideoUrl;
  String copyright;
  String defaultCss;
  String googleAnalyticsPlugin;
  String facebookPixcelPlugin;
  String defaultLayout;
  String homePage;
  String publicHomePage;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;

  DomainInfo(
      {this.name,
        this.webTitle,
        this.description,
        this.phone,
        this.email,
        this.address,
        this.mobile,
        this.logo,
        this.facebookFanpage,
        this.facebookGroup,
        this.zaloPage,
        this.domainNameList,
        this.textScore,
        this.nganLuongPaymentInfo,
        this.defaultIntroduceVideoUrl,
        this.copyright,
        this.defaultCss,
        this.googleAnalyticsPlugin,
        this.facebookPixcelPlugin,
        this.defaultLayout,
        this.homePage,
        this.publicHomePage,
        this.sId,
        this.domainId,
        this.idStr,
        this.domainIdStr});

  DomainInfo.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    webTitle = json['WebTitle'];
    description = json['Description'];
    phone = json['Phone'];
    email = json['Email'];
    address = json['Address'];
    mobile = json['Mobile'];
    logo = json['Logo'];
    facebookFanpage = json['FacebookFanpage'];
    facebookGroup = json['FacebookGroup'];
    zaloPage = json['ZaloPage'];
    domainNameList = json['DomainNameList'].cast<String>();
    textScore = json['textScore'];
    nganLuongPaymentInfo = json['NganLuongPaymentInfo'];
    defaultIntroduceVideoUrl = json['DefaultIntroduceVideoUrl'];
    copyright = json['Copyright'];
    defaultCss = json['DefaultCss'];
    googleAnalyticsPlugin = json['GoogleAnalyticsPlugin'];
    facebookPixcelPlugin = json['FacebookPixcelPlugin'];
    defaultLayout = json['DefaultLayout'];
    homePage = json['HomePage'];
    publicHomePage = json['PublicHomePage'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['WebTitle'] = this.webTitle;
    data['Description'] = this.description;
    data['Phone'] = this.phone;
    data['Email'] = this.email;
    data['Address'] = this.address;
    data['Mobile'] = this.mobile;
    data['Logo'] = this.logo;
    data['FacebookFanpage'] = this.facebookFanpage;
    data['FacebookGroup'] = this.facebookGroup;
    data['ZaloPage'] = this.zaloPage;
    data['DomainNameList'] = this.domainNameList;
    data['textScore'] = this.textScore;
    data['NganLuongPaymentInfo'] = this.nganLuongPaymentInfo;
    data['DefaultIntroduceVideoUrl'] = this.defaultIntroduceVideoUrl;
    data['Copyright'] = this.copyright;
    data['DefaultCss'] = this.defaultCss;
    data['GoogleAnalyticsPlugin'] = this.googleAnalyticsPlugin;
    data['FacebookPixcelPlugin'] = this.facebookPixcelPlugin;
    data['DefaultLayout'] = this.defaultLayout;
    data['HomePage'] = this.homePage;
    data['PublicHomePage'] = this.publicHomePage;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}