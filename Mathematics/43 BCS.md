Of course. Here are the detailed, step-by-step solutions for all the questions on the provided exam paper.

***

### **1. (a) If x + 1/x = 3, find the value of x⁹ + 1/x⁹.**

**Solution:**
This can be solved by finding `x³ + 1/x³` first.
We know the identity `a³ + b³ = (a+b)(a² - ab + b²) = (a+b)³ - 3ab(a+b)`.
Let `a=x` and `b=1/x`.
$$ x^3 + \frac{1}{x^3} = \left(x + \frac{1}{x}\right)^3 - 3 \cdot x \cdot \frac{1}{x} \left(x + \frac{1}{x}\right) $$
Given `x + 1/x = 3`:
$$ x^3 + \frac{1}{x^3} = (3)^3 - 3(1)(3) = 27 - 9 = 18 $$
Now, we need to find `x⁹ + 1/x⁹`, which is `(x³)³ + (1/x³)³`.
Let `A = x³`. We need to find `A³ + 1/A³`.
Using the same identity again with `A + 1/A = 18`:
$$ \left(x^3\right)^3 + \left(\frac{1}{x^3}\right)^3 = \left(x^3 + \frac{1}{x^3}\right)^3 - 3 \cdot x^3 \cdot \frac{1}{x^3} \left(x^3 + \frac{1}{x^3}\right) $$
$$ x^9 + \frac{1}{x^9} = (18)^3 - 3(1)(18) $$
$$ x^9 + \frac{1}{x^9} = 5832 - 54 = 5778 $$
**Answer: 5778**

---
### **1. (b) If x + y = 1, kx + y = 2 and x + ky = 3, find the value of k.**

**Solution:**
We have a system of three linear equations:
1.  `x + y = 1`
2.  `kx + y = 2`
3.  `x + ky = 3`

Subtract Equation 1 from Equation 2:
`(kx + y) - (x + y) = 2 - 1`
`kx - x = 1`
`x(k - 1) = 1`
So, `x = 1 / (k - 1)` (assuming k ≠ 1)

From Equation 1, `y = 1 - x`. Substitute the expression for `x`:
`y = 1 - 1 / (k - 1) = (k - 1 - 1) / (k - 1) = (k - 2) / (k - 1)`

Now substitute the expressions for `x` and `y` into Equation 3:
`x + ky = 3`
$$ \frac{1}{k-1} + k \left( \frac{k-2}{k-1} \right) = 3 $$
Multiply the entire equation by `(k-1)` to clear the denominator:
`1 + k(k - 2) = 3(k - 1)`
`1 + k² - 2k = 3k - 3`
`k² - 2k - 3k + 1 + 3 = 0`
`k² - 5k + 4 = 0`
Factor the quadratic equation:
`(k - 4)(k - 1) = 0`
This gives two possible values for k: `k = 4` or `k = 1`.
However, our initial expressions for `x` and `y` assumed `k ≠ 1`. If `k=1`, the first two equations become `x+y=1` and `x+y=2`, which is a contradiction. Therefore, `k=1` is not a valid solution.
**Answer: k = 4**

---
### **2. (a) If a = √5 + √3, find the value of (a² + 2) / 2a.**

**Solution:**
First, calculate `a²`:
`a² = (√5 + √3)² = (√5)² + 2(√5)(√3) + (√3)² = 5 + 2√15 + 3 = 8 + 2√15`
Now substitute this into the expression:
$$ \frac{a^2 + 2}{2a} = \frac{(8 + 2\sqrt{15}) + 2}{2(\sqrt{5} + \sqrt{3})} $$
$$ = \frac{10 + 2\sqrt{15}}{2(\sqrt{5} + \sqrt{3})} = \frac{2(5 + \sqrt{15})}{2(\sqrt{5} + \sqrt{3})} $$
$$ = \frac{5 + \sqrt{15}}{\sqrt{5} + \sqrt{3}} $$
We can factor `√5` from the numerator: `5 + √15 = (√5)² + √5√3 = √5(√5 + √3)`
$$ = \frac{\sqrt{5}(\sqrt{5} + \sqrt{3})}{\sqrt{5} + \sqrt{3}} $$
Cancel the common term `(√5 + √3)`:
$$ = \sqrt{5} $$
**Answer: √5**

