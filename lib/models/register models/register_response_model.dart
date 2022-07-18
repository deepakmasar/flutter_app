import 'dart:convert';

import 'package:flutter_practice_1/models/user_detail_response_model.dart';

RegisterResponseModel registerResponseModel(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  RegisterResponseModel({
    required this.code,
    required this.message,
    required this.data,
  });
  late final int code;
  late final String message;
  late final Data? data;

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json[data] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data!.toJson();
    return _data;
  }
}

class Data {
  Data({
    this.phone,
    this.active,
    this.domainUrl,
    this.portfolioFor,
    this.theme,
    this.themeColor,
    this.image,
    this.coverimage,
    this.freelance,
    this.location,
    this.skills,
    this.preferedLocation,
    this.organizationId,
    this.about,
    this.aboutInDetails,
    this.totalExperienceYear,
    this.totalExperienceMonth,
    this.socialLinks,
    this.dialCode,
    this.supervisor,
    this.hireme,
    this.resumeLink,
    this.portfolioSectionLabel,
    this.following,
    this.jobTitle,
    this.live,
    this.id,
    this.fullName,
    this.email,
    this.tokenVerify,
    this.displayElement,
    this.password,
    this.portfolioId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.V,
  });
  late final String? phone;
  late final bool? active;
  late final String? domainUrl;
  late final String? portfolioFor;
  late final String? theme;
  late final String? themeColor;
  late final String? image;
  late final String? coverimage;
  late final String? freelance;
  late final String? location;
  late final List<dynamic>? skills;
  late final List<dynamic>? preferedLocation;
  late final String? organizationId;
  late final String? about;
  late final String? aboutInDetails;
  late final int? totalExperienceYear;
  late final int? totalExperienceMonth;
  late final List<dynamic>? socialLinks;
  late final String? dialCode;
  late final String? supervisor;
  late final bool? hireme;
  late final String? resumeLink;
  late final List<PortfolioSectionLabel>? portfolioSectionLabel;
  late final List<dynamic>? following;
  late final String? jobTitle;
  late final bool? live;
  late final String? id;
  late final String? fullName;
  late final String? email;
  late final String? tokenVerify;
  late final DisplayElement? displayElement;
  late final String? password;
  late final String? portfolioId;
  late final int? role;
  late final String? createdAt;
  late final String? updatedAt;
  late final int? V;

  Data.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    active = json['active'];
    domainUrl = json['domainUrl'];
    portfolioFor = json['portfolioFor'];
    theme = json['theme'];
    themeColor = json['themeColor'];
    image = json['image'];
    coverimage = json['coverimage'];
    freelance = json['freelance'];
    location = json['location'];
    skills = List.castFrom<dynamic, dynamic>(json['skills']);
    preferedLocation =
        List.castFrom<dynamic, dynamic>(json['preferedLocation']);
    organizationId = json['organizationId'];
    about = json['about'];
    aboutInDetails = json['about_in_details'];
    totalExperienceYear = json['totalExperienceYear'];
    totalExperienceMonth = json['totalExperienceMonth'];
    socialLinks = List.castFrom<dynamic, dynamic>(json['social_links']);
    dialCode = json['dial_code'];
    supervisor = json['supervisor'];
    hireme = json['hireme'];
    resumeLink = json['resume_link'];
    portfolioSectionLabel = List.from(json['portfolio_section_label'])
        .map((e) => PortfolioSectionLabel.fromJson(e))
        .toList();
    following = List.castFrom<dynamic, dynamic>(json['following']);
    jobTitle = json['job_title'];
    live = json['live'];
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    tokenVerify = json['tokenVerify'];
    displayElement = DisplayElement.fromJson(json['display_element']);
    password = json['password'];
    portfolioId = json['portfolioId'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    V = json['_V'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['phone'] = phone;
    _data['active'] = active;
    _data['domainUrl'] = domainUrl;
    _data['portfolioFor'] = portfolioFor;
    _data['theme'] = theme;
    _data['themeColor'] = themeColor;
    _data['image'] = image;
    _data['coverimage'] = coverimage;
    _data['freelance'] = freelance;
    _data['location'] = location;
    _data['skills'] = skills;
    _data['preferedLocation'] = preferedLocation;
    _data['organizationId'] = organizationId;
    _data['about'] = about;
    _data['about_in_details'] = aboutInDetails;
    _data['totalExperienceYear'] = totalExperienceYear;
    _data['totalExperienceMonth'] = totalExperienceMonth;
    _data['social_links'] = socialLinks;
    _data['dial_code'] = dialCode;
    _data['supervisor'] = supervisor;
    _data['hireme'] = hireme;
    _data['resume_link'] = resumeLink;
    _data['portfolio_section_label'] =
        portfolioSectionLabel!.map((e) => e.toJson()).toList();
    _data['following'] = following;
    _data['job_title'] = jobTitle;
    _data['live'] = live;
    _data['id'] = id;
    _data['fullName'] = fullName;
    _data['email'] = email;
    _data['tokenVerify'] = tokenVerify;
    _data['display_element'] = displayElement!.toJson();
    _data['password'] = password;
    _data['portfolioId'] = portfolioId;
    _data['role'] = role;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['_V'] = V;
    return _data;
  }
}

class PortfolioSectionLabel {
  PortfolioSectionLabel({
    required this.alias,
    required this.name,
    required this.editedName,
    required this.active,
  });
  late final String alias;
  late final String name;
  late final String editedName;
  late final bool active;

  PortfolioSectionLabel.fromJson(Map<String, dynamic> json) {
    alias = json['alias'];
    name = json['name'];
    editedName = json['edited_name'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['alias'] = alias;
    _data['name'] = name;
    _data['edited_name'] = editedName;
    _data['active'] = active;
    return _data;
  }
}

class DisplayElement {
  DisplayElement({
    required this.email,
    required this.phone,
  });
  late final bool email;
  late final bool phone;

  DisplayElement.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['phone'] = phone;
    return _data;
  }
}
