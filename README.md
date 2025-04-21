## RootLib
# RootLib is a lightweight, zero-dependency math utility library for Roblox Lua, designed to provide handy and efficient math functions

## RootLib Documentation:

RootLib.round(num, decimals)
Rounds num to the specified number of decimals.

RootLib.sign(num)
Returns the sign of num (-1, 0, or 1).

RootLib.factorial(num)
Returns the factorial of num.

RootLib.average(t)
Returns the average (mean) of values in table t.

RootLib.smoothstep(edge0, edge1, x)
Returns smooth interpolation between 0 and 1 as x goes from edge0 to edge1.

RootLib.isEven(n)
Returns true if n is even.

RootLib.isOdd(n)
Returns true if n is odd.

RootLib.distance(x1, y1, x2, y2)
Returns the distance between points (x1, y1) and (x2, y2).

RootLib.snapToGrid(num, gridSize)
Snaps num to the nearest multiple of gridSize.

RootLib.between(x, a, b)
Returns true if x is between a and b (inclusive).

RootLib.gcd(a, b)
Returns the greatest common divisor of a and b.

RootLib.lcm(a, b)
Returns the least common multiple of a and b.

RootLib.median(t)
Returns the median value of table t.

RootLib.mode(t)
Returns the most frequent value in table t.

RootLib.clamp01(num)
Clamps num between 0 and 1.

RootLib.mapRange(value, inMin, inMax, outMin, outMax)
Maps value from one range to another.

RootLib.step(edge, x)
Returns 0 if x < edge, otherwise returns 1.

RootLib.inverseLerp(a, b, v)
Returns normalized value (0–1) of v between a and b.

RootLib.nearestPowerOf2(n)
Returns the power of 2 nearest to n.

RootLib.isPowerOf2(n)
Returns true if n is a power of 2.

RootLib.wrapAngle(deg)
Wraps deg to the range [-180, 180).

RootLib.normalizeAngle(deg)
Wraps deg to the range [0, 360).

RootLib.cubeRoot(n)
Returns the cube root of n.

RootLib.sqr(n)
Returns the square of n.

RootLib.quadratic(a, b, c)
Solves the quadratic equation ax² + bx + c = 0. Returns 2 roots or nil if no real solution.

RootLib.remap(x, a1, a2, b1, b2)
Linearly maps x from range [a1, a2] to [b1, b2].

RootLib.isMultiple(n, m)
Returns true if n is a multiple of m.

RootLib.ceilTo(n, m)
Rounds n up to the nearest multiple of m.

RootLib.floorTo(n, m)
Rounds n down to the nearest multiple of m.

RootLib.truncate(num, decimals)
Truncates num to a fixed number of decimals.

RootLib.fract(n)
Returns the fractional part of n.

RootLib.hypot(a, b)
Returns the length of the hypotenuse (sqrt(a² + b²)).

RootLib.deviation(t)
Returns the standard deviation of values in table t.

RootLib.sigmoid(x)
Returns the sigmoid function value of x.

RootLib.lerpClamped(a, b, t)
Returns linear interpolation from a to b with t clamped to [0, 1].

RootLib.radiansToTurns(rad)
Converts radians to turns (1 turn = 2π radians).

RootLib.turnsToRadians(turns)
Converts turns to radians.
