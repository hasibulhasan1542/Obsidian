Here are the solutions to the math problems, presented in a clear, step-by-step format.

***

**Page 1**

**01. (a) If x + 1/x = 5, find the value of x² + 1/x².**

**Solution:**
Given,
$$ x + \frac{1}{x} = 5 $$
Squaring both sides,
$$ \left(x + \frac{1}{x}\right)^2 = 5^2 $$
$$ x^2 + 2 \cdot x \cdot \frac{1}{x} + \left(\frac{1}{x}\right)^2 = 25 $$
$$ x^2 + 2 + \frac{1}{x^2} = 25 $$
$$ x^2 + \frac{1}{x^2} = 25 - 2 $$
$$ x^2 + \frac{1}{x^2} = 23 $$
**Answer: 23**

---

**01. (b) Solve: (x-a)/(x-b) + (x-b)/(x-a) = a/b + b/a**

**Solution:**
Let's rearrange the equation:
$$ \frac{x-a}{x-b} - \frac{b}{a} = \frac{a}{b} - \frac{x-b}{x-a} $$
Combine terms on each side:
$$ \frac{a(x-a) - b(x-b)}{a(x-b)} = \frac{a(x-a) - b(x-b)}{b(x-a)} $$
Let the numerator be `K = a(x-a) - b(x-b)`. The equation is `K / a(x-b) = K / b(x-a)`.
This gives two possibilities:

Case 1: The numerator `K` is zero.
$$ K = a(x-a) - b(x-b) = 0 $$
$$ ax - a^2 - bx + b^2 = 0 $$
$$ x(a-b) = a^2 - b^2 $$
$$ x(a-b) = (a-b)(a+b) $$
$$ x = a+b $$

Case 2: The denominators are equal (assuming `K ≠ 0`).
$$ a(x-b) = b(x-a) $$
$$ ax - ab = bx - ab $$
$$ ax = bx $$
$$ (a-b)x = 0 $$
$$ x = 0 $$
**Answer: The solutions are x = 0 and x = a+b.**

---

**02. (a) If x = 2 + 2^(2/3) + 2^(1/3), find the value of x³ - 6x² + 6x - 2.**

**Solution:**
Given,
$$ x = 2 + 2^{2/3} + 2^{1/3} $$
Rearrange the equation:
$$ x - 2 = 2^{2/3} + 2^{1/3} $$
Cube both sides:
$$ (x - 2)^3 = (2^{2/3} + 2^{1/3})^3 $$
Using the formulas `(a-b)³ = a³-3a²b+3ab²-b³` and `(a+b)³ = a³+b³+3ab(a+b)`:
LHS: `x³ - 6x² + 12x - 8`
RHS:
$$ (2^{2/3})^3 + (2^{1/3})^3 + 3 \cdot 2^{2/3} \cdot 2^{1/3} (2^{2/3} + 2^{1/3}) $$
$$ 2^2 + 2^1 + 3 \cdot 2^{(2/3+1/3)} (x-2) $$
$$ 4 + 2 + 3 \cdot 2^1 (x-2) $$
$$ 6 + 6(x-2) $$
$$ 6 + 6x - 12 = 6x - 6 $$
Now, equate LHS and RHS:
$$ x^3 - 6x^2 + 12x - 8 = 6x - 6 $$
$$ x^3 - 6x^2 + 12x - 6x - 8 + 6 = 0 $$
$$ x^3 - 6x^2 + 6x - 2 = 0 $$
**Answer: 0**

---

**02. (b) If x = tanθ + secθ, prove that sinθ = (x²-1)/(x²+1).**

**Solution:**
Given, `x = tanθ + secθ`
$$ x = \frac{\sin\theta}{\cos\theta} + \frac{1}{\cos\theta} = \frac{1+\sin\theta}{\cos\theta} $$
We need to evaluate `(x²-1)/(x²+1)`.
$$ x^2 = \left(\frac{1+\sin\theta}{\cos\theta}\right)^2 = \frac{(1+\sin\theta)^2}{\cos^2\theta} = \frac{(1+\sin\theta)^2}{1-\sin^2\theta} = \frac{(1+\sin\theta)^2}{(1-\sin\theta)(1+\sin\theta)} = \frac{1+\sin\theta}{1-\sin\theta} $$
Now substitute this into the expression:
$$ \frac{x^2-1}{x^2+1} = \frac{\frac{1+\sin\theta}{1-\sin\theta}-1}{\frac{1+\sin\theta}{1-\sin\theta}+1} $$
Multiply numerator and denominator by `(1-sinθ)`:
$$ \frac{(1+\sin\theta) - (1-\sin\theta)}{(1+\sin\theta) + (1-\sin\theta)} $$
$$ \frac{1+\sin\theta - 1+\sin\theta}{1+\sin\theta + 1-\sin\theta} $$
$$ \frac{2\sin\theta}{2} = \sin\theta $$
**Hence, sinθ = (x²-1)/(x²+1) is proved.**

