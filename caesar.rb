def caesar_cipher(user_string, roll = 0)
	# converts string to an array of ascii code
	char_code = user_string.chars.map { |char| char.ord }

	# shifts the letters forward
	shift = char_code.map do |char|
		# checks to see if it's a letter in the alphabet
		if char >= 97 && char <= 122 && char + roll <= 122 || char >= 65 && char <= 90 && char + roll <= 90
			char + roll
		# checks to see if the letter needs to be rolled back
		elsif char + roll > 122 || char + roll > 90
			char + roll - 26
		else
		# if it's not a letter, it will simply just end up here
			char
		end
	end

	# converts the ascii code back to strings 
	back_to_string = shift.map { |char| char.chr }

	# prints the array as a string
	p back_to_string.join("")
end

caesar_cipher("Za Warudo", 1)