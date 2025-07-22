### **Question 1(a)**

**Original:** যদি $x + \frac{1}{x} = 3$ হলে, $x⁹ + \frac{1}{x⁹}$ এর মান নির্ণয় করুন।
**Translation:** If $x + \frac{1}{x} = 3$, then find the value of $x⁹ + \frac{1}{x⁹}$.

#### **Solution:**
We can solve this by recognizing that $x⁹ + \frac{1}{x⁹}$ is a sum of cubes, specifically $(x³)³ + (\frac{1}{x³})³$.
The formula for the sum of cubes is $a³ + b³ = (a + b)³ - 3ab(a + b)$.

First, we need to find the value of $x³ + \frac{1}{x³}$.
Given $x + \frac{1}{x} = 3$.
$$x³ + \frac{1}{x³} = \left(x + \frac{1}{x}\right)³ - 3(x)\left(\frac{1}{x}\right)\left(x + \frac{1}{x}\right)$$
$$= (3)³ - 3(1)(3)$$
$$= 27 - 9$$
$$= 18$$

Now, we can find $x⁹ + \frac{1}{x⁹}$ by treating $x³$ as our new variable. Let $y = x³$. We need to find $y³ + \frac{1}{y³}$, given $y + \frac{1}{y} = 18$.
$$x⁹ + \frac{1}{x⁹} = (x³ + \frac{1}{x³})³ - 3(x³)\left(\frac{1}{x³}\right)\left(x³ + \frac{1}{x³}\right)$$
$$= (18)³ - 3(1)(18)$$
$$= 5832 - 54$$
$$= 5778$$

**Answer:** The value of $x⁹ + \frac{1}{x⁹}$ is **5778**.

---
### **Question 2(a)**

**Original:** $a = \sqrt{5} + \sqrt{3}$ হলে $\frac{a² + 2}{2a}$ এর মান নির্ণয় করুন।
**Translation:** If $a = \sqrt{5} + \sqrt{3}$, then find the value of $\frac{a² + 2}{2a}$.

#### **Solution:**
The expression can be simplified first:
$$\frac{a² + 2}{2a} = \frac{a²}{2a} + \frac{2}{2a} = \frac{a}{2} + \frac{1}{a}$$

We are given $a = \sqrt{5} + \sqrt{3}$.
First, let's find $\frac{1}{a}$:
$$\frac{1}{a} = \frac{1}{\sqrt{5} + \sqrt{3}}$$
To rationalize the denominator, multiply the numerator and denominator by the conjugate $(\sqrt{5} - \sqrt{3})$:
$$\frac{1}{a} = \frac{\sqrt{5} - \sqrt{3}}{(\sqrt{5} + \sqrt{3})(\sqrt{5} - \sqrt{3})}$$
$$\frac{1}{a} = \frac{\sqrt{5} - \sqrt{3}}{5 - 3}$$
$$\frac{1}{a} = \frac{\sqrt{5} - \sqrt{3}}{2}$$

Now, substitute the values into the simplified expression $\frac{a}{2} + \frac{1}{a}$:
Expression = $\frac{\sqrt{5} + \sqrt{3}}{2} + \frac{\sqrt{5} - \sqrt{3}}{2}$
$$= \frac{\sqrt{5} + \sqrt{3} + \sqrt{5} - \sqrt{3}}{2}$$
$$= \frac{2\sqrt{5}}{2}$$
$$= \sqrt{5}$$

**Answer:** The value is **$\sqrt{5}$**.

---
### **Question 2(b)**

**Original:** $P = \sin\theta, Q = \cos\theta$ এবং $PQ = \frac{1}{2}$ হলে, $P + Q$ এর মান কত?
**Translation:** If $P = \sin\theta, Q = \cos\theta$, and $PQ = \frac{1}{2}$, then what is the value of $P + Q$?

#### **Solution:**
We are given:
$P = \sin\theta$
$Q = \cos\theta$
$PQ = \frac{1}{2} \implies \sin\theta \cdot \cos\theta = \frac{1}{2}$

We need to find the value of $P + Q = \sin\theta + \cos\theta$.

Let's consider the algebraic identity: $(P + Q)² = P² + 2PQ + Q²$.
$$(\sin\theta + \cos\theta)² = \sin²\theta + 2(\sin\theta \cdot \cos\theta) + \cos²\theta$$

