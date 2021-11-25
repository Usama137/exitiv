class GetHotelsModel {
  String reqType;
  String docDate;
  String totalCount;
  List<Hotels> hotels;

  GetHotelsModel({this.reqType, this.docDate, this.totalCount, this.hotels});

  GetHotelsModel.fromJson(Map<String, dynamic> json) {
    reqType = json['ReqType'];
    docDate = json['DocDate'];
    totalCount = json['TotalCount'];
    if (json['Hotels'] != null) {
      hotels = new List<Hotels>();
      json['Hotels'].forEach((v) {
        hotels.add(new Hotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ReqType'] = this.reqType;
    data['DocDate'] = this.docDate;
    data['TotalCount'] = this.totalCount;
    if (this.hotels != null) {
      data['Hotels'] = this.hotels.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hotels {
  String hotelID;
  String hotelName;
  String address;
  String cityName;
  String roomPrice;
  String roomDisPrice;
  String hotelImage;

  Hotels(
      {this.hotelID,
        this.hotelName,
        this.address,
        this.cityName,
        this.roomPrice,
        this.roomDisPrice,
        this.hotelImage});

  Hotels.fromJson(Map<String, dynamic> json) {
    hotelID = json['HotelID'];
    hotelName = json['HotelName'];
    address = json['Address'];
    cityName = json['CityName'];
    roomPrice = json['RoomPrice'];
    roomDisPrice = json['RoomDisPrice'];
    hotelImage = json['HotelImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['HotelID'] = this.hotelID;
    data['HotelName'] = this.hotelName;
    data['Address'] = this.address;
    data['CityName'] = this.cityName;
    data['RoomPrice'] = this.roomPrice;
    data['RoomDisPrice'] = this.roomDisPrice;
    data['HotelImage'] = this.hotelImage;
    return data;
  }
}