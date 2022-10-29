module ListOfCharacter where
    isEmpty :: [Char] -> Bool

    inverse :: [Char] -> [Char]

    isEmpty lc = null lc

    inverse lc =
        if isEmpty lc then lc
        else reverse lc