Of course. Here are the solutions to the questions, with all mathematical expressions formatted in math mode.

***

### **Question 1(a)**

**Original:** If $b² - 2\sqrt{6}b + 1 = 0$, then find the value of $b⁵ + \frac{1}{b⁵}$.

#### **Solution:**
Given the equation:
$$b² - 2\sqrt{6}b + 1 = 0$$

Divide the entire equation by $b$ (since $b \neq 0$):
$$b - 2\sqrt{6} + \frac{1}{b} = 0$$
$$b + \frac{1}{b} = 2\sqrt{6}$$

Now, we need to find $b⁵ + \frac{1}{b⁵}$. We can use the identity:
$$b⁵ + \frac{1}{b⁵} = \left(b² + \frac{1}{b²}\right)\left(b³ + \frac{1}{b³}\right) - \left(b + \frac{1}{b}\right)$$

First, let's find $b² + \frac{1}{b²}$:
$$b² + \frac{1}{b²} = \left(b + \frac{1}{b}\right)² - 2$$
$$= (2\sqrt{6})² - 2$$
$$= (4 \cdot 6) - 2 = 24 - 2 = 22$$

Next, let's find $b³ + \frac{1}{b³}$:
$$b³ + \frac{1}{b³} = \left(b + \frac{1}{b}\right)³ - 3(b)\left(\frac{1}{b}\right)\left(b + \frac{1}{b}\right)$$
$$= (2\sqrt{6})³ - 3(2\sqrt{6})$$
$$= (8 \cdot 6\sqrt{6}) - 6\sqrt{6} = 48\sqrt{6} - 6\sqrt{6} = 42\sqrt{6}$$

Now, substitute these values back into the identity for $b⁵ + \frac{1}{b⁵}$:
$$b⁵ + \frac{1}{b⁵} = (22)(42\sqrt{6}) - (2\sqrt{6})$$
$$= 924\sqrt{6} - 2\sqrt{6}$$
$$= 922\sqrt{6}$$

**Answer:** The value of $b⁵ + \frac{1}{b⁵}$ is **$922\sqrt{6}$**.

---

### **Question 1(b)**

**Original:** Find the solution set: $x⁻¹ + b⁻¹ + a⁻¹ = (a + b + x)⁻¹$

#### **Solution:**
The given equation is:
$$\frac{1}{x} + \frac{1}{b} + \frac{1}{a} = \frac{1}{a + b + x}$$

Rearrange the terms to group $x$ terms on one side:
$$\frac{1}{x} - \frac{1}{a + b + x} = -\frac{1}{a} - \frac{1}{b}$$

Find a common denominator for each side:
$$\frac{a + b + x - x}{x(a + b + x)} = -\frac{b + a}{ab}$$
$$\frac{a + b}{x(a + b + x)} = -\frac{a + b}{ab}$$

If $a + b \neq 0$, we can divide both sides by $(a + b)$:
$$\frac{1}{x(a + b + x)} = -\frac{1}{ab}$$

Cross-multiply:
$$ab = -x(a + b + x)$$
$$ab = -ax - bx - x²$$
$$x² + ax + bx + ab = 0$$

Factor by grouping:
$$x(x + a) + b(x + a) = 0$$
$$(x + a)(x + b) = 0$$

This gives two possible solutions:
$x + a = 0 \quad \Rightarrow \quad x = -a$
$x + b = 0 \quad \Rightarrow \quad x = -b$

**Answer:** The solution set is **$\{-a, -b\}$**.

---

### **Question 2(a)**

**Original:** If $\frac{6}{x} = \frac{1}{m} + \frac{1}{n}$, then show that $\frac{x + 3m}{x - 3m} + \frac{x + 3n}{x - 3n} = 2$.

#### **Solution:**
Given:
$$\frac{6}{x} = \frac{1}{m} + \frac{1}{n}$$
$$\frac{6}{x} = \frac{m + n}{mn}$$
$$x = \frac{6mn}{m + n}$$

From this, we can derive $\frac{x}{3m}$ and $\frac{x}{3n}$:
$$\frac{x}{3m} = \frac{6mn / (m + n)}{3m} = \frac{2n}{m + n}$$
$$\frac{x}{3n} = \frac{6mn / (m + n)}{3n} = \frac{2m}{m + n}$$

