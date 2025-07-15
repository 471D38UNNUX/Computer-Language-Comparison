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
-- main._+i_
d__'43'i__36 :: Integer -> Integer -> Integer
d__'43'i__36 = (+)
-- main._-i_
d__'45'i__38 :: Integer -> Integer -> Integer
d__'45'i__38 = (-)
-- main.primFloatge
d_primFloatge_40 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Bool
d_primFloatge_40 = (>=)
-- main.return
d_return_46 ::
  forall xa.
    forall xA.
      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
      () -> xA -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xa xA
d_return_46 = \_ _ -> return
-- main.putStrLn
d_putStrLn_48 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putStrLn_48 = Data.Text.IO.putStrLn
-- main.formatFloat6
d_formatFloat6_50 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_formatFloat6_50 = FFI.formatFloat6
-- main.formatFloat3
d_formatFloat3_52 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_formatFloat3_52 = FFI.formatFloat3
-- main.getFileSize
d_getFileSize_54 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
d_getFileSize_54 = FFI._getFileSize
-- main.QueryPerformanceFrequency
d_QueryPerformanceFrequency_56 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
d_QueryPerformanceFrequency_56 = FFI.queryPerformanceFrequency
-- main.QueryPerformanceCounter
d_QueryPerformanceCounter_58 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
d_QueryPerformanceCounter_58 = FFI.queryPerformanceCounter
-- main.rdtscpf
d_rdtscpf_60 :: MAlonzo.Code.Agda.Builtin.IO.T_IO_8 () Integer
d_rdtscpf_60 = FFI.rdtscpf
-- main.ExitProcess
d_ExitProcess_62 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_ExitProcess_62 = FFI.exitProcess
-- main._>>_
d__'62''62'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
d__'62''62'__72 v0 v1 ~v2 ~v3 v4 v5 = du__'62''62'__72 v0 v1 v4 v5
du__'62''62'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
du__'62''62'__72 v0 v1 v2 v3
  = coe d_bind_22 v0 v1 erased erased v2 (\ v4 -> v3)
-- main._<ᵇ_
d__'60''7495'__80 :: Integer -> Integer -> Bool
d__'60''7495'__80 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
             _ -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe (coe d__'60''7495'__80 (coe v2) (coe v3)))
-- main.forlr
d_forlr_86 ::
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   Integer -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny Integer) ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny Integer
d_forlr_86 v0 v1 v2 v3
  = let v4 = d__'60''7495'__80 (coe v0) (coe v1) in
    coe
      (if coe v4
         then coe
                d_bind_22 () () erased erased (coe v3 v0 v2)
                (\ v5 ->
                   d_forlr_86
                     (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v5)
                     (coe v3))
         else coe d_return_46 () erased v2)
-- main.if_then_else_
d_if_then_else__122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Bool -> AgdaAny -> AgdaAny -> AgdaAny
d_if_then_else__122 ~v0 ~v1 v2 v3 v4
  = du_if_then_else__122 v2 v3 v4
du_if_then_else__122 :: Bool -> AgdaAny -> AgdaAny -> AgdaAny
du_if_then_else__122 v0 v1 v2 = if coe v0 then coe v1 else coe v2
-- main.KB
d_KB_132 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_KB_132
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
      (1024 :: Integer)
-- main.MB
d_MB_134 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_MB_134
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
      (mulInt (coe (1024 :: Integer)) (coe (1024 :: Integer)))
-- main.GB
d_GB_136 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_GB_136
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
      (mulInt
         (coe mulInt (coe (1024 :: Integer)) (coe (1024 :: Integer)))
         (coe (1024 :: Integer)))
main = coe d_main_138
-- main.main
d_main_138 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_main_138
  = coe
      d_bind_22 () () erased erased d_QueryPerformanceFrequency_56
      d_lpFrequency_144
