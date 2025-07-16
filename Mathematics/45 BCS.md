Of course. Here are the solutions to the questions from the "Mathematical Reasoning" paper.

***

### **Question 1(a)**

**Original:** যদি b² - 2√6b + 1 = 0 হয়, তবে b⁵ + (1/b⁵) এর মান বাহির করুন।
**Translation:** If b² - 2√6b + 1 = 0, then find the value of b⁵ + 1/b⁵.

#### **Solution:**
Given the equation:
`b² - 2√6b + 1 = 0`

Divide the entire equation by `b` (since b≠0):
`b - 2√6 + 1/b = 0`
`b + 1/b = 2√6`

Now, we need to find `b⁵ + 1/b⁵`. We can use the identity:
`b⁵ + 1/b⁵ = (b² + 1/b²)(b³ + 1/b³) - (b + 1/b)`

First, let's find `b² + 1/b²`:
`b² + 1/b² = (b + 1/b)² - 2`
`= (2√6)² - 2`
`= (4 * 6) - 2 = 24 - 2 = 22`

Next, let's find `b³ + 1/b³`:
`b³ + 1/b³ = (b + 1/b)³ - 3(b)(1/b)(b + 1/b)`
`= (2√6)³ - 3(2√6)`
`= (8 * 6√6) - 6√6 = 48√6 - 6√6 = 42√6`

Now, substitute these values back into the identity for `b⁵ + 1/b⁵`:
`b⁵ + 1/b⁵ = (22)(42√6) - (2√6)`
`= 924√6 - 2√6`
`= 922√6`

**Answer:** The value of b⁵ + 1/b⁵ is **922√6**.

---

### **Question 1(b)**

**Original:** সমাধান সেট বাহির করুন: x⁻¹ + b⁻¹ + a⁻¹ = (a + b + x)⁻¹
**Translation:** Find the solution set: x⁻¹ + b⁻¹ + a⁻¹ = (a + b + x)⁻¹

#### **Solution:**
The given equation is:
`1/x + 1/b + 1/a = 1/(a + b + x)`

Rearrange the terms to group `x` terms on one side:
`1/x - 1/(a + b + x) = -1/a - 1/b`

Find a common denominator for each side:
` (a + b + x - x) / (x(a + b + x)) = -(b + a) / (ab) `
` (a + b) / (x(a + b + x)) = -(a + b) / (ab) `

If `a + b ≠ 0`, we can divide both sides by `(a + b)`:
` 1 / (x(a + b + x)) = -1 / (ab) `

Cross-multiply:
`ab = -x(a + b + x)`
`ab = -ax - bx - x²`
`x² + ax + bx + ab = 0`

Factor by grouping:
`x(x + a) + b(x + a) = 0`
`(x + a)(x + b) = 0`

This gives two possible solutions:
`x + a = 0`  =>  `x = -a`
`x + b = 0`  =>  `x = -b`

**Answer:** The solution set is **{-a, -b}**.

---

### **Question 2(a)**

**Original:** যদি 6/x = 1/m + 1/n হয় তবে দেখান যে, (x + 3m)/(x - 3m) + (x + 3n)/(x - 3n) = 2.
**Translation:** If 6/x = 1/m + 1/n, then show that (x + 3m)/(x - 3m) + (x + 3n)/(x - 3n) = 2.

#### **Solution:**
Given:
`6/x = 1/m + 1/n`
`6/x = (m + n) / mn`
`x = 6mn / (m + n)`

From this, we can derive `x / (3m)` and `x / (3n)`:
`x / (3m) = (6mn / (m + n)) / (3m) = 2n / (m + n)`
`x / (3n) = (6mn / (m + n)) / (3n) = 2m / (m + n)`

Now, apply Componendo and Dividendo to each part of the expression we need to prove:
For the first part: `(x + 3m) / (x - 3m) = (2n + (m + n)) / (2n - (m + n)) = (m + 3n) / (n - m)`
For the second part: `(x + 3n) / (x - 3n) = (2m + (m + n)) / (2m - (m + n)) = (3m + n) / (m - n)`

Now, add the two resulting expressions:
`(x + 3m)/(x - 3m) + (x + 3n)/(x - 3n) = (m + 3n) / (n - m) + (3m + n) / (m - n)`
`= -(m + 3n) / (m - n) + (3m + n) / (m - n)`
`= (-m - 3n + 3m + n) / (m - n)`
`= (2m - 2n) / (m - n)`
`= 2(m - n) / (m - n) = 2`

**Answer:** Proved.