---
### **2. (b) If P = sinθ, Q = cosθ and PQ = 1/2, what is the value of P + Q?**

**Solution:**
We are given `P = sinθ` and `Q = cosθ`.
We need to find `P + Q = sinθ + cosθ`.
Consider the square of `(P + Q)`:
`(P + Q)² = P² + 2PQ + Q² = (P² + Q²) + 2PQ`
Substitute `P = sinθ` and `Q = cosθ`:
`(sinθ + cosθ)² = (sin²θ + cos²θ) + 2(sinθcosθ)`
We know the trigonometric identity `sin²θ + cos²θ = 1`.
We are given `PQ = sinθcosθ = 1/2`.
So, `(sinθ + cosθ)² = 1 + 2(1/2) = 1 + 1 = 2`
Taking the square root of both sides:
`sinθ + cosθ = ±√2`
Therefore, `P + Q = ±√2`.
**Answer: ±√2**

---
### **3. (a) Factorize: (a - 1)x² + a²xy + (a + 1)y²**
*(Note: There is a likely typo in the original question, which ends with `(a+1)y`. Assuming it should be `(a+1)y²` to be factorizable in this context.)*

**Solution (assuming the term is (a+1)y²):**
We want to factor the quadratic expression `(a - 1)x² + a²xy + (a + 1)y²`.
We look for two terms that add up to the middle coefficient (`a²`) and multiply to the product of the first and last coefficients (`(a-1)(a+1) = a² - 1`).
Let the two terms be `p` and `q`. We need `p+q = a²` and `pq = a² - 1`.
By inspection, the terms are `(a² - 1)` and `1`.
` (a²-1) + 1 = a² ` (Sum)
` (a²-1) * 1 = a² - 1 ` (Product)
Now, we split the middle term `a²xy` using these coefficients:
`= (a - 1)x² + (a² - 1)xy + 1xy + (a + 1)y²`
`= (a - 1)x² + (a - 1)(a + 1)xy + xy + (a + 1)y²`
Group the terms:
`= [(a - 1)x² + (a - 1)(a + 1)xy] + [xy + (a + 1)y²]`
Factor out the common terms from each group:
`= (a - 1)x [x + (a + 1)y] + y [x + (a + 1)y]`
Now, factor out the common binomial term `[x + (a + 1)y]`:
`= (x + (a + 1)y)((a - 1)x + y)`
**Answer: (x + (a + 1)y)((a - 1)x + y)**

---
### **3. (b) Solve: 18yˣ - y²ˣ = 81, 3ˣ = y²**

**Solution:**
We have a system of two equations:
1.  `18yˣ - y²ˣ = 81`
2.  `3ˣ = y²`

Notice that `y²ˣ = (y²)ˣ`. We can substitute `y²` from Equation 2 into this term.
`y²ˣ = (3ˣ)ˣ = 3ˣ²`
Now substitute `y² = 3ˣ` into the term `yˣ`:
`yˣ = (y²)ˣ/² = (3ˣ)ˣ/² = 3ˣ²/²`
Now substitute these new expressions into Equation 1:
`18(3ˣ²/²) - 3ˣ² = 81`
Let `A = 3ˣ²/²`. Then `A² = (3ˣ²/²)² = 3ˣ²`.
The equation becomes a quadratic in `A`:
`18A - A² = 81`
`A² - 18A + 81 = 0`
This is a perfect square trinomial:
`(A - 9)² = 0`
`A - 9 = 0 \implies A = 9`
Now substitute back for `A`:
`3ˣ²/² = 9`
`3ˣ²/² = 3²`
Equating the exponents:
`x²/2 = 2`
`x² = 4`
`x = ±2`

