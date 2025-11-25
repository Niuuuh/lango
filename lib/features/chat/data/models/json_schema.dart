class JsonSchema extends ObjectProperty {
  const JsonSchema({
    super.description,
    required super.properties,
  });
}

sealed class Property {
  final List<String> type;
  final String? description;

  const Property({
    required this.type,
    this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      "type": type.length == 1 ? type.first : type,
      if (description != null) "description": description,
    };
  }
}

class StringProperty extends Property {
  const StringProperty({
    super.description,
  }) : super(type: const ["string"]);
}

class NullableStringProperty extends Property {
  const NullableStringProperty({
    super.description,
  }) : super(type: const ["string", "null"]);
}

class EnumProperty extends StringProperty {
  final List<String> values;

  const EnumProperty({
    super.description,
    required this.values,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      "enum": values,
    };
  }
}

class NullableEnumProperty extends NullableStringProperty {
  final List<String> values;

  const NullableEnumProperty({
    super.description,
    required this.values,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      "enum": values,
    };
  }
}

class ArrayProperty extends Property {
  final Property items;

  const ArrayProperty({
    required this.items,
    super.description,
  }) : super(type: const ["array"]);

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      "items": items.toJson(),
    };
  }
}

class ObjectProperty extends Property {
  final Map<String, Property> properties;

  List<String> get required => properties.keys.toList();

  bool get additionalProperties => false;

  const ObjectProperty({
    super.description,
    required this.properties,
  }) : super(type: const ["object"]);

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      "properties": properties.map((key, value) => MapEntry(key, value.toJson())),
      "required": required,
      "additionalProperties": additionalProperties,
    };
  }
}