---

### **Question 2(b)**

**Original:** A = Cosθ + sinθ, B = cosθ – sinθ দুইটি ত্রিকোণমিতিক রাশি এবং যদি A = √2 cosθ হয়, তবে প্রমাণ করুন যে, B = √2 sinθ.
**Translation:** If A = cosθ + sinθ and B = cosθ – sinθ, and if A = √2 cosθ, then prove that B = √2 sinθ.
*(Note: Based on the structure, the problem appears to be a standard trigonometric identity where `A = √2 cosθ` is a typo for `cosθ + sinθ = √2 cosθ`. The proof proceeds based on this correction.)*

#### **Solution:**
Given:
`cosθ + sinθ = √2 cosθ`

To prove:
`cosθ - sinθ = √2 sinθ`

From the given equation:
`sinθ = √2 cosθ - cosθ`
`sinθ = (√2 - 1)cosθ`

Multiply both sides by `(√2 + 1)`:
`(√2 + 1)sinθ = (√2 + 1)(√2 - 1)cosθ`
`(√2 + 1)sinθ = (2 - 1)cosθ`
`(√2 + 1)sinθ = cosθ`

Rearrange the terms:
`√2 sinθ + sinθ = cosθ`
`cosθ - sinθ = √2 sinθ`

**Answer:** Proved.


### **Question 3(a)**

**Original:** cotA – cosecA = 1/P হলে প্রমাণ করুন secA = (P² + 1)/(P² − 1)
**Translation:** If cotA – cosecA = 1/P, then prove that secA = (P² + 1)/(P² − 1).

#### **Solution:**
Given:
`cotA – cosecA = 1/P`
`-(cosecA - cotA) = 1/P`
`cosecA - cotA = -1/P`  --- (i)

We know the trigonometric identity:
`cosec²A - cot²A = 1`
`(cosecA - cotA)(cosecA + cotA) = 1`

Substitute the value from (i):
`(-1/P)(cosecA + cotA) = 1`
`cosecA + cotA = -P` --- (ii)

Now, add equation (i) and (ii):
`(cosecA - cotA) + (cosecA + cotA) = -1/P - P`
`2cosecA = -(P² + 1)/P`
`cosecA = -(P² + 1)/(2P)`
`sinA = -2P / (P² + 1)`

Subtract equation (i) from (ii):
`(cosecA + cotA) - (cosecA - cotA) = -P - (-1/P)`
`2cotA = -P + 1/P = (1 - P²)/P`
`cotA = (1 - P²)/(2P)`

Since `cotA = cosA / sinA`:
`cosA = cotA * sinA`
`cosA = [(1 - P²)/(2P)] * [-2P / (P² + 1)]`
`cosA = -(1 - P²)/(P² + 1) = (P² - 1)/(P² + 1)`

Finally, find secA:
`secA = 1/cosA = 1 / [(P² - 1)/(P² + 1)] = (P² + 1) / (P² - 1)`

**Answer:** Proved.


### **Question 3(b)**

**Original:** কোনো স্থান থেকে একটি মিনারের দিকে 60 মিটার এগিয়ে আসলে মিনারের শীর্ষ বিন্দুর উন্নতি কোণ 45° থেকে 60° হয়। মিনারটির উচ্চতা নির্ণয় করুন।
**Translation:** On walking 60 meters towards a tower, the angle of elevation of its top changes from 45° to 60°. Find the height of the tower.

#### **Solution:**
Let the height of the tower be `h` meters.
Let the initial distance from the base of the tower be `x` meters.
The new distance after walking 60 meters closer is `(x - 60)` meters.

From the initial position, the angle of elevation is 45°:
`tan(45°) = h / x`
`1 = h / x`  =>  `x = h`

From the new position, the angle of elevation is 60°:
`tan(60°) = h / (x - 60)`
`√3 = h / (x - 60)`

Substitute `x = h` into the second equation:
`√3 = h / (h - 60)`
`√3(h - 60) = h`
`√3h - 60√3 = h`
`√3h - h = 60√3`
`h(√3 - 1) = 60√3`
`h = (60√3) / (√3 - 1)`

To rationalize the denominator, multiply the numerator and denominator by `(√3 + 1)`:
`h = [60√3 * (√3 + 1)] / [(√3 - 1)(√3 + 1)]`
`h = (60 * 3 + 60√3) / (3 - 1)`
`h = (180 + 60√3) / 2`
`h = 90 + 30√3`

