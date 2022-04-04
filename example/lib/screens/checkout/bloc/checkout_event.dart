part of 'checkout_bloc.dart';

class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object?> get props => [];
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
  final String amount;
}

class Charge extends CheckoutEvent {
  final String token;
  final String cardHolder;
  final String amount;

  Charge(this.token, this.cardHolder, this.amount);
}

class Show3DS extends CheckoutEvent {
  final Transaction transaction;

  Show3DS(this.transaction);
}

class Post3DS extends CheckoutEvent {
  final String md;
  final String paRes;

  Post3DS(this.md, this.paRes);
}

class GooglePayPressed extends CheckoutEvent {}

class ApplePayPressed extends CheckoutEvent {}