Now, apply Componendo and Dividendo to each part of the expression we need to prove:
For the first part: $$\frac{x + 3m}{x - 3m} = \frac{2n + (m + n)}{2n - (m + n)} = \frac{m + 3n}{n - m}$$
For the second part: $$\frac{x + 3n}{x - 3n} = \frac{2m + (m + n)}{2m - (m + n)} = \frac{3m + n}{m - n}$$

Now, add the two resulting expressions:
$$\frac{x + 3m}{x - 3m} + \frac{x + 3n}{x - 3n} = \frac{m + 3n}{n - m} + \frac{3m + n}{m - n}$$
$$= -\frac{m + 3n}{m - n} + \frac{3m + n}{m - n}$$
$$= \frac{-m - 3n + 3m + n}{m - n}$$
$$= \frac{2m - 2n}{m - n}$$
$$= \frac{2(m - n)}{m - n} = 2$$

**Answer:** Proved.

---

### **Question 2(b)**

**Original:** If $A = \cos\theta + \sin\theta$ and $B = \cos\theta – \sin\theta$, and if $A = \sqrt{2}\cos\theta$, then prove that $B = \sqrt{2}\sin\theta$.

#### **Solution:**
Given:
$$\cos\theta + \sin\theta = \sqrt{2}\cos\theta$$

To prove:
$$\cos\theta - \sin\theta = \sqrt{2}\sin\theta$$

From the given equation:
$$\sin\theta = \sqrt{2}\cos\theta - \cos\theta$$
$$\sin\theta = (\sqrt{2} - 1)\cos\theta$$

Multiply both sides by $(\sqrt{2} + 1)$:
$$(\sqrt{2} + 1)\sin\theta = (\sqrt{2} + 1)(\sqrt{2} - 1)\cos\theta$$
$$(\sqrt{2} + 1)\sin\theta = (2 - 1)\cos\theta$$
$$(\sqrt{2} + 1)\sin\theta = \cos\theta$$

Rearrange the terms:
$$\sqrt{2}\sin\theta + \sin\theta = \cos\theta$$
$$\cos\theta - \sin\theta = \sqrt{2}\sin\theta$$

**Answer:** Proved.


### **Question 3(a)**

**Original:** If $\cot A – \csc A = \frac{1}{P}$, then prove that $\sec A = \frac{P² + 1}{P² − 1}$.

#### **Solution:**
Given:
$$\cot A – \csc A = \frac{1}{P}$$
$$-(\csc A - \cot A) = \frac{1}{P}$$
$$\csc A - \cot A = -\frac{1}{P} \quad \text{--- (i)}$$

We know the trigonometric identity:
$$\csc²A - \cot²A = 1$$
$$(\csc A - \cot A)(\csc A + \cot A) = 1$$

Substitute the value from (i):
$$(-\frac{1}{P})(\csc A + \cot A) = 1$$
$$\csc A + \cot A = -P \quad \text{--- (ii)}$$

Now, add equation (i) and (ii):
$$(\csc A - \cot A) + (\csc A + \cot A) = -\frac{1}{P} - P$$
$$2\csc A = -\frac{P² + 1}{P}$$
$$\csc A = -\frac{P² + 1}{2P}$$
$$\sin A = -\frac{2P}{P² + 1}$$

Subtract equation (i) from (ii):
$$(\csc A + \cot A) - (\csc A - \cot A) = -P - \left(-\frac{1}{P}\right)$$
$$2\cot A = -P + \frac{1}{P} = \frac{1 - P²}{P}$$
$$\cot A = \frac{1 - P²}{2P}$$

Since $\cot A = \frac{\cos A}{\sin A}$:
$$\cos A = \cot A \cdot \sin A$$
$$\cos A = \left[\frac{1 - P²}{2P}\right] \cdot \left[-\frac{2P}{P² + 1}\right]$$
$$\cos A = -\frac{1 - P²}{P² + 1} = \frac{P² - 1}{P² + 1}$$

Finally, find $\sec A$:
$$\sec A = \frac{1}{\cos A} = \frac{1}{\frac{P² - 1}{P² + 1}} = \frac{P² + 1}{P² - 1}$$

**Answer:** Proved.


### **Question 3(b)**

**Original:** On walking $60$ meters towards a tower, the angle of elevation of its top changes from $45°$ to $60°$. Find the height of the tower.

#### **Solution:**
Let the height of the tower be $h$ meters.
Let the initial distance from the base of the tower be $x$ meters.
The new distance after walking $60$ meters closer is $(x - 60)$ meters.

