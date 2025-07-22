{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Qmain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Float
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.Int
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive

import qualified Data.Text.IO
import qualified FFI
-- main.timespec
d_timespec_2 = ()
data T_timespec_2 = C_constructor_12 Integer Integer
-- main.timespec.tv_sec
d_tv_sec_8 :: T_timespec_2 -> Integer
d_tv_sec_8 v0
  = case coe v0 of
      C_constructor_12 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- main.timespec.tv_nsec
d_tv_nsec_10 :: T_timespec_2 -> Integer
d_tv_nsec_10 v0
  = case coe v0 of
      C_constructor_12 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- main.bind
d_bind_22 ::
  forall xa.
    forall xb.
      forall xA.
        forall xB.
          MAlonzo.Code.Agda.Primitive.T_Level_18 ->
          MAlonzo.Code.Agda.Primitive.T_Level_18 ->
          () ->
          () ->
          MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xa xA ->
          (xA -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xb xB) ->
          MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xb xB
d_bind_22 = \_ _ _ _ m f -> m >>= f
-- main._++_
d__'43''43'__24 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d__'43''43'__24 = Data.Text.append
-- main.primNatToInt
d_primNatToInt_26 :: Integer -> Integer
d_primNatToInt_26 = fromIntegral
-- main.primIntToNat
d_primIntToNat_28 :: Integer -> Integer
d_primIntToNat_28 = \x -> max 0 x
-- main.primFloatToNat
d_primFloatToNat_30 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Integer
d_primFloatToNat_30 = \x -> max 0 (floor x)
-- main._div_
d__div__32 :: Integer -> Integer -> Integer
d__div__32 = \x y -> x `div` y
-- main._mod_
d__mod__34 :: Integer -> Integer -> Integer
d__mod__34 = \x y -> x `mod` y
-- main._/i_
d__'47'i__36 :: Integer -> Integer -> Integer
d__'47'i__36 = \x y -> x `div` y
-- main._%i_
d__'37'i__38 :: Integer -> Integer -> Integer
d__'37'i__38 = \x y -> x `mod` y
-- main._+i_
d__'43'i__40 :: Integer -> Integer -> Integer
d__'43'i__40 = (+)
-- main._-i_
d__'45'i__42 :: Integer -> Integer -> Integer
d__'45'i__42 = (-)
-- main._*i_
d__'42'i__44 :: Integer -> Integer -> Integer
d__'42'i__44 = (*)
-- main.primFloatge
d_primFloatge_46 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Bool
d_primFloatge_46 = (>=)
-- main.return
d_return_52 ::
  forall xa.
    forall xA.
      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
      () -> xA -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xa xA
d_return_52 = \_ _ -> return
-- main.putStrLn
d_putStrLn_54 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putStrLn_54 = Data.Text.IO.putStrLn
-- main.formatFloat6
d_formatFloat6_56 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_formatFloat6_56 = FFI.formatFloat6
-- main.formatFloat3
d_formatFloat3_58 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_formatFloat3_58 = FFI.formatFloat3
-- main.getFileSize
d_getFileSize_60 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
d_getFileSize_60 = FFI._getFileSize
-- main.QueryPerformanceFrequency
d_QueryPerformanceFrequency_62 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
d_QueryPerformanceFrequency_62 = FFI.queryPerformanceFrequency
-- main.QueryPerformanceCounter
d_QueryPerformanceCounter_64 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
d_QueryPerformanceCounter_64 = FFI.queryPerformanceCounter
-- main.rdtscpf
d_rdtscpf_66 :: MAlonzo.Code.Agda.Builtin.IO.T_IO_8 () Integer
d_rdtscpf_66 = FFI.rdtscpf
-- main.ExitProcess
d_ExitProcess_68 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_ExitProcess_68 = FFI.exitProcess
-- main._>>_
d__'62''62'__78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
d__'62''62'__78 v0 v1 ~v2 ~v3 v4 v5 = du__'62''62'__78 v0 v1 v4 v5
du__'62''62'__78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
du__'62''62'__78 v0 v1 v2 v3
  = coe d_bind_22 v0 v1 erased erased v2 (\ v4 -> v3)
-- main._<ᵇ_
d__'60''7495'__86 :: Integer -> Integer -> Bool
d__'60''7495'__86 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
             _ -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe (coe d__'60''7495'__86 (coe v2) (coe v3)))