-- main._.lpFrequency
d_lpFrequency_144 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_lpFrequency_144 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe
             d_bind_22 () () erased erased d_QueryPerformanceCounter_58
             (coe du_lpPerformanceCount_152 (coe v1))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe d_ExitProcess_62 (1 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- main._._.lpPerformanceCount
d_lpPerformanceCount_152 ::
  Integer ->
  Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_lpPerformanceCount_152 ~v0 v1 v2
  = du_lpPerformanceCount_152 v1 v2
du_lpPerformanceCount_152 ::
  Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_lpPerformanceCount_152 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             d_bind_22 () () erased erased
             (d_forlr_86
                (coe (0 :: Integer)) (coe (100000 :: Integer)) (coe (0 :: Integer))
                (coe
                   (\ v3 v4 ->
                      coe
                        d_bind_22 () () erased erased d_rdtscpf_60
                        (\ v5 ->
                           coe
                             d_bind_22 () () erased erased d_rdtscpf_60
                             (\ v6 ->
                                coe
                                  d_return_46 () erased
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                     (addInt (coe v4) (coe v6)) v5))))))
             (\ v3 ->
                coe
                  d_bind_22 () () erased erased d_QueryPerformanceCounter_58
                  (\ v4 ->
                     coe
                       d_bind_22 () () erased erased d_QueryPerformanceCounter_58
                       (coe
                          du_PerformanceCount_162 (coe v0)
                          (coe
                             C_constructor_12 (coe d_primNatToInt_26 (coe d__div__32 v2 v0))
                             (coe
                                d_primNatToInt_26
                                (coe
                                   d__div__32
                                   (mulInt (coe d__mod__34 v2 v0) (coe (1000000000 :: Integer)))
                                   v0)))
                          (coe v3))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe d_ExitProcess_62 (1 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- main._._._.PerformanceCount
d_PerformanceCount_162 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  T_timespec_2 ->
  Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PerformanceCount_162 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_PerformanceCount_162 v3 v4 v5 v6
du_PerformanceCount_162 ::
  Integer ->
  T_timespec_2 ->
  Integer ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_PerformanceCount_162 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
        -> coe
             d_bind_22 () () erased erased
             (coe d_getFileSize_54 ("main.exe" :: Data.Text.Text))
             (coe
                du_resultWith_176 (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Float.d_primFloatPlus_48
                   (coe
                      MAlonzo.Code.Agda.Builtin.Float.d_primIntToFloat_26
                      (coe
                         d__'45'i__38 (coe d_primNatToInt_26 (coe d__div__32 v4 v0))
                         (d_tv_sec_8 (coe v1))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                      (coe
                         MAlonzo.Code.Agda.Builtin.Float.d_primIntToFloat_26
                         (coe
                            d__'45'i__38
                            (coe
                               d_primNatToInt_26
                               (coe
                                  d__div__32
                                  (mulInt (coe d__mod__34 v4 v0) (coe (1000000000 :: Integer))) v0))
                            (d_tv_nsec_10 (coe v1))))
                      (1.0e9 :: Double))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe d_ExitProcess_62 (1 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- main._._._._.resultWith
d_resultWith_176 ::
  Integer ->
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
d_resultWith_176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_resultWith_176 v8 v9 v10
du_resultWith_176 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_resultWith_176 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe
             du__'62''62'__72 (coe ()) (coe ())
             (coe
                du__'62''62'__72 (coe ()) (coe ())
                (coe
                   du__'62''62'__72 (coe ()) (coe ())
                   (coe
                      du__'62''62'__72 (coe ()) (coe ())
                      (coe
                         d_putStrLn_48
                         (coe
                            d__'43''43'__24 ("Total Cycles " :: Data.Text.Text)
                            (coe MAlonzo.Code.Agda.Builtin.String.d_primShowNat_24 v0)))
                      (coe
                         d_putStrLn_48
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
                                  d_formatFloat6_50
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Float.d_primFloatMinus_50 v1
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
                                        (coe d_primFloatToNat_30 v1)))))
                            (" seconds" :: Data.Text.Text))))
                   (coe
                      d_putStrLn_48
                      (coe
                         d__'43''43'__24
                         (coe
                            d__'43''43'__24 ("Approx CPU frequency: " :: Data.Text.Text)
                            (coe
                               d_formatFloat6_50
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                     (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v0)
                                     v1)
                                  (1.0e9 :: Double))))
                         (" GHz" :: Data.Text.Text))))
                (coe
                   du_if_then_else__122
                   (coe
                      d_primFloatge_40
                      (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                      d_GB_136)
                   (coe
                      d_putStrLn_48
                      (coe
                         d__'43''43'__24
                         (coe
                            d__'43''43'__24 ("File size: " :: Data.Text.Text)
                            (coe
                               d_formatFloat3_52
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                  (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                                  d_GB_136)))
                         (" GB" :: Data.Text.Text)))
                   (coe
                      du_if_then_else__122
                      (coe
                         d_primFloatge_40
                         (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                         d_MB_134)
                      (coe
                         d_putStrLn_48
                         (coe
                            d__'43''43'__24
                            (coe
                               d__'43''43'__24 ("File size: " :: Data.Text.Text)
                               (coe
                                  d_formatFloat3_52
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                     (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                                     d_MB_134)))
                            (" MB" :: Data.Text.Text)))
                      (coe
                         du_if_then_else__122
                         (coe
                            d_primFloatge_40
                            (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                            d_KB_132)
                         (coe
                            d_putStrLn_48
                            (coe
                               d__'43''43'__24
                               (coe
                                  d__'43''43'__24 ("File size: " :: Data.Text.Text)
                                  (coe
                                     d_formatFloat3_52
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
                                        (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v3)
                                        d_KB_132)))
                               (" KB" :: Data.Text.Text)))
                         (coe
                            d_putStrLn_48
                            (coe
                               d__'43''43'__24
                               (coe
                                  d__'43''43'__24 ("File size: " :: Data.Text.Text)
                                  (coe MAlonzo.Code.Agda.Builtin.String.d_primShowNat_24 v3))
                               (" bytes" :: Data.Text.Text)))))))
             (coe d_ExitProcess_62 (0 :: Integer))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe d_ExitProcess_62 (1 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
