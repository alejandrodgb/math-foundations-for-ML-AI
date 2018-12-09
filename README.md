# Mathematical Foundations for ML and AI

## Linear Algebra
### Vector and Matrix Norms
**Norm**: function used to measure the magnitude of a 
- Norms map vectors to non-negative values
- The norm vector **x** measures the distance from the origin to the point **x**

**Norm Types**
- L<sub>p</sub><br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{p}&space;=&space;\left&space;(&space;\sum_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|^{p}\right&space;)^{\frac{1}{p}}" title="Lp Norm" />
- Eucledean Norm (L<sup>2</sup> norm or ||**x**||): most commonly used norm function.<br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{2}&space;=&space;\left&space;(&space;\sum_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|^{2}\right&space;)^{\frac{1}{2}}" title="Eucledean Norm" />
- L<sup>1</sup>: used in cases where discriminating between small, nonzero values and zero is important. Increases linearly as elements of **x** increase.<br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{1}&space;=&space;\sum_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|" title="L1 Norm" />
- Max Norm (L<sup>inf</sup>): simplifies to the absolute value of the largest element in the vector. <br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_\infty&space;=&space;max_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|" title="Max Norm" />
- Frobenius Norm: Analogous to L<sup>2</sup> norm for a vector used in matrices.<br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;A&space;\right&space;\|_F&space;=&space;\sqrt{&space;\sum_{i,j}&space;A_{i,j}^2&space;}" title="Frobenius Norm" />

### Vectors, Matrices, and Tensors in Python
See vector_matrices_tensors_in_python.ipynb file

### Special Matrices and Vectors
#### Diagonal Matrices
A matrix is diagonal if the following condition is met:<br>
<img src="https://latex.codecogs.com/gif.latex?D_{i,j}&space;=&space;0&space;for&space;all&space;i&space;\neq&space;j" title="Diagonal Matrices" /></a>

Example of a diagonal matrix: <br>
<img src="https://latex.codecogs.com/gif.latex?\begin{bmatrix}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;2&space;&&space;0\\&space;0&space;&&space;0&space;&&space;3&space;\end{bmatrix}" title="Diagonal Matrix" />

- Multiplying by a diagonal matrix is computational efficient. For *diag(**v**)**x***, we only need to scale each element *x<sub>i</sub>* by *v<sub>i</sub>*<br><img src="https://latex.codecogs.com/gif.latex?\begin{bmatrix}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;2&space;&&space;0\\&space;0&space;&&space;0&space;&&space;3&space;\end{bmatrix}&space;*&space;\begin{bmatrix}&space;1&space;&&space;1&space;&&space;1\\&space;1&space;&&space;1&space;&&space;1\\&space;1&space;&&space;1&space;&&space;1&space;\end{bmatrix}&space;=&space;\begin{bmatrix}&space;1(1)&space;&&space;1(1)&space;&&space;1(1)\\&space;2(1)&space;&&space;2(1)&space;&&space;2(1)\\&space;3(1)&space;&&space;3(1)&space;&&space;3(1)&space;\end{bmatrix}" title="Diagonal Matrix Multiplication" />
- In some cases, computationally efficient algorithms are designed by restricting some matrices to be diagonal
- Diagonal matrices need not be square

#### Symmetric Matrices
Symmetric matrices are matrices equal to their transpose<br>
**A** = **A**<sup>T</sup>

For example:<br>
<img src="https://latex.codecogs.com/gif.latex?\begin{bmatrix}&space;1&space;&&space;2&space;&&space;3\\&space;2&space;&&space;3&space;&&space;4\\&space;3&space;&&space;4&space;&&space;5&space;\end{bmatrix}" title="Symmetric Matrix" />

- Symmetric matrices often arise when the entries are generated by some function of two arguments that does not depend on the order of arguments. Eucledian distance is symmetric, so distance matrices will often be symmetric matrices.

#### Unit Vector
A unit vector is a vector with unit norm: <br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{2}&space;=&space;1" title="Unit Vector" />

A unit vector can be obtained by normalizing any vector.

##### Vector Normalization
Normalization is the process of diving a vector by its magnitude, which produces a unit vector.<br>
<img src="https://latex.codecogs.com/gif.latex?\frac{x}{\left&space;\|&space;x&space;\right&space;\|_{2}}&space;=&space;unit\_vector" title="Vector Normalization" />

#### Orthogonality
A vector **x** and a vector **y** are **orthogonal** to each other if **x** \* **y** = 0

If two vectors are orthogonal and have a nonzero magnitude in a 2D space, they will be at a 90 degree angle to each other.

