data Term = TVar Int
          | TLam Term
          | TApp Term Term deriving (Show)

data Value = VClos Term Env deriving (Show)

type Env = [Value]

type Cont = Value -> Value

env_lookup :: Env -> Int -> Value
env_lookup (v:xs) 1 = v
env_lookup (v:xs) n = env_lookup xs (n-1)

eval :: Term -> Env -> Cont -> Value
eval (TVar n) env cont = cont (env_lookup env n)
eval (TLam t) env cont = cont (VClos t env)
eval (TApp t1 t2) env cont = 
    (eval t1 env 
     (\(VClos cbody cenv) ->
      (eval t2 env 
       (\v2 -> 
        (eval cbody (v2:cenv) 
         (\v3 -> cont (v3)))))))
                      
interp :: Term -> Value
interp t = eval t [] (\v -> v)

exec :: Term -> IO ()
exec t = do
    putStrLn ("term = " ++ show (t))
    putStrLn ("result = " ++ show (interp t) ++ "\n")
             
main = do
  -- ((\x -> x x) (\x -> x x)) -- Omega
  -- Diverge tout le temps
  -- exec (TApp (TLam (TApp (TVar 1) (TVar 1))) (TLam (TApp (TVar 1) (TVar 1))))

  -- ((\x -> (\x -> x)) omega) 
  -- Diverge en CBV, mais pas en CBN 
  exec (TApp (TLam (TLam (TVar 1)))
             (TApp (TLam (TApp (TVar 1) (TVar 1))) 
                   (TLam (TApp (TVar 1) (TVar 1))))) 
