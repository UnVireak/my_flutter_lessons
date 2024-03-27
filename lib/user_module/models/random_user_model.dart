// To parse this JSON data, do
//
//     final randomUserModel = randomUserModelFromMap(jsonString);

import 'dart:convert';

RandomUserModel randomUserModelFromMap(String str) => RandomUserModel.fromMap(json.decode(str));

String randomUserModelToMap(RandomUserModel data) => json.encode(data.toMap());

class RandomUserModel {
    final List<Result> results;
    final Info info;

    RandomUserModel({
        required this.results,
        required this.info,
    });

    factory RandomUserModel.fromMap(Map<String, dynamic> json) => RandomUserModel(
        results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        info: Info.fromMap(json["info"]),
    );

    Map<String, dynamic> toMap() => {
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
        "info": info.toMap(),
    };
}

class Info {
    final String seed;
    final int results;
    final int page;
    final String version;

    Info({
        required this.seed,
        required this.results,
        required this.page,
        required this.version,
    });

    factory Info.fromMap(Map<String, dynamic> json) => Info(
        seed: json["seed"],
        results: json["results"],
        page: json["page"],
        version: json["version"],
    );

    Map<String, dynamic> toMap() => {
        "seed": seed,
        "results": results,
        "page": page,
        "version": version,
    };
}

class Result {
    final String gender;
    final Name name;
    final Location location;
    final String email;
    final Login login;
    final Dob dob;
    final Dob registered;
    final String phone;
    final String cell;
    final Id id;
    final Picture picture;
    final String nat;

    Result({
        required this.gender,
        required this.name,
        required this.location,
        required this.email,
        required this.login,
        required this.dob,
        required this.registered,
        required this.phone,
        required this.cell,
        required this.id,
        required this.picture,
        required this.nat,
    });

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromMap(json["name"]),
        location: Location.fromMap(json["location"]),
        email: json["email"],
        login: Login.fromMap(json["login"]),
        dob: Dob.fromMap(json["dob"]),
        registered: Dob.fromMap(json["registered"]),
        phone: json["phone"],
        cell: json["cell"],
        id: Id.fromMap(json["id"]),
        picture: Picture.fromMap(json["picture"]),
        nat: json["nat"],
    );

    Map<String, dynamic> toMap() => {
        "gender": gender,
        "name": name.toMap(),
        "location": location.toMap(),
        "email": email,
        "login": login.toMap(),
        "dob": dob.toMap(),
        "registered": registered.toMap(),
        "phone": phone,
        "cell": cell,
        "id": id.toMap(),
        "picture": picture.toMap(),
        "nat": nat,
    };
}

class Dob {
    final DateTime date;
    final int age;

    Dob({
        required this.date,
        required this.age,
    });

    factory Dob.fromMap(Map<String, dynamic> json) => Dob(
        date: DateTime.parse(json["date"]),
        age: json["age"],
    );

    Map<String, dynamic> toMap() => {
        "date": date.toIso8601String(),
        "age": age,
    };
}

class Id {
    final String name;
    final String? value;

    Id({
        required this.name,
        required this.value,
    });

    factory Id.fromMap(Map<String, dynamic> json) => Id(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "value": value,
    };
}

class Location {
    final Street street;
    final String city;
    final String state;
    final String country;
    final dynamic postcode;
    final Coordinates coordinates;
    final Timezone timezone;

    Location({
        required this.street,
        required this.city,
        required this.state,
        required this.country,
        required this.postcode,
        required this.coordinates,
        required this.timezone,
    });

    factory Location.fromMap(Map<String, dynamic> json) => Location(
        street: Street.fromMap(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postcode: json["postcode"],
        coordinates: Coordinates.fromMap(json["coordinates"]),
        timezone: Timezone.fromMap(json["timezone"]),
    );

    Map<String, dynamic> toMap() => {
        "street": street.toMap(),
        "city": city,
        "state": state,
        "country": country,
        "postcode": postcode,
        "coordinates": coordinates.toMap(),
        "timezone": timezone.toMap(),
    };
}

class Coordinates {
    final String latitude;
    final String longitude;

    Coordinates({
        required this.latitude,
        required this.longitude,
    });

    factory Coordinates.fromMap(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toMap() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

class Street {
    final int number;
    final String name;

    Street({
        required this.number,
        required this.name,
    });

    factory Street.fromMap(Map<String, dynamic> json) => Street(
        number: json["number"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "number": number,
        "name": name,
    };
}

class Timezone {
    final String offset;
    final String description;

    Timezone({
        required this.offset,
        required this.description,
    });

    factory Timezone.fromMap(Map<String, dynamic> json) => Timezone(
        offset: json["offset"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "offset": offset,
        "description": description,
    };
}

class Login {
    final String uuid;
    final String username;
    final String password;
    final String salt;
    final String md5;
    final String sha1;
    final String sha256;

    Login({
        required this.uuid,
        required this.username,
        required this.password,
        required this.salt,
        required this.md5,
        required this.sha1,
        required this.sha256,
    });

    factory Login.fromMap(Map<String, dynamic> json) => Login(
        uuid: json["uuid"],
        username: json["username"],
        password: json["password"],
        salt: json["salt"],
        md5: json["md5"],
        sha1: json["sha1"],
        sha256: json["sha256"],
    );

    Map<String, dynamic> toMap() => {
        "uuid": uuid,
        "username": username,
        "password": password,
        "salt": salt,
        "md5": md5,
        "sha1": sha1,
        "sha256": sha256,
    };
}

class Name {
    final String title;
    final String first;
    final String last;

    Name({
        required this.title,
        required this.first,
        required this.last,
    });

    factory Name.fromMap(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toMap() => {
        "title": title,
        "first": first,
        "last": last,
    };
}

class Picture {
    final String large;
    final String medium;
    final String thumbnail;

    Picture({
        required this.large,
        required this.medium,
        required this.thumbnail,
    });

    factory Picture.fromMap(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toMap() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}
