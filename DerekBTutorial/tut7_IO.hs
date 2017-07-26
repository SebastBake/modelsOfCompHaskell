-- ---------- I/O ----------
 
sayHello = do
	-- Prints the string with a new line
	putStrLn "What's your name: "
	
	-- Gets user input and stores it in name
	name <- getLine
	
	-- $ is used instead of the parentheses
	putStrLn $ "Hello " ++ name
	
-- File IO
-- Write to a file 
writeToFile = do
 
	-- Open the file using WriteMode
	theFile <- openFile "test.txt" WriteMode
	
	-- Put the text in the file
	hPutStrLn theFile ("Random line of text")
	
	-- Close the file
	hClose theFile
	
readFromFile = do
 
	-- Open the file using ReadMode
	theFile2 <- openFile "test.txt" ReadMode
	
	-- Get the contents of the file
	contents <- hGetContents theFile2
	putStr contents
	
	-- Close the file
	hClose theFile2