If two vector are orthogonal and unit vectors, they are **orthonormal**.

Orthogonal matrices are matrices whose rows and columns are mutually orthonormal. This is not commonly used in artificial intelligence.

### Eigenvalues and Eigenvectors
#### Eigendecomposition
Eigendecomposition is breaking mathematical objects into their constituent parts. For example: breaking up integer 10 into its prime factors: 2 and 5. We can conclude that 10 is not divisible by 3 and any product of 10 will also be divisible by 5 and 2.

We can also apply this to matrices to reveal functional properties that are not obvious from the representation of the matrix as an array of elements.

#### Eigenvectors and Eigenvalues
An eigenvector of a square matrix **A** is a nonzero vector **v** such that multiplication by **A** alters only the scale of **v**.<br>
<img src="https://latex.codecogs.com/gif.latex?Av&space;=&space;\lambda&space;v" title="Av = \lambda v" /><br>
where:
- **v** = eigenvector
- <img src="https://latex.codecogs.com/gif.latex?\lambda" title="\lambda" /> = a scalar, the eigenvalue corresponding to **v**

#### Eigendecomposition
If a matrix **A** has *n* linearly independent eigenvectors we ca nform a matrix **V** with one eigenvector per columns, and a vector <img src="https://latex.codecogs.com/gif.latex?\lambda" title="\lambda" /> of all the eigenvalues.

The eigendecomposition of **A** is given by:<br>
<img src="https://latex.codecogs.com/gif.latex?A&space;=&space;V&space;diag(\lambda)V^{-1}" title="Eigendecomposition" />

#### Inverse Matrix
<img src="https://latex.codecogs.com/gif.latex?AA^{-1}=A^{-1}A=I" title="Inverse Matrix" /><br>
where **I** is the identity matrix.

The identity matrix is a square matrix with 1 on the diagonal and 0 elsewhere.<br>
<img src="https://latex.codecogs.com/gif.latex?I&space;=&space;\begin{bmatrix}&space;1&space;&&space;0&space;&&space;0\\&space;0&space;&&space;1&space;&&space;0\\&space;0&space;&&space;0&space;&&space;1&space;\end{bmatrix}" title="Identity Matrix" />

#### Eigendecomposition Properties
- Not every matrix can be decomposed into eigenvalues and eigenvectors.
- A matrix is singular (the inverse does not exist) if any of the eigenvalues are zero.
- A matrix with all positive eigenvalues is called a positive definite.
- A matrix with all positive or zero eigenvalues is positive semidefinite.
- A matrix with all negative eigenvalues is negative definite.
- A matrix with all negative or zero eigenvalues is negative semidefinite.

#### Application of Eigendecomposition
Eigenvalue decomposition is mainly used in principal component analysis (PCA).

PCA is a statistical procedured used to convert a set of observations of possibly correlated variables into a set of values of lineraly uncorrelated variables called principal components.

PCA is used for summarizing or compressing the data.

## Multivariate Calculus
### Introduction to Derivatives
**Definition**<br>
- From a geometric perspective it is the slope of a curve. How much does the line change at that point.
- From a physical concept it is the rate of change

#### Derivative basics
The derivative operator:<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}" title="\frac{d}{dx}" /><br>
where *d* implies derivative and the *x* indicates which variable will the derivative be taken of.

Different notations:<br>
If <img src="https://latex.codecogs.com/gif.latex?y=f(x)" title="Different notations" /> then <img src="https://latex.codecogs.com/gif.latex?\frac{dy}{dx}&space;=&space;\frac{df(x)}{dx}&space;=&space;\frac{d}{dx}f(x)=f'(x)" title="Different notations" />

#### Derivative Rules
- Constant <br>
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}c=0" title="Derivative Rules" />; for example
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}62=0" title="Derivative Rules Example" />
- Power rule<br
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}x^{n}=nx^{n-1}" title="Derivative Rules" />; for example
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}x^{3}=3x^{2}" title="Derivative Rules Example" />
- Multiplication<br>
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}cx^{n}=ncx^{n-1}" title="Derivative Rules" />; for example
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}4x^{3}=4(3)x^{3-1}=12x^2" title="Derivative Rules Example" />
- Sum rule<br>
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}(f(x)+g(x))=\frac{d}{dx}f(x)+\frac{d}{dx}g(x)" title="Derivative Rules" />; for example
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}(4x+2x^{2})=4\frac{d}{dx}x+2\frac{d}{dx}x^{2}=4+4x" title="Derivative Rules Example" />
- Product rule <br>
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}(f(x)g(x))=g(x)\frac{d}{dx}f(x)+f(x)\frac{d}{dx}g(x)" title="Derivative Rules"/>; for example
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}(x^{2}x)=x\frac{d}{dx}x^{2}+x^{2}\frac{d}{dx}x=x(2x)+x^{2}(1)=2x^{2}+x^{2}=3x^2" title="Derivative Rules Example" />
- Chain rule <br>
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}(f(g(x)))=f'(g(x))g'(x)" title="Derivative Rules"/>; for example
<img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}sin(x^{2})=\frac{d}{dx}sin(x^{2})\frac{d}{dx}x^{2}=cos(x^{2})(2x)=2xcos(x^{2})">