---

**03. (a) If x/a = y/b = z/c and abc=1, prove that x+y+z=0.**
*(Note: There appears to be a typo in the OCR. The question is likely ax=by=cz=k or something similar, or the condition is a+b+c=0. Assuming `x/a = y/b = z/c = k` and `a+b+c=0` as a common variant of this problem)*
Let's solve the problem as written: `x/a = y/b = z/c` and `abc=1`. Prove `x+y+z=0`. This cannot be proven without more information.
Let's solve what is likely the intended question: If `ax=by=cz` and `1/a + 1/b + 1/c = 1` (a common typo for abc=1), prove `x+y+z=k` is not standard.
Let's solve another common variant: **If aˣ = bʸ = cᶻ and abc=1, prove that 1/x + 1/y + 1/z = 0.**

**Solution (for the probable intended question):**
Let `aˣ = bʸ = cᶻ = k`.
Then, `a = k^(1/x)`, `b = k^(1/y)`, `c = k^(1/z)`.
Given, `abc = 1`.
$$ (k^{1/x}) \cdot (k^{1/y}) \cdot (k^{1/z}) = 1 $$
$$ k^{(1/x + 1/y + 1/z)} = k^0 $$
Equating the exponents:
$$ \frac{1}{x} + \frac{1}{y} + \frac{1}{z} = 0 $$
**This is a standard proof. The question as OCR'd is likely flawed.**

---

**03. (b) 1/(2x+1) + 1/(2x+1)² + 1/(2x+1)³ + ... is an infinite geometric series. If x=1/2, find the common ratio and the 5th term of the series.**

**Solution:**
The series is a geometric progression (GP).
First term `a = 1/(2x+1)`.
Common ratio `r = (Term 2) / (Term 1) = [1/(2x+1)²] / [1/(2x+1)] = 1/(2x+1)`.
Given `x = 1/2`.
Substitute `x=1/2` into the expression for the common ratio:
$$ r = \frac{1}{2(1/2) + 1} = \frac{1}{1+1} = \frac{1}{2} $$
The 5th term of a GP is given by `T₅ = ar⁴`.
First term `a = r = 1/2`.
$$ T_5 = \left(\frac{1}{2}\right) \cdot \left(\frac{1}{2}\right)^4 = \left(\frac{1}{2}\right)^5 = \frac{1}{32} $$
**Answer: The common ratio is 1/2 and the 5th term is 1/32.**

---

**04. (a) In a polling center, a candidate won by getting 55% of the votes of the voters present. He got 11,000 more votes than his only opponent. How many voters were present at the polling center?**

**Solution:**
Let the total number of voters present be `V`.
The winning candidate got 55% of the votes, so `0.55V`.
The opponent got the remaining votes: `100% - 55% = 45%`. So, `0.45V`.
The difference in votes is given as 11,000.
$$ 0.55V - 0.45V = 11,000 $$
$$ 0.10V = 11,000 $$
$$ V = \frac{11,000}{0.10} = 110,000 $$
**Answer: 110,000 voters were present.**

---

**04. (b) A student's score in the first exam was 85. After the third exam, his average score was 87 to 82. (The OCR is confusing, let's assume "his average score went from 87 to 82" or "his average of 3 exams is 82, and of 2 exams was 87"). A more logical interpretation is: The average of the first two exams was 87, and the average of the first three exams is 82. What is the average of the 2nd and 3rd exam results?**

**Solution (based on the logical interpretation):**
Let the scores of the three exams be E₁, E₂, and E₃.
Given, E₁ = 85.
Let's assume the average of the first two exams was 87.
$$ \frac{E_1 + E_2}{2} = 87 $$
$$ 85 + E_2 = 174 \implies E_2 = 174 - 85 = 89 $$
The average of the first three exams is 82.
$$ \frac{E_1 + E_2 + E_3}{3} = 82 $$
$$ E_1 + E_2 + E_3 = 246 $$
$$ 85 + 89 + E_3 = 246 $$
$$ 174 + E_3 = 246 \implies E_3 = 246 - 174 = 72 $$
The average of the 2nd and 3rd exam results is:
$$ \frac{E_2 + E_3}{2} = \frac{89 + 72}{2} = \frac{161}{2} = 80.5 $$
**Answer: The average of the 2nd and 3rd exams is 80.5.**

