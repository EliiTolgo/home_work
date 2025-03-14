//Abstract Class: Loan
//Create an abstract class Loan with the following properties and methods:
// - borrowerName (String)
// - loanAmount (double)
// - interestRate (double)
// - Abstract method: double calculateMonthlyInstallment(int months).
//Loan Subclasses
//Three types of loans should be implemented:
// - PersonalLoan: Has a fixed 10% interest rate.
// - HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
// - CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
//LoanProcessingSystem Class
//Create a LoanProcessingSystem class that:
// - Stores a list of loans.
// - Provides methods to:
// - applyLoan(Loan loan): Adds a loan application to the system.
// - calculateInstallments(int months): Calculates the monthly installment for all loans.

void main() {
  PersonalLoan nada = PersonalLoan(borrowerName: 'nada', loanAmount: 5000);
  HomeLoan rana = HomeLoan(borrowerName: 'rana', loanAmount: 50000);
  LoanProcessingSystem system = LoanProcessingSystem();
  system.applyLoan(nada);
  system.applyLoan(rana);
  system.calculateInstallments(5);
}

abstract class Loan {
  String borrowerName = ' ';
  double loanAmount = 0;
  double interestRate = 0;
  double calculateMonthlyInstallment(int months) {
    double interest = loanAmount * (interestRate / 100);
    double installment = (interest + loanAmount) / months;
    return installment;
  }
}

class PersonalLoan extends Loan {
  String borrowerName = '';
  double loanAmount = 0;
  double interestRate = 10;
  PersonalLoan({required String borrowerName, required double loanAmount}) {
    this.borrowerName = borrowerName;
    this.loanAmount = loanAmount;
  }
  @override
  double calculateMonthlyInstallment(int months) {
    double interest = loanAmount * (interestRate / 100);
    double installment = (interest + loanAmount) / months;
    return installment;
  }
}

class HomeLoan extends Loan {
  String borrowerName = '';
  double loanAmount = 0;
  double interestRate = 1;
  HomeLoan({required String borrowerName, required double loanAmount}) {
    this.borrowerName = borrowerName;
    this.loanAmount = loanAmount;
  }
  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount < 50000) {
      interestRate = 8;
    } else {
      interestRate = 9.5;
    }
    double interest = loanAmount * (interestRate / 100);
    double installment = (interest + loanAmount) / months;
    return installment;
  }
}

class CarLoan extends Loan {
  String borrowerName = '';
  double loanAmount = 0;
  double interestRate = 7;
  double dditionalProcessing = 1;
  HomeLoan({required String borrowerName, required double loanAmount}) {
    this.borrowerName = borrowerName;
    this.loanAmount = loanAmount;
  }

  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount < 50000) {
      dditionalProcessing = 2;
    } else {
      dditionalProcessing = 1;
    }
    double interest =
        loanAmount * (interestRate / 100) * (dditionalProcessing / 100);
    double installment = (interest + loanAmount) / months;
    return installment;
  }
}

class LoanProcessingSystem {
  List<Loan> _loans = [];
  void applyLoan(Loan newloan) {
    _loans.add(newloan);
  }

  void calculateInstallments(int months) {
    if (_loans != null) {
      for (Loan loans in _loans) {
        print(loans.calculateMonthlyInstallment(months));
      }
    }
  }
}
