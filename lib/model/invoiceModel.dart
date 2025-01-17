class InvoiceModel{
  final String name;
  final String email;
  final String imageUrl;
  final String id;

//<editor-fold desc="Data Methods">
  const InvoiceModel({
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.id,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InvoiceModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          imageUrl == other.imageUrl &&
          id == other.id);

  @override
  int get hashCode =>
      name.hashCode ^ email.hashCode ^ imageUrl.hashCode ^ id.hashCode;

  @override
  String toString() {
    return 'InvoiceModel{' +
        ' name: $name,' +
        ' email: $email,' +
        ' imageUrl: $imageUrl,' +
        ' id: $id,' +
        '}';
  }

  InvoiceModel copyWith({
    String? name,
    String? email,
    String? imageUrl,
    String? id,
  }) {
    return InvoiceModel(
      name: name ?? this.name,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'imageUrl': this.imageUrl,
      'id': this.id,
    };
  }

  factory InvoiceModel.fromMap(Map<String, dynamic> map) {
    return InvoiceModel(
      name: map['name'] as String,
      email: map['email'] as String,
      imageUrl: map['imageUrl'] as String,
      id: map['id'] as String,
    );
  }

//</editor-fold>
}