We know the trigonometric identity $\sin²\theta + \cos²\theta = 1$.
$$(\sin\theta + \cos\theta)² = (\sin²\theta + \cos²\theta) + 2(\sin\theta \cdot \cos\theta)$$
$$(\sin\theta + \cos\theta)² = 1 + 2(PQ)$$

Substitute the given value of $PQ = \frac{1}{2}$:
$$(\sin\theta + \cos\theta)² = 1 + 2 \cdot \left(\frac{1}{2}\right)$$
$$(\sin\theta + \cos\theta)² = 1 + 1 = 2$$

Now, take the square root of both sides:
$$\sin\theta + \cos\theta = \pm\sqrt{2}$$

Since $P + Q = \sin\theta + \cos\theta$, the value is $\pm\sqrt{2}$.

**Answer:** The value of $P + Q$ is **$\pm\sqrt{2}$**.

---
### **Question 3(a)**

**Original:** উৎপাদকে বিশ্লেষণ করুন: $(a - 1)x² + a²xy + (a+1)y²$
**Translation:** Factorize: $(a - 1)x² + a²xy + (a+1)y²$

#### **Solution:**
This is a quadratic expression in terms of $x$ and $y$. We can factor it by splitting the middle term.
The expression is of the form $Ax² + Bxy + Cy²$, where $A = (a-1), B = a², C = (a+1)$.

We need two terms that add up to $B = a²$ and multiply to $AC = (a-1)(a+1) = a²-1$.
Let the coefficients of the two new terms be $m$ and $n$. We need $m+n = a²$ and $mn = a²-1$.
The two numbers are $(a²-1)$ and $1$.
Check sum: $(a²-1) + 1 = a²$. This is correct.

So, we can split the middle term $a²xy$ into $(a² - 1)xy + xy$.
Expression = $(a - 1)x² + (a² - 1)xy + xy + (a + 1)y²$

Now, factor by grouping:
$$= [(a - 1)x² + (a - 1)(a + 1)xy] + [xy + (a + 1)y²]$$
Factor out the common terms from each group:
$$= (a - 1)x [x + (a + 1)y] + y [x + (a + 1)y]$$

Now, we have a common factor $[x + (a + 1)y]$.
$$= [(a - 1)x + y] [x + (a + 1)y]$$

**Answer:** The factored form is **$((a - 1)x + y)(x + (a + 1)y)$**.

---
### **Question 4**

**Original:** আলভী স্কুল থেকে উপবৃত্তি বাবদ ৬৪০০ টাকা এবং তার ভাই রাকিন বৃত্তি বাবদ কিছু টাকা পেল। তারা উভয়েই ৫% হার মুনাফার তাদের প্রাপ্ত টাকা একই ব্যাংকে ২ বছরের জন্য জমা রাখল। রাকিনের টাকার সরল মুনাফা ও চক্রবৃদ্ধি পার্থক্য ৫ টাকা হলে রাকিন কত টাকা বৃত্তি পেয়েছিল?
**Translation:** Alvi received 6400 Taka as a scholarship from school and his brother Rakin received some amount as a scholarship. Both of them deposited their amounts in the same bank for 2 years at an interest rate of 5%. If the difference between the simple interest and compound interest on Rakin's money is 5 Taka, how much scholarship did Rakin receive?

#### **Solution:**
The information about Alvi is irrelevant. We only need to focus on Rakin's investment.

Let the principal amount for Rakin be $P$.
Interest rate ($r$) = $5\% = 0.05$
Time ($t$) = 2 years
Difference between Compound Interest (CI) and Simple Interest (SI) = 5 Taka.

We can use the direct formula for the difference between CI and SI for 2 years:
$$\text{Difference} = P \cdot (r)²$$
$$5 = P \cdot (0.05)²$$
$$5 = P \cdot 0.0025$$
$$P = \frac{5}{0.0025}$$
$$P = 2000$$

**Answer:** Rakin received a scholarship of **2000 Taka**.

---
### **Question 6**

**Original:** $\tan\theta = \frac{3}{4}$ এবং $\sin\theta$ ঋণাত্মক হলে, প্রমাণ করুন যে, $\frac{\sin\theta + \cos\theta}{\sec\theta + \tan\theta} = \frac{14}{5}$
**Translation:** If $\tan\theta = \frac{3}{4}$ and $\sin\theta$ is negative, prove that $\frac{\sin\theta + \cos\theta}{\sec\theta + \tan\theta} = \frac{14}{5}$.

