local tolerance = 10

function isturnback(angle)
	angle = angle % 360
	print("angle: " .. angle)
	return (math.abs(angle - 180) < tolerance)
end

print(isturnback(-180))
print("---------------------------------------")
print(isturnback(-1))
print("---------------------------------------")
print(isturnback(-400))
print("---------------------------------------")
print(isturnback(400))
print("---------------------------------------")
print(isturnback(400  % -360))