#### Partial Derivatives
Used for functions with more than one variable.

Example:

<img src="https://latex.codecogs.com/gif.latex?f(x,y)=3x^{2}y" />

<table>
    <tr>
        <td>1. <img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}" /> and treat <i>y</i> as a constant</td>
        <td>2. <img src="https://latex.codecogs.com/gif.latex?\frac{d}{dy}" /> and treat <i>x</i> as a constant</td>
    </tr>
    <tr>
        <td>
            <img src="https://latex.codecogs.com/gif.latex?\frac{d}{dx}f(x,y)" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=\frac{d}{dx}3x^{2}y" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=3y\frac{d}{dx}x^{2}" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=3y(2x)" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=6xy" />
        </td>
        <td>
            <img src="https://latex.codecogs.com/gif.latex?\frac{d}{dy}f(x,y)" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=\frac{d}{dy}3x^{2}y" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=3x^{2}\frac{d}{dx}y" /><br>
            <img src="https://latex.codecogs.com/gif.latex?=3x^{2}" />
        </td>
    </tr>
</table>

These are the partial derivatives with respect to other variable.

### Introduction to Integration
Integration is used to find the area under the curve. It is the reverse process of differentiation.

<img src="https://latex.codecogs.com/gif.latex?\int&space;f'(x)dx=f(x)+C" />

Where *C* is the constant of integration.

<table>
<caption>Types of Derivatives</caption>
    <tr>
        <th>Indefinite</th>
        <th>Definite</th>
    </tr>
    <tr>
        <td>
            Integrals with no limits<br>
            <img src="https://latex.codecogs.com/gif.latex?\int&space;f(x)dx" />
        </td>
        <td>
            Integrals with limits<br>
            <img src="https://latex.codecogs.com/gif.latex?\int^{a}_{b}&space;f(x)dx" />
        </td>
    </tr>
</table>

#### Integration Rules
- Power Rule<br>
<img src="https://latex.codecogs.com/gif.latex?\int&space;x^{n}dx=\frac{x^{n+1}}{n+1}+C" />; for example
<img src="https://latex.codecogs.com/gif.latex?\int&space;x^{2}dx=\frac{x^{3}}{3}+C" />
- Constants<br>
<img src="https://latex.codecogs.com/gif.latex?\int&space;kdx=kx+C" />; for example
<img src="https://latex.codecogs.com/gif.latex?\int&space;4dx=4x+C" />

#### Evaluating Definite Integrals
<img src="https://latex.codecogs.com/gif.latex?\int^{a}_{b}&space;f(x)dx=f(x)+C" /><br>
(value of <img src="https://latex.codecogs.com/gif.latex?f(x)+C" /> at *x* = *b*)-(value of <img src="https://latex.codecogs.com/gif.latex?f(x)+C" /> at *x*=*a*)<br>
<img src="https://latex.codecogs.com/gif.latex?\int^{a}_{b}&space;f'(x)dx=f(b)-f(a)" /><br>
<img src="https://latex.codecogs.com/gif.latex?\int^{a}_{b}&space;f'(x)dx=f(x)|^{a}_{b}=f(b)-f(a)" />

For example:

<img src="https://latex.codecogs.com/gif.latex?\int^{2}_{0}&space;3x^{2}dx" /><br>
<img src="https://latex.codecogs.com/gif.latex?=3\int^{2}_{0}&space;x^{2}dx" /><br>
<img src="https://latex.codecogs.com/gif.latex?=3\frac{x^{3}}{3}|^{2}_{0}" /><br>
<img src="https://latex.codecogs.com/gif.latex?=x^{3}|^{2}_{0}" /><br>
<img src="https://latex.codecogs.com/gif.latex?=2^{3}-0^{3}" /><br>
So the area under the curve between *x*=0 and *x*=2 is 8.
