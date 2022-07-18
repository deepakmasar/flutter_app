import 'dart:convert';

UserDetailResposeModel userDetailResposeModel(String str) =>
    UserDetailResposeModel.fromJson(json.decode(str));

class UserDetailResposeModel {
  UserDetailResposeModel({
    required this.code,
    required this.message,
    required this.data,
  });
  late final int code;
  late final String message;
  late final Data data;

  UserDetailResposeModel.fromJson(Map<String, dynamic> json){
    code = json['code'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.phone,
    required this.active,
    required this.domainUrl,
    required this.portfolioFor,
    required this.theme,
    required this.themeColor,
    required this.image,
    required this.coverimage,
    required this.freelance,
    required this.location,
    required this.skills,
    required this.preferedLocation,
    required this.organizationId,
    required this.about,
    required this.aboutInDetails,
    required this.totalExperienceYear,
    required this.totalExperienceMonth,
    required this.socialLinks,
    required this.dialCode,
    required this.supervisor,
    required this.hireme,
    required this.resumeLink,
    required this.portfolioSectionLabel,
    required this.following,
    required this.jobTitle,
    required this.live,
    required this.id,
    required this.fullName,
    required this.email,
    required this.portfolioId,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    required this.V,
    required this.dob,
    required this.displayElement,
  });
  late final String phone;
  late final bool active;
  late final String domainUrl;
  late final String portfolioFor;
  late final String theme;
  late final String themeColor;
  late final String image;
  late final String coverimage;
  late final String freelance;
  late final String location;
  late final List<Skills> skills;
  late final List<dynamic> preferedLocation;
  late final String organizationId;
  late final String about;
  late final String aboutInDetails;
  late final int totalExperienceYear;
  late final int totalExperienceMonth;
  late final List<SocialLinks> socialLinks;
  late final String dialCode;
  late final String supervisor;
  late final bool hireme;
  late final String resumeLink;
  late final List<PortfolioSectionLabel> portfolioSectionLabel;
  late final List<dynamic> following;
  late final String jobTitle;
  late final bool live;
  late final String id;
  late final String fullName;
  late final String email;
  late final String portfolioId;
  late final int role;
  late final String createdAt;
  late final String updatedAt;
  late final int V;
  late final String dob;
  late final DisplayElement displayElement;

  Data.fromJson(Map<String, dynamic> json){
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
    skills = List.from(json['skills']).map((e)=>Skills.fromJson(e)).toList();
    preferedLocation = List.castFrom<dynamic, dynamic>(json['preferedLocation']);
    organizationId = json['organizationId'];
    about = json['about'];
    aboutInDetails = json['about_in_details'];
    totalExperienceYear = json['totalExperienceYear'];
    totalExperienceMonth = json['totalExperienceMonth'];
    socialLinks = List.from(json['social_links']).map((e)=>SocialLinks.fromJson(e)).toList();
    dialCode = json['dial_code'];
    supervisor = json['supervisor'];
    hireme = json['hireme'];
    resumeLink = json['resume_link'];
    portfolioSectionLabel = List.from(json['portfolio_section_label']).map((e)=>PortfolioSectionLabel.fromJson(e)).toList();
    following = List.castFrom<dynamic, dynamic>(json['following']);
    jobTitle = json['job_title'];
    live = json['live'];
    id = json['_id'];
    fullName = json['fullName'];
    email = json['email'];
    portfolioId = json['portfolioId'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    V = json['__v'] != null ? json['__v'] : json['_v'] ;
    dob = json['dob'];
    displayElement = DisplayElement.fromJson(json['display_element']);
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
    _data['skills'] = skills.map((e)=>e.toJson()).toList();
    _data['preferedLocation'] = preferedLocation;
    _data['organizationId'] = organizationId;
    _data['about'] = about;
    _data['about_in_details'] = aboutInDetails;
    _data['totalExperienceYear'] = totalExperienceYear;
    _data['totalExperienceMonth'] = totalExperienceMonth;
    _data['social_links'] = socialLinks.map((e)=>e.toJson()).toList();
    _data['dial_code'] = dialCode;
    _data['supervisor'] = supervisor;
    _data['hireme'] = hireme;
    _data['resume_link'] = resumeLink;
    _data['portfolio_section_label'] = portfolioSectionLabel.map((e)=>e.toJson()).toList();
    _data['following'] = following;
    _data['job_title'] = jobTitle;
    _data['live'] = live;
    _data['_id'] = id;
    _data['fullName'] = fullName;
    _data['email'] = email;
    _data['portfolioId'] = portfolioId;
    _data['role'] = role;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = V;
    _data['dob'] = dob;
    _data['display_element'] = displayElement.toJson();
    return _data;
  }
}

class Skills {
  Skills({
    required this.name,
    required this.percentage,
  });
  late final String name;
  late final int percentage;

  Skills.fromJson(Map<String, dynamic> json){
    name = json['name'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['percentage'] = percentage;
    return _data;
  }
}

class SocialLinks {
  SocialLinks({
    required this.name,
    required this.icon,
    required this.alias,
    required this.url,
  });
  late final String name;
  late final String icon;
  late final String alias;
  late final String url;

  SocialLinks.fromJson(Map<String, dynamic> json){
    name = json['name'];
    icon = json['icon'];
    alias = json['alias'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['icon'] = icon;
    _data['alias'] = alias;
    _data['url'] = url;
    return _data;
  }
}

class PortfolioSectionLabel {
  PortfolioSectionLabel({
    required this.name,
    required this.editedName,
    required this.alias,
    required this.active,
  });
  late final String name;
  late final String editedName;
  late final String alias;
  late final bool active;

  PortfolioSectionLabel.fromJson(Map<String, dynamic> json){
    name = json['name'];
    editedName = json['edited_name'];
    alias = json['alias'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['edited_name'] = editedName;
    _data['alias'] = alias;
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

  DisplayElement.fromJson(Map<String, dynamic> json){
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