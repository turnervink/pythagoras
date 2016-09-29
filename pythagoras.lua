function checkchar(l)
	if l == "a" then
		local num = 5949
		table.insert(ids, num)
	elseif l == "b" then
		local num = 11
		table.insert(ids, num)
	elseif l == "c" then
		local num = 21
		table.insert(ids, num)
	elseif l == "d" then
		local num = 13
		table.insert(ids, num)
	elseif l == "e" then
		local num = 23
		table.insert(ids, num)
	elseif l == "f" then
		local num = 33
		table.insert(ids, num)
	elseif l == "g" then
		local num = 61
		table.insert(ids, num)
	elseif l == "h" then
		local num = 431
		table.insert(ids, num)
	elseif l == "i" then
		local num = 3321
		table.insert(ids, num)
	elseif l == "j" then
		local num = 541
		table.insert(ids, num)
	elseif l == "k" then
		local num = 101
		table.insert(ids, num)
	elseif l == "l" then
		local num = 102	
		table.insert(ids, num)
	elseif l == "m" then
		local num = 94
		table.insert(ids, num)
	elseif l == "n" then
		local num = 257	
		table.insert(ids, num)
	elseif l == "o" then
		local num = 591	
		table.insert(ids, num)
	elseif l == "p" then
		local num = 88	
		table.insert(ids, num)
	elseif l == "q" then
		local num = 9161
		table.insert(ids, num)	
	elseif l == "r" then
		local num = 99	
		table.insert(ids, num)
	elseif l == "s" then
		local num = 2836
		table.insert(ids, num)	
	elseif l == "t" then
		local num = 758	
		table.insert(ids, num)
	elseif l == "u" then
		local num = 1992
		table.insert(ids, num)	
	elseif l == "v" then
		local num = 7591
		table.insert(ids, num)	
	elseif l == "w" then
		local num = 698	
		table.insert(ids, num)
	elseif l == "x" then
		local num = 2967
		table.insert(ids, num)	
	elseif l == "y" then
		local num = 8494
		table.insert(ids, num)	
	elseif l == "z" then
		local num = 3995
		table.insert(ids, num)	
	else
	end
end

function calculations(id)
	if id == Nan then
		table.insert(nums1, "Nan")
		table.insert(nums2, "Nan")
		do end
	else
		sqrd = math.pow(id, 2)
		math.randomseed( os.time() )
		minus = math.random(1, id-1)
		num2 = sqrd - minus

		table.insert(nums1, sqrd)
		table.insert(nums2, minus)
	end
end

chars = {}
ids = {}
nums1 = {}
nums2 = {}

print(" ")
print("----------------------------------------")
print("PYTHAGORAS CIPHER")
print("ENCODE PROGRAM VER 2.0")
print("CIPHER BY BEN GIESBRECHT AND TURNER VINK")
print("CODE BY TURNER VINK")
print("----------------------------------------")
print(" ")
print("ENTER PHRASE TO ENCODE (A-Z AND LOWERCASE ONLY)")
print("NOTE: NON A-Z CHARACTERS ARE APPENDED TO END OF ENCODED MESSAGE")
print(" ")
io.write("> ")
str = io.read()
print(" ")

len = string.len(str)
ovr = len - 25

for i in string.gmatch(str, "%U") do
	table.insert(chars, i)
	checkchar(chars[i])
end

local c = 1
while c <= len do
	checkchar(chars[c])
	c = c + 1
end

local n = 1
while n <= len do
	calculations(ids[n])
	n = n + 1
end

local p = 1
while p <= len do
	io.write(nums1[p])
	io.write(", ")
	io.write(nums2[p])
	print(" ")
	p = p + 1
end

