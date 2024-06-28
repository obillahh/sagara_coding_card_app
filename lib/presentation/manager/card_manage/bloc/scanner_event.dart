import 'package:equatable/equatable.dart';

abstract class ScannerEvent extends Equatable {
  const ScannerEvent();

  @override
  List<Object?> get props => [];
}

class GetCardByScannerEvent extends ScannerEvent {
  const GetCardByScannerEvent({required this.url});

  final String url;

  @override
  List<Object?> get props => [url];
}
