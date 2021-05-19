class EmployeeTimeSheetModel {
  double luongCoSo;
  double ngayCongTieuChuan;
  String employeeId;
  String employeeIdStr;
  String employeeName;
  String positionId;
  String positionIdStr;
  String departmentId;
  String departmentIdStr;
//  Null createdBy;
  String structureDepartmentId;
  String structureDepartmentIdStr;
  String tenChucDanh;
  String phongBan;
  double heSoChucDanh;
  double heSoLuongLamThem;
  double thamNien;
  double heSoVungMien;
  String heSoChucDanhStr;
  double kPICaNhan;
  String kPICaNhanStr;
  double kPIDonVi;
  String kPIDonViStr;
  int thang;
  int nam;
  double heSoKetQuaKinhDoanh;
  String heSoHKQStr;
  double ngayCongThucTe;
  double soGioLamThem;
  double luongThamNien;
  double luongChucDanh;
  double luongCung;
  double luongMem;
  double luongKhac;
  double luongLamThem;
  double phuCapAnTrua;
  double phuCapKinhDoanh;
  double phuCapTrachNhiem;
  double phuCapKhac;
  double thuongKinhDoanh;
  double tongThuNhap;
  double tongLuong;
  double luongDongBaoHiem;
  double kPCD;
  double bHXHDN;
  double bHYTDN;
  double bHTNDN;
  double congBHDNChi;
  double bHXH;
  double bHYT;
  double bHTN;
  double congBaoHiemBatBuoc;
  double bHYTCNTN;
  double tienGuiXe;
  double tongDoanhNghiepChi;
  double thucLinhChuaThue;
  double thueTNCN;
  double tNCN;
  // Null dVT;
  int soPhutDiMuon;
  int soPhutVeSom;
  int soNgayVeSom;
  int soNgayDiMuon;
  double soNgayLamThucTe;
  double tongSoNgayNghi;
  double soNgayNghiHuongLuong;
  double soNgayNghiKhongLuong;
  double luongLamThemMotGio;
  double soNgayNghiCoXinPhep;
  double luongKhongNghiPhep;
  double hoaHongKD;
  double luongBuNghiPhep;
  int chotCong;
  int chotDon;
  int chotLuong;
  bool chotHoaHong;
  String sId;
  String domainId;
  String idStr;
  String domainIdStr;
  int thoiGianRaNgoai;

  EmployeeTimeSheetModel({
    this.luongCoSo,
    this.ngayCongTieuChuan,
    this.employeeId,
    this.employeeIdStr,
    this.employeeName,
    this.positionId,
    this.positionIdStr,
    this.departmentId,
    this.departmentIdStr,
    //       this.createdBy,
    this.structureDepartmentId,
    this.structureDepartmentIdStr,
    this.tenChucDanh,
    this.phongBan,
    this.heSoChucDanh,
    this.heSoLuongLamThem,
    this.thamNien,
    this.heSoVungMien,
    this.heSoChucDanhStr,
    this.kPICaNhan,
    this.kPICaNhanStr,
    this.kPIDonVi,
    this.kPIDonViStr,
    this.thang,
    this.nam,
    this.heSoKetQuaKinhDoanh,
    this.heSoHKQStr,
    this.ngayCongThucTe,
    this.soGioLamThem,
    this.luongThamNien,
    this.luongChucDanh,
    this.luongCung,
    this.luongMem,
    this.luongKhac,
    this.luongLamThem,
    this.phuCapAnTrua,
    this.phuCapKinhDoanh,
    this.phuCapTrachNhiem,
    this.phuCapKhac,
    this.thuongKinhDoanh,
    this.tongThuNhap,
    this.tongLuong,
    this.luongDongBaoHiem,
    this.kPCD,
    this.bHXHDN,
    this.bHYTDN,
    this.bHTNDN,
    this.congBHDNChi,
    this.bHXH,
    this.bHYT,
    this.bHTN,
    this.congBaoHiemBatBuoc,
    this.bHYTCNTN,
    this.tienGuiXe,
    this.tongDoanhNghiepChi,
    this.thucLinhChuaThue,
    this.thueTNCN,
    this.tNCN,
    //       this.dVT,
    this.soPhutDiMuon,
    this.soPhutVeSom,
    this.soNgayVeSom,
    this.soNgayDiMuon,
    this.soNgayLamThucTe,
    this.tongSoNgayNghi,
    this.soNgayNghiHuongLuong,
    this.soNgayNghiKhongLuong,
    this.luongLamThemMotGio,
    this.soNgayNghiCoXinPhep,
    this.luongKhongNghiPhep,
    this.hoaHongKD,
    this.luongBuNghiPhep,
    this.chotCong,
    this.chotDon,
    this.chotLuong,
    this.chotHoaHong,
    this.sId,
    this.domainId,
    this.idStr,
    this.domainIdStr,
    this.thoiGianRaNgoai,
  });

  EmployeeTimeSheetModel.fromJson(Map<String, dynamic> json) {
    luongCoSo = json['LuongCoSo'];
    ngayCongTieuChuan = json['NgayCongTieuChuan'];
    employeeId = json['EmployeeId'];
    employeeIdStr = json['EmployeeIdStr'];
    employeeName = json['EmployeeName'];
    positionId = json['PositionId'];
    positionIdStr = json['PositionIdStr'];
    departmentId = json['DepartmentId'];
    departmentIdStr = json['DepartmentIdStr'];
    //   createdBy = json['CreatedBy'];
    structureDepartmentId = json['StructureDepartmentId'];
    structureDepartmentIdStr = json['StructureDepartmentIdStr'];
    tenChucDanh = json['TenChucDanh'];
    phongBan = json['PhongBan'];
    heSoChucDanh = json['HeSoChucDanh'];
    heSoLuongLamThem = json['HeSoLuongLamThem'];
    thamNien = json['ThamNien'];
    heSoVungMien = json['HeSoVungMien'];
    heSoChucDanhStr = json['HeSoChucDanhStr'];
    kPICaNhan = json['KPICaNhan'];
    kPICaNhanStr = json['KPICaNhanStr'];
    kPIDonVi = json['KPIDonVi'];
    kPIDonViStr = json['KPIDonViStr'];
    thang = json['Thang'];
    nam = json['Nam'];
    heSoKetQuaKinhDoanh = json['HeSoKetQuaKinhDoanh'];
    heSoHKQStr = json['HeSoHKQStr'];
    ngayCongThucTe = json['NgayCongThucTe'];
    soGioLamThem = json['SoGioLamThem'];
    luongThamNien = json['LuongThamNien'];
    luongChucDanh = json['LuongChucDanh'];
    luongCung = json['LuongCung'];
    luongMem = json['LuongMem'];
    luongKhac = json['LuongKhac'];
    luongLamThem = json['LuongLamThem'];
    phuCapAnTrua = json['PhuCapAnTrua'];
    phuCapKinhDoanh = json['PhuCapKinhDoanh'];
    phuCapTrachNhiem = json['PhuCapTrachNhiem'];
    phuCapKhac = json['PhuCapKhac'];
    thuongKinhDoanh = json['ThuongKinhDoanh'];
    tongThuNhap = json['TongThuNhap'];
    tongLuong = json['TongLuong'];
    luongDongBaoHiem = json['LuongDongBaoHiem'];
    kPCD = json['KPCD'];
    bHXHDN = json['BHXHDN'];
    bHYTDN = json['BHYTDN'];
    bHTNDN = json['BHTNDN'];
    congBHDNChi = json['CongBHDNChi'];
    bHXH = json['BHXH'];
    bHYT = json['BHYT'];
    bHTN = json['BHTN'];
    congBaoHiemBatBuoc = json['CongBaoHiemBatBuoc'];
    bHYTCNTN = json['BHYTCNTN'];
    tienGuiXe = json['TienGuiXe'];
    tongDoanhNghiepChi = json['TongDoanhNghiepChi'];
    thucLinhChuaThue = json['ThucLinhChuaThue'];
    thueTNCN = json['ThueTNCN'];
    tNCN = json['TNCN'];
//    dVT = json['DVT'];
    soPhutDiMuon = json['SoPhutDiMuon'];
    soPhutVeSom = json['SoPhutVeSom'];
    soNgayVeSom = json['SoNgayVeSom'];
    soNgayDiMuon = json['SoNgayDiMuon'];
    soNgayLamThucTe = json['SoNgayLamThucTe'];
    tongSoNgayNghi = json['TongSoNgayNghi'];
    soNgayNghiHuongLuong = json['SoNgayNghiHuongLuong'];
    soNgayNghiKhongLuong = json['SoNgayNghiKhongLuong'];
    luongLamThemMotGio = json['LuongLamThemMotGio'];
    soNgayNghiCoXinPhep = json['SoNgayNghiCoXinPhep'];
    luongKhongNghiPhep = json['LuongKhongNghiPhep'];
    hoaHongKD = json['HoaHongKD'];
    luongBuNghiPhep = json['LuongBuNghiPhep'];
    chotCong = json['ChotCong'];
    chotDon = json['ChotDon'];
    chotLuong = json['ChotLuong'];
    chotHoaHong = json['ChotHoaHong'];
    sId = json['_id'];
    domainId = json['DomainId'];
    idStr = json['IdStr'];
    domainIdStr = json['DomainIdStr'];
    thoiGianRaNgoai = json['ThoiGianRaNgoai'];
  }

  EmployeeTimeSheetModel.empty() {
    tongThuNhap = 0.0;
    tongLuong = 0.0;
    ngayCongThucTe = 0.0;
    luongLamThem = 0.0;
    hoaHongKD = 0.0;
    soNgayNghiCoXinPhep = 0.0;
    thoiGianRaNgoai = 0;
    soPhutDiMuon = 0;
    soPhutVeSom = 0;
    soNgayVeSom = 0;
    soNgayDiMuon = 0;
    kPICaNhan = 0.0;
    kPIDonVi = 0.0;
    soGioLamThem = 0.0;
    hoaHongKD = 0.0;
    luongBuNghiPhep = 0.0;
    ngayCongTieuChuan = 0.0;
    tongSoNgayNghi = 0.0;
    thucLinhChuaThue = 0.0;
    luongKhongNghiPhep = 0.0;
    chotHoaHong = false;
    soNgayNghiHuongLuong = 0.0;
    soNgayNghiKhongLuong = 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LuongCoSo'] = this.luongCoSo;
    data['NgayCongTieuChuan'] = this.ngayCongTieuChuan;
    data['EmployeeId'] = this.employeeId;
    data['EmployeeIdStr'] = this.employeeIdStr;
    data['EmployeeName'] = this.employeeName;
    data['PositionId'] = this.positionId;
    data['PositionIdStr'] = this.positionIdStr;
    data['DepartmentId'] = this.departmentId;
    data['DepartmentIdStr'] = this.departmentIdStr;
    //   data['CreatedBy'] = this.createdBy;
    data['StructureDepartmentId'] = this.structureDepartmentId;
    data['StructureDepartmentIdStr'] = this.structureDepartmentIdStr;
    data['TenChucDanh'] = this.tenChucDanh;
    data['PhongBan'] = this.phongBan;
    data['HeSoChucDanh'] = this.heSoChucDanh;
    data['HeSoLuongLamThem'] = this.heSoLuongLamThem;
    data['ThamNien'] = this.thamNien;
    data['HeSoVungMien'] = this.heSoVungMien;
    data['HeSoChucDanhStr'] = this.heSoChucDanhStr;
    data['KPICaNhan'] = this.kPICaNhan;
    data['KPICaNhanStr'] = this.kPICaNhanStr;
    data['KPIDonVi'] = this.kPIDonVi;
    data['KPIDonViStr'] = this.kPIDonViStr;
    data['Thang'] = this.thang;
    data['Nam'] = this.nam;
    data['HeSoKetQuaKinhDoanh'] = this.heSoKetQuaKinhDoanh;
    data['HeSoHKQStr'] = this.heSoHKQStr;
    data['NgayCongThucTe'] = this.ngayCongThucTe;
    data['SoGioLamThem'] = this.soGioLamThem;
    data['LuongThamNien'] = this.luongThamNien;
    data['LuongChucDanh'] = this.luongChucDanh;
    data['LuongCung'] = this.luongCung;
    data['LuongMem'] = this.luongMem;
    data['LuongKhac'] = this.luongKhac;
    data['LuongLamThem'] = this.luongLamThem;
    data['PhuCapAnTrua'] = this.phuCapAnTrua;
    data['PhuCapKinhDoanh'] = this.phuCapKinhDoanh;
    data['PhuCapTrachNhiem'] = this.phuCapTrachNhiem;
    data['PhuCapKhac'] = this.phuCapKhac;
    data['ThuongKinhDoanh'] = this.thuongKinhDoanh;
    data['TongThuNhap'] = this.tongThuNhap;
    data['TongLuong'] = this.tongLuong;
    data['LuongDongBaoHiem'] = this.luongDongBaoHiem;
    data['KPCD'] = this.kPCD;
    data['BHXHDN'] = this.bHXHDN;
    data['BHYTDN'] = this.bHYTDN;
    data['BHTNDN'] = this.bHTNDN;
    data['CongBHDNChi'] = this.congBHDNChi;
    data['BHXH'] = this.bHXH;
    data['BHYT'] = this.bHYT;
    data['BHTN'] = this.bHTN;
    data['CongBaoHiemBatBuoc'] = this.congBaoHiemBatBuoc;
    data['BHYTCNTN'] = this.bHYTCNTN;
    data['TienGuiXe'] = this.tienGuiXe;
    data['TongDoanhNghiepChi'] = this.tongDoanhNghiepChi;
    data['ThucLinhChuaThue'] = this.thucLinhChuaThue;
    data['ThueTNCN'] = this.thueTNCN;
    data['TNCN'] = this.tNCN;
//    data['DVT'] = this.dVT;
    data['SoPhutDiMuon'] = this.soPhutDiMuon;
    data['SoPhutVeSom'] = this.soPhutVeSom;
    data['SoNgayVeSom'] = this.soNgayVeSom;
    data['SoNgayDiMuon'] = this.soNgayDiMuon;
    data['SoNgayLamThucTe'] = this.soNgayLamThucTe;
    data['TongSoNgayNghi'] = this.tongSoNgayNghi;
    data['SoNgayNghiHuongLuong'] = this.soNgayNghiHuongLuong;
    data['SoNgayNghiKhongLuong'] = this.soNgayNghiKhongLuong;
    data['LuongLamThemMotGio'] = this.luongLamThemMotGio;
    data['SoNgayNghiCoXinPhep'] = this.soNgayNghiCoXinPhep;
    data['LuongKhongNghiPhep'] = this.luongKhongNghiPhep;
    data['HoaHongKD'] = this.hoaHongKD;
    data['LuongBuNghiPhep'] = this.luongBuNghiPhep;
    data['ChotCong'] = this.chotCong;
    data['ChotDon'] = this.chotDon;
    data['ChotLuong'] = this.chotLuong;
    data['ChotHoaHong'] = this.chotHoaHong;
    data['_id'] = this.sId;
    data['DomainId'] = this.domainId;
    data['IdStr'] = this.idStr;
    data['DomainIdStr'] = this.domainIdStr;
    return data;
  }
}