---

**05. On walking 25 meters towards a tower from a point, the angle of elevation of the top of the tower changes from 30° to 45°. Find the height of the tower.**

**Solution:**
Let the height of the tower be `h` meters.
Let the initial position be C and the final position be D. The foot of the tower is B.
`CD = 25m`. `∠ACB = 30°`, `∠ADB = 45°`.
From `△ADB`:
$$ \tan(45^\circ) = \frac{AB}{DB} = \frac{h}{DB} $$
$$ 1 = \frac{h}{DB} \implies DB = h $$
From `△ACB`:
$$ \tan(30^\circ) = \frac{AB}{CB} = \frac{h}{CD+DB} $$
$$ \frac{1}{\sqrt{3}} = \frac{h}{25+h} $$
$$ 25 + h = h\sqrt{3} $$
$$ 25 = h\sqrt{3} - h = h(\sqrt{3}-1) $$
$$ h = \frac{25}{\sqrt{3}-1} $$
Rationalize the denominator:
$$ h = \frac{25(\sqrt{3}+1)}{(\sqrt{3}-1)(\sqrt{3}+1)} = \frac{25(\sqrt{3}+1)}{3-1} = \frac{25(\sqrt{3}+1)}{2} $$
$$ h = 12.5(\sqrt{3}+1) \approx 12.5(1.732+1) \approx 12.5(2.732) \approx 34.15 $$
**Answer: The height of the tower is 12.5(√3 + 1) meters, or approximately 34.15 meters.**

---

**06. (a) Prove that the area of a triangle is four times the area of the triangle formed by joining the midpoints of its sides.**

**Solution:**
Let `△ABC` be a triangle, and let D, E, F be the midpoints of sides BC, CA, and AB respectively.
By the Midpoint Theorem, a line joining the midpoints of two sides of a triangle is parallel to the third side and half its length.
Therefore, `DE = (1/2)AB`, `EF = (1/2)BC`, `FD = (1/2)AC`.
The triangle `△DEF` has sides that are half the length of the corresponding sides of `△ABC`.
Thus, `△ABC` is similar to `△DEF`.
The ratio of the areas of two similar triangles is equal to the square of the ratio of their corresponding sides.
$$ \frac{\text{Area}(\triangle ABC)}{\text{Area}(\triangle DEF)} = \left(\frac{AB}{DE}\right)^2 = \left(\frac{AB}{(1/2)AB}\right)^2 = \left(2\right)^2 = 4 $$
$$ \text{Area}(\triangle ABC) = 4 \times \text{Area}(\triangle DEF) $$
**Hence, proved.**

---

**06. (b) Prove that the points (-2, -1), (1, 0), (4, 3), and (1, 2) are the vertices of a parallelogram.**

**Solution:**
Let the points be A(-2, -1), B(1, 0), C(4, 3), and D(1, 2).
A quadrilateral is a parallelogram if its diagonals bisect each other. This means the midpoint of diagonal AC must be the same as the midpoint of diagonal BD.
Midpoint of AC:
$$ M_{AC} = \left(\frac{-2+4}{2}, \frac{-1+3}{2}\right) = \left(\frac{2}{2}, \frac{2}{2}\right) = (1, 1) $$
Midpoint of BD:
$$ M_{BD} = \left(\frac{1+1}{2}, \frac{0+2}{2}\right) = \left(\frac{2}{2}, \frac{2}{2}\right) = (1, 1) $$
Since the midpoints of both diagonals are the same point (1, 1), the diagonals bisect each other.
**Therefore, the given points are the vertices of a parallelogram.**

---

**07. Chords AB and CD of a circle with center O intersect at right angles at a point inside the circle. Prove that ∠AOD + ∠BOC = two right angles (180°).**

**Solution:**
Let the chords AB and CD intersect at point P at 90°.
The angle subtended by an arc at the center is double the angle subtended by it at any point on the remaining part of the circle.
Angle subtended by arc AD at the center is `∠AOD`.
Angle subtended by arc AD at point C is `∠ACD`.
So, `∠AOD = 2 * ∠ACD`.
Similarly, for arc BC:
Angle subtended by arc BC at the center is `∠BOC`.
Angle subtended by arc BC at point A is `∠BAC`.
So, `∠BOC = 2 * ∠BAC`.
Now, consider the right-angled triangle `△APC`. The sum of its angles is 180°.
$$ ∠PAC + ∠PCA + ∠APC = 180^\circ $$
We are given `∠APC = 90°`. `∠PAC` is the same as `∠BAC`, and `∠PCA` is the same as `∠ACD`.
$$ ∠BAC + ∠ACD + 90^\circ = 180^\circ $$
$$ ∠BAC + ∠ACD = 90^\circ $$
Substitute the relations from the circle properties:
$$ \frac{1}{2}∠BOC + \frac{1}{2}∠AOD = 90^\circ $$
Multiply the entire equation by 2:
$$ ∠BOC + ∠AOD = 180^\circ $$
**Hence, proved.**

