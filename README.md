# Mathematical Foundations for ML and AI

## Vector and Matrix Norms
### Norms
**Norm**: function used to measure the magnitude of a 
- Norms map vectors to non-negative values
- The norm vector **x** measures the distance from the origin to the point **x**

**Norm Types**
- L<sub>p</sub><br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{p}&space;=&space;\left&space;(&space;\sum_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|^{p}\right&space;)^{\frac{1}{p}}" title="Lp Norm" /></a>
- Eucledean Norm (L<sup>2</sup> norm or ||**x**||): most commonly used norm function.<br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{2}&space;=&space;\left&space;(&space;\sum_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|^{2}\right&space;)^{\frac{1}{2}}" title="Eucledean Norm" /></a>
- L<sup>1</sup>: used in cases where discriminating between small, nonzero values and zero is important. Increases linearly as elements of **x** increase.<br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_{1}&space;=&space;\sum_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|" title="L1 Norm" /></a>
- Max Norm (L<sup>inf</sup>): simplifies to the absolute value of the largest element in the vector. <br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;x&space;\right&space;\|_\infty&space;=&space;max_{i}&space;\left&space;|&space;x_{i}&space;\right&space;|" title="Max Norm" /></a>
- Frobenius Norm: Analogous to L<sup>2</sup> norm for a vector used in matrices.<br>
<img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;A&space;\right&space;\|_F&space;=&space;\sqrt{&space;\sum_{i,j}&space;A_{i,j}^2&space;}" title="Frobenius Norm" /></a>

### Vectors, Matrices, and Tensors in Python