Using √3 ≈ 1.732:
`h ≈ 90 + 30(1.732) = 90 + 51.96 = 141.96`

**Answer:** The height of the tower is **90 + 30√3** meters (approximately 141.96 meters).

Of course. Here are the solutions for the remaining questions from the "Mathematical Reasoning" paper.


### **Question 4(a)**

**Original:** যদি U= {x : x ∈ Z এবং x² < 100} এবং A= {x: x, 6 এর উৎপাদক}, B= {x: x ∈ N, x² - 3x + 2 = 0}; তবে দেখান যে, (AUB)ᶜ = Aᶜ ∩ Bᶜ.
**Translation:** If U = {x : x ∈ Z and x² < 100}, A = {x : x is a factor of 6}, and B = {x : x ∈ N, x² - 3x + 2 = 0}, then show that (A ∪ B)ᶜ = Aᶜ ∩ Bᶜ.

#### **Solution:**
This question asks to prove De Morgan's Law for the given sets.

First, let's list the elements of each set:
*   **U (Universal Set):** `x ∈ Z` (integers) and `x² < 100` means `-10 < x < 10`.
    `U = {-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9}`
*   **A (Factors of 6):**
    `A = {1, 2, 3, 6}` (considering only positive factors as is common, though negative factors also exist. The result holds either way).
*   **B:** `x² - 3x + 2 = 0` => `(x-1)(x-2) = 0`. So `x = 1` or `x = 2`.
    `B = {1, 2}`

Now, let's calculate the Left-Hand Side (LHS):
`A ∪ B = {1, 2, 3, 6} ∪ {1, 2} = {1, 2, 3, 6}`
`(A ∪ B)ᶜ = U - (A ∪ B)`
`= {-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 4, 5, 7, 8, 9}`

Next, let's calculate the Right-Hand Side (RHS):
*   `Aᶜ = U - A = {-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 4, 5, 7, 8, 9}`
*   `Bᶜ = U - B = {-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 3, 4, 5, 6, 7, 8, 9}`

Now, find the intersection of Aᶜ and Bᶜ:
`Aᶜ ∩ Bᶜ` is the set of elements common to both Aᶜ and Bᶜ.
`Aᶜ ∩ Bᶜ = {-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 4, 5, 7, 8, 9}`

Since LHS = RHS, the statement is proven.
**Answer:** Proved.


### **Question 4(b)**

**Original:** যদি P = xᵃ/xᵇ, Q = xᵇ/xᶜ এবং R = xᶜ/xᵃ হয়, তবে দেখান যে, logPᵃ²+ab+b² + logQᵇ²+bc+c² + logRᶜ²+ca+a² = 0
**Translation:** If P = xᵃ/xᵇ, Q = xᵇ/xᶜ, and R = xᶜ/xᵃ, then show that logP^(a²+ab+b²) + logQ^(b²+bc+c²) + logR^(c²+ca+a²) = 0.
*(Note: There appears to be a typo in the question. The `log` base is not specified, and the powers are likely exponents of the base, not the log itself. The standard form of this problem is `(a²+ab+b²)logP + ...`. The proof follows this standard interpretation.)*

#### **Solution:**
Let's assume the question meant:
`(a²+ab+b²)logP + (b²+bc+c²)logQ + (c²+ca+a²)logR = 0`

First, simplify P, Q, and R:
`P = xᵃ/xᵇ = x^(a-b)`
`Q = xᵇ/xᶜ = x^(b-c)`
`R = xᶜ/xᵃ = x^(c-a)`

Now, find logP, logQ, and logR (assuming base `x` for simplicity, though any base works):
`logP = log(x^(a-b)) = (a-b)logx`
`logQ = log(x^(b-c)) = (b-c)logx`
`logR = log(x^(c-a)) = (c-a)logx`

Substitute these into the expression:
LHS = `(a²+ab+b²)(a-b)logx + (b²+bc+c²)(b-c)logx + (c²+ca+a²)(c-a)logx`

We use the algebraic identity: `(x-y)(x²+xy+y²) = x³ - y³`.
LHS = `(a³ - b³)logx + (b³ - c³)logx + (c³ - a³)logx`
LHS = `(a³ - b³ + b³ - c³ + c³ - a³)logx`
LHS = `(0) * logx`
LHS = `0`

**Answer:** Proved.


### **Question 5(a)**

