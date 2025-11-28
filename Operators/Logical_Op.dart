

void main() {
  print("LOGICAL OPERATORS IN DART\n");
  
  // ========== BASIC LOGICAL OPERATORS ==========
  print("=== BASIC LOGICAL OPERATORS ===");
  
  bool isSunny = true;
  bool isWeekend = false;
  bool hasMoney = true;
  
  print("Initial Conditions:");
  print("isSunny = $isSunny");
  print("isWeekend = $isWeekend");
  print("hasMoney = $hasMoney\n");
  
  // && LOGICAL AND OPERATOR
  print("LOGICAL AND (&&):");
  print("Returns true only if BOTH conditions are true");
  print("isSunny && hasMoney: ${isSunny && hasMoney}");
  print("isSunny && isWeekend: ${isSunny && isWeekend}");
  print("Truth Table: true && true = true, true && false = false, false && true = false, false && false = false\n");
  
  // || LOGICAL OR OPERATOR
  print("LOGICAL OR (||):");
  print("Returns true if AT LEAST ONE condition is true");
  print("isSunny || isWeekend: ${isSunny || isWeekend}");
  print("isWeekend || hasMoney: ${isWeekend || hasMoney}");
  print("Truth Table: true || true = true, true || false = true, false || true = true, false || false = false\n");
  
  // ! LOGICAL NOT OPERATOR
  print("LOGICAL NOT (!):");
  print("Reverses the boolean value");
  print("!isSunny: ${!isSunny}");
  print("!isWeekend: ${!isWeekend}");
  print("Truth Table: !true = false, !false = true\n");
  
  // ========== COMBINING WITH RELATIONAL OPERATORS ==========
  print("=== COMBINING WITH RELATIONAL OPERATORS ===");
  
  int age = 25;
  double salary = 50000.0;
  int experience = 3;
  
  print("Professional Profile:");
  print("Age: $age, Salary: \$$salary, Experience: $experience years\n");
  
  // Complex logical expressions
  print("COMPLEX LOGICAL EXPRESSIONS:");
  
  bool canGetLoan = (age >= 21) && (salary > 30000);
  print("Can get loan? (age >= 21 && salary > 30000): $canGetLoan");
  
  bool isEligibleForPromotion = (experience >= 2) || (salary > 60000);
  print("Eligible for promotion? (experience >= 2 || salary > 60000): $isEligibleForPromotion");
  
  bool shouldConsiderJobChange = (salary < 40000) && !(experience < 1);
  print("Consider job change? (salary < 40000 && !(experience < 1)): $shouldConsiderJobChange\n");
  
  // ========== SHORT-CIRCUIT EVALUATION ==========
  print("=== SHORT-CIRCUIT EVALUATION ===");
  
  print("Dart uses short-circuit evaluation for logical operators:");
  print("For && (AND): Stops at first false condition");
  print("For || (OR): Stops at first true condition\n");
  
  // Demonstration of short-circuit evaluation
  print("DEMONSTRATION:");
  
  bool condition1() {
    print("  Condition 1 evaluated (returns true)");
    return true;
  }
  
  bool condition2() {
    print("  Condition 2 evaluated (returns true)");
    return true;
  }
  
  bool condition3() {
    print("  Condition 3 evaluated (returns false)");
    return false;
  }
  
  print("\nWith && (AND) - stops at first false:");
  print("condition1() && condition3() && condition2():");
  bool result1 = condition1() && condition3() && condition2();
  print("Final Result: $result1");
  
  print("\nWith || (OR) - stops at first true:");
  print("condition3() || condition1() || condition2():");
  bool result2 = condition3() || condition1() || condition2();
  print("Final Result: $result2\n");
  
  // ========== PRACTICAL REAL-WORLD SCENARIOS ==========
  print("=== PRACTICAL REAL-WORLD SCENARIOS ===");
  
  // Car Rental System
  print("CAR RENTAL SYSTEM:");
  int driverAge = 22;
  bool hasDriverLicense = true;
  bool hasCreditCard = true;
  int accidentHistory = 0;
  
  bool canRentCar = (driverAge >= 21) && hasDriverLicense && hasCreditCard && (accidentHistory == 0);
  print("Driver Age: $driverAge");
  print("Has Driver License: $hasDriverLicense");
  print("Has Credit Card: $hasCreditCard");
  print("Accident History: $accidentHistory");
  print("Can rent car? (age >= 21 && license && creditCard && no accidents): $canRentCar\n");
  
  // University Admission Criteria
  print("UNIVERSITY ADMISSION:");
  double highSchoolGPA = 3.8;
  int satScore = 1250;
  bool hasRecommendation = true;
  bool isAthlete = false;
  
  bool isAdmitted = (highSchoolGPA >= 3.5) || (satScore >= 1200) || (isAthlete && hasRecommendation);
  print("GPA: $highSchoolGPA");
  print("SAT Score: $satScore");
  print("Has Recommendation: $hasRecommendation");
  print("Is Athlete: $isAthlete");
  print("Admitted? (GPA >= 3.5 OR SAT >= 1200 OR (athlete AND recommendation)): $isAdmitted\n");
  
  // Bank Loan Approval
  print("BANK LOAN APPROVAL:");
  int applicantAge = 35;
  double annualIncome = 75000.0;
  int creditScore = 720;
  bool hasCollateral = true;
  bool existingCustomer = false;
  
  bool loanApproved = (applicantAge >= 21) && 
                     ((annualIncome > 50000) || hasCollateral) && 
                     (creditScore >= 700) && 
                     !(existingCustomer && creditScore < 650);
  
  print("Age: $applicantAge");
  print("Annual Income: \$$annualIncome");
  print("Credit Score: $creditScore");
  print("Has Collateral: $hasCollateral");
  print("Existing Customer: $existingCustomer");
  print("Loan Approved? $loanApproved\n");
  
  // Website Access Control
  print("WEBSITE ACCESS CONTROL:");
  bool isLoggedIn = true;
  bool isSubscribed = false;
  bool isTrialPeriod = true;
  int pageViews = 45;
  
  bool canAccessPremium = isLoggedIn && (isSubscribed || isTrialPeriod) && (pageViews < 100);
  print("Logged In: $isLoggedIn");
  print("Subscribed: $isSubscribed");
  print("Trial Period: $isTrialPeriod");
  print("Page Views: $pageViews");
  print("Can access premium? (loggedIn AND (subscribed OR trial) AND views < 100): $canAccessPremium\n");
  
  // ========== COMPLEX LOGICAL EXPRESSIONS ==========
  print("=== COMPLEX LOGICAL EXPRESSIONS ===");
  
  // Weather-based activity planner
  print("WEATHER ACTIVITY PLANNER:");
  bool isRaining = false;
  bool isCold = true;
  bool isWindy = false;
  bool isHoliday = true;
  
  bool goForWalk = !isRaining && !isWindy && (isCold || !isCold);
  bool stayIndoors = isRaining || (isCold && isWindy);
  bool havePicnic = !isRaining && !isCold && !isWindy && isHoliday;
  
  print("Raining: $isRaining, Cold: $isCold, Windy: $isWindy, Holiday: $isHoliday");
  print("Go for walk? (!raining && !windy): $goForWalk");
  print("Stay indoors? (raining OR (cold AND windy)): $stayIndoors");
  print("Have picnic? (!raining && !cold && !windy && holiday): $havePicnic\n");
  
  // ========== OPERATOR PRECEDENCE ==========
  print("=== OPERATOR PRECEDENCE ===");
  
  print("Logical operators have the following precedence:");
  print("1. ! (NOT) - Highest precedence");
  print("2. && (AND) - Medium precedence"); 
  print("3. || (OR) - Lowest precedence\n");
  
  print("Example without parentheses:");
  bool resultA = true || false && false;
  print("true || false && false = $resultA (evaluated as true || (false && false))");
  
  print("\nExample with parentheses:");
  bool resultB = (true || false) && false;
  print("(true || false) && false = $resultB (different result with parentheses)\n");
  

}