module Test.Main where

import Droplet.Internal.Edsl.Definition
import Droplet.Internal.Edsl.Condition
import Droplet.Internal.Edsl.Language
import Prelude

import Data.Date (Date)
import Data.Date as DD
import Data.DateTime (DateTime(..), Time(..))
import Data.Either (Either(..))
import Data.Enum (class BoundedEnum)
import Data.Enum as DE
import Data.Eq (class EqRecord)
import Test.Select as TS
import Test.Insert as TI
import Data.Maybe (Maybe(..))
import Data.Maybe as DM
import Data.Show (class ShowRecordFields)
import Data.Tuple.Nested ((/\))
import Droplet.Internal.Mapper.Driver (class FromResult)
import Droplet.Internal.Mapper.Driver as Driver
import Droplet.Internal.Mapper.Pool as DIMP
import Droplet.Internal.Mapper.Query (class ToQuery, Query(..))
import Droplet.Internal.Mapper.Query as Query
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Partial.Unsafe as PU
import Prim.RowList (class RowToList)
import Test.Unit as TU
import Test.Unit.Assert as TUA
import Test.Unit.Main as TUM

main :: Effect Unit
main = TUM.runTest do
      TS.tests
      TI.tests