From the initial position, the angle of elevation is $45°$:
$$\tan(45°) = \frac{h}{x}$$
$$1 = \frac{h}{x} \quad \Rightarrow \quad x = h$$

From the new position, the angle of elevation is $60°$:
$$\tan(60°) = \frac{h}{x - 60}$$
$$\sqrt{3} = \frac{h}{x - 60}$$

Substitute $x = h$ into the second equation:
$$\sqrt{3} = \frac{h}{h - 60}$$
$$\sqrt{3}(h - 60) = h$$
$$\sqrt{3}h - 60\sqrt{3} = h$$
$$\sqrt{3}h - h = 60\sqrt{3}$$
$$h(\sqrt{3} - 1) = 60\sqrt{3}$$
$$h = \frac{60\sqrt{3}}{\sqrt{3} - 1}$$

To rationalize the denominator, multiply the numerator and denominator by $(\sqrt{3} + 1)$:
$$h = \frac{60\sqrt{3}(\sqrt{3} + 1)}{(\sqrt{3} - 1)(\sqrt{3} + 1)}$$
$$h = \frac{60 \cdot 3 + 60\sqrt{3}}{3 - 1}$$
$$h = \frac{180 + 60\sqrt{3}}{2}$$
$$h = 90 + 30\sqrt{3}$$

Using $\sqrt{3} \approx 1.732$:
$$h \approx 90 + 30(1.732) = 90 + 51.96 = 141.96$$

**Answer:** The height of the tower is **$90 + 30\sqrt{3}$** meters (approximately $141.96$ meters).

Of course. Here are the solutions for the remaining questions, with all mathematical expressions formatted in math mode.


### **Question 4(a)**

**Original:** If $U = \{x : x \in Z \text{ and } x² < 100\}$, $A = \{x : x \text{ is a factor of } 6\}$, and $B = \{x : x \in N, x² - 3x + 2 = 0\}$, then show that $(A \cup B)ᶜ = Aᶜ \cap Bᶜ$.

#### **Solution:**
This question asks to prove De Morgan's Law for the given sets.

First, let's list the elements of each set:
*   **U (Universal Set):** $x \in Z$ (integers) and $x² < 100$ means $-10 < x < 10$.
    $U = \{-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9\}$
*   **A (Factors of 6):**
    $A = \{1, 2, 3, 6\}$
*   **B:** $x² - 3x + 2 = 0 \Rightarrow (x-1)(x-2) = 0$. So $x = 1$ or $x = 2$.
    $B = \{1, 2\}$

Now, let's calculate the Left-Hand Side (LHS):
$A \cup B = \{1, 2, 3, 6\} \cup \{1, 2\} = \{1, 2, 3, 6\}$
$(A \cup B)ᶜ = U - (A \cup B)$
$= \{-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 4, 5, 7, 8, 9\}$

Next, let's calculate the Right-Hand Side (RHS):
*   $Aᶜ = U - A = \{-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 4, 5, 7, 8, 9\}$
*   $Bᶜ = U - B = \{-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 3, 4, 5, 6, 7, 8, 9\}$

Now, find the intersection of $Aᶜ$ and $Bᶜ$:
$Aᶜ \cap Bᶜ = \{-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 4, 5, 7, 8, 9\}$

Since LHS = RHS, the statement is proven.
**Answer:** Proved.


### **Question 4(b)**

**Original:** If $P = \frac{xᵃ}{xᵇ}, Q = \frac{xᵇ}{xᶜ}$, and $R = \frac{xᶜ}{xᵃ}$, then show that $(a²+ab+b²)\log P + (b²+bc+c²)\log Q + (c²+ca+a²)\log R = 0$.

#### **Solution:**
First, simplify $P, Q,$ and $R$:
$$P = \frac{xᵃ}{xᵇ} = x^{a-b}$$
$$Q = \frac{xᵇ}{xᶜ} = x^{b-c}$$
$$R = \frac{xᶜ}{xᵃ} = x^{c-a}$$

Now, find $\log P, \log Q,$ and $\log R$:
$$\log P = \log(x^{a-b}) = (a-b)\log x$$
$$\log Q = \log(x^{b-c}) = (b-c)\log x$$
$$\log R = \log(x^{c-a}) = (c-a)\log x$$

Substitute these into the expression for the Left-Hand Side (LHS):
$$LHS = (a²+ab+b²)(a-b)\log x + (b²+bc+c²)(b-c)\log x + (c²+ca+a²)(c-a)\log x$$

