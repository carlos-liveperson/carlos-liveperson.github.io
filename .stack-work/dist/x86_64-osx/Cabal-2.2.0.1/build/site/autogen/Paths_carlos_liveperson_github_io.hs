{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_carlos_liveperson_github_io (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/tns/LivePerson/projects/carlos-liveperson.github.io/.stack-work/install/x86_64-osx/lts-12.5/8.4.3/bin"
libdir     = "/Users/tns/LivePerson/projects/carlos-liveperson.github.io/.stack-work/install/x86_64-osx/lts-12.5/8.4.3/lib/x86_64-osx-ghc-8.4.3/carlos-liveperson-github-io-0.1.0.0-5ot2vK1lXdwBHhfWDVUlvW-site"
dynlibdir  = "/Users/tns/LivePerson/projects/carlos-liveperson.github.io/.stack-work/install/x86_64-osx/lts-12.5/8.4.3/lib/x86_64-osx-ghc-8.4.3"
datadir    = "/Users/tns/LivePerson/projects/carlos-liveperson.github.io/.stack-work/install/x86_64-osx/lts-12.5/8.4.3/share/x86_64-osx-ghc-8.4.3/carlos-liveperson-github-io-0.1.0.0"
libexecdir = "/Users/tns/LivePerson/projects/carlos-liveperson.github.io/.stack-work/install/x86_64-osx/lts-12.5/8.4.3/libexec/x86_64-osx-ghc-8.4.3/carlos-liveperson-github-io-0.1.0.0"
sysconfdir = "/Users/tns/LivePerson/projects/carlos-liveperson.github.io/.stack-work/install/x86_64-osx/lts-12.5/8.4.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "carlos_liveperson_github_io_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "carlos_liveperson_github_io_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "carlos_liveperson_github_io_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "carlos_liveperson_github_io_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "carlos_liveperson_github_io_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "carlos_liveperson_github_io_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
