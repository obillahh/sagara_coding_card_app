import 'package:equatable/equatable.dart';
import '../../../../domain/entities/card_entity/card_id_response_entity.dart';

abstract class ScannerState extends Equatable {
  const ScannerState();

  @override
  List<Object?> get props => [];
}

class ScannerInitial extends ScannerState {
  const ScannerInitial();
}

class ScannerLoading extends ScannerState {
  const ScannerLoading();
}

class ScannerSuccess extends ScannerState {
  const ScannerSuccess({required this.card});

  final CardIdDataEntity card;

  @override
  List<Object?> get props => [card];
}

class ScannerFailure extends ScannerState {
  const ScannerFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
