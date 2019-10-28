{-# LANGUAGE OverloadedStrings #-}

module Main where

import Text.HTML.Scalpel
import qualified Data.Text as T

newtype NextUrl = NextUrl (T.Text, T.Text)
    deriving (Show, Eq)

getRef :: NextUrl -> T.Text
getRef (NextUrl (c, _)) = c

getTitle :: NextUrl -> T.Text
getTitle (NextUrl (_, c)) = c

filterAll :: [NextUrl] -> [NextUrl]
filterAll values = filter filterFn values

filterFn :: NextUrl -> Bool
filterFn val = T.isPrefixOf "/wiki/" (getRef val) 

mapAll :: [NextUrl] -> [T.Text]
mapAll val = map getRef (filterAll val)

allComments = scrapeURL "https://en.wikipedia.org/wiki/Homoiconicity" links
   where
       links = chroots ("a") prepareNextUrl

       prepareNextUrl = do
           ref   <- attr "href" anySelector
           title   <- attr "title" anySelector
           return $ NextUrl (ref, title)

main :: IO ()
main = do
  z <- allComments
  onlyRefs <- return $ fmap mapAll z
  print onlyRefs