Using the algebraic identity $(x-y)(x²+xy+y²) = x³ - y³$:
$$LHS = (a³ - b³)\log x + (b³ - c³)\log x + (c³ - a³)\log x$$
$$LHS = (a³ - b³ + b³ - c³ + c³ - a³)\log x$$
$$LHS = (0) \cdot \log x$$
$$LHS = 0$$

**Answer:** Proved.


### **Question 5(a)**

**Original:** Mr. Khan deposits $1200$ Taka from his salary in the first month and in subsequent months, he deposits $100$ Taka more than the previous month. In how many years will his total deposit be $106200$ Taka?

#### **Solution:**
This is an arithmetic progression.
First term $(a) = 1200$
Common difference $(d) = 100$
Sum of $n$ terms $(S_n) = 106200$
We need to find $n$ (number of months).

The formula for the sum of an arithmetic series is: $S_n = \frac{n}{2} [2a + (n-1)d]$
$$106200 = \frac{n}{2} [2(1200) + (n-1)100]$$
$$106200 = \frac{n}{2} [2400 + 100n - 100]$$
$$106200 = \frac{n}{2} [2300 + 100n]$$
$$106200 = n(1150 + 50n)$$
$$106200 = 1150n + 50n²$$

Divide by $50$:
$$2124 = 23n + n²$$
$$n² + 23n - 2124 = 0$$

We solve this quadratic equation for $n$ using the quadratic formula $n = \frac{-b \pm \sqrt{b² - 4ac}}{2a}$:
$$n = \frac{-23 \pm \sqrt{23² - 4(1)(-2124)}}{2}$$
$$n = \frac{-23 \pm \sqrt{529 + 8496}}{2}$$
$$n = \frac{-23 \pm \sqrt{9025}}{2}$$
$$n = \frac{-23 \pm 95}{2}$$

Since $n$ (number of months) cannot be negative:
$$n = \frac{-23 + 95}{2} = \frac{72}{2} = 36$$

So, it will take $36$ months. To find the number of years:
$$\text{Years} = \frac{36 \text{ months}}{12 \text{ months/year}} = 3 \text{ years}$$

**Answer:** It will take **$3$ years**.


### **Question 6(a)**

**Original:** In a DU admission test with $120$ MCQ questions, $1$ mark is awarded for each correct answer and $0.25$ marks are deducted for each incorrect answer. A candidate answered all questions and scored $65$ marks. How many questions did the candidate answer correctly and incorrectly?

#### **Solution:**
Let $c$ be the number of correct answers.
Let $w$ be the number of wrong answers.

The candidate answered all questions, so:
$$c + w = 120 \quad \Rightarrow \quad w = 120 - c \quad \text{--- (i)}$$

The scoring equation is:
$$(c \cdot 1) - (w \cdot 0.25) = 65$$
$$c - 0.25w = 65 \quad \text{--- (ii)}$$

Substitute equation (i) into (ii):
$$c - 0.25(120 - c) = 65$$
$$c - 30 + 0.25c = 65$$
$$1.25c = 65 + 30$$
$$1.25c = 95$$
$$c = \frac{95}{1.25}$$
$$c = 76$$

Now, find the number of wrong answers:
$$w = 120 - c = 120 - 76 = 44$$

**Answer:** The candidate answered **$76$ questions correctly** and **$44$ questions incorrectly**.


### **Question 8(b)**

**Original:** An item was sold at an $8\%$ loss. If it had been sold for $400$ Taka more, there would have been an $8\%$ profit. What is the cost price of the item?

#### **Solution:**
Let the cost price (CP) of the item be $x$ Taka.

Selling price at an $8\%$ loss = $\text{CP} - 8\% \text{ of CP} = x - 0.08x = 0.92x$
Selling price at an $8\%$ profit = $\text{CP} + 8\% \text{ of CP} = x + 0.08x = 1.08x$

The difference between these two selling prices is given as $400$ Taka.
$$1.08x - 0.92x = 400$$
$$0.16x = 400$$
$$x = \frac{400}{0.16}$$
$$x = 2500$$

**Answer:** The cost price of the item is **$2500$ Taka**.

---

### **Question 9(a)**

**Original:** If $A(3, 4), B(-4, 2), C(6, -1),$ and $D(k, 3)$ are vertices of a quadrilateral ABCD (taken in order), and the area of quadrilateral ABCD is three times the area of triangle ABC, find the value of $k$.

