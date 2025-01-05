{-# LANGUAGE CPP #-}
module Main where
import qualified System.Info

main :: IO ()
main = do
  putStrLn $ "OS: " ++ System.Info.os
  putStrLn $ "Arch: " ++ System.Info.arch
  putStrLn $ "Compiler: " ++ System.Info.compilerName
#if MIN_VERSION_base(4, 15, 0)
  putStrLn $ "Compiler version: " ++ show System.Info.fullCompilerVersion
#else
  putStrLn $ "Compiler version: " ++ show System.Info.compilerVersion
#endif
#if defined(__GLASGOW_HASKELL_LLVM__)
  putStrLn $ "__GLASGOW_HASKELL_LLVM__ = " ++ show (__GLASGOW_HASKELL_LLVM__ :: Integer)
#else
  putStrLn "__GLASGOW_HASKELL_LLVM__ not defined"
#endif
