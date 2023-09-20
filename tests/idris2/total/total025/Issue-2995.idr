-- see https://github.com/idris-lang/Idris2/issues/2995

%default total

%tcinline
incAll : Stream Nat -> Stream Nat
incAll (x::xs) = S x :: incAll xs

-- %tcinline -- uncomment this, your compiler will hang forever
incAll' : Stream Nat -> Stream Nat
incAll' = \(x::xs) => S x :: incAll' xs

-- %tcinline -- uncomment this, your compiler will hang forever
zs : Stream Nat -> Stream Nat
zs xs = Z :: zs xs

-- %tcinline -- uncomment this, your compiler will hang forever
zs' : Stream Nat
zs' = Z :: zs'