#### **Solution:**
Area of a triangle with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$ is given by:
$$\text{Area} = \frac{1}{2} |x_1(y_2 - y_3) + x_2(y_3 - y_1) + x_3(y_1 - y_2)|$$

**Area of triangle ABC:**
$$A(3, 4), B(-4, 2), C(6, -1)$$
$$\text{Area}(ABC) = \frac{1}{2} |3(2 - (-1)) + (-4)(-1 - 4) + 6(4 - 2)|$$
$$\text{Area}(ABC) = \frac{1}{2} |3(3) - 4(-5) + 6(2)|$$
$$\text{Area}(ABC) = \frac{1}{2} |9 + 20 + 12| = \frac{1}{2} |41| = 20.5 \text{ sq units.}$$

**Area of quadrilateral ABCD:**
$\text{Area}(ABCD) = \text{Area}(ABC) + \text{Area}(ACD)$
Given, $\text{Area}(ABCD) = 3 \cdot \text{Area}(ABC)$
So, $\text{Area}(ABC) + \text{Area}(ACD) = 3 \cdot \text{Area}(ABC)$
$\text{Area}(ACD) = 2 \cdot \text{Area}(ABC)$
$\text{Area}(ACD) = 2 \cdot 20.5 = 41$ sq units.

Now, calculate $\text{Area}(ACD)$ using the formula:
$$A(3, 4), C(6, -1), D(k, 3)$$
$$\text{Area}(ACD) = \frac{1}{2} |3(-1 - 3) + 6(3 - 4) + k(4 - (-1))|$$
$$41 = \frac{1}{2} |3(-4) + 6(-1) + k(5)|$$
$$82 = |-12 - 6 + 5k|$$
$$82 = |-18 + 5k|$$

This gives two possibilities:
1) $-18 + 5k = 82 \quad \Rightarrow \quad 5k = 100 \quad \Rightarrow \quad k = 20$
2) $-18 + 5k = -82 \quad \Rightarrow \quad 5k = -64 \quad \Rightarrow \quad k = -12.8$

Assuming the standard positive orientation for the vertices, we take the positive result.
**Answer:** The value of $k$ is **$20$**.


### **Question 10**

**Original:** In $\triangle ABC$, $D$ and $E$ are the midpoints of sides $AB$ and $AC$ respectively, and the bisectors of $\angle B$ and $\angle C$ meet at point $F$. Prove that: $DE \parallel BC$, $DE = \frac{1}{2}BC$, and $\angle BFC = 90° + \frac{1}{2}\angle A$.

#### **Solution:**
This question has three parts to prove.

**Part 1: Prove $DE \parallel BC$ and $DE = \frac{1}{2}BC$ (Midpoint Theorem)**
*   In $\triangle ABC$, $D$ and $E$ are the midpoints of $AB$ and $AC$.
*   By the Midpoint Theorem, the line segment joining the midpoints of any two sides of a triangle is parallel to the third side and is half the length of the third side.
*   Therefore, **$DE \parallel BC$** and **$DE = \frac{1}{2}BC$**.

**Part 2: Prove $\angle BFC = 90° + \frac{1}{2}\angle A$**
*   In $\triangle BFC$, the sum of angles is $180°$.
    $$\angle FBC + \angle FCB + \angle BFC = 180° \quad \text{--- (i)}$$
*   $F$ is the intersection of the angle bisectors of $\angle B$ and $\angle C$.
    Therefore, $\angle FBC = \frac{1}{2}\angle ABC$ (or $\frac{1}{2}\angle B$) and $\angle FCB = \frac{1}{2}\angle ACB$ (or $\frac{1}{2}\angle C$).
*   Substitute these into equation (i):
    $$\frac{1}{2}\angle B + \frac{1}{2}\angle C + \angle BFC = 180°$$
    $$\angle BFC = 180° - \frac{1}{2}(\angle B + \angle C) \quad \text{--- (ii)}$$
*   In the main triangle $\triangle ABC$, the sum of angles is $180°$.
    $$\angle A + \angle B + \angle C = 180°$$
    $$\angle B + \angle C = 180° - \angle A$$
*   Substitute this into equation (ii):
    $$\angle BFC = 180° - \frac{1}{2}(180° - \angle A)$$
    $$\angle BFC = 180° - 90° + \frac{1}{2}\angle A$$
    $$\angle BFC = 90° + \frac{1}{2}\angle A$$

**Answer:** All parts are proven as required.