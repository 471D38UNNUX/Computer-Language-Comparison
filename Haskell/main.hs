--  ghc -O3 main.hs RDTSCP.asm
import Foreign(Ptr, Int64, peek)
import Data.Word(Word64)
import Foreign.Marshal.Alloc(alloca)
import Data.Word(Word)
import System.Directory(getFileSize)
import System.IO.Error(catchIOError)
import Text.Printf(printf)
import Data.Text(Text, pack)
foreign import ccall unsafe "QueryPerformanceFrequency" _QueryPerformanceFrequency :: Ptr Word64 -> IO Bool
foreign import ccall unsafe "QueryPerformanceCounter" _QueryPerformanceCounter :: Ptr Word64 -> IO Bool
foreign import ccall unsafe "ExitProcess"  _ExitProcess :: Word -> IO ()
foreign import ccall unsafe "rdtscpf" _rdtscpf :: IO Int64
forlr           :: Int64 -> Int64 -> Int64 -> (Int64 -> Int64 -> IO Int64) -> IO Int64
forlr           start end acc f
    | start >= end = return acc
    | otherwise = do
        acc <- f start acc
        forlr(start + 1) end acc f
formatFloat6    :: Double -> Text
formatFloat6 f  = pack(printf "%.6f" f)
formatFloat3    :: Double -> Text
formatFloat3 f  = pack(printf "%.3f" f)
data TimeSpec   = TimeSpec {tv_sec :: Int64, tv_nsec :: Int} deriving Show
kB              :: Double
kB              = 1024
mB              :: Double
mB              = 1024 * 1024
gB              :: Double
gB              = 1024 * 1024 * 1024
main            :: IO ()
main    = alloca $ \lpPerformanceCount -> do
    _QueryPerformanceFrequency  lpPerformanceCount
    frequency                   <- peek lpPerformanceCount
    alloca                      $ \lpPerformanceCount -> do
        _QueryPerformanceCounter    lpPerformanceCount
        counter                     <- peek lpPerformanceCount
        let start                   = TimeSpec (div (fromIntegral counter) (fromIntegral frequency)) (fromIntegral(div((mod counter frequency) * 1000000000) frequency))
        cycles                      <- forlr 0 100000 0 $ \i total -> do
            st  <- _rdtscpf
            et  <- _rdtscpf
            return(total + et - st)
        _QueryPerformanceCounter    lpPerformanceCount
        counter                     <- peek lpPerformanceCount
        let end                     = TimeSpec (div (fromIntegral counter) (fromIntegral frequency)) (fromIntegral(div((mod counter frequency) * 1000000000) frequency))
        let elapsedTime             = fromIntegral(tv_sec end - tv_sec start) + fromIntegral(tv_nsec end - tv_nsec start) / 1000000000.0 :: Double
        result                      <- catchIOError (Just <$> getFileSize "main.exe") (\_ -> return Nothing)
        case                        result of
            Nothing -> _ExitProcess 1
            Just size -> do
                putStrLn("Total Cycles " ++ show cycles)
                putStrLn("Time taken: " ++ show(div(fromIntegral(truncate elapsedTime :: Word64)) 3600) ++ " hours " ++ show(div(mod(fromIntegral(truncate elapsedTime :: Word64)) 3600) 60) ++ " minutes " ++ show(formatFloat6(elapsedTime - fromIntegral(truncate elapsedTime :: Word64))) ++ " seconds")
                putStrLn("Approx CPU frequency: " ++ show(formatFloat6(fromIntegral cycles / elapsedTime / 1.0e9)) ++ " GHz")
                if              fromIntegral size >= gB then putStrLn("File size: " ++ show(formatFloat3(fromIntegral size / gB)) ++ " GB")
                else if         fromIntegral size >= mB then putStrLn("File size: " ++ show(formatFloat3(fromIntegral size / mB)) ++ " MB")
                else if         fromIntegral size >= kB then putStrLn("File size: " ++ show(formatFloat3(fromIntegral size / kB)) ++ " KB")
                else            putStrLn("File size: " ++ show size ++ " bytes")
                _ExitProcess    0
