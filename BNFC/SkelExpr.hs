module SkelExpr where

-- Haskell module generated by the BNF converter

import AbsExpr
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transExpr :: Expr -> Result
transExpr x = case x of
  EAdd expr1 expr2 -> failure x
  ETerm term -> failure x
transTerm :: Term -> Result
transTerm x = case x of
  TMul term factor -> failure x
  TFact factor -> failure x
transFactor :: Factor -> Result
transFactor x = case x of
  Num integer -> failure x