#### **Solution:**
Given $\tan\theta = 3/4$ (positive), $\theta$ must be in either the 1st or 3rd quadrant.
Given $\sin\theta$ is negative, $\theta$ must be in either the 3rd or 4th quadrant.
The only quadrant that satisfies both conditions is the **3rd quadrant**.

In the 3rd quadrant, $\sin\theta$ is negative, $\cos\theta$ is negative, and $\tan\theta$ is positive.

From $\tan\theta = \frac{3}{4} = \frac{\text{Opposite}}{\text{Adjacent}}$, we can form a right-angled triangle with Opposite = 3 and Adjacent = 4.
Hypotenuse = $\sqrt{3² + 4²} = \sqrt{9 + 16} = \sqrt{25} = 5$.

Now, let's find the values of the trigonometric functions with the correct signs for the 3rd quadrant:
*   $\sin\theta = - \frac{\text{Opposite}}{\text{Hypotenuse}} = -\frac{3}{5}$
*   $\cos\theta = - \frac{\text{Adjacent}}{\text{Hypotenuse}} = -\frac{4}{5}$
*   $\sec\theta = \frac{1}{\cos\theta} = \frac{1}{-4/5} = -\frac{5}{4}$
*   $\tan\theta = \frac{3}{4}$ (given)

Now, substitute these values into the expression: $\frac{\sin\theta + \cos\theta}{\sec\theta + \tan\theta}$
**Numerator:**
$$\sin\theta + \cos\theta = \left(-\frac{3}{5}\right) + \left(-\frac{4}{5}\right) = -\frac{7}{5}$$

**Denominator:**
$$\sec\theta + \tan\theta = \left(-\frac{5}{4}\right) + \left(\frac{3}{4}\right) = -\frac{2}{4} = -\frac{1}{2}$$

**Final Calculation:**
Expression = $\frac{\text{Numerator}}{\text{Denominator}}$
$$= \frac{-7/5}{-1/2}$$
$$= \left(-\frac{7}{5}\right) \cdot \left(-\frac{2}{1}\right)$$
$$= \frac{14}{5}$$

**Answer:** Proved.

---
### **Question 11(a)**

**Original:** ২+২২+৩২+......+২০১৮২+২০১৯২ কে ৮ দ্বারা ভাগ করলে ভাগশেষ কত হবে?
**Translation:** What will be the remainder if 2 + 22 + 32 + ... + 20182 + 20192 is divided by 8?
*(Note: The "..." suggests a series, but the terms do not form a standard progression. The most likely interpretation is that it is the sum of the specific numbers listed.)*

#### **Solution:**
We need to find the value of $(2 + 22 + 32 + 20182 + 20192) \pmod{8}$.
Using the property $(a + b) \pmod n = ((a \pmod n) + (b \pmod n)) \pmod n$, we can find the remainder of each term first.

*   $2 \pmod{8} \equiv 2$
*   $22 \pmod{8}$: $22 = 2 \cdot 8 + 6 \implies 22 \equiv 6 \pmod{8}$
*   $32 \pmod{8}$: $32 = 4 \cdot 8 + 0 \implies 32 \equiv 0 \pmod{8}$
*   $20182 \pmod{8}$: We only need to check the last three digits, $182$.
    $182 = 22 \cdot 8 + 6 \implies 182 \equiv 6 \pmod{8}$. So, $20182 \equiv 6 \pmod{8}$.
*   $20192 \pmod{8}$: We check the last three digits, $192$.
    $192 = 24 \cdot 8 + 0 \implies 192 \equiv 0 \pmod{8}$. So, $20192 \equiv 0 \pmod{8}$.

Now, sum the remainders:
Sum of remainders = $2 + 6 + 0 + 6 + 0 = 14$.

Finally, find the remainder of the sum when divided by 8:
$14 \pmod{8} \equiv 6$

**Answer:** The remainder when divided by 8 is **6**.

Of course. Here are the detailed solutions for the final set of questions from the "Mathematical Reasoning" paper.

***

### **Question 1(b)**

**Original:** $x + y = 1, kx + y = 2$ এবং $x + ky = 3$ হলে, k এর মান নির্ণয় করুন।
**Translation:** If $x + y = 1, kx + y = 2$, and $x + ky = 3$, find the value of k.

