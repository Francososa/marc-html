module Lib.Types where

import qualified Data.ByteString as BS
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import qualified Data.Text.Encoding as E
import Data.Maybe


type Author = T.Text
type Title = T.Text

data Book = Book {
  author :: Author,
  title :: Title } deriving Show

type Html = T.Text

type MarcRecordRaw = BS.ByteString
type MarcLeaderRaw = BS.ByteString
type MarcDirectoryRaw = BS.ByteString
type MarcDirectoryEntryRaw = BS.ByteString

data FieldMetadata = FieldMetadata {
  tag :: T.Text,
  fieldLength :: Int,
  fieldStart :: Int } deriving Show

type FieldText = T.Text
