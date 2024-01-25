import 'dart:convert';

class ProductDetailsModel {
  String id;
  dynamic productClass;
  String sku;
  dynamic parentId;
  String name;
  String slug;
  int price;
  dynamic salePrice;
  FormattedPrice formattedPrice;
  dynamic formattedSalePrice;
  Currency currency;
  CurrencySymbol currencySymbol;
  List<dynamic> attributes;
  List<Category> categories;
  dynamic displayOrder;
  bool hasOptions;
  bool hasFields;
  List<ImageElement> images;
  bool isDraft;
  dynamic quantity;
  bool isInfinite;
  String htmlUrl;
  Weight weight;
  List<dynamic> keywords;
  bool requiresShipping;
  bool isTaxable;
  String structure;
  Seo seo;
  Rating rating;
  int storeId;
  PurchaseRestrictions purchaseRestrictions;
  dynamic meta;
  String description;
  String shortDescription;
  List<Variant> variants;
  List<CustomUserInputField> customUserInputFields;
  List<CustomOptionField> customOptionFields;
  List<Option> options;
  List<dynamic> relatedProducts;
  List<dynamic> stocks;
  int soldProductsCount;
  DateTime createdAt;
  DateTime updatedAt;

  ProductDetailsModel({
    required this.id,
    required this.productClass,
    required this.sku,
    required this.parentId,
    required this.name,
    required this.slug,
    required this.price,
    required this.salePrice,
    required this.formattedPrice,
    required this.formattedSalePrice,
    required this.currency,
    required this.currencySymbol,
    required this.attributes,
    required this.categories,
    required this.displayOrder,
    required this.hasOptions,
    required this.hasFields,
    required this.images,
    required this.isDraft,
    required this.quantity,
    required this.isInfinite,
    required this.htmlUrl,
    required this.weight,
    required this.keywords,
    required this.requiresShipping,
    required this.isTaxable,
    required this.structure,
    required this.seo,
    required this.rating,
    required this.storeId,
    required this.purchaseRestrictions,
    required this.meta,
    required this.description,
    required this.shortDescription,
    required this.variants,
    required this.customUserInputFields,
    required this.customOptionFields,
    required this.options,
    required this.relatedProducts,
    required this.stocks,
    required this.soldProductsCount,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductDetailsModel.fromRawJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
    id: json["id"],
    productClass: json["product_class"],
    sku: json["sku"],
    parentId: json["parent_id"],
    name: json["name"],
    slug: json["slug"],
    price: json["price"],
    salePrice: json["sale_price"],
    formattedPrice: formattedPriceValues.map[json["formatted_price"]]!,
    formattedSalePrice: json["formatted_sale_price"],
    currency: currencyValues.map[json["currency"]]!,
    currencySymbol: currencySymbolValues.map[json["currency_symbol"]]!,
    attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    displayOrder: json["display_order"],
    hasOptions: json["has_options"],
    hasFields: json["has_fields"],
    images: List<ImageElement>.from(json["images"].map((x) => ImageElement.fromJson(x))),
    isDraft: json["is_draft"],
    quantity: json["quantity"],
    isInfinite: json["is_infinite"],
    htmlUrl: json["html_url"],
    weight: Weight.fromJson(json["weight"]),
    keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
    requiresShipping: json["requires_shipping"],
    isTaxable: json["is_taxable"],
    structure: json["structure"],
    seo: Seo.fromJson(json["seo"]),
    rating: Rating.fromJson(json["rating"]),
    storeId: json["store_id"],
    purchaseRestrictions: PurchaseRestrictions.fromJson(json["purchase_restrictions"]),
    meta: json["meta"],
    description: json["description"],
    shortDescription: json["short_description"],
    variants: List<Variant>.from(json["variants"].map((x) => Variant.fromJson(x))),
    customUserInputFields: List<CustomUserInputField>.from(json["custom_user_input_fields"].map((x) => CustomUserInputField.fromJson(x))),
    customOptionFields: List<CustomOptionField>.from(json["custom_option_fields"].map((x) => CustomOptionField.fromJson(x))),
    options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
    relatedProducts: List<dynamic>.from(json["related_products"].map((x) => x)),
    stocks: List<dynamic>.from(json["stocks"].map((x) => x)),
    soldProductsCount: json["sold_products_count"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_class": productClass,
    "sku": sku,
    "parent_id": parentId,
    "name": name,
    "slug": slug,
    "price": price,
    "sale_price": salePrice,
    "formatted_price": formattedPriceValues.reverse[formattedPrice],
    "formatted_sale_price": formattedSalePrice,
    "currency": currencyValues.reverse[currency],
    "currency_symbol": currencySymbolValues.reverse[currencySymbol],
    "attributes": List<dynamic>.from(attributes.map((x) => x)),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "display_order": displayOrder,
    "has_options": hasOptions,
    "has_fields": hasFields,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "is_draft": isDraft,
    "quantity": quantity,
    "is_infinite": isInfinite,
    "html_url": htmlUrl,
    "weight": weight.toJson(),
    "keywords": List<dynamic>.from(keywords.map((x) => x)),
    "requires_shipping": requiresShipping,
    "is_taxable": isTaxable,
    "structure": structure,
    "seo": seo.toJson(),
    "rating": rating.toJson(),
    "store_id": storeId,
    "purchase_restrictions": purchaseRestrictions.toJson(),
    "meta": meta,
    "description": description,
    "short_description": shortDescription,
    "variants": List<dynamic>.from(variants.map((x) => x.toJson())),
    "custom_user_input_fields": List<dynamic>.from(customUserInputFields.map((x) => x.toJson())),
    "custom_option_fields": List<dynamic>.from(customOptionFields.map((x) => x.toJson())),
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
    "related_products": List<dynamic>.from(relatedProducts.map((x) => x)),
    "stocks": List<dynamic>.from(stocks.map((x) => x)),
    "sold_products_count": soldProductsCount,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class Category {
  String id;
  String? name;
  String? slug;
  String? description;
  String? coverImage;
  String? image;
  dynamic displayOrder;

  Category({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.coverImage,
    required this.image,
    required this.displayOrder,
  });

  factory Category.fromRawJson(String str) => Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    coverImage: json["cover_image"],
    image: json["image"],
    displayOrder: json["display_order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "description": description,
    "cover_image": coverImage,
    "image": image,
    "display_order": displayOrder,
  };
}

enum Currency {
  SAR
}

final currencyValues = EnumValues({
  "SAR": Currency.SAR
});

enum CurrencySymbol {
  EMPTY
}

final currencySymbolValues = EnumValues({
  " ر.س ": CurrencySymbol.EMPTY
});

class CustomOptionField {
  String id;
  String type;
  String hint;
  String label;
  int minChoices;
  int maxChoices;
  bool isRequired;
  bool canChooseMultipleOptions;
  List<Choice> choices;
  int displayOrder;

  CustomOptionField({
    required this.id,
    required this.type,
    required this.hint,
    required this.label,
    required this.minChoices,
    required this.maxChoices,
    required this.isRequired,
    required this.canChooseMultipleOptions,
    required this.choices,
    required this.displayOrder,
  });

  factory CustomOptionField.fromRawJson(String str) => CustomOptionField.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomOptionField.fromJson(Map<String, dynamic> json) => CustomOptionField(
    id: json["id"],
    type: json["type"],
    hint: json["hint"],
    label: json["label"],
    minChoices: json["min_choices"],
    maxChoices: json["max_choices"],
    isRequired: json["is_required"],
    canChooseMultipleOptions: json["can_choose_multiple_options"],
    choices: List<Choice>.from(json["choices"].map((x) => Choice.fromJson(x))),
    displayOrder: json["display_order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "hint": hint,
    "label": label,
    "min_choices": minChoices,
    "max_choices": maxChoices,
    "is_required": isRequired,
    "can_choose_multiple_options": canChooseMultipleOptions,
    "choices": List<dynamic>.from(choices.map((x) => x.toJson())),
    "display_order": displayOrder,
  };
}

class Choice {
  String ar;
  String en;
  String id;
  int price;
  String formattedPrice;
  String name;

  Choice({
    required this.ar,
    required this.en,
    required this.id,
    required this.price,
    required this.formattedPrice,
    required this.name,
  });

  factory Choice.fromRawJson(String str) => Choice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Choice.fromJson(Map<String, dynamic> json) => Choice(
    ar: json["ar"],
    en: json["en"],
    id: json["id"],
    price: json["price"],
    formattedPrice: json["formatted_price"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "ar": ar,
    "en": en,
    "id": id,
    "price": price,
    "formatted_price": formattedPrice,
    "name": name,
  };
}

class CustomUserInputField {
  String id;
  String type;
  String hint;
  String label;
  int displayOrder;
  bool isRequired;
  int price;
  String formattedPrice;

  CustomUserInputField({
    required this.id,
    required this.type,
    required this.hint,
    required this.label,
    required this.displayOrder,
    required this.isRequired,
    required this.price,
    required this.formattedPrice,
  });

  factory CustomUserInputField.fromRawJson(String str) => CustomUserInputField.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomUserInputField.fromJson(Map<String, dynamic> json) => CustomUserInputField(
    id: json["id"],
    type: json["type"],
    hint: json["hint"],
    label: json["label"],
    displayOrder: json["display_order"],
    isRequired: json["is_required"],
    price: json["price"],
    formattedPrice: json["formatted_price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "hint": hint,
    "label": label,
    "display_order": displayOrder,
    "is_required": isRequired,
    "price": price,
    "formatted_price": formattedPrice,
  };
}

enum FormattedPrice {
  THE_10000
}

final formattedPriceValues = EnumValues({
  "100.00  ر.س ": FormattedPrice.THE_10000
});

class ImageElement {
  String id;
  ImageImage image;
  dynamic altText;
  int displayOrder;

  ImageElement({
    required this.id,
    required this.image,
    required this.altText,
    required this.displayOrder,
  });

  factory ImageElement.fromRawJson(String str) => ImageElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageElement.fromJson(Map<String, dynamic> json) => ImageElement(
    id: json["id"],
    image: ImageImage.fromJson(json["image"]),
    altText: json["alt_text"],
    displayOrder: json["display_order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image.toJson(),
    "alt_text": altText,
    "display_order": displayOrder,
  };
}

class ImageImage {
  String large;
  String thumbnail;
  String fullSize;
  String medium;
  String small;

  ImageImage({
    required this.large,
    required this.thumbnail,
    required this.fullSize,
    required this.medium,
    required this.small,
  });

  factory ImageImage.fromRawJson(String str) => ImageImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageImage.fromJson(Map<String, dynamic> json) => ImageImage(
    large: json["large"],
    thumbnail: json["thumbnail"],
    fullSize: json["full_size"],
    medium: json["medium"],
    small: json["small"],
  );

  Map<String, dynamic> toJson() => {
    "large": large,
    "thumbnail": thumbnail,
    "full_size": fullSize,
    "medium": medium,
    "small": small,
  };
}

class Option {
  OptionName name;
  Slug slug;
  List<String> choices;

  Option({
    required this.name,
    required this.slug,
    required this.choices,
  });

  factory Option.fromRawJson(String str) => Option.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    name: optionNameValues.map[json["name"]]!,
    slug: slugValues.map[json["slug"]]!,
    choices: List<String>.from(json["choices"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": optionNameValues.reverse[name],
    "slug": slugValues.reverse[slug],
    "choices": List<dynamic>.from(choices.map((x) => x)),
  };
}

enum OptionName {
  EMPTY,
  NAME,
  PURPLE
}

final optionNameValues = EnumValues({
  "اللون ١": OptionName.EMPTY,
  "الوزن": OptionName.NAME,
  "الحجم ": OptionName.PURPLE
});

enum Slug {
  EMPTY,
  PURPLE,
  SLUG
}

final slugValues = EnumValues({
  "عبدالله-٢": Slug.EMPTY,
  "الحجم": Slug.PURPLE,
  "الوزن": Slug.SLUG
});

class PurchaseRestrictions {
  int minQuantityPerCart;
  int maxQuantityPerCart;
  dynamic availabilityPeriodStart;
  dynamic availabilityPeriodEnd;

  PurchaseRestrictions({
    required this.minQuantityPerCart,
    required this.maxQuantityPerCart,
    required this.availabilityPeriodStart,
    required this.availabilityPeriodEnd,
  });

  factory PurchaseRestrictions.fromRawJson(String str) => PurchaseRestrictions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurchaseRestrictions.fromJson(Map<String, dynamic> json) => PurchaseRestrictions(
    minQuantityPerCart: json["min_quantity_per_cart"],
    maxQuantityPerCart: json["max_quantity_per_cart"],
    availabilityPeriodStart: json["availability_period_start"],
    availabilityPeriodEnd: json["availability_period_end"],
  );

  Map<String, dynamic> toJson() => {
    "min_quantity_per_cart": minQuantityPerCart,
    "max_quantity_per_cart": maxQuantityPerCart,
    "availability_period_start": availabilityPeriodStart,
    "availability_period_end": availabilityPeriodEnd,
  };
}

class Rating {
  int average;
  int totalCount;
  Ratings the1Ratings;
  Ratings the2Ratings;
  Ratings the3Ratings;
  Ratings the4Ratings;
  Ratings the5Ratings;

  Rating({
    required this.average,
    required this.totalCount,
    required this.the1Ratings,
    required this.the2Ratings,
    required this.the3Ratings,
    required this.the4Ratings,
    required this.the5Ratings,
  });

  factory Rating.fromRawJson(String str) => Rating.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    average: json["average"],
    totalCount: json["total_count"],
    the1Ratings: Ratings.fromJson(json["1_ratings"]),
    the2Ratings: Ratings.fromJson(json["2_ratings"]),
    the3Ratings: Ratings.fromJson(json["3_ratings"]),
    the4Ratings: Ratings.fromJson(json["4_ratings"]),
    the5Ratings: Ratings.fromJson(json["5_ratings"]),
  );

  Map<String, dynamic> toJson() => {
    "average": average,
    "total_count": totalCount,
    "1_ratings": the1Ratings.toJson(),
    "2_ratings": the2Ratings.toJson(),
    "3_ratings": the3Ratings.toJson(),
    "4_ratings": the4Ratings.toJson(),
    "5_ratings": the5Ratings.toJson(),
  };
}

class Ratings {
  int percentage;
  int count;

  Ratings({
    required this.percentage,
    required this.count,
  });

  factory Ratings.fromRawJson(String str) => Ratings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ratings.fromJson(Map<String, dynamic> json) => Ratings(
    percentage: json["percentage"],
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "percentage": percentage,
    "count": count,
  };
}

class Seo {
  String title;
  String description;

  Seo({
    required this.title,
    required this.description,
  });

  factory Seo.fromRawJson(String str) => Seo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Seo.fromJson(Map<String, dynamic> json) => Seo(
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
  };
}

class Variant {
  String id;
  dynamic productClass;
  String sku;
  String parentId;
  String name;
  String slug;
  int price;
  int? salePrice;
  FormattedPrice formattedPrice;
  String? formattedSalePrice;
  Currency currency;
  CurrencySymbol currencySymbol;
  List<Attribute> attributes;
  List<dynamic> categories;
  dynamic displayOrder;
  bool hasOptions;
  bool hasFields;
  List<ImageElement> images;
  bool isDraft;
  int? quantity;
  bool isInfinite;
  String htmlUrl;
  Weight weight;
  List<dynamic> keywords;
  bool requiresShipping;
  bool isTaxable;
  Structure structure;
  dynamic seo;
  Rating rating;
  int storeId;
  PurchaseRestrictions purchaseRestrictions;
  dynamic meta;
  List<Stock> stocks;
  int? soldProductsCount;
  DateTime createdAt;
  DateTime updatedAt;

  Variant({
    required this.id,
    required this.productClass,
    required this.sku,
    required this.parentId,
    required this.name,
    required this.slug,
    required this.price,
    required this.salePrice,
    required this.formattedPrice,
    required this.formattedSalePrice,
    required this.currency,
    required this.currencySymbol,
    required this.attributes,
    required this.categories,
    required this.displayOrder,
    required this.hasOptions,
    required this.hasFields,
    required this.images,
    required this.isDraft,
    required this.quantity,
    required this.isInfinite,
    required this.htmlUrl,
    required this.weight,
    required this.keywords,
    required this.requiresShipping,
    required this.isTaxable,
    required this.structure,
    required this.seo,
    required this.rating,
    required this.storeId,
    required this.purchaseRestrictions,
    required this.meta,
    required this.stocks,
    required this.soldProductsCount,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Variant.fromRawJson(String str) => Variant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
    id: json["id"],
    productClass: json["product_class"],
    sku: json["sku"],
    parentId: json["parent_id"],
    name: json["name"],
    slug: json["slug"],
    price: json["price"],
    salePrice: json["sale_price"],
    formattedPrice: formattedPriceValues.map[json["formatted_price"]]!,
    formattedSalePrice: json["formatted_sale_price"],
    currency: currencyValues.map[json["currency"]]!,
    currencySymbol: currencySymbolValues.map[json["currency_symbol"]]!,
    attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    displayOrder: json["display_order"],
    hasOptions: json["has_options"],
    hasFields: json["has_fields"],
    images: List<ImageElement>.from(json["images"].map((x) => ImageElement.fromJson(x))),
    isDraft: json["is_draft"],
    quantity: json["quantity"],
    isInfinite: json["is_infinite"],
    htmlUrl: json["html_url"],
    weight: Weight.fromJson(json["weight"]),
    keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
    requiresShipping: json["requires_shipping"],
    isTaxable: json["is_taxable"],
    structure: structureValues.map[json["structure"]]!,
    seo: json["seo"],
    rating: Rating.fromJson(json["rating"]),
    storeId: json["store_id"],
    purchaseRestrictions: PurchaseRestrictions.fromJson(json["purchase_restrictions"]),
    meta: json["meta"],
    stocks: List<Stock>.from(json["stocks"].map((x) => Stock.fromJson(x))),
    soldProductsCount: json["sold_products_count"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_class": productClass,
    "sku": sku,
    "parent_id": parentId,
    "name": name,
    "slug": slug,
    "price": price,
    "sale_price": salePrice,
    "formatted_price": formattedPriceValues.reverse[formattedPrice],
    "formatted_sale_price": formattedSalePrice,
    "currency": currencyValues.reverse[currency],
    "currency_symbol": currencySymbolValues.reverse[currencySymbol],
    "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "display_order": displayOrder,
    "has_options": hasOptions,
    "has_fields": hasFields,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "is_draft": isDraft,
    "quantity": quantity,
    "is_infinite": isInfinite,
    "html_url": htmlUrl,
    "weight": weight.toJson(),
    "keywords": List<dynamic>.from(keywords.map((x) => x)),
    "requires_shipping": requiresShipping,
    "is_taxable": isTaxable,
    "structure": structureValues.reverse[structure],
    "seo": seo,
    "rating": rating.toJson(),
    "store_id": storeId,
    "purchase_restrictions": purchaseRestrictions.toJson(),
    "meta": meta,
    "stocks": List<dynamic>.from(stocks.map((x) => x.toJson())),
    "sold_products_count": soldProductsCount,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class Attribute {
  String id;
  Slug slug;
  OptionName name;
  String value;

  Attribute({
    required this.id,
    required this.slug,
    required this.name,
    required this.value,
  });

  factory Attribute.fromRawJson(String str) => Attribute.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    id: json["id"],
    slug: slugValues.map[json["slug"]]!,
    name: optionNameValues.map[json["name"]]!,
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slugValues.reverse[slug],
    "name": optionNameValues.reverse[name],
    "value": value,
  };
}

class Stock {
  String id;
  Location location;
  int? availableQuantity;
  bool isInfinite;

  Stock({
    required this.id,
    required this.location,
    required this.availableQuantity,
    required this.isInfinite,
  });

  factory Stock.fromRawJson(String str) => Stock.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
    id: json["id"],
    location: Location.fromJson(json["location"]),
    availableQuantity: json["available_quantity"],
    isInfinite: json["is_infinite"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "location": location.toJson(),
    "available_quantity": availableQuantity,
    "is_infinite": isInfinite,
  };
}

class Location {
  String id;
  LocationName name;
  Type type;

  Location({
    required this.id,
    required this.name,
    required this.type,
  });

  factory Location.fromRawJson(String str) => Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    name: locationNameValues.map[json["name"]]!,
    type: typeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": locationNameValues.reverse[name],
    "type": typeValues.reverse[type],
  };
}

enum LocationName {
  ABDALLAH_TEST
}

final locationNameValues = EnumValues({
  "Abdallah Test": LocationName.ABDALLAH_TEST
});

enum Type {
  PHYSICAL
}

final typeValues = EnumValues({
  "PHYSICAL": Type.PHYSICAL
});

enum Structure {
  CHILD
}

final structureValues = EnumValues({
  "child": Structure.CHILD
});

class Weight {
  int? value;
  Unit unit;

  Weight({
    required this.value,
    required this.unit,
  });

  factory Weight.fromRawJson(String str) => Weight.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    value: json["value"],
    unit: unitValues.map[json["unit"]]!,
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "unit": unitValues.reverse[unit],
  };
}

enum Unit {
  KG
}

final unitValues = EnumValues({
  "kg": Unit.KG
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
