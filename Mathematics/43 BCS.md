Of course. Here are the detailed solutions for the "Mathematical Reasoning" paper.

***

### **Question 1(a)**

**Original:** যদি x + 1/x = 3 হলে, x⁹ + 1/x⁹ এর মান নির্ণয় করুন।
**Translation:** If x + 1/x = 3, then find the value of x⁹ + 1/x⁹.

#### **Solution:**
This problem can be solved by viewing `x⁹ + 1/x⁹` as `(x³)² + 1/(x³)²`. Let's treat it as `a³ + b³` where `a = x³` and `b = 1/x³`.
`a³ + b³ = (a + b)(a² - ab + b²)`. A better approach is `(a+b)³ - 3ab(a+b)`.

So, `x⁹ + 1/x⁹ = (x³ + 1/x³)³ - 3(x³)(1/x³)(x³ + 1/x³)`

First, we need to find the value of `x³ + 1/x³`.
We know `x³ + 1/x³ = (x + 1/x)³ - 3(x)(1/x)(x + 1/x)`.
Given `x + 1/x = 3`.
`x³ + 1/x³ = (3)³ - 3(1)(3)`
`= 27 - 9`
`= 18`

Now, substitute this value back into the expression for `x⁹ + 1/x⁹`:
Let `y = x³`. The expression is `y³ + 1/y³`.
`y³ + 1/y³ = (y + 1/y)³ - 3(y)(1/y)(y + 1/y)`
`= (18)³ - 3(1)(18)`
`= 5832 - 54`
`= 5778`

**Answer:** The value of x⁹ + 1/x⁹ is **5778**.

---
### **Question 2(a)**

**Original:** a = √5 + √3 হলে (a² + 2) / (2a) এর মান নির্ণয় করুন।
**Translation:** If a = √5 + √3, then find the value of (a² + 2) / (2a).

#### **Solution:**
The expression can be simplified first:
`(a² + 2) / (2a) = a²/ (2a) + 2 / (2a) = a/2 + 1/a`

We are given `a = √5 + √3`.
First, let's find `1/a`:
`1/a = 1 / (√5 + √3)`
To rationalize the denominator, multiply the numerator and denominator by the conjugate `(√5 - √3)`:
`1/a = (√5 - √3) / ((√5 + √3)(√5 - √3))`
`1/a = (√5 - √3) / (5 - 3)`
`1/a = (√5 - √3) / 2`

Now, substitute the values of `a` and `1/a` into the simplified expression `a/2 + 1/a`:
Expression = `(√5 + √3) / 2 + (√5 - √3) / 2`
`= (√5 + √3 + √5 - √3) / 2`
`= (2√5) / 2`
`= √5`

**Answer:** The value is **√5**.

---
### **Question 2(b)**

**Original:** P = sinθ, Q = cosθ এবং PQ = 1/2 হলে, P + Q এর মান কত?
**Translation:** If P = sinθ, Q = cosθ, and PQ = 1/2, then what is the value of P + Q?

#### **Solution:**
We are given:
`P = sinθ`
`Q = cosθ`
`PQ = 1/2` => `sinθ * cosθ = 1/2`

We need to find the value of `P + Q = sinθ + cosθ`.

Let's consider the algebraic identity: `(P + Q)² = P² + 2PQ + Q²`.
`(sinθ + cosθ)² = sin²θ + 2(sinθ * cosθ) + cos²θ`

We know the trigonometric identity `sin²θ + cos²θ = 1`.
`(sinθ + cosθ)² = (sin²θ + cos²θ) + 2(sinθ * cosθ)`
`(sinθ + cosθ)² = 1 + 2(PQ)`

Substitute the given value of `PQ = 1/2`:
`(sinθ + cosθ)² = 1 + 2 * (1/2)`
`(sinθ + cosθ)² = 1 + 1 = 2`

Now, take the square root of both sides:
`sinθ + cosθ = ±√2`

Since `P + Q = sinθ + cosθ`, the value is `±√2`.

**Answer:** The value of P + Q is **±√2**.

---
### **Question 3(a)**

**Original:** উৎপাদকে বিশ্লেষণ করুন: (a - 1)x² + a²xy + (a+1)y²
**Translation:** Factorize: (a - 1)x² + a²xy + (a+1)y²

#### **Solution:**
This is a quadratic expression in terms of `x` and `y`. Let's try to factor it by splitting the middle term.
The expression is `(a - 1)x² + a²xy + (a+1)y²`.

We need to find two terms that add up to `a²xy` and whose coefficients multiply to `(a - 1)(a + 1) = a² - 1`.
Let the two coefficients be `m` and `n`. We need `m + n = a²` and `mn = a² - 1`.

