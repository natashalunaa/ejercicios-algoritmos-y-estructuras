--PRACT2. Natasha Luna.

--act 6. función que toma dos tuplas y calcula su producto escalar.

    --para generalizar uso tipo a, aclaro que es Num para evitar un error
    coordenadas :: Num a => (a,a) -> (a,a) -> a  --perfil de la función
    coordenadas (x1,y1) (x2,y2) = x1 * x2 + y1 * y2

    --otra forma de hacerlo 
    coordenadas2 :: (Int,Int) -> (Int,Int) -> Int  --perfil de la función
    coordenadas2 (a,b)(c,d) = a*c + b*d

--act 7. función que calcula el valor absoluto de un número. definición por casos.
    absoluto :: Int -> Int
    absoluto n  | n == 0 = 0
                | n < 0 = n * (-1)
                | n > 0 = n

--act 8. función que dada una lista de números, retorne la suma de sus elementos. pattern matching.
    sumList:: [Int] -> Int --podría ser sumList :: (Num a) => [a] -> a
    sumList [] = 0
    sumList (x:xs) = x + (sumList xs)

--act 9. función currificada que dado dos números x e y , calcule x elevado a y.
    curri :: Int -> Int -> Int
    curri 0 y = 0
    curri x 0 = 1
    curri x y = x * (curri x (y-1))

--act 10. función que calcula la potencia de 2 usando la función currificada definida en act 9. Es decir 
--        dado el número x, la función debe calcular 2 elevado a x.
    pot :: Int -> Int
    pot y = curri 2 y

--act 11. usando currificación, una función que sume tres números.
    sumTres :: Int -> Int -> Int -> Int
    sumTres x y z = x + y + z

--act 12. función que suma 4 a otros dos números, utilizando la función definida en act 11 .
    addFour :: Int -> Int -> Int
    addFour x y = sumTres 4 x y
