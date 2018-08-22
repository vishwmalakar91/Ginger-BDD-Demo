/*PACT: PACT Name */

Consumer: ""
Provider: ""

@Tag1 @Tag2

Interaction: // Interaction Name
	Given "Address"               
	Upon Receiving "address"
		Method "POST"
		Path "\Address"
		Headers:
			|Key           |Value             |
			|"Content-Type"|"x-www-form-urlencodedn"|
			|"Accept"|"x-www-form-urlencodedn"|
		Body:
			{"ZipCode":"411013"}	
	Will Respond With
		Status "OK"
		Headers:
			|Key           |Value             |
			|"Content-Type"|"x-www-form-urlencoded"|
		Body:
			{"Address": "Magarpatta,Pune"}


			