// import 'package:json_annotation/json_annotation.dart';
//
// @JsonSerializable()
// class EmployeeTimeSheetModel {
//   @JsonKey(name: "NgayCongTieuChuan")
//   double ngayCongTieuChuan;
//   @JsonKey(name: "NgayCongThucTe")
//   double ngayCongThucTe;
//   @JsonKey(name: "TongSoNgayNghi")
//   double tongSoNgayNghi;
//   @JsonKey(name: "SoNgayNghiHuongLuong")
//   double soNgayNghiHuongLuong;
//   @JsonKey(name: "SoNgayNghiKhongLuong")
//   double soNgayNghiKhongLuong;
//   @JsonKey(name: "SoNgayDiMuon")
//   int soNgayDiMuon;
//   @JsonKey(name: "SoNgayVeSom")
//   int soNgayVeSom;
//   @JsonKey(name: "SoPhutDiMuon")
//   int soPhutDiMuon;
// //  @JsonKey(name: "TongPhutDiMuonViPham")
// //  int tongPhutDiMuonViPham;
//   @JsonKey(name: "TongThuNhap")
//   double tongThuNhap;
//   @JsonKey(name: "SoPhutVeSom")
//   int soPhutVeSom;
//   @JsonKey(name: "SoGioLamThem")
//   double soGioLamThem;
//   @JsonKey(name: "KPICaNhan")
//   double kPICaNhan;
//   @JsonKey(name: "KPIDonVi")
//   double kPIDonVi;
//   @JsonKey(name: "LuongLamThem")
//   double luongLamThem;
//   @JsonKey(name: "SoNgayNghiCoXinPhep")
//   double soNgayNghiCoXinPhep;
//   @JsonKey(name: "HoaHongKD")
//   double hoaHongKD;
//   @JsonKey(name: "LuongBuNghiPhep")
//   double luongBuNghiPhep;
//   @JsonKey(name: "ChotHoaHong")
//   bool chotHoaHong;
//   @JsonKey(name: "ThuongKinhDoanh")
//   double thuongKinhDoanh;
//   @JsonKey(name: "ThucLinhChuaThue")
//   double thucLinhChuaThue;
//   @JsonKey(name: "LuongKhongNghiPhep")
//   double luongKhongNghiPhep;
//   @JsonKey(name: "TongLuong")
//   String tongLuong;
//
//   EmployeeTimeSheetModel(
//       this.soPhutDiMuon,
//       this.soNgayNghiKhongLuong,
//       this.soNgayNghiHuongLuong,
//       this.tongSoNgayNghi,
//       this.ngayCongThucTe,
//       this.soNgayVeSom,
//       this.soNgayDiMuon,
//       this.ngayCongTieuChuan,
//       this.chotHoaHong,
//       this.hoaHongKD,
//       this.kPICaNhan,
//       //     this.tongPhutDiMuonViPham,
//       this.kPIDonVi,
//       this.luongBuNghiPhep,
//       this.luongKhongNghiPhep,
//       this.luongLamThem,
//       this.soNgayNghiCoXinPhep,
//       this.soGioLamThem,
//       this.soPhutVeSom,
//       this.thucLinhChuaThue,
//       this.thuongKinhDoanh,
//       this.tongThuNhap,
//       this.tongLuong);
//
//   EmployeeTimeSheetModel.empty()
//       : ngayCongTieuChuan = 0,
//         ngayCongThucTe = 0,
//         tongSoNgayNghi = 0,
//         soNgayNghiHuongLuong = 0,
//         soNgayNghiKhongLuong = 0,
//         soNgayDiMuon = 0,
//         soNgayVeSom = 0,
//         soPhutDiMuon = 0,
//         //    tongPhutDiMuonViPham = json["TongPhutDiMuonViPham"] ,
//         tongThuNhap = 0,
//         soPhutVeSom = 0,
//         soGioLamThem = 0,
//         kPICaNhan = 0,
//         kPIDonVi = 0,
//         luongLamThem = 0,
//         soNgayNghiCoXinPhep = 0,
//         luongBuNghiPhep = 0,
//         chotHoaHong = false,
//         thuongKinhDoanh = 0,
//         thucLinhChuaThue = 0,
//         luongKhongNghiPhep = 0,
//         tongLuong = '';
//
//   EmployeeTimeSheetModel.fromJson(Map<String, dynamic> json)
//       : ngayCongTieuChuan = json["NgayCongTieuChuan"],
//         ngayCongThucTe = json["NgayCongThucTe"],
//         tongLuong = json["TongLuong"],
//         tongSoNgayNghi = json["TongSoNgayNghi"],
//         soNgayNghiHuongLuong = json["SoNgayNghiHuongLuong"],
//         soNgayNghiKhongLuong = json["SoNgayNghiKhongLuong"],
//         soNgayDiMuon = json["SoNgayDiMuon"],
//         soNgayVeSom = json["SoNgayVeSom"],
//         soPhutDiMuon = json["SoPhutDiMuon"],
//         //    tongPhutDiMuonViPham = json["TongPhutDiMuonViPham"] as int,
//         tongThuNhap = json["TongThuNhap"],
//         soPhutVeSom = json["SoPhutVeSom"],
//         soGioLamThem = json["SoGioLamThem"],
//         kPICaNhan = json["KPICaNhan"],
//         kPIDonVi = json["KPIDonVi"],
//         luongLamThem = json["LuongLamThem"],
//         soNgayNghiCoXinPhep = json["SoNgayNghiCoXinPhep"],
//         luongBuNghiPhep = json["LuongBuNghiPhep"],
//         chotHoaHong = json["ChotHoaHong"],
//         hoaHongKD = json["HoaHongKD"],
//         thuongKinhDoanh = json["ThuongKinhDoanh"],
//         thucLinhChuaThue = json["ThucLinhChuaThue"],
//         luongKhongNghiPhep = json["LuongKhongNghiPhep"];
// }