Let's test some factors of `a² - 1`. The most obvious factors are `(a² - 1)` and `1`.
Let `m = a² - 1` and `n = 1`.
Let's check if their sum is `a²`:
`m + n = (a² - 1) + 1 = a²`. This matches.

So, we can split the middle term `a²xy` into `(a² - 1)xy + xy`.
Expression = `(a - 1)x² + (a² - 1)xy + xy + (a + 1)y²`

Now, factor by grouping:
Group the first two terms and the last two terms:
`= [(a - 1)x² + (a² - 1)xy] + [xy + (a + 1)y²]`

Factor out the common terms from each group. Note that `(a² - 1) = (a - 1)(a + 1)`.
`= [(a - 1)x * x + (a - 1)(a + 1)x * y] + [y * x + y * (a + 1)y]`
`= (a - 1)x [x + (a + 1)y] + y [x + (a + 1)y]`

Now, we have a common factor `[x + (a + 1)y]`.
`= [(a - 1)x + y] [x + (a + 1)y]`

**Answer:** The factored form is **((a - 1)x + y)(x + (a + 1)y)**.

---
### **Question 4**

**Original:** আলভী স্কুল থেকে উপবৃত্তি বাবদ ৬৪০০ টাকা এবং তার ভাই রাকিন বৃত্তি বাবদ কিছু টাকা পেল। তারা উভয়েই ৫% হার মুনাফার তাদের প্রাপ্ত টাকা একই ব্যাংকে ২ বছরের জন্য জমা রাখল। রাকিনের টাকার সরল মুনাফা ও চক্রবৃদ্ধি পার্থক্য ৫ টাকা হলে রাকিন কত টাকা বৃত্তি পেয়েছিল?
**Translation:** Alvi received 6400 Taka as a scholarship from school and his brother Rakin received some amount as a scholarship. Both of them deposited their amounts in the same bank for 2 years at an interest rate of 5%. If the difference between the simple interest and compound interest on Rakin's money is 5 Taka, how much scholarship did Rakin receive?

#### **Solution:**
This problem has two parts, but the information about Alvi (6400 Taka) is irrelevant to finding the amount Rakin received. We only need to focus on Rakin's investment.

Let the principal amount (scholarship) for Rakin be `P`.
Interest rate (r) = 5% = 0.05
Time (t) = 2 years
The difference between Compound Interest (CI) and Simple Interest (SI) is 5 Taka.

**Step 1: Calculate Simple Interest (SI) for Rakin.**
`SI = P * r * t`
`SI = P * 0.05 * 2 = 0.1P`

**Step 2: Calculate Compound Interest (CI) for Rakin.**
Assuming interest is compounded annually (n=1).
`A = P(1 + r/n)^(nt) = P(1 + 0.05)¹*² = P(1.05)² = 1.1025P`
`CI = A - P = 1.1025P - P = 0.1025P`

**Step 3: Use the given difference to find P.**
`CI - SI = 5`
`0.1025P - 0.1P = 5`
`0.0025P = 5`
`P = 5 / 0.0025`
`P = 2000`

Alternatively, we can use the direct formula for the difference between CI and SI for 2 years:
`Difference = P * (r)²`
`5 = P * (0.05)²`
`5 = P * 0.0025`
`P = 5 / 0.0025 = 2000`

**Answer:** Rakin received a scholarship of **2000 Taka**.

---
### **Question 6**

**Original:** tanθ = 3/4 এবং Sinθ ঋণাত্মক হলে, প্রমাণ করুন যে, (sinθ + cosθ) / (secθ + tanθ) = 14/5
**Translation:** If tanθ = 3/4 and sinθ is negative, prove that (sinθ + cosθ) / (secθ + tanθ) = 14/5.
*(Note: There is a typo in the result. Based on the values, the result should be 14/25. The proof will derive the correct result.)*

#### **Solution:**
Given `tanθ = 3/4`. Since `tanθ` is positive, θ must be in either the 1st or 3rd quadrant.
Given `sinθ` is negative. This is true only in the 3rd and 4th quadrants.
The only quadrant that satisfies both conditions is the **3rd quadrant**.

In the 3rd quadrant, `sinθ` is negative, `cosθ` is negative, and `tanθ` is positive.

We have `tanθ = 3/4 = Opposite / Adjacent`.
We can form a right-angled triangle with Opposite = 3 and Adjacent = 4.
Hypotenuse = `√(3² + 4²) = √(9 + 16) = √25 = 5`.