**Original:** মিঃ খান তাঁর বেতন থেকে 1200 টাকা প্রথম মাসে জমা করেন এবং পরবর্তী মাসগুলোতে পূর্ববর্তী মাস থেকে 100 টাকা বেশি জমা করেন। কত বৎসরে তাঁর 106200 টাকা জমা হবে?
**Translation:** Mr. Khan deposits 1200 Taka from his salary in the first month and in subsequent months, he deposits 100 Taka more than the previous month. In how many years will his total deposit be 106200 Taka?

#### **Solution:**
This is an arithmetic progression.
First term (a) = 1200
Common difference (d) = 100
Sum of n terms (Sn) = 106200
We need to find n (number of months).

The formula for the sum of an arithmetic series is: `Sn = n/2 * [2a + (n-1)d]`
`106200 = n/2 * [2(1200) + (n-1)100]`
`106200 = n/2 * [2400 + 100n - 100]`
`106200 = n/2 * [2300 + 100n]`
`106200 = n * (1150 + 50n)`
`106200 = 1150n + 50n²`

Divide by 50:
`2124 = 23n + n²`
`n² + 23n - 2124 = 0`

We need to solve this quadratic equation for `n`. Using the quadratic formula `n = [-b ± sqrt(b² - 4ac)] / 2a`:
`n = [-23 ± sqrt(23² - 4(1)(-2124))] / 2`
`n = [-23 ± sqrt(529 + 8496)] / 2`
`n = [-23 ± sqrt(9025)] / 2`
`n = [-23 ± 95] / 2`

Since `n` (number of months) cannot be negative:
`n = (-23 + 95) / 2 = 72 / 2 = 36`

So, it will take 36 months. To find the number of years:
`Years = 36 months / 12 months/year = 3 years`

**Answer:** It will take **3 years**.


### **Question 6(a)**

**Original:** DU ভর্তি পরীক্ষায় 120 টি MCQ প্রশ্নের প্রত্যেকটি সঠিক উত্তরের জন্য 1 নম্বর প্রদান করা হয় এবং প্রত্যেকটি ভুল উত্তরের জন্য .25 নম্বর কর্তন করা হয়। একজন পরীক্ষার্থী সকল প্রশ্নের উত্তর দিয়ে 65 নম্বর প্রাপ্ত হয়েছে। পরীক্ষার্থী কতগুলো সঠিক এবং কতগুলো ভুল উত্তর দিয়েছিল?
**Translation:** In a DU admission test with 120 MCQ questions, 1 mark is awarded for each correct answer and 0.25 marks are deducted for each incorrect answer. A candidate answered all questions and scored 65 marks. How many questions did the candidate answer correctly and incorrectly?

#### **Solution:**
Let `c` be the number of correct answers.
Let `w` be the number of wrong answers.

The candidate answered all questions, so:
`c + w = 120`  => `w = 120 - c`  --- (i)

The scoring equation is:
`(c * 1) - (w * 0.25) = 65`
`c - 0.25w = 65` --- (ii)

Substitute equation (i) into (ii):
`c - 0.25(120 - c) = 65`
`c - 30 + 0.25c = 65`
`1.25c = 65 + 30`
`1.25c = 95`
`c = 95 / 1.25`
`c = 76`

Now, find the number of wrong answers:
`w = 120 - c = 120 - 76 = 44`

**Answer:** The candidate answered **76 questions correctly** and **44 questions incorrectly**.


### **Question 8(b)**

**Original:** একটি দ্রব্য ৪% ক্ষতিতে বিক্রয় করা হলো। দ্রব্যটি আরও ৪০০ টাকা বেশি মূল্যে বিক্রয় করলে ৪% লাভ হতো। দ্রব্যটির ক্রয়মূল্য কত?
**Translation:** An item was sold at an 8% loss. If it had been sold for 400 Taka more, there would have been an 8% profit. What is the cost price of the item?

#### **Solution:**
Let the cost price (CP) of the item be `x` Taka.

Selling price at an 8% loss = `CP - 8% of CP = x - 0.08x = 0.92x`
Selling price at an 8% profit = `CP + 8% of CP = x + 0.08x = 1.08x`

The difference between these two selling prices is given as 400 Taka.
`1.08x - 0.92x = 400`
`0.16x = 400`
`x = 400 / 0.16`
`x = 2500`

**Answer:** The cost price of the item is **2500 Taka**.

---

### **Question 9(a)**

**Original:** যদি A(3, 4) B(-4, 2) C(6, -1) এবং D(K, 3) ধনাত্মক দিক বিবেচনায় বিন্দু হয় এবং ABCD চতুর্ভুজের ক্ষেত্রফল ABC ত্রিভুজের ক্ষেত্রফলের তিনগুণ হয়, তবে K-এর মান বাহির করুন।
**Translation:** If A(3, 4), B(-4, 2), C(6, -1), and D(k, 3) are vertices of a quadrilateral ABCD (taken in order), and the area of quadrilateral ABCD is three times the area of triangle ABC, find the value of k.

