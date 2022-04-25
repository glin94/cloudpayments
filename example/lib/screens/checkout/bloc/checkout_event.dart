part of 'checkout_bloc.dart';

class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;
}

class PayButtonPressed extends CheckoutEvent {
  const PayButtonPressed({
    this.cardHolder,
    this.cardNumber,
    this.expiryDate,
    this.cvcCode,
  });

  final String? cardHolder;
  final String? cardNumber;
  final String? expiryDate;
  final String? cvcCode;

  @override
  List<Object?> get props => super.props
    ..addAll([
      cardHolder,
      cardNumber,
      expiryDate,
      cvcCode,
    ]);
}

class Init extends CheckoutEvent {}

class Auth extends CheckoutEvent {
  const Auth(
    this.cryptogram,
    this.cardHolder,
    this.amount,
  );

  final String cryptogram;
  final String cardHolder;
  final num amount;
}

class Charge extends CheckoutEvent {
  const Charge(this.token, this.cardHolder, this.amount);
  final String token;
  final String cardHolder;
  final int amount;

  @override
  List<Object?> get props => super.props..addAll([token, cardHolder, amount]);
}

class Show3DS extends CheckoutEvent {
  final Transaction transaction;

  Show3DS(this.transaction);
}

class Post3DS extends CheckoutEvent {
  final String id;
  final String paRes;

  Post3DS(this.id, this.paRes);
}

class GooglePayPressed extends CheckoutEvent {}

class ApplePayPressed extends CheckoutEvent {}