---

**08. A cricket team of 11 players is to be formed from a total of 16 players, including 4 bowlers and 2 wicketkeepers. In how many ways can the team be formed with at least 3 bowlers and at least 1 wicketkeeper?**

**Solution:**
Total players = 16. Team size = 11.
Breakdown: 4 Bowlers (B), 2 Wicketkeepers (WK), 10 Others (O).
Condition: At least 3 B, at least 1 WK.
We list the possible combinations for (Bowlers, Wicketkeepers, Others):

Case 1: 3 Bowlers, 1 Wicketkeeper, 7 Others
Number of ways = `(⁴C₃) * (²C₁) * (¹⁰C₇)`
= `4 * 2 * (10! / (7! * 3!))` = `8 * (10*9*8)/(3*2*1)` = `8 * 120 = 960`

Case 2: 3 Bowlers, 2 Wicketkeepers, 6 Others
Number of ways = `(⁴C₃) * (²C₂) * (¹⁰C₆)`
= `4 * 1 * (10! / (6! * 4!))` = `4 * (10*9*8*7)/(4*3*2*1)` = `4 * 210 = 840`

Case 3: 4 Bowlers, 1 Wicketkeeper, 6 Others
Number of ways = `(⁴C₄) * (²C₁) * (¹⁰C₆)`
= `1 * 2 * 210 = 420`

Case 4: 4 Bowlers, 2 Wicketkeepers, 5 Others
Number of ways = `(⁴C₄) * (²C₂) * (¹⁰C₅)`
= `1 * 1 * (10! / (5! * 5!))` = `(10*9*8*7*6)/(5*4*3*2*1)` = `252`

Total number of ways = Sum of all cases
= `960 + 840 + 420 + 252 = 2472`
**Answer: The team can be formed in 2472 ways.**

***

**Page 2**

**09. A person invested a part of Tk 20,000 at 10% annual profit and the rest at 12% annual profit. After one year, he got a total profit of 10.8% on the total investment. For which rate of profit did he invest how much money?**
*(The OCR is slightly confusing. It asks "for which rate of profit" and "how much". It likely wants the amount invested at each rate.)*

**Solution:**
Let the amount invested at 10% be `x` Tk.
The amount invested at 12% is `(20,000 - x)` Tk.
Total investment = 20,000 Tk.
Overall profit rate = 10.8% = 0.108.
Total profit = `20,000 * 0.108 = 2160` Tk.

The sum of profits from each part equals the total profit:
$$ (x \cdot 10\%) + ((20,000 - x) \cdot 12\%) = 2160 $$
$$ 0.10x + 0.12(20,000 - x) = 2160 $$
$$ 0.10x + 2400 - 0.12x = 2160 $$
$$ 2400 - 2160 = 0.12x - 0.10x $$
$$ 240 = 0.02x $$
$$ x = \frac{240}{0.02} = 12,000 $$
Amount invested at 10% = `x = 12,000` Tk.
Amount invested at 12% = `20,000 - 12,000 = 8,000` Tk.
**Answer: He invested Tk 12,000 at 10% profit and Tk 8,000 at 12% profit.**

---

**10. Three workers can do a job in 12 days. Among the workers, two are twice as fast as the third worker. In how many days can one of the faster workers complete the job alone?**

**Solution:**
Let the rate of work of the third (slower) worker be `r` jobs/day.
The rate of each of the two faster workers is `2r` jobs/day.
The combined rate of the three workers is `r + 2r + 2r = 5r` jobs/day.
They complete the job in 12 days.
Total Work = `Combined Rate * Time`
Total Work = `5r * 12 = 60r` units.
Now, we need to find the time it would take for one faster worker to complete the job alone.
The rate of a faster worker is `2r`.
Time = `Total Work / Rate`
Time = `(60r) / (2r) = 30` days.
**Answer: One of the faster workers can complete the job in 30 days.**

---

