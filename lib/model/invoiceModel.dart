class InvoiceModel{
  final String invoiceNo;
  final String customerName;
  final String status;
  final String amount;

  const InvoiceModel({
    required this.invoiceNo,
    required this.customerName,
    required this.status,
    required this.amount,
  });


  InvoiceModel copyWith({
    String? invoiceNo,
    String? customerName,
    String? status,
    String? amount,
  }) {
    return InvoiceModel(
      invoiceNo: invoiceNo ?? this.invoiceNo,
      customerName: customerName ?? this.customerName,
      status: status ?? this.status,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'invoiceNo': this.invoiceNo,
      'customerName': this.customerName,
      'status': this.status,
      'amount': this.amount,
    };
  }

  factory InvoiceModel.fromMap(Map<String, dynamic> map) {
    return InvoiceModel(
      invoiceNo: map['invoiceNo'] as String,
      customerName: map['customerName'] as String,
      status: map['status'] as String,
      amount: map['amount'] as String,
    );
  }

}