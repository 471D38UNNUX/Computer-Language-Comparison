--  ghc -O3 main.hs RDTSCP.asm
import Foreign(Ptr, Int64, peek)
import Data.Word ( Word64, Word )
import Foreign.Marshal.Alloc(alloca)
import System.Directory(getFileSize)
import System.IO.Error(catchIOError)
import Text.Printf(printf)
import Data.Text(Text, pack)
foreign import ccall unsafe "QueryPerformanceFrequency" _QueryPerformanceFrequency :: Ptr Int64 -> IO Bool
foreign import ccall unsafe "QueryPerformanceCounter" _QueryPerformanceCounter :: Ptr Int64 -> IO Bool
foreign import ccall unsafe "ExitProcess"  _ExitProcess :: Word -> IO ()
foreign import ccall unsafe "rdtscpf" _rdtscpf :: IO Int64
forlr           :: Int64 -> Int64 -> Int64 -> (Int64 -> Int64 -> IO Int64) -> IO Int64
forlr           start end acc f
    | start >= end = return acc
    | otherwise = do
        acc <- f start acc
        forlr(start + 1) end acc f
formatFloat6    :: Double -> Text
formatFloat6 f  = pack (printf "%.6f" f)
formatFloat3    :: Double -> Text
formatFloat3 f  = pack (printf "%.3f" f)
data TimeSpec   = TimeSpec {tv_sec :: Int64, tv_nsec :: Int} deriving Show
kB              :: Double
kB              = 1024
mB              :: Double
mB              = 1024 * 1024
gB              :: Double
gB              = 1024 * 1024 * 1024
main            :: IO()
main    = alloca $ \lpFrequency -> do
    result  <- _QueryPerformanceFrequency  lpFrequency
    alloca                      $ \lpPerformanceCount -> do
        success <- _QueryPerformanceCounter lpPerformanceCount
        if      not (result || success) then _ExitProcess 1
        else    do
            frequency                   <- peek lpFrequency
            counter                     <- peek lpPerformanceCount
            let time                    = TimeSpec (div (fromIntegral counter) (fromIntegral frequency)) (fromIntegral (div (mod counter frequency * 1000000000) frequency))
            cycles                      <- forlr 0 100000 0 $ \i total -> do
                st  <- _rdtscpf
                et  <- _rdtscpf
                return(total + et - st)
            result  <- _QueryPerformanceCounter lpPerformanceCount
            if          not result then _ExitProcess 1
            else    do
                counter         <- peek lpPerformanceCount
                let elapsedTime = (fromIntegral(div (fromIntegral counter) (fromIntegral frequency) - tv_sec time) :: Double) + fromIntegral(fromIntegral(div (mod counter frequency * 1000000000) frequency) - tv_nsec time) / 1000000000.0 :: Double
                result          <- catchIOError(Just <$> getFileSize "main.exe") (\_ -> return Nothing)
                case            result of
                    Nothing     -> _ExitProcess 1
                    Just size   -> do
                        putStrLn("Total Cycles " ++ show cycles)
                        putStrLn("Time taken: " ++ show(div (fromIntegral(truncate elapsedTime :: Word64)) 3600) ++ " hours " ++ show(formatFloat6((fromIntegral(mod (fromIntegral(truncate elapsedTime :: Word64)) 60) :: Double) + elapsedTime - fromIntegral(fromIntegral(truncate elapsedTime :: Word64)) :: Double)) ++ " seconds")
                        putStrLn("Approx CPU frequency: " ++ show (formatFloat6 (fromIntegral cycles / elapsedTime / 1.0e9)) ++ " GHz")
                        if              fromIntegral size >= gB then putStrLn("File size: " ++ show (formatFloat3(fromIntegral size / gB)) ++ " GB")
                        else if         fromIntegral size >= mB then putStrLn("File size: " ++ show (formatFloat3(fromIntegral size / mB)) ++ " MB")
                        else if         fromIntegral size >= kB then putStrLn("File size: " ++ show (formatFloat3(fromIntegral size / kB)) ++ " KB")
                        else            putStrLn("File size: " ++ show size ++ " bytes")
                        _ExitProcess    0