-- main.forlr
d_forlr_92 ::
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   Integer -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny Integer) ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny Integer
d_forlr_92 v0 v1 v2 v3
  = let v4 = d__'60''7495'__86 (coe v0) (coe v1) in
    coe
      (if coe v4
         then coe
                d_bind_22 () () erased erased (coe v3 v0 v2)
                (\ v5 ->
                   d_forlr_92
                     (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v5)
                     (coe v3))
         else coe d_return_52 () erased v2)
-- main.if_then_else_
d_if_then_else__128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Bool -> AgdaAny -> AgdaAny -> AgdaAny
d_if_then_else__128 ~v0 ~v1 v2 v3 v4
  = du_if_then_else__128 v2 v3 v4
du_if_then_else__128 :: Bool -> AgdaAny -> AgdaAny -> AgdaAny
du_if_then_else__128 v0 v1 v2 = if coe v0 then coe v1 else coe v2
-- main.KB
d_KB_138 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_KB_138
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
      (1024 :: Integer)
-- main.MB
d_MB_140 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_MB_140
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
      (mulInt (coe (1024 :: Integer)) (coe (1024 :: Integer)))
-- main.GB
d_GB_142 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_GB_142
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
      (mulInt
         (coe mulInt (coe (1024 :: Integer)) (coe (1024 :: Integer)))
         (coe (1024 :: Integer)))
main = coe d_main_144
-- main.main
d_main_144 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_main_144
  = coe
      d_bind_22 () () erased erased d_QueryPerformanceFrequency_62
      (\ v0 ->
         coe
           d_bind_22 () () erased erased d_QueryPerformanceCounter_64
           (d_result_150 (coe v0)))
-- main._.result
d_result_150 ::
  Maybe Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_result_150 v0 v1
  = let v2 = coe d_ExitProcess_68 (1 :: Integer) in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
           -> case coe v1 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                  -> coe
                       d_bind_22 () () erased erased
                       (d_forlr_92
                          (coe (0 :: Integer)) (coe (100000 :: Integer)) (coe (0 :: Integer))
                          (coe
                             (\ v5 v6 ->
                                coe
                                  d_bind_22 () () erased erased d_rdtscpf_66
                                  (\ v7 ->
                                     coe
                                       d_bind_22 () () erased erased d_rdtscpf_66
                                       (\ v8 ->
                                          coe
                                            d_return_52 () erased
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                               (addInt (coe v6) (coe v8)) v7))))))
                       (\ v5 ->
                          coe
                            d_bind_22 () () erased erased d_QueryPerformanceCounter_64
                            (coe
                               du_success_160 (coe v3)
                               (coe
                                  C_constructor_12 (coe d__'47'i__36 v4 v3)
                                  (coe
                                     d__'47'i__36
                                     (coe
                                        d__'42'i__44 (coe d__'37'i__38 v4 v3)
                                        (coe d_primNatToInt_26 (1000000000 :: Integer)))
                                     v3))
                               (coe v5)))
                _ -> coe v2
         _ -> coe v2)
-- main._._.success
d_success_160 ::
  Integer ->
  Integer ->
  Integer ->
  T_timespec_2 ->
  Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_success_160 ~v0 ~v1 v2 v3 v4 v5 = du_success_160 v2 v3 v4 v5
