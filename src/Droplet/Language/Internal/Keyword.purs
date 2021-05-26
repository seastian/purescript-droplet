-- | SQL Keywords and tokens
module Droplet.Language.Internal.Keyword where

--magic strings
selectKeyword :: String
selectKeyword = "SELECT "

fromKeyword :: String
fromKeyword = " FROM "

whereKeyword :: String
whereKeyword = " WHERE "

andKeyword :: String
andKeyword = " AND "

orKeyword :: String
orKeyword = " OR "

asKeyword :: String
asKeyword = " AS "

starSymbol :: String
starSymbol = "*"

comma :: String
comma = ", "

openBracket :: String
openBracket = "("

closeBracket :: String
closeBracket = ")"

equalsSymbol :: String
equalsSymbol = " = "

notEqualsSymbol :: String
notEqualsSymbol = " <> "

lesserThanSymbol :: String
lesserThanSymbol = " < "

greaterThanSymbol :: String
greaterThanSymbol = " > "

parameterSymbol :: String
parameterSymbol = "$"

insertKeyword :: String
insertKeyword = "INSERT INTO "

valuesKeyword :: String
valuesKeyword = " VALUES "

updateKeyword :: String
updateKeyword = "UPDATE "

setKeyword :: String
setKeyword = " SET "

deleteKeyword :: String
deleteKeyword = "DELETE"

atSymbol :: String
atSymbol = "@"

returningKeyword :: String
returningKeyword = " RETURNING "

descKeyword :: String
descKeyword = " DESC"

ascKeyword :: String
ascKeyword = " ASC"

orderKeyword :: String
orderKeyword = " ORDER "

byKeyword :: String
byKeyword = "BY "

countFunctionName :: String
countFunctionName = "COUNT"

limitKeyword :: String
limitKeyword = " LIMIT "