#### **Solution:**
We have a system of three linear equations with three variables ($x, y, k$). We need to solve for $k$.

From the first equation, $x + y = 1$, we can express $y$ in terms of $x$:
$y = 1 - x$ --- (i)

Now, substitute this expression for $y$ into the second and third equations.

**Substitute into the second equation:**
$$kx + (1 - x) = 2$$
$$kx - x = 2 - 1$$
$$x(k - 1) = 1$$
$$x = \frac{1}{k - 1} \quad \text{--- (ii)}$$

**Substitute into the third equation:**
$$x + k(1 - x) = 3$$
$$x + k - kx = 3$$
$$x - kx = 3 - k$$
$$x(1 - k) = 3 - k$$
$$x = \frac{3 - k}{1 - k} = \frac{-(k - 3)}{-(k - 1)} = \frac{k - 3}{k - 1} \quad \text{--- (iii)}$$

Now we have two expressions for $x$ (from equations ii and iii). We can set them equal to each other to solve for $k$:
$$\frac{1}{k - 1} = \frac{k - 3}{k - 1}$$

Since $k \neq 1$ (otherwise the denominator would be zero), we can multiply both sides by $(k - 1)$:
$$1 = k - 3$$
$$k = 1 + 3$$
$$k = 4$$

**Answer:** The value of k is **4**.

---
### **Question 3(b)**

**Original:** সমাধান করুন: $18yˣ - y²ˣ = 81, 3ˣ = y²$
**Translation:** Solve: $18yˣ - y²ˣ = 81, 3ˣ = y²$

#### **Solution:**
Let's analyze the first equation: $18yˣ - y²ˣ = 81$.
We can rewrite $y^{2x}$ as $(y^x)²$.
Let $A = y^x$. The equation becomes a quadratic equation in terms of $A$:
$$18A - A² = 81$$
$$A² - 18A + 81 = 0$$

This is a perfect square trinomial: $(A - 9)² = 0$.
So, $A - 9 = 0 \implies A = 9$.

Since we let $A = y^x$, we now have:
$y^x = 9$

Now we have a simpler system of equations to solve:
1. $y^x = 9$
2. $3^x = y²$

From equation (2), take the x-th power of both sides:
$(3^x)^x = (y²)^x$
$3^{x²} = y^{2x} = (y^x)²$
Substitute $y^x = 9$ from equation (1):
$3^{x²} = 9² = (3²)² = 3⁴$

From the exponents, we get:
$x² = 4 \implies x = \pm 2$.

**Case 1: $x = 2$**
Substitute $x = 2$ into $3^x = y²$:
$3² = y² \implies 9 = y² \implies y = \pm 3$.
This gives solutions **(2, 3)** and **(2, -3)**.

**Case 2: $x = -2$**
Substitute $x = -2$ into $3^x = y²$:
$3^{-2} = y² \implies \frac{1}{9} = y² \implies y = \pm \frac{1}{3}$.
This gives solutions **(-2, 1/3)** and **(-2, -1/3)**.

**Answer:** The solutions (x, y) are **(2, 3), (2, -3), (-2, 1/3), (-2, -1/3)**.

---
### **Question 5(a)**

**Original:** $\frac{\log_k a}{b-c} = \frac{\log_k b}{c-a} = \frac{\log_k c}{a-b}$ হলে, $a^a b^b c^c$ এর মান কত?
**Translation:** If $\frac{\log_k a}{b-c} = \frac{\log_k b}{c-a} = \frac{\log_k c}{a-b}$, then what is the value of $a^a b^b c^c$?

#### **Solution:**
Let $\frac{\log_k a}{b-c} = \frac{\log_k b}{c-a} = \frac{\log_k c}{a-b} = M$ for some constant $M$.

From this equality, we can express the logarithms in terms of $M$:
*   $\log_k a = M(b - c)$
*   $\log_k b = M(c - a)$
*   $\log_k c = M(a - b)$

Now, we need to find the value of $a^a b^b c^c$. Let's take the logarithm (base k) of this expression.
Let $X = a^a b^b c^c$.
$$\log_k(X) = \log_k(a^a b^b c^c)$$

Using the logarithm product and power rules:
$$\log_k(X) = \log_k(a^a) + \log_k(b^b) + \log_k(c^c)$$
$$\log_k(X) = a \cdot \log_k(a) + b \cdot \log_k(b) + c \cdot \log_k(c)$$