#### **Solution:**
Area of a triangle with vertices (x₁, y₁), (x₂, y₂), (x₃, y₃) is given by:
`Area = 1/2 |x₁(y₂ - y₃) + x₂(y₃ - y₁) + x₃(y₁ - y₂)|`

**Area of triangle ABC:**
`A(3, 4), B(-4, 2), C(6, -1)`
`Area(ABC) = 1/2 |3(2 - (-1)) + (-4)(-1 - 4) + 6(4 - 2)|`
`Area(ABC) = 1/2 |3(3) - 4(-5) + 6(2)|`
`Area(ABC) = 1/2 |9 + 20 + 12| = 1/2 |41| = 20.5` sq units.

**Area of quadrilateral ABCD:**
Area(ABCD) = Area(ABC) + Area(ACD)
Given, `Area(ABCD) = 3 * Area(ABC)`
So, `Area(ABC) + Area(ACD) = 3 * Area(ABC)`
`Area(ACD) = 2 * Area(ABC)`
`Area(ACD) = 2 * 20.5 = 41` sq units.

Now, calculate Area(ACD) using the formula:
`A(3, 4), C(6, -1), D(k, 3)`
`Area(ACD) = 1/2 |3(-1 - 3) + 6(3 - 4) + k(4 - (-1))|`
`41 = 1/2 |3(-4) + 6(-1) + k(5)|`
`82 = |-12 - 6 + 5k|`
`82 = |-18 + 5k|`

This gives two possibilities:
1) `-18 + 5k = 82`
   `5k = 100`
   `k = 20`
2) `-18 + 5k = -82`
   `5k = -82 + 18 = -64`
   `k = -64/5 = -12.8`

The problem does not specify that K must be positive, but "ধনাত্মক দিক বিবেচনায়" might imply an orientation. Assuming K is a simple coordinate value, both are possible. However, 20 is a more common type of answer in such problems. Let's re-check the problem statement. If "ধনাত্মক দিক" implies positive orientation, we rely on the sign inside the absolute value. If we assume the order A, C, D gives a positive area: `-18+5k = 82` => `k=20`.

**Answer:** The value of k is **20**.


### **Question 10**

**Original:** ত্রিভুজ ∆ABC এর D ও E যথাক্রমে AB ও AC বাহুর মধ্যবিন্দু এবং ∠B ও ∠C এর সমদ্বিখণ্ডকদ্বয় F বিন্দুতে মিলিত হয়েছে। প্রমাণ করুন যে, DE || BC, DE = ½BC, ∠BFC = 90° + ½∠A
**Translation:** In ΔABC, D and E are the midpoints of sides AB and AC respectively, and the bisectors of ∠B and ∠C meet at point F. Prove that: DE || BC, DE = ½BC, and ∠BFC = 90° + ½∠A.

#### **Solution:**
This question has three parts to prove.

**Part 1: Prove DE || BC and DE = ½BC (Midpoint Theorem)**
*   In ΔABC, D and E are the midpoints of AB and AC.
*   By the Midpoint Theorem, the line segment joining the midpoints of any two sides of a triangle is parallel to the third side and is half the length of the third side.
*   Therefore, `DE || BC` and `DE = ½BC`.

**Part 2: Prove ∠BFC = 90° + ½∠A**
*   In ΔBFC, the sum of angles is 180°.
    `∠FBC + ∠FCB + ∠BFC = 180°` --- (i)
*   F is the intersection of the angle bisectors of ∠B and ∠C.
    Therefore, `∠FBC = ½∠ABC` (or ½∠B) and `∠FCB = ½∠ACB` (or ½∠C).
*   Substitute these into equation (i):
    `½∠B + ½∠C + ∠BFC = 180°`
    `∠BFC = 180° - ½(∠B + ∠C)` --- (ii)
*   In the main triangle ΔABC, the sum of angles is 180°.
    `∠A + ∠B + ∠C = 180°`
    `∠B + ∠C = 180° - ∠A`
*   Substitute this into equation (ii):
    `∠BFC = 180° - ½(180° - ∠A)`
    `∠BFC = 180° - 90° + ½∠A`
    `∠BFC = 90° + ½∠A`

**Answer:** All parts are proven as required.