du_success_160 ::
  Integer ->
  T_timespec_2 ->
  Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_success_160 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
        -> coe
             d_bind_22 () () erased erased
             (coe d_getFileSize_60 ("main.exe" :: Data.Text.Text))
             (coe
                du_resultWith_174 (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Float.d_primFloatPlus_48
                   (coe
                      MAlonzo.Code.Agda.Builtin.Float.d_primIntToFloat_26
                      (coe d__'45'i__42 (coe d__'47'i__36 v4 v0) (d_tv_sec_8 (coe v1))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                      (coe
                         MAlonzo.Code.Agda.Builtin.Float.d_primIntToFloat_26
                         (coe
                            d__'45'i__42
                            (coe
                               d__'47'i__36
                               (coe
                                  d__'42'i__44 (coe d__'37'i__38 v4 v0)
                                  (coe d_primNatToInt_26 (1000000000 :: Integer)))
                               v0)
                            (d_tv_nsec_10 (coe v1))))
                      (1.0e9 :: Double))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe d_ExitProcess_68 (1 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- main._._._.resultWith
d_resultWith_174 ::
  Integer ->
  Integer ->
  Integer ->
  T_timespec_2 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_resultWith_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_resultWith_174 v7 v8 v9
du_resultWith_174 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_resultWith_174 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe
             du__'62''62'__78 (coe ()) (coe ())
             (coe
                du__'62''62'__78 (coe ()) (coe ())
                (coe
                   du__'62''62'__78 (coe ()) (coe ())
                   (coe
                      du__'62''62'__78 (coe ()) (coe ())
                      (coe
                         d_putStrLn_54
                         (coe
                            d__'43''43'__24 ("Total Cycles " :: Data.Text.Text)
                            (coe MAlonzo.Code.Agda.Builtin.String.d_primShowNat_24 v0)))
                      (coe
                         d_putStrLn_54
                         (coe
                            d__'43''43'__24
                            (coe
                               d__'43''43'__24
                               (coe
                                  d__'43''43'__24
                                  (coe
                                     d__'43''43'__24
                                     (coe
                                        d__'43''43'__24
                                        (coe
                                           d__'43''43'__24 ("Time taken: " :: Data.Text.Text)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.String.d_primShowNat_24
                                              (coe
                                                 d__div__32 (coe d_primFloatToNat_30 v1)
                                                 (3600 :: Integer))))
                                        (" hours " :: Data.Text.Text))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.String.d_primShowNat_24
                                        (coe
                                           d__div__32
                                           (coe
                                              d__mod__34 (coe d_primFloatToNat_30 v1)
                                              (3600 :: Integer))
                                           (60 :: Integer))))
                                  (" minutes " :: Data.Text.Text))
                               (coe
                                  d_formatFloat6_56
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Float.d_primFloatPlus_48
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
                                        (coe
                                           d__mod__34 (coe d_primFloatToNat_30 v1) (60 :: Integer)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Float.d_primFloatMinus_50 v1
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
                                           (coe d_primFloatToNat_30 v1))))))
                            (" seconds" :: Data.Text.Text))))
                   (coe
                      d_putStrLn_54
                      (coe
                         d__'43''43'__24
                         (coe
                            d__'43''43'__24 ("Approx CPU frequency: " :: Data.Text.Text)
                            (coe
                               d_formatFloat6_56
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                     (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v0)
                                     v1)
                                  (1.0e9 :: Double))))
                         (" GHz" :: Data.Text.Text))))
                (coe
                   du_if_then_else__128
                   (coe
                      d_primFloatge_46
                      (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                      d_GB_142)
                   (coe
                      d_putStrLn_54
                      (coe
                         d__'43''43'__24
                         (coe
                            d__'43''43'__24 ("File size: " :: Data.Text.Text)
                            (coe
                               d_formatFloat3_58
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                  (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                                  d_GB_142)))
                         (" GB" :: Data.Text.Text)))
                   (coe
                      du_if_then_else__128
                      (coe
                         d_primFloatge_46
                         (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                         d_MB_140)
                      (coe
                         d_putStrLn_54
                         (coe
                            d__'43''43'__24
                            (coe
                               d__'43''43'__24 ("File size: " :: Data.Text.Text)
                               (coe
                                  d_formatFloat3_58
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                     (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                                     d_MB_140)))
                            (" MB" :: Data.Text.Text)))
                      (coe
                         du_if_then_else__128
                         (coe
                            d_primFloatge_46
                            (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                            d_KB_138)
                         (coe
                            d_putStrLn_54
                            (coe
                               d__'43''43'__24
                               (coe
                                  d__'43''43'__24 ("File size: " :: Data.Text.Text)
                                  (coe
                                     d_formatFloat3_58
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                        (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                                        d_KB_138)))
                               (" KB" :: Data.Text.Text)))
                         (coe
                            d_putStrLn_54
                            (coe
                               d__'43''43'__24
                               (coe
                                  d__'43''43'__24 ("File size: " :: Data.Text.Text)
                                  (coe MAlonzo.Code.Agda.Builtin.String.d_primShowNat_24 v3))
                               (" bytes" :: Data.Text.Text)))))))
             (coe d_ExitProcess_68 (0 :: Integer))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe d_ExitProcess_68 (1 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
