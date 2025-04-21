local RootLib = {}

function RootLib.round(num, decimals)
	local mult = 10 ^ (decimals or 0)
	return math.floor(num * mult + 0.5) / mult
end

function RootLib.sign(num)
	if num < 0 then
		return -1
	elseif num == 0 then
		return 0
	else
		return 1
	end
end

function RootLib.factorial(num)
	if num == 0 then return 1 end
	local result = 1
	for i = 2, num do
		result *= i
	end
	return result
end

function RootLib.average(t)
	local sum = 0
	for _, v in ipairs(t) do
		sum += v
	end
	return sum / #t
end

function RootLib.smoothstep(edge0, edge1, x)
	x = math.clamp((x - edge0) / (edge1 - edge0), 0, 1)
	return x * x * (3 - 2 * x)
end

function RootLib.isEven(n)
	return n % 2 == 0
end

function RootLib.isOdd(n)
	return n % 2 ~= 0
end

function RootLib.distance(x1, y1, x2, y2)
	return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

function RootLib.snapToGrid(num, gridSize)
	return math.floor((num + gridSize / 2) / gridSize) * gridSize
end

function RootLib.between(x, a, b)
	return x >= a and x <= b
end

function RootLib.gcd(a, b)
	while b ~= 0 do
		a, b = b, a % b
	end
	return a
end

function RootLib.lcm(a, b)
	return math.abs(a * b) / RootLib.gcd(a, b)
end

function RootLib.median(t)
	table.sort(t)
	local n = #t
	if n % 2 == 1 then
		return t[math.ceil(n / 2)]
	else
		return (t[n / 2] + t[n / 2 + 1]) / 2
	end
end

function RootLib.mode(t)
	local counts = {}
	for _, v in ipairs(t) do
		counts[v] = (counts[v] or 0) + 1
	end
	local maxCount, modeVal = 0, nil
	for val, count in pairs(counts) do
		if count > maxCount then
			maxCount = count
			modeVal = val
		end
	end
	return modeVal
end

function RootLib.clamp01(num)
	return math.clamp(num, 0, 1)
end

function RootLib.mapRange(value, inMin, inMax, outMin, outMax)
	return (value - inMin) / (inMax - inMin) * (outMax - outMin) + outMin
end

function RootLib.step(edge, x)
	return x < edge and 0 or 1
end

function RootLib.inverseLerp(a, b, v)
	return (v - a) / (b - a)
end

function RootLib.nearestPowerOf2(n)
	return 2 ^ math.floor(math.log(n) / math.log(2) + 0.5)
end

function RootLib.isPowerOf2(n)
	return n > 0 and bit32.band(n, n - 1) == 0
end

function RootLib.wrapAngle(deg)
	return (deg + 180) % 360 - 180
end

function RootLib.normalizeAngle(deg)
	return deg % 360
end

function RootLib.cubeRoot(n)
	return n ^ (1 / 3)
end

function RootLib.sqr(n)
	return n * n
end

function RootLib.quadratic(a, b, c)
	local d = b^2 - 4*a*c
	if d < 0 then return nil end
	local sqrt_d = math.sqrt(d)
	return (-b + sqrt_d) / (2*a), (-b - sqrt_d) / (2*a)
end

function RootLib.remap(x, a1, a2, b1, b2)
	return b1 + (x - a1) * (b2 - b1) / (a2 - a1)
end

function RootLib.isMultiple(n, m)
	return n % m == 0
end

function RootLib.ceilTo(n, m)
	return math.ceil(n / m) * m
end

function RootLib.floorTo(n, m)
	return math.floor(n / m) * m
end

function RootLib.truncate(num, decimals)
	local mult = 10 ^ (decimals or 0)
	return math.floor(num * mult) / mult
end

function RootLib.fract(n)
	return n - math.floor(n)
end

function RootLib.hypot(a, b)
	return math.sqrt(a * a + b * b)
end

function RootLib.deviation(t)
	local avg = RootLib.average(t)
	local sum = 0
	for _, v in ipairs(t) do
		sum += (v - avg)^2
	end
	return math.sqrt(sum / #t)
end

function RootLib.sigmoid(x)
	return 1 / (1 + math.exp(-x))
end

function RootLib.lerpClamped(a, b, t)
	t = math.clamp(t, 0, 1)
	return a + (b - a) * t
end

function RootLib.radiansToTurns(rad)
	return rad / (2 * math.pi)
end

function RootLib.turnsToRadians(turns)
	return turns * 2 * math.pi
end

return RootLib