Now, substitute the expressions for the logarithms from above:
$$\log_k(X) = a \cdot M(b - c) + b \cdot M(c - a) + c \cdot M(a - b)$$
Factor out the constant $M$:
$$\log_k(X) = M \cdot [a(b - c) + b(c - a) + c(a - b)]$$
$$\log_k(X) = M \cdot [ab - ac + bc - ab + ac - bc]$$

All the terms inside the bracket cancel out:
$$\log_k(X) = M \cdot [0]$$
$$\log_k(X) = 0$$

Now, convert this logarithmic equation back to exponential form:
$$k⁰ = X$$
$$1 = X$$

So, $a^a b^b c^c = 1$.

**Answer:** The value of $a^a b^b c^c$ is **1**.

---
### **Question 7**

This question has two parts, (a) and (b), each worth 2.5 marks.

#### **(a) $(K - \frac{x}{3})⁷$ এর বিস্তৃতিতে $K³$ এর সহগ 560 হলে, x-এর মান নির্ণয় করুন।**
**Translation:** In the expansion of $(K - \frac{x}{3})⁷$, if the coefficient of $K³$ is 560, find the value of x.

#### **Solution:**
The general term $(T_{r+1})$ in the binomial expansion of $(a + b)ⁿ$ is $C(n, r) \cdot a^{n-r} \cdot b^r$.

Here, $a = K, b = -\frac{x}{3}$, and $n = 7$.
$$T_{r+1} = C(7, r) \cdot K^{7-r} \cdot \left(-\frac{x}{3}\right)^r$$

We are looking for the term with $K³$. This means $7 - r = 3$, so $r = 4$.
The term is $T_{4+1} = T_5$:
$$T_5 = C(7, 4) \cdot K^{7-4} \cdot \left(-\frac{x}{3}\right)⁴$$
$$T_5 = C(7, 4) \cdot K³ \cdot \left(\frac{x⁴}{81}\right)$$

The coefficient of $K³$ is $C(7, 4) \cdot \frac{x⁴}{81}$.
We are given that this coefficient is 560.
$$C(7, 4) \cdot \frac{x⁴}{81} = 560$$

First, calculate $C(7, 4)$:
$C(7, 4) = \frac{7!}{4!3!} = \frac{7 \cdot 6 \cdot 5}{3 \cdot 2 \cdot 1} = 35$.

Now, substitute this value back into the equation:
$$35 \cdot \frac{x⁴}{81} = 560$$
$$\frac{x⁴}{81} = \frac{560}{35} = 16$$
$$x⁴ = 16 \cdot 81$$
$$x⁴ = 2⁴ \cdot 3⁴ = (2 \cdot 3)⁴ = 6⁴$$

So, $x = \pm 6$.

**Answer:** The value of x is **$\pm 6$**.

---
#### **(b) উক্ত রাশিটির বিস্তৃতিতে $x³$ এর সহগ $x⁵$ এর সহগের 15 গুণ হলে, K এর মান নির্ণয় করুন।**
**Translation:** In the expansion of the same expression, if the coefficient of $x³$ is 15 times the coefficient of $x⁵$, find the value of K.

#### **Solution:**
The expression is $(K - \frac{x}{3})⁷$.
General term: $T_{r+1} = C(7, r) \cdot K^{7-r} \cdot (-\frac{x}{3})^r = C(7, r) \cdot K^{7-r} \cdot (-1)^r \cdot \frac{x^r}{3^r}$

**Coefficient of $x³$:**
For $x³$, we need $r = 3$. The coefficient is the part without $x$.
$$\text{Coeff}(x³) = C(7, 3) \cdot K^{7-3} \cdot \frac{(-1)³}{3³} = 35 \cdot K⁴ \cdot \frac{-1}{27} = -\frac{35K⁴}{27}$$

**Coefficient of $x⁵$:**
For $x⁵$, we need $r = 5$.
$$\text{Coeff}(x⁵) = C(7, 5) \cdot K^{7-5} \cdot \frac{(-1)⁵}{3⁵}$$
$C(7, 5) = C(7, 2) = \frac{7 \cdot 6}{2} = 21$.
$$\text{Coeff}(x⁵) = 21 \cdot K² \cdot \frac{-1}{243} = -\frac{21K²}{243} = -\frac{7K²}{81}$$