Now we find the corresponding values of `y` using `y² = 3ˣ`:
**Case 1: x = 2**
`y² = 3² = 9 \implies y = ±3`
**Case 2: x = -2**
`y² = 3⁻² = 1/9 \implies y = ±1/3`
**Answer: The solutions (x, y) are (2, 3), (2, -3), (-2, 1/3), and (-2, -1/3).**

---
### **4. Alvi received Tk 6400 as a scholarship and his brother Rakib received some money as a scholarship. They both deposited their money in the same bank for 2 years at a 5% rate of profit. If the difference between simple and compound profit on Rakib's money is Tk 5, how much scholarship did Rakib receive?**

**Solution:**
Let the principal amount Rakib received be `P`.
Rate of profit `r = 5% = 0.05`.
Time `n = 2` years.
The difference between compound interest (CI) and simple interest (SI) for 2 years is given by the formula:
`CI - SI = P(r)²`
We are given that this difference is Tk 5.
`5 = P(0.05)²`
`5 = P(0.0025)`
`P = 5 / 0.0025 = 5 / (25 / 10000) = 5 * 10000 / 25 = 20000 / 25 = 2000`
**Answer: Rakib received Tk 2000 as a scholarship.**

---
### **5. If logₖa/(b-c) = logₖb/(c-a) = logₖc/(a-b), what is the value of aᵃbᵇcᶜ?**
*(Note: There is a typo in the OCR'd problem. The standard version of this problem, and the one that is solvable, has the denominators as b-c, c-a, a-b as corrected here based on the image)*

**Solution:**
Let the common ratio be `M`.
`logₖa / (b-c) = logₖb / (c-a) = logₖc / (a-b) = M`
This gives us three equations:
1. `logₖa = M(b-c)`
2. `logₖb = M(c-a)`
3. `logₖc = M(a-b)`

We need to find the value of `aᵃbᵇcᶜ`. Let's take the logarithm with base `k` of this expression:
`logₖ(aᵃbᵇcᶜ) = logₖ(aᵃ) + logₖ(bᵇ) + logₖ(cᶜ)` (using log product rule)
`= a logₖa + b logₖb + c logₖc` (using log power rule)
Now substitute the expressions from equations 1, 2, and 3:
`= a[M(b-c)] + b[M(c-a)] + c[M(a-b)]`
Factor out the common term `M`:
`= M[a(b-c) + b(c-a) + c(a-b)]`
`= M[ab - ac + bc - ab + ca - cb]`
Combine the terms inside the bracket:
`= M[(ab - ab) + (bc - cb) + (ca - ac)]`
`= M[0] = 0`
So, we have `logₖ(aᵃbᵇcᶜ) = 0`.
To find the value of `aᵃbᵇcᶜ`, we convert this log equation back to exponential form:
`aᵃbᵇcᶜ = k⁰ = 1`
**Answer: 1**

---
### **6. If tanθ = 3/4 and sinθ is negative, prove that (sinθ + cosθ) / (secθ + tanθ) = 14/5.**

**Solution:**
Given `tanθ = 3/4 > 0` and `sinθ < 0`.
The only quadrant where tangent is positive and sine is negative is the **3rd Quadrant**.
Let's find the values of the trigonometric functions using a right triangle. Let opposite = 3, adjacent = 4. Then the hypotenuse `h = √(3² + 4²) = √(9 + 16) = √25 = 5`.
In the 3rd Quadrant:
*   `sinθ` is negative: `sinθ = - (opposite/hypotenuse) = -3/5`
*   `cosθ` is negative: `cosθ = - (adjacent/hypotenuse) = -4/5`
*   `secθ` is negative: `secθ = 1/cosθ = -5/4`
*   `tanθ` is positive: `tanθ = 3/4` (as given)

Now, substitute these values into the Left Hand Side (LHS) of the expression to prove:
`LHS = (sinθ + cosθ) / (secθ + tanθ)`
`LHS = (-3/5 + (-4/5)) / (-5/4 + 3/4)`
`LHS = ((-3-4)/5) / ((-5+3)/4)`
`LHS = (-7/5) / (-2/4) = (-7/5) / (-1/2)`
`LHS = (-7/5) * (-2/1) = 14/5`
LHS = RHS.
**Hence, proved.**

---
### **7. In the expansion of (K - x/3)⁷,**
**(a) If the coefficient of K³ is 560, find the value of x.**
**(b) If the coefficient of x³ is 15 times the coefficient of x⁵, find the value of K.**

**Solution:**
The general term in the binomial expansion of `(a+b)ⁿ` is `T(r+1) = nCr * a^(n-r) * b^r`.
Here, `a=K`, `b=(-x/3)`, `n=7`.
`T(r+1) = ⁷Cᵣ * K^(7-r) * (-x/3)^r = ⁷Cᵣ * K^(7-r) * (-1)^r * (x^r / 3^r)`

**(a) Find x if the coefficient of K³ is 560.**
For the term with `K³`, we need `7-r = 3`, which means `r = 4`.
The coefficient of this term is `⁷C₄ * (-1)⁴ * (x⁴ / 3⁴)`.
`⁷C₄ = 7! / (4!3!) = (7*6*5)/(3*2*1) = 35`.
The coefficient is `35 * 1 * (x⁴ / 81) = 35x⁴ / 81`.
We are given this coefficient is 560.
`35x⁴ / 81 = 560`
`x⁴ = (560 * 81) / 35 = 16 * 81`
`x⁴ = 2⁴ * 3⁴ = (2*3)⁴ = 6⁴`
`x = ±6`
**Answer (a): x = ±6**

Of course. Here is the solution converted into a clear mathematical format.

***

**Find K if the coefficient of x³ is 15 times the coefficient of x⁵ in the expansion of (K - x/3)⁷.**

**Solution:**

The general term, `T_{r+1}`, in the binomial expansion of `(a+b)ⁿ` is given by:
$$ T_{r+1} = \binom{n}{r} a^{n-r} b^r $$
For the expression `(K - x/3)⁷`, we have `a = K`, `b = -x/3`, and `n = 7`.
$$ T_{r+1} = \binom{7}{r} (K)^{7-r} \left(-\frac{x}{3}\right)^r = \binom{7}{r} K^{7-r} (-1)^r \frac{x^r}{3^r} $$
The coefficient of `x^r` is `\binom{7}{r} K^{7-r} \frac{(-1)^r}{3^r}`.

**Step 1: Find the coefficient of x³**
For the term containing `x³`, we set `r = 3`.
The coefficient is:
$$ \text{Coeff(x³)} = \binom{7}{3} K^{7-3} \frac{(-1)^3}{3^3} $$
$$ = \frac{7!}{3!4!} \cdot K^4 \cdot \frac{-1}{27} $$
$$ = 35 \cdot K^4 \cdot \left(-\frac{1}{27}\right) $$
$$ = -\frac{35K^4}{27} $$

**Step 2: Find the coefficient of x⁵**
For the term containing `x⁵`, we set `r = 5`.
The coefficient is:
$$ \text{Coeff(x⁵)} = \binom{7}{5} K^{7-5} \frac{(-1)^5}{3^5} $$
$$ = \frac{7!}{5!2!} \cdot K^2 \cdot \frac{-1}{243} $$
$$ = 21 \cdot K^2 \cdot \left(-\frac{1}{243}\right) $$
$$ = -\frac{21K^2}{243} $$

**Step 3: Set up and solve the equation based on the given condition.**
The condition is: `Coeff(x³) = 15 \times Coeff(x⁵)`
$$ -\frac{35K^4}{27} = 15 \times \left(-\frac{21K^2}{243}\right) $$
Assuming `K ≠ 0`, we can divide both sides by `-K²` (and the negative signs cancel out):
$$ \frac{35K^2}{27} = \frac{15 \times 21}{243} $$
$$ \frac{35K^2}{27} = \frac{315}{243} $$
Now, isolate `K²`:
$$ K^2 = \frac{315}{243} \times \frac{27}{35} $$
We can simplify the numbers before multiplying:
*   `315 / 35 = 9`
*   `243 / 27 = 9`
So, the equation becomes:
$$ K^2 = \frac{9 \times 27}{243} $$
$$ K^2 = \frac{243}{243} $$
$$ K^2 = 1 $$
Taking the square root of both sides:
$$ K = \pm 1 $$

**Answer:** $$ K = \pm 1 $$

---
Of course. Here are the solutions converted into a clear mathematical format.

***

### **8. (a) A(K, 3K), B(K², 2K), C(K-2, K) and D(1,1) are four distinct points. If the line segment AB is parallel to CD, what is the value of K?**

**Solution:**
The condition for two lines to be parallel is that their slopes must be equal. The slope `m` of a line passing through points `(x₁, y₁)` and `(x₂, y₂)` is given by `m = (y₂ - y₁) / (x₂ - x₁)`.

Slope of AB:
$$ m_{AB} = \frac{2K - 3K}{K^2 - K} = \frac{-K}{K(K-1)} = -\frac{1}{K-1} \quad (\text{for } K \neq 0, 1) $$
Slope of CD:
$$ m_{CD} = \frac{1 - K}{1 - (K-2)} = \frac{1 - K}{1 - K + 2} = \frac{1 - K}{3 - K} $$
Set the slopes equal:
$$ m_{AB} = m_{CD} $$
$$ -\frac{1}{K-1} = \frac{1 - K}{3 - K} $$
We can write `-(1/(K-1))` as `1/(1-K)`:
$$ \frac{1}{1-K} = \frac{1 - K}{3 - K} $$
Cross-multiply:
$$ 1 \cdot (3 - K) = (1 - K)(1 - K) $$
$$ 3 - K = (1 - K)^2 $$
$$ 3 - K = 1 - 2K + K^2 $$
Rearrange into a standard quadratic equation `ax² + bx + c = 0`:
$$ K^2 - 2K + K + 1 - 3 = 0 $$
$$ K^2 - K - 2 = 0 $$
Factor the quadratic expression:
$$ (K - 2)(K + 1) = 0 $$
This yields two possible solutions for K:
$$ K = 2 \quad \text{or} \quad K = -1 $$
**Answer:** $$ K = 2 \text{ or } K = -1 $$

---
### **8. (b) The four vertices of a quadrilateral are A(2, -3), B(3, 0), C(0, 1) and D(-1, -2). Find the area of the quadrilateral using the triangle method.**

**Solution:**
The area of a quadrilateral can be found by dividing it into two triangles along a diagonal and summing their areas. We will use the diagonal AC to form `△ABC` and `△ADC`.
The area of a triangle with vertices `(x₁, y₁), (x₂, y₂), (x₃, y₃)` is given by the formula:
$$ \text{Area} = \frac{1}{2} |x_1(y_2 - y_3) + x_2(y_3 - y_1) + x_3(y_1 - y_2)| $$
Area of `△ABC` with vertices A(2, -3), B(3, 0), C(0, 1):
$$ \text{Area}(\triangle ABC) = \frac{1}{2} |2(0 - 1) + 3(1 - (-3)) + 0(-3 - 0)| $$
$$ = \frac{1}{2} |2(-1) + 3(4) + 0| $$
$$ = \frac{1}{2} |-2 + 12| = \frac{1}{2} |10| = 5 \text{ sq. units} $$
Area of `△ADC` with vertices A(2, -3), D(-1, -2), C(0, 1):
$$ \text{Area}(\triangle ADC) = \frac{1}{2} |2(-2 - 1) + (-1)(1 - (-3)) + 0(-3 - (-2))| $$
$$ = \frac{1}{2} |2(-3) - 1(4) + 0| $$
$$ = \frac{1}{2} |-6 - 4| = \frac{1}{2} |-10| = 5 \text{ sq. units} $$
The total area of the quadrilateral ABCD is the sum of the areas of the two triangles:
$$ \text{Area(ABCD)} = \text{Area}(\triangle ABC) + \text{Area}(\triangle ADC) = 5 + 5 = 10 $$
**Answer:** $$ 10 \text{ square units} $$

---
### **9. Prove that the angle bisector of the vertex angle of an isosceles triangle bisects the base and is perpendicular to it.**

**Solution:**
**Given:** `△ABC` is an isosceles triangle with `AB = AC`. `AD` is the bisector of the vertex angle `∠BAC`, so `∠BAD = ∠CAD`.
**To Prove:** (i) `D` is the midpoint of `BC` (i.e., `BD = CD`), and (ii) `AD ⊥ BC`.
**Proof:**
Consider `△ABD` and `△ACD`.
1.  `AB = AC` (Given)
2.  `∠BAD = ∠CAD` (Given, as AD is the angle bisector)
3.  `AD = AD` (Common side)

By the Side-Angle-Side (SAS) congruence criterion, `△ABD ≅ △ACD`.

Since the triangles are congruent, their corresponding parts are equal (CPCTC):
(i) `BD = CD`. This proves that D is the midpoint of BC, meaning `AD` bisects the base.
(ii) `∠ADB = ∠ADC`.

`∠ADB` and `∠ADC` form a linear pair on the straight line BC. Therefore, their sum is 180°.
$$ ∠ADB + ∠ADC = 180^\circ $$
Since `∠ADB = ∠ADC`, we can substitute:
$$ ∠ADB + ∠ADB = 180^\circ $$
$$ 2∠ADB = 180^\circ $$
$$ ∠ADB = 90^\circ $$
This proves that `AD` is perpendicular to `BC`.
**Hence, proved.**

---
### **10. In a classroom, a teacher instructed that a task can be done by a student alone or in a pair of a boy and a girl. 1/3 of the boys and 1/4 of the girls formed pairs to do the task. What fraction of the class did the task alone?**

**Solution:**
Let `B` be the total number of boys and `G` be the total number of girls.
Number of boys who formed pairs = `B/3`.
Number of girls who formed pairs = `G/4`.
Since pairs consist of one boy and one girl, the number of boys in pairs must equal the number of girls in pairs.
$$ \frac{B}{3} = \frac{G}{4} \implies 4B = 3G \implies \frac{B}{G} = \frac{3}{4} $$
The ratio of boys to girls is 3:4. Let `B = 3k` and `G = 4k` for some positive constant `k`.

Total number of students in the class = `B + G = 3k + 4k = 7k`.
Number of students working in pairs:
Number of boys in pairs = `B/3 = (3k)/3 = k`.
Number of girls in pairs = `G/4 = (4k)/4 = k`.
Total students in pairs = `k` boys + `k` girls = `2k`.

Number of students who worked alone = Total students - Students in pairs
$$ = 7k - 2k = 5k $$
The fraction of the class that worked alone is:
$$ \frac{\text{Students who worked alone}}{\text{Total students}} = \frac{5k}{7k} = \frac{5}{7} $$
**Answer:** $$ \frac{5}{7} $$

---
### **11. (a) What is the remainder if 2+12+22+...+2022 is divided by 8?**
*(Assuming the series is the arithmetic progression 2, 12, 22, ..., 2022)*

**Solution:**
The series `S = 2 + 12 + 22 + ... + 2022` is an arithmetic progression.
First term, `a = 2`. Common difference, `d = 10`. Last term, `l = 2022`.
Number of terms `n` is given by `l = a + (n-1)d`:
$$ 2022 = 2 + (n-1)10 \implies 2020 = (n-1)10 \implies 202 = n-1 \implies n = 203 $$
The sum of the series is `S_n = (n/2)(a+l)`:
$$ S = \frac{203}{2}(2 + 2022) = \frac{203}{2}(2024) = 203 \times 1012 $$
We need to find the remainder of `S` when divided by 8, i.e., `S \pmod{8}`.
$$ 203 \times 1012 \pmod{8} $$
Let's find the remainders of the factors separately:
$$ 203 = 25 \times 8 + 3 \implies 203 \equiv 3 \pmod{8} $$
$$ 1012 = 126 \times 8 + 4 \implies 1012 \equiv 4 \pmod{8} $$
So, `S \equiv (3 \times 4) \pmod{8} \equiv 12 \pmod{8}`.
The remainder of 12 when divided by 8 is 4.
**Answer:** $$ 4 $$

---
### **11. (b) The lengths of two sides of a parallelogram inscribed in a circle are 3cm and 4cm. What is the radius of the circle?**

**Solution:**
A parallelogram inscribed in a circle must be a rectangle. This is because opposite angles of a cyclic quadrilateral are supplementary (sum to 180°), and opposite angles of a parallelogram are equal. Therefore, all angles must be 90°.
The sides of the rectangle are given as `l = 4` cm and `w = 3` cm.
The diagonal of the rectangle is a diameter of the circumscribing circle.
Using the Pythagorean theorem, the length of the diagonal `d` is:
$$ d^2 = l^2 + w^2 = 4^2 + 3^2 = 16 + 9 = 25 $$
$$ d = \sqrt{25} = 5 \text{ cm} $$
The diameter of the circle is 5 cm. The radius `r` is half the diameter.
$$ r = \frac{d}{2} = \frac{5}{2} = 2.5 \text{ cm} $$
**Answer:** $$ 2.5 \text{ cm} $$

---
### **12. If x = 10pq/(p+q), where p≠q, find the value of (x+5p)/(x-5p) + (x+5q)/(x-5q).**
*(The preceding information about continued proportion is irrelevant to this part of the problem.)*

**Solution:**
This problem is a direct application of the Componendo and Dividendo rule, which states that if `a/b = c/d`, then `(a+b)/(a-b) = (c+d)/(c-d)`.
Given: `x = 10pq / (p+q)`

**Part 1: Evaluate the first term.**
Rearrange the given equation to isolate `x/(5p)`:
$$ \frac{x}{5p} = \frac{10pq}{5p(p+q)} = \frac{2q}{p+q} $$
Apply Componendo and Dividendo:
$$ \frac{x+5p}{x-5p} = \frac{2q + (p+q)}{2q - (p+q)} = \frac{p+3q}{q-p} \quad \text{--- (i)} $$

**Part 2: Evaluate the second term.**
Rearrange the given equation to isolate `x/(5q)`:
$$ \frac{x}{5q} = \frac{10pq}{5q(p+q)} = \frac{2p}{p+q} $$
Apply Componendo and Dividendo:
$$ \frac{x+5q}{x-5q} = \frac{2p + (p+q)}{2p - (p+q)} = \frac{3p+q}{p-q} \quad \text{--- (ii)} $$

**Part 3: Add the two results.**
$$ \frac{x+5p}{x-5p} + \frac{x+5q}{x-5q} = \frac{p+3q}{q-p} + \frac{3p+q}{p-q} $$
To combine the fractions, note that `q-p = -(p-q)`.
$$ = -\frac{p+3q}{p-q} + \frac{3p+q}{p-q} $$
$$ = \frac{-(p+3q) + (3p+q)}{p-q} $$
$$ = \frac{-p-3q+3p+q}{p-q} $$
$$ = \frac{2p-2q}{p-q} = \frac{2(p-q)}{p-q} $$
Since `p ≠ q`, we can cancel the `(p-q)` term.
$$ = 2 $$
**Answer:** $$ 2 $$