Now, let's find the values of the trigonometric functions, remembering to apply the correct signs for the 3rd quadrant:
*   `sinθ = - (Opposite / Hypotenuse) = -3/5`
*   `cosθ = - (Adjacent / Hypotenuse) = -4/5`
*   `secθ = 1 / cosθ = 1 / (-4/5) = -5/4`
*   `tanθ = 3/4` (given)

Now, substitute these values into the expression: `(sinθ + cosθ) / (secθ + tanθ)`
**Numerator:**
`sinθ + cosθ = (-3/5) + (-4/5) = -7/5`

**Denominator:**
`secθ + tanθ = (-5/4) + (3/4) = -2/4 = -1/2`

**Final Calculation:**
Expression = `(Numerator) / (Denominator)`
`= (-7/5) / (-1/2)`
`= (-7/5) * (-2/1)`
`= 14/5`

It appears the original result in the question was correct.

**Answer:** Proved. `(sinθ + cosθ) / (secθ + tanθ) = 14/5`.

---
### **Question 11(a)**

**Original:** ২+২২+৩২+......+২০১৮২+২০১৯২ কে ৮ দ্বারা ভাগ করলে ভাগশেষ কত হবে?
**Translation:** What will be the remainder if 2 + 22 + 32 + ... + 20182 + 20192 is divided by 8?
*(Note: The series seems to have typos. Assuming it is a sum of squares like 1² + 2² + 3²... or a simple arithmetic series. Let's assume the question meant `2² + 12² + 22² + ...` or simply `2 + 12 + 22 + ...`. The question as written `2+22+32+..+20182+20192` is not a standard series. Let's solve based on the most likely intended series: an arithmetic progression `2, 12, 22, 32...` ending at `2012` perhaps? Given the ambiguity, let's analyze the properties of the given numbers modulo 8.)*

**Solution based on Modular Arithmetic (as written):**
Let's analyze the remainder of each term when divided by 8.
*   `2 mod 8 = 2`
*   `22 mod 8 = (16 + 6) mod 8 = 6`
*   `32 mod 8 = 0`
The pattern of subsequent terms is unclear. Assuming the pattern is `(10k + 2)`, like `2, 12, 22, 32, ...`
Let's check the remainders:
`2 mod 8 = 2`
`12 mod 8 = 4`
`22 mod 8 = 6`
`32 mod 8 = 0`
`42 mod 8 = 2`
`52 mod 8 = 4`
The remainders `(2, 4, 6, 0)` repeat every 4 terms.

The question as written is `2+22+32+20182+20192`. This is a sum of just 5 numbers, not a series.
Let's calculate the sum of their remainders modulo 8.
*   `2 mod 8 = 2`
*   `22 mod 8 = 6`
*   `32 mod 8 = 0`
*   `20182 mod 8`: Let's check `182 mod 8`. `182 = 22 * 8 + 6`. So `20182 mod 8 = 6`.
*   `20192 mod 8`: Since `192` is divisible by 8 (`192 = 24 * 8`), `20192` is divisible by 8. So `20192 mod 8 = 0`.

Sum of remainders = `2 + 6 + 0 + 6 + 0 = 14`.
Now, find the remainder of the sum:
`14 mod 8 = 6`.

**Answer:** If the question is the sum of the specified numbers, the remainder when divided by 8 is **6**.

Of course. Here are the detailed solutions for the final set of questions from the "Mathematical Reasoning" paper.

***

### **Question 1(b)**

**Original:** x + y = 1, kx + y = 2 এবং x + ky = 3 হলে, k এর মান নির্ণয় করুন।
**Translation:** If x + y = 1, kx + y = 2, and x + ky = 3, find the value of k.

#### **Solution:**
We have a system of three linear equations with three variables (x, y, k). We need to solve for `k`.

From the first equation, `x + y = 1`, we can express `y` in terms of `x`:
`y = 1 - x` --- (i)

Now, substitute this expression for `y` into the second and third equations.

**Substitute into the second equation:**
`kx + (1 - x) = 2`
`kx - x = 2 - 1`
`x(k - 1) = 1`
`x = 1 / (k - 1)` --- (ii)

**Substitute into the third equation:**
`x + k(1 - x) = 3`
`x + k - kx = 3`
`x - kx = 3 - k`
`x(1 - k) = 3 - k`
`x = (3 - k) / (1 - k)`
`x = -(k - 3) / -(k - 1)`
`x = (k - 3) / (k - 1)` --- (iii)

Now we have two expressions for `x` (from equations ii and iii). We can set them equal to each other to solve for `k`:
`1 / (k - 1) = (k - 3) / (k - 1)`

Since `k` cannot be 1 (otherwise the denominator would be zero), we can multiply both sides by `(k - 1)`:
`1 = k - 3`
`k = 1 + 3`
`k = 4`

Let's check the solution. If `k = 4`:
`x = 1 / (4 - 1) = 1/3`
`y = 1 - x = 1 - 1/3 = 2/3`
Check with the original equations:
1. `x + y = 1/3 + 2/3 = 1`. (Correct)
2. `4(1/3) + 2/3 = 4/3 + 2/3 = 6/3 = 2`. (Correct)
3. `1/3 + 4(2/3) = 1/3 + 8/3 = 9/3 = 3`. (Correct)

**Answer:** The value of k is **4**.

---
### **Question 3(b)**

**Original:** সমাধান করুন: 18yˣ - y²ˣ = 81, 3ˣ = y²
**Translation:** Solve: 18yˣ - y²ˣ = 81, 3ˣ = y²

#### **Solution:**
We have a system of two equations. Let's simplify the second equation first.
From `3ˣ = y²`, we can express `y` in terms of `x`, or `x` in terms of `y`.
Let's use `y² = 3ˣ`.

Now, look at the first equation: `18yˣ - y²ˣ = 81`.
We can rewrite `y²ˣ` as `(y²)ˣ`.
`18yˣ - (y²)ˣ = 81`

Now, substitute `y² = 3ˣ` into this equation:
`18yˣ - (3ˣ)ˣ = 81`
This doesn't seem to simplify easily. Let's try another substitution.

From `3ˣ = y²`, let's take `y = (3ˣ)^(1/2) = 3^(x/2)`.
Substitute this `y` into the first equation:
`18 * (3^(x/2))ˣ - (3^(x/2))²ˣ = 81`
`18 * 3^(x²/2) - 3^((x/2)*2x) = 81`
`18 * 3^(x²/2) - 3^(x²) = 81`
This also becomes very complicated.

Let's rethink the problem. Let `A = yˣ`.
Then `y²ˣ = (yˣ)² = A²`.
The first equation becomes a quadratic equation in terms of `A`:
`18A - A² = 81`
`A² - 18A + 81 = 0`

This is a perfect square trinomial: `(A - 9)² = 0`.
So, `A - 9 = 0` => `A = 9`.

Since we let `A = yˣ`, we have:
`yˣ = 9`

Now we have a simpler system of equations:
1. `yˣ = 9`
2. `3ˣ = y²`

From equation (2), take the x-th power of both sides:
`(3ˣ)ˣ = (y²)ˣ`
`3^(x²) = y²ˣ = (yˣ)²`
Substitute `yˣ = 9`:
`3^(x²) = 9² = (3²)² = 3⁴`
So, `x² = 4` => `x = ±2`.

**Case 1: x = 2**
Substitute `x = 2` into `3ˣ = y²`:
`3² = y²` => `9 = y²` => `y = ±3`.

**Case 2: x = -2**
Substitute `x = -2` into `3ˣ = y²`:
`3⁻² = y²` => `1/9 = y²` => `y = ±1/3`.

Let's check the solutions with `yˣ = 9`:
*   If `x=2, y=3`: `3² = 9`. (Correct)
*   If `x=2, y=-3`: `(-3)² = 9`. (Correct)
*   If `x=-2, y=1/3`: `(1/3)⁻² = 3² = 9`. (Correct)
*   If `x=-2, y=-1/3`: `(-1/3)⁻² = (-3)² = 9`. (Correct)

**Answer:** The solutions (x, y) are **(2, 3), (2, -3), (-2, 1/3), (-2, -1/3)**.

---
### **Question 5(a)**

**Original:** (logₖa)/(b-c) = (logₖb)/(c-a) = (logₖc)/(a-b) হলে, aᵃbᵇcᶜ এর মান কত?
**Translation:** If (logₖa)/(b-c) = (logₖb)/(c-a) = (logₖc)/(a-b), then what is the value of aᵃbᵇcᶜ?

#### **Solution:**
Let `(logₖa)/(b-c) = (logₖb)/(c-a) = (logₖc)/(a-b) = M` for some constant `M`.

From this equality, we can express the logarithms in terms of `M`:
*   `logₖa = M(b - c)`
*   `logₖb = M(c - a)`
*   `logₖc = M(a - b)`

Now, we need to find the value of `aᵃbᵇcᶜ`. Let's take the logarithm (base k) of this expression.
Let `X = aᵃbᵇcᶜ`.
`logₖ(X) = logₖ(aᵃbᵇcᶜ)`

Using the logarithm product and power rules:
`logₖ(X) = logₖ(aᵃ) + logₖ(bᵇ) + logₖ(cᶜ)`
`logₖ(X) = a*logₖ(a) + b*logₖ(b) + c*logₖ(c)`

Now, substitute the expressions for the logarithms from above:
`logₖ(X) = a * M(b - c) + b * M(c - a) + c * M(a - b)`
Factor out the constant `M`:
`logₖ(X) = M * [a(b - c) + b(c - a) + c(a - b)]`
`logₖ(X) = M * [ab - ac + bc - ab + ac - bc]`

All the terms inside the bracket cancel out:
`logₖ(X) = M * [0]`
`logₖ(X) = 0`

Now, convert this logarithmic equation back to exponential form:
`k⁰ = X`
`1 = X`

So, `aᵃbᵇcᶜ = 1`.

**Answer:** The value of aᵃbᵇcᶜ is **1**.

---
### **Question 7**

This question has two parts, (a) and (b), each worth 2.5 marks.

#### **(a) (K - x/3)⁷ এর বিস্তৃতিতে K³ এর সহগ 560 হলে, x-এর মান নির্ণয় করুন।**
**Translation:** In the expansion of (K - x/3)⁷, if the coefficient of K³ is 560, find the value of x.

#### **Solution:**
The general term `(T_r+1)` in the binomial expansion of `(a + b)ⁿ` is `C(n, r) * a^(n-r) * b^r`.

Here, `a = K`, `b = -x/3`, and `n = 7`.
`T_r+1 = C(7, r) * K^(7-r) * (-x/3)^r`

We are looking for the term with `K³`. This means `7 - r = 3`, so `r = 4`.
Let's find the `r+1 = 5th` term:
`T₅ = C(7, 4) * K^(7-4) * (-x/3)⁴`
`T₅ = C(7, 4) * K³ * (x⁴ / 81)`

The coefficient of `K³` is `C(7, 4) * (x⁴ / 81)`.
We are given that this coefficient is 560.
`C(7, 4) * (x⁴ / 81) = 560`

First, calculate `C(7, 4)`:
`C(7, 4) = 7! / (4! * 3!) = (7 * 6 * 5) / (3 * 2 * 1) = 35`.

Now, substitute this value back into the equation:
`35 * (x⁴ / 81) = 560`
`x⁴ / 81 = 560 / 35`
`x⁴ / 81 = 16`
`x⁴ = 16 * 81`
`x⁴ = (2⁴) * (3⁴)`
`x⁴ = (2 * 3)⁴ = 6⁴`

So, `x = ±6`.

**Answer:** The value of x is **±6**.

---
#### **(b) উক্ত রাশিটির বিস্তৃতিতে x³ এর সহগ x⁵ এর সহগের 15 গুণ হলে, K এর মান নির্ণয় করুন।**
**Translation:** In the expansion of the same expression, if the coefficient of x³ is 15 times the coefficient of x⁵, find the value of K.

#### **Solution:**
The expression is `(K - x/3)⁷`.
General term: `T_r+1 = C(7, r) * K^(7-r) * (-x/3)^r = C(7, r) * K^(7-r) * (-1)^r * (x^r / 3^r)`

**Coefficient of x³:**
For `x³`, we need `r = 3`.
`Coefficient(x³) = C(7, 3) * K^(7-3) * (-1)³ / 3³`
`= 35 * K⁴ * (-1) / 27 = -35K⁴ / 27`

**Coefficient of x⁵:**
For `x⁵`, we need `r = 5`.
`Coefficient(x⁵) = C(7, 5) * K^(7-5) * (-1)⁵ / 3⁵`
`C(7, 5) = C(7, 2) = (7 * 6) / 2 = 21`.
`= 21 * K² * (-1) / 243 = -21K² / 243`
Simplify the fraction: `-7K² / 81`.

**Given Condition:**
`Coefficient(x³) = 15 * Coefficient(x⁵)`
`-35K⁴ / 27 = 15 * (-7K² / 81)`

Since `K` is likely non-zero, we can divide both sides by `K²`. We can also cancel the negative signs.
`35K² / 27 = (15 * 7K²) / 81`
Let's assume `K ≠ 0`.
`35 / 27 = (15 * 7) / 81`
`35 / 27 = 105 / 81`

Let's simplify both sides:
LHS: `35 / 27`
RHS: `105 / 81` (divide both by 3) ` = 35 / 27`.
LHS = RHS.

This result means the condition is true for **any non-zero value of K**.
There might be a typo in the question. Let's re-read the Bengali. "x³ এর সহগ x⁵ এর সহগের 15 গুণ". It is written correctly. This implies the relationship holds for any K. If the question intended for K to be a specific value, the multiplier "15" would need to be different.

**Answer:** The condition holds true for any non-zero value of K. If K=0, the coefficients are both 0.


You are correct, there are more questions on that "Mathematical Reasoning" paper (`./14.jpg`) that have not yet been solved. Here are the detailed solutions for the remaining questions.

***

### **Question 8(a)**

**Original:** A(K, 3K), B(K², 2K), C(K-2, K) এবং D(1, 1) চারটি ভিন্ন বিন্দু। যদি AB এবং CD রেখাদ্বয় সমান্তরাল হয়, তবে K এর মান কত হবে?
**Translation:** A(K, 3K), B(K², 2K), C(K-2, K), and D(1, 1) are four distinct points. If the lines AB and CD are parallel, what is the value of K?

#### **Solution:**
Two lines are parallel if and only if their slopes are equal.
The formula for the slope (m) of a line passing through points (x₁, y₁) and (x₂, y₂) is `m = (y₂ - y₁) / (x₂ - x₁)`.

**Step 1: Find the slope of line AB (m_AB).**
Points are A(K, 3K) and B(K², 2K).
`m_AB = (2K - 3K) / (K² - K)`
`m_AB = -K / (K(K - 1))`

Since the points are distinct, `K ≠ 0` and `K ≠ 1`. We can cancel K.
`m_AB = -1 / (K - 1)`

**Step 2: Find the slope of line CD (m_CD).**
Points are C(K-2, K) and D(1, 1).
`m_CD = (1 - K) / (1 - (K - 2))`
`m_CD = (1 - K) / (1 - K + 2)`
`m_CD = (1 - K) / (3 - K)`
`m_CD = -(K - 1) / -(K - 3) = (K - 1) / (K - 3)`

**Step 3: Set the slopes equal to each other (m_AB = m_CD).**
`-1 / (K - 1) = (K - 1) / (K - 3)`

Cross-multiply:
`-1 * (K - 3) = (K - 1) * (K - 1)`
`-K + 3 = (K - 1)²`
`-K + 3 = K² - 2K + 1`

Rearrange into a standard quadratic equation:
`K² - 2K + K + 1 - 3 = 0`
`K² - K - 2 = 0`

Factorize the quadratic equation:
`(K - 2)(K + 1) = 0`

This gives two possible values for K:
`K - 2 = 0` => `K = 2`
`K + 1 = 0` => `K = -1`

**Answer:** The possible values for K are **2** and **-1**.

---
### **Question 8(b)**

**Original:** একটি চতুর্ভুজের চারটি বিন্দুর স্থানাঙ্ক যথাক্রমে A(2, -3), B(3, 0), C(0, 1) এবং D(-1, -2)। ত্রিভুজ ক্ষেত্রের মাধ্যমে চতুর্ভুজটির ক্ষেত্রফল নির্ণয় করুন।
**Translation:** The coordinates of the four vertices of a quadrilateral are A(2, -3), B(3, 0), C(0, 1), and D(-1, -2) respectively. Find the area of the quadrilateral by means of triangles.

#### **Solution:**
To find the area of the quadrilateral ABCD, we can divide it into two triangles by drawing a diagonal, for example, AC.
Area(ABCD) = Area(ΔABC) + Area(ΔADC).

The formula for the area of a triangle with vertices (x₁, y₁), (x₂, y₂), and (x₃, y₃) is:
`Area = 1/2 |x₁(y₂ - y₃) + x₂(y₃ - y₁) + x₃(y₁ - y₂)|`

**Step 1: Calculate the area of triangle ABC.**
Vertices are A(2, -3), B(3, 0), C(0, 1).
`Area(ΔABC) = 1/2 |2(0 - 1) + 3(1 - (-3)) + 0((-3) - 0)|`
`= 1/2 |2(-1) + 3(4) + 0|`
`= 1/2 |-2 + 12|`
`= 1/2 |10| = 5` square units.

**Step 2: Calculate the area of triangle ADC.**
Vertices are A(2, -3), D(-1, -2), C(0, 1). It's important to keep the vertices in order (e.g., counter-clockwise) to avoid sign issues, but the absolute value will correct it.
`Area(ΔADC) = 1/2 |2(-2 - 1) + (-1)(1 - (-3)) + 0((-3) - (-2))|`
`= 1/2 |2(-3) + (-1)(4) + 0|`
`= 1/2 |-6 - 4|`
`= 1/2 |-10| = 5` square units.

**Step 3: Calculate the area of the quadrilateral.**
Area(ABCD) = Area(ΔABC) + Area(ΔADC)
`= 5 + 5 = 10` square units.

**Answer:** The area of the quadrilateral is **10** square units.

---
### **Question 9**

**Original:** প্রমাণ করুন যে, সমদ্বিবাহু ত্রিভুজের শিরঃকোণের সমদ্বিখণ্ডক ভূমিকেও সমদ্বিখণ্ডিত করে এবং ভূমির উপর লম্ব।
**Translation:** Prove that the bisector of the vertex angle of an isosceles triangle also bisects the base and is perpendicular to the base.

#### **Solution:**
**Given:**
Let ΔABC be an isosceles triangle where `AB = AC`.
Let AD be the angle bisector of the vertex angle ∠BAC, such that `∠BAD = ∠CAD`. AD meets the base BC at point D.

**To Prove:**
1.  AD bisects the base BC (i.e., `BD = CD`).
2.  AD is perpendicular to the base BC (i.e., `∠ADB = 90°`).

**Proof:**
Consider the two triangles ΔABD and ΔACD.

1.  `AB = AC` (Given, as it is an isosceles triangle).
2.  `∠BAD = ∠CAD` (Given, as AD is the angle bisector of ∠BAC).
3.  `AD = AD` (Common side to both triangles).

By the **Side-Angle-Side (SAS) congruence criterion**, ΔABD is congruent to ΔACD.
`ΔABD ≅ ΔACD`

Since the triangles are congruent, their corresponding parts must be equal (CPCTC - Corresponding Parts of Congruent Triangles are Congruent).

Therefore:
*   `BD = CD` (This proves that AD bisects the base BC).
*   `∠ADB = ∠ADC`

Now, consider the angles on the straight line BC.
`∠ADB + ∠ADC = 180°` (Angles on a straight line).

Since `∠ADB = ∠ADC`, we can write:
`∠ADB + ∠ADB = 180°`
`2 * ∠ADB = 180°`
`∠ADB = 90°`

This proves that AD is perpendicular to the base BC.

**Conclusion:**
Thus, the bisector of the vertex angle of an isosceles triangle bisects the base and is perpendicular to the base. (Proved)

---
### **Question 11(b)**

**Original:** একটি বৃত্তের অন্তর্লিখিত সামন্তরিকের দুই বাহুর দৈর্ঘ্য 3cm এবং 4cm হলে, ঐ বৃত্তের ব্যাসার্থ কত?
**Translation:** If the lengths of two adjacent sides of a parallelogram inscribed in a circle are 3 cm and 4 cm, what is the radius of that circle?

#### **Solution:**
A fundamental property of cyclic quadrilaterals (quadrilaterals inscribed in a circle) is that their opposite angles sum to 180°.
A parallelogram is a quadrilateral where opposite angles are equal.

Let the parallelogram be ABCD.
Then `∠A = ∠C` and `∠B = ∠D`.
Since it is also a cyclic quadrilateral:
`∠A + ∠C = 180°`
Substituting `∠A = ∠C`:
`∠A + ∠A = 180°` => `2∠A = 180°` => `∠A = 90°`.

If one angle of a parallelogram is 90°, then all of its angles must be 90°. Therefore, the parallelogram inscribed in a circle must be a **rectangle**.

Let the adjacent sides of the rectangle be `a = 3` cm and `b = 4` cm.
The diagonal of the rectangle will be the diameter of the circle that circumscribes it.

Let the diagonal be `d`. Using the Pythagorean theorem in the right-angled triangle formed by the sides and the diagonal:
`d² = a² + b²`
`d² = 3² + 4²`
`d² = 9 + 16 = 25`
`d = √25 = 5` cm.

The diagonal of the rectangle is the diameter of the circle.
Diameter = 5 cm.

The radius (r) of the circle is half of the diameter.
`r = d / 2 = 5 / 2 = 2.5` cm.

**Answer:** The radius of the circle is **2.5 cm**.

---
### **Question 12**

**Original:** a, b, c, d ক্রমিক সমানুপাতিক এবং x = 10pq / (p+q) যেখানে p ≠ q, হলে, (x+5p)/(x-5p) + (x+5q)/(x-5q) এর মান নির্ণয় করুন।
**Translation:** If a, b, c, d are in continued proportion and x = 10pq / (p+q) where p ≠ q, find the value of (x+5p)/(x-5p) + (x+5q)/(x-5q).

#### **Solution:**
This question contains two separate, unrelated parts. The first part about continued proportion (`a, b, c, d`) is irrelevant to solving the second part. We only need to solve the expression involving `x`.

Given:
`x = 10pq / (p+q)`

We need to find the value of `(x+5p)/(x-5p) + (x+5q)/(x-5q)`.
This problem can be solved by applying **Componendo and Dividendo**.

**Step 1: Work on the first term (x+5p)/(x-5p).**
From the given expression for `x`, let's create the ratio `x / (5p)`.
`x / (5p) = (10pq / (p+q)) / (5p)`
`x / (5p) = (10pq) / (5p(p+q))`
`x / (5p) = 2q / (p+q)`

Now, apply Componendo and Dividendo (`(a+b)/(a-b) = (c+d)/(c-d)`):
`(x+5p)/(x-5p) = (2q + (p+q)) / (2q - (p+q))`
`(x+5p)/(x-5p) = (p + 3q) / (q - p)`  --- (i)

**Step 2: Work on the second term (x+5q)/(x-5q).**
From the given expression for `x`, create the ratio `x / (5q)`.
`x / (5q) = (10pq / (p+q)) / (5q)`
`x / (5q) = (10pq) / (5q(p+q))`
`x / (5q) = 2p / (p+q)`

Apply Componendo and Dividendo:
`(x+5q)/(x-5q) = (2p + (p+q)) / (2p - (p+q))`
`(x+5q)/(x-5q) = (3p + q) / (p - q)` --- (ii)

**Step 3: Add the results from (i) and (ii).**
Expression = `(p + 3q) / (q - p) + (3p + q) / (p - q)`
To get a common denominator, multiply the first term's numerator and denominator by -1:
`= -(p + 3q) / (p - q) + (3p + q) / (p - q)`
`= (-p - 3q + 3p + q) / (p - q)`
`= (2p - 2q) / (p - q)`
`= 2(p - q) / (p - q)`

Since `p ≠ q`, `(p - q)` is not zero, so we can cancel it.
`= 2`

**Answer:** The value of the expression is **2**.

You are right to ask to continue. After a thorough review of the provided "Mathematical Reasoning" paper (`./14.jpg`) and the solutions already provided, one question remains to be solved.

Here is the detailed solution for the final remaining question.

***

### **Question 10**

**Original:** শ্রেণীকক্ষে একটি কাজ একজন শিক্ষার্থী একা অথবা ছাত্র-ছাত্রীর জুটি করতে পারবে বলে শিক্ষক নির্দেশ দিলেন। ছাত্রদের ২/৩ অংশ এবং ছাত্রীদের ৩/৪ অংশ জুটি বেঁধে কাজটি করলো। শ্রেণীর কতভাগ শিক্ষার্থী একা কাজটি করলো?
**Translation:** In a classroom, a teacher instructed that a task could be done either by a single student or by a boy-girl pair. 2/3 of the boys and 3/4 of the girls formed pairs and did the task. What fraction of the class did the task alone?

#### **Solution:**

This is a logical reasoning problem that can be solved using algebra.

**Step 1: Define variables.**
Let `B` be the total number of boys in the class.
Let `G` be the total number of girls in the class.
The total number of students in the class is `T = B + G`.

**Step 2: Establish the key relationship.**
The problem states that pairs are formed between boys and girls. This means that the number of boys who formed pairs must be equal to the number of girls who formed pairs.
*   Number of boys who formed pairs = `(2/3) * B`
*   Number of girls who formed pairs = `(3/4) * G`

Therefore, we can set up the equation:
`(2/3) * B = (3/4) * G`

**Step 3: Find the ratio of boys to girls.**
To solve the equation for the ratio of B to G, we can cross-multiply:
`2 * 4 * B = 3 * 3 * G`
`8B = 9G`
This gives us the ratio `B / G = 9 / 8`.
This means for every 9 boys, there are 8 girls in the class. We can express `B` in terms of `G` (or vice-versa): `B = (9/8)G`.

**Step 4: Calculate the number of students who worked alone.**
*   Number of boys who worked alone = Total boys - Boys in pairs
    `= B - (2/3)B = (1/3)B`
*   Number of girls who worked alone = Total girls - Girls in pairs
    `= G - (3/4)G = (1/4)G`
*   Total students who worked alone = `(1/3)B + (1/4)G`

**Step 5: Calculate the fraction of the class that worked alone.**
The required fraction is: `(Total students who worked alone) / (Total students in the class)`
Fraction = `[(1/3)B + (1/4)G] / (B + G)`

Now, substitute `B = (9/8)G` into this fraction to express everything in terms of `G`:
*   **Numerator:** `(1/3) * (9/8)G + (1/4)G`
    `= (9/24)G + (1/4)G`
    `= (3/8)G + (2/8)G = (5/8)G`
*   **Denominator:** `(9/8)G + G`
    `= (9/8)G + (8/8)G = (17/8)G`

Now, calculate the final fraction:
Fraction = `[(5/8)G] / [(17/8)G]`

We can cancel `G` and the denominator `8` from both the numerator and the denominator.
Fraction = `5 / 17`

**Answer:** **5/17** of the class did the task alone.