**11. A TV observer provided the following information about TV viewers: 60% watch program A, 50% watch B, 50% watch C, 30% watch A & B, 20% watch B & C, 30% watch A & C, and 10% watch none of the programs. Then—**
**(a) What percentage of viewers watch programs A, B, and C?**
**(b) What percentage of viewers watch only two programs?**
**(c) What percentage of viewers watch only program A?**

**Solution:**
Let A, B, C be the sets of viewers watching the respective programs.
P(A)=60%, P(B)=50%, P(C)=50%
P(A∩B)=30%, P(B∩C)=20%, P(A∩C)=30%
P(A'∩B'∩C') = 10% (watch none)
This means `P(A∪B∪C) = 100% - 10% = 90%`.

**(a) Percentage watching A, B, and C:**
Using the principle of inclusion-exclusion:
`P(A∪B∪C) = P(A)+P(B)+P(C) - P(A∩B) - P(B∩C) - P(C∩A) + P(A∩B∩C)`
`90 = 60 + 50 + 50 - 30 - 20 - 30 + P(A∩B∩C)`
`90 = 160 - 80 + P(A∩B∩C)`
`90 = 80 + P(A∩B∩C)`
`P(A∩B∩C) = 10%`
**Answer (a): 10% of viewers watch all three programs.**

**(b) Percentage watching only two programs:**
This is `(P(A∩B) only) + (P(B∩C) only) + (P(C∩A) only)`
`P(A∩B only) = P(A∩B) - P(A∩B∩C) = 30% - 10% = 20%`
`P(B∩C only) = P(B∩C) - P(A∩B∩C) = 20% - 10% = 10%`
`P(C∩A only) = P(C∩A) - P(A∩B∩C) = 30% - 10% = 20%`
Total watching only two = `20% + 10% + 20% = 50%`
**Answer (b): 50% of viewers watch only two programs.**

**(c) Percentage watching only program A:**
`P(A only) = P(A) - P(A∩B only) - P(C∩A only) - P(A∩B∩C)`
`P(A only) = 60% - 20% - 20% - 10% = 10%`
**Answer (c): 10% of viewers watch only program A.**

---

**12. In △ABC, D and E are the midpoints of AB and AC respectively, and the angle bisectors of ∠B and ∠C meet at point O.**
**(a) Prove that DE || BC and DE = ½ BC.**
**(b) Prove that ∠BOC = 90° + ½ ∠A.**

**Solution:**

**(a) Prove that DE || BC and DE = ½ BC.**
This is a direct application of the **Midpoint Theorem**.
**Statement of the Theorem:** The line segment joining the midpoints of any two sides of a triangle is parallel to the third side and equal to half of it.
**Proof:**
In `△ABC`, D and E are the midpoints of sides AB and AC.
Consider the triangles `△ADE` and `△ABC`.
`AD = (1/2)AB` and `AE = (1/2)AC` (since D and E are midpoints).
Therefore, `AD/AB = 1/2` and `AE/AC = 1/2`.
So, `AD/AB = AE/AC`.
Also, `∠DAE = ∠BAC` (common angle).
By the SAS similarity criterion, `△ADE ~ △ABC`.
Since the triangles are similar, their corresponding angles are equal, so `∠ADE = ∠ABC`.
Because these corresponding angles are equal, the line DE is parallel to the line BC.
Also, due to similarity, the ratio of corresponding sides is equal:
`DE/BC = AD/AB = 1/2`
`DE = (1/2) BC`
**Hence, proved.**

**(b) Prove that ∠BOC = 90° + ½ ∠A.**
In `△BOC`, the sum of angles is 180°.
$$ ∠BOC + ∠OBC + ∠OCB = 180^\circ $$
Since BO and CO are the angle bisectors of ∠B and ∠C respectively:
`∠OBC = (1/2)∠B`
`∠OCB = (1/2)∠C`
Substituting these into the equation:
$$ ∠BOC + \frac{1}{2}∠B + \frac{1}{2}∠C = 180^\circ $$
$$ ∠BOC = 180^\circ - \frac{1}{2}(∠B + ∠C) $$
Now, in the main triangle `△ABC`:
`∠A + ∠B + ∠C = 180°`
`∠B + ∠C = 180° - ∠A`
Substitute this expression for `(∠B + ∠C)` into the equation for `∠BOC`:
$$ ∠BOC = 180^\circ - \frac{1}{2}(180^\circ - ∠A) $$
$$ ∠BOC = 180^\circ - 90^\circ + \frac{1}{2}∠A $$
$$ ∠BOC = 90^\circ + \frac{1}{2}∠A $$
**Hence, proved.**