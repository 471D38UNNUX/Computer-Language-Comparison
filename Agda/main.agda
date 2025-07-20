--  agda -c main.agda --ghc-flag=-O3 --ghc-flag=RDTSCP.asm
module main where
open import Agda.Builtin.IO using (IO)
open import Agda.Builtin.Unit using (⊤)
open import Agda.Builtin.String using (String; primShowNat)
open import Agda.Builtin.Nat using (Nat; zero; suc; _*_; _+_; _-_)
open import Agda.Builtin.Int using (Int; primShowInteger)
open import Agda.Builtin.Bool using (Bool; true; false)
open import Agda.Builtin.Float using (Float; primNatToFloat; primFloatMinus; primFloatDiv; primIntToFloat; primFloatPlus)
open import Agda.Builtin.Maybe using (Maybe; just; nothing)
record timespec : Set where
  field
    tv_sec tv_nsec : Int
postulate
  bind                      : ∀ {a b} {A : Set a} {B : Set b} → IO A → (A → IO B) → IO B
  _++_                      : String → String → String
  primNatToInt              : Nat → Int
  primIntToNat              : Int → Nat
  primFloatToNat            : Float → Nat
  _div_                     : Nat → Nat → Nat
  _mod_                     : Nat → Nat → Nat
  _+i_                      : Int → Int → Int
  _-i_                      : Int → Int → Int
  primFloatge               : Float → Float → Bool
  return                    : ∀ {a} {A : Set a} → A → IO A
  putStrLn                  : String → IO ⊤
  formatFloat6              : Float → String
  formatFloat3              : Float → String
  getFileSize               : String → IO (Maybe Nat)
  QueryPerformanceFrequency : IO (Maybe Nat)
  QueryPerformanceCounter   : IO (Maybe Nat)
  rdtscpf                   : IO Nat
  ExitProcess               : Nat → IO ⊤
infixl          1 _>>_
_>>_            : ∀ {a b} {A : Set a} {B : Set b} → IO A → IO B → IO B
_>>_ m n        = bind m (λ _ → n)
_<ᵇ_            : Nat → Nat → Bool
zero <ᵇ zero    = false
zero <ᵇ suc _   = true
suc _ <ᵇ zero   = false
suc a <ᵇ suc b  = a <ᵇ b
{-# TERMINATING #-}
forlr           : Nat → Nat → Nat → (Nat → Nat → IO Nat) → IO Nat
forlr           start end acc f with start <ᵇ end
... | false     = return acc
... | true      =
  bind (f start acc) λ acc' →
  forlr (suc start) end acc' f
if_then_else_   : ∀ {a} {A : Set a} → Bool → A → A → A
if true  then   t else f = t
if false then   t else f = f
KB : Float
KB = primNatToFloat 1024
MB : Float
MB = primNatToFloat (1024 * 1024)
GB : Float
GB = primNatToFloat (1024 * 1024 * 1024)
{-# FOREIGN GHC import qualified Data.Text.IO #-}
{-# FOREIGN GHC import qualified FFI #-}
{-# COMPILE GHC bind = \_ _ _ _ m f -> m >>= f #-}
{-# COMPILE GHC _++_ = Data.Text.append #-}
{-# COMPILE GHC primNatToInt = fromIntegral #-}
{-# COMPILE GHC primIntToNat = \x -> max 0 x #-}
{-# COMPILE GHC primFloatToNat = \x -> max 0 (floor x) #-}
{-# COMPILE GHC _div_ = \x y -> x `div` y #-}
{-# COMPILE GHC _mod_ = \x y -> x `mod` y #-}
{-# COMPILE GHC _+i_ = (+) #-}
{-# COMPILE GHC _-i_ = (-) #-}
{-# COMPILE GHC primFloatge = (>=) #-}
{-# COMPILE GHC return = \_ _ -> return #-}
{-# COMPILE GHC putStrLn = Data.Text.IO.putStrLn #-}
{-# COMPILE GHC formatFloat6 = FFI.formatFloat6 #-}
{-# COMPILE GHC formatFloat3 = FFI.formatFloat3 #-}
{-# COMPILE GHC getFileSize = FFI._getFileSize #-}
{-# COMPILE GHC QueryPerformanceFrequency = FFI.queryPerformanceFrequency #-}
{-# COMPILE GHC QueryPerformanceCounter = FFI.queryPerformanceCounter #-}
{-# COMPILE GHC rdtscpf = FFI.rdtscpf #-}
{-# COMPILE GHC ExitProcess = FFI.exitProcess #-}
main            : IO ⊤
main            =
  bind  QueryPerformanceFrequency λ lpFrequency →
  bind  QueryPerformanceCounter λ lpPerformanceCount → result lpFrequency lpPerformanceCount where
    result  : Maybe Nat → Maybe Nat → IO ⊤
    result  (just frequency) (just counter) =
      let start = record {tv_sec  = primNatToInt(counter div frequency); tv_nsec = primNatToInt((counter mod frequency * 1000000000) div frequency)} in
      bind (forlr 0 100000 0 (λ a total →
        bind rdtscpf λ st →
        bind rdtscpf λ et →
        return(((total + et) - st)))) λ Cycles →
      bind  QueryPerformanceCounter λ lpPerformanceCount → success frequency start Cycles lpPerformanceCount where
      success  : Nat → timespec → Nat → Maybe Nat → IO ⊤
      success  _ _ _ nothing = ExitProcess 1
      success  frequency start Cycles (just counter) =
        let end         = record {tv_sec  = primNatToInt(counter div frequency); tv_nsec = primNatToInt((counter mod frequency * 1000000000) div frequency)} in
        let elapsedTime = primFloatPlus(primIntToFloat(timespec.tv_sec end -i timespec.tv_sec start)) (primFloatDiv(primIntToFloat(timespec.tv_nsec end -i timespec.tv_nsec start)) 1000000000.0) in
        bind(getFileSize "main.exe") λ result → resultWith frequency Cycles elapsedTime result where
          resultWith  : Nat → Nat → Float → Maybe Nat → IO ⊤
          resultWith  _ _ _ nothing = ExitProcess 1
          resultWith  frequency Cycles elapsedTime (just Size) =
            putStrLn("Total Cycles " ++ primShowNat Cycles) >>
            putStrLn(((((("Time taken: " ++ primShowNat((primFloatToNat elapsedTime) div 3600)) ++ " hours ") ++ primShowNat(((primFloatToNat elapsedTime) mod 3600) div 60)) ++ " minutes ") ++ formatFloat6(primFloatMinus elapsedTime (primNatToFloat(primFloatToNat elapsedTime)))) ++ " seconds") >>
            putStrLn(("Approx CPU frequency: " ++ formatFloat6(primFloatDiv(primFloatDiv(primNatToFloat Cycles) elapsedTime) 1.0e9)) ++ " GHz") >>
              if          primFloatge(primNatToFloat Size) GB then putStrLn(("File size: " ++ formatFloat3(primFloatDiv(primNatToFloat Size) GB)) ++ " GB")
              else if     primFloatge(primNatToFloat Size) MB then putStrLn(("File size: " ++ formatFloat3(primFloatDiv(primNatToFloat Size) MB)) ++ " MB")
              else if     primFloatge(primNatToFloat Size) KB then putStrLn(("File size: " ++ formatFloat3(primFloatDiv(primNatToFloat Size) KB)) ++ " KB")
              else        putStrLn(("File size: " ++ primShowNat Size) ++ " bytes") >>
              ExitProcess 0
    result  _ _ = ExitProcess 1