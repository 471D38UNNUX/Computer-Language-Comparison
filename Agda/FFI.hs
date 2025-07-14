module FFI where
import Foreign(Int64, Ptr)
import Foreign.Marshal.Alloc(alloca)
import Foreign.Storable(peek)
import Text.Printf(printf)
import Data.Text(pack, Text, unpack)
import System.Directory(getFileSize)
import System.IO.Error(catchIOError)
foreign import ccall unsafe "QueryPerformanceFrequency" _QueryPerformanceFrequency :: Ptr Int64 -> IO Int
foreign import ccall unsafe "QueryPerformanceCounter" _QueryPerformanceCounter :: Ptr Int64 -> IO Int
foreign import ccall unsafe "ExitProcess" _ExitProcess :: Word -> IO()
foreign import ccall unsafe "rdtscpf" _rdtscpf :: IO Int64
formatFloat6                :: Double -> Text
formatFloat6 f              = pack (printf "%.6f" f)
formatFloat3                :: Double -> Text
formatFloat3 f              = pack (printf "%.3f" f)
_getFileSize :: Text -> IO (Maybe Integer)
_getFileSize path =
    catchIOError
        (fmap Just (getFileSize (unpack path)))
        (\_ -> pure Nothing)
queryPerformanceFrequency   :: IO Integer
queryPerformanceFrequency   =
    alloca $ \lpFrequency -> do
    success <- _QueryPerformanceFrequency lpFrequency
    if      success /= 0
    then    fromIntegral <$> peek lpFrequency
    else    return 0
queryPerformanceCounter     :: IO Integer
queryPerformanceCounter     = alloca $ \lpPerformanceCount -> do
    success <- _QueryPerformanceCounter lpPerformanceCount
    if      success /= 0
    then    fromIntegral <$> peek lpPerformanceCount
    else    return 0
rdtscpf                     :: IO Integer
rdtscpf                     = fromIntegral <$> _rdtscpf
exitProcess                 :: Integer -> IO()
exitProcess                 = _ExitProcess . fromInteger