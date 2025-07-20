module FFI where
import Foreign(Ptr, Int64)
import Data.Word(Word64)
import Foreign.Marshal.Alloc(alloca)
import Foreign.Storable(peek)
import Text.Printf(printf)
import Data.Text(pack, Text, unpack)
import System.Directory(getFileSize)
import System.IO.Error(catchIOError)
foreign import ccall unsafe "QueryPerformanceFrequency" _QueryPerformanceFrequency :: Ptr Int64 -> IO Bool
foreign import ccall unsafe "QueryPerformanceCounter" _QueryPerformanceCounter :: Ptr Int64 -> IO Bool
foreign import ccall unsafe "ExitProcess" _ExitProcess :: Word -> IO()
foreign import ccall unsafe "rdtscpf" _rdtscpf :: IO Word64
formatFloat6                :: Double -> Text
formatFloat6 f              = pack(printf "%.6f" f)
formatFloat3                :: Double -> Text
formatFloat3 f              = pack(printf "%.3f" f)
_getFileSize :: Text -> IO(Maybe Integer)
_getFileSize path =
    catchIOError
        (fmap Just (getFileSize(unpack path)))
        (\_ -> pure Nothing)
queryPerformanceFrequency   :: IO(Maybe Integer)
queryPerformanceFrequency   =
    alloca  $ \lpFrequency -> do
    success <- _QueryPerformanceFrequency lpFrequency
    if      success
    then    do
        frequency   <- peek lpFrequency
        return(Just(fromIntegral frequency))
    else    return Nothing
queryPerformanceCounter     :: IO(Maybe Integer)
queryPerformanceCounter     = alloca $ \lpPerformanceCount -> do
    success <- _QueryPerformanceCounter lpPerformanceCount
    if      success
    then    do
        counter <- peek lpPerformanceCount
        return(Just(fromIntegral counter))
    else    return Nothing
rdtscpf                     :: IO Integer
rdtscpf                     = fromIntegral <$> _rdtscpf
exitProcess                 :: Integer -> IO()
exitProcess                 = _ExitProcess . fromInteger