**Given Condition:**
$$\text{Coeff}(x³) = 15 \cdot \text{Coeff}(x⁵)$$
$$-\frac{35K⁴}{27} = 15 \cdot \left(-\frac{7K²}{81}\right)$$

Assuming $K \neq 0$, we can divide both sides by $-K²$.
$$\frac{35K²}{27} = \frac{15 \cdot 7}{81}$$
$$\frac{35K²}{27} = \frac{105}{81}$$
$$K² = \frac{105}{81} \cdot \frac{27}{35} = \frac{(3 \cdot 35) \cdot 27}{(3 \cdot 27) \cdot 35} = 1$$
$$K² = 1$$
$$K = \pm 1$$

**Answer:** The value of K is **$\pm 1$**.

You are right to ask to continue. After a thorough review of the provided "Mathematical Reasoning" paper (`./14.jpg`) and the solutions already provided, one question remains to be solved.

Here is the detailed solution for the final remaining question.

***

### **Question 10**

**Original:** শ্রেণীকক্ষে একটি কাজ একজন শিক্ষার্থী একা অথবা ছাত্র-ছাত্রীর জুটি করতে পারবে বলে শিক্ষক নির্দেশ দিলেন। ছাত্রদের ২/৩ অংশ এবং ছাত্রীদের ৩/৪ অংশ জুটি বেঁধে কাজটি করলো। শ্রেণীর কতভাগ শিক্ষার্থী একা কাজটি করলো?
**Translation:** In a classroom, a teacher instructed that a task could be done either by a single student or by a boy-girl pair. 2/3 of the boys and 3/4 of the girls formed pairs and did the task. What fraction of the class did the task alone?

#### **Solution:**

This is a logical reasoning problem that can be solved using algebra.

**Step 1: Define variables.**
Let $B$ be the total number of boys in the class.
Let $G$ be the total number of girls in the class.
The total number of students in the class is $T = B + G$.

**Step 2: Establish the key relationship.**
The problem states that pairs are formed between boys and girls. This means that the number of boys who formed pairs must be equal to the number of girls who formed pairs.
*   Number of boys who formed pairs = $\frac{2}{3} \cdot B$
*   Number of girls who formed pairs = $\frac{3}{4} \cdot G$

Therefore, we can set up the equation:
$$\frac{2}{3}B = \frac{3}{4}G$$

**Step 3: Find the ratio of boys to girls.**
To solve the equation for the ratio of B to G, we can cross-multiply:
$$2 \cdot 4 \cdot B = 3 \cdot 3 \cdot G$$
$$8B = 9G$$
This gives us the ratio $\frac{B}{G} = \frac{9}{8}$.
We can express $B$ in terms of $G$: $B = \frac{9}{8}G$.

**Step 4: Calculate the number of students who worked alone.**
*   Number of boys who worked alone = Total boys - Boys in pairs
    $= B - \frac{2}{3}B = \frac{1}{3}B$
*   Number of girls who worked alone = Total girls - Girls in pairs
    $= G - \frac{3}{4}G = \frac{1}{4}G$
*   Total students who worked alone = $\frac{1}{3}B + \frac{1}{4}G$

**Step 5: Calculate the fraction of the class that worked alone.**
The required fraction is: $\frac{\text{Total students who worked alone}}{\text{Total students in the class}}$
$$\text{Fraction} = \frac{\frac{1}{3}B + \frac{1}{4}G}{B + G}$$

Now, substitute $B = \frac{9}{8}G$ into this fraction to express everything in terms of $G$:
*   **Numerator:** $\frac{1}{3} \cdot (\frac{9}{8}G) + \frac{1}{4}G$
    $= \frac{9}{24}G + \frac{1}{4}G = \frac{3}{8}G + \frac{2}{8}G = \frac{5}{8}G$
*   **Denominator:** $\frac{9}{8}G + G$
    $= \frac{9}{8}G + \frac{8}{8}G = \frac{17}{8}G$

Now, calculate the final fraction:
$$\text{Fraction} = \frac{\frac{5}{8}G}{\frac{17}{8}G}$$

We can cancel $G$ and the denominator $8$ from both the numerator and the denominator.
$$\text{Fraction} = \frac{5}{17}$$

**Answer:** **$\frac{5}{17}$** of the class did the task alone.