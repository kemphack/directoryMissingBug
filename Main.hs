{-# LANGUAGE FlexibleContexts #-}
module Main where

import System.Directory (createDirectoryIfMissing)
import Java

foreign export java "@static Tools.createDirectoryIfMissing"
    jCreateDirectoryIfMissing :: JString -> Java a ()

jCreateDirectoryIfMissing dir = io $ createDirectoryIfMissing True (fromJava dir)

main = pure ()
