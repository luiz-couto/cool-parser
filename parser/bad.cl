(* 1.1. A classe TYPEID possui um erro de lexer *)
class a {
};

(* 1.2. A feature list possui um erro *)
class A { 
  imAnError;
};

(* 1.3. Ambos possuem erro (TYPEID e feature list) *)
class b {
  imAnError;
};

(* 2.1.  A label da feature está incorreta *)
class C {
  BadAttribute : String;
  BadMethod () : String { "Hello" }; (* this should not be hit *)
};

(* 2.2. O body do método possui algum erro *)
class D {
  goodFunction (formal1 : Int) : String {
    THIS_IS_A_MISTAKE
  };
};

(* 2.3. A formal list possui um erro *)
class E {
  badFormals (formal1 : wrongType) : String {
    "Ok"
  };
};

(* 2.4. A declaração de um atributo está incorreta *)
class F { 
  badFormals (, formal1 : Type) : String {
    "Expression"
  };
};

(* 3.1. Uso incorreto de operadores booleanos *) 
class G {
  booleanOpTest () : Bool {
    1 <= 1 <= 2
  };
};

(* 3.2. Uso incorreto de 'isvoid' *) 
class H {
  isvoidOpTest () : Bool {
    isvoid isvoid B
  };
};

(* 3.3. Dispatch incorreto  *) 
class I {
  dispatchTest () : Bool {
    {
      A.test(); (* cannot dispatch from typename *)
      b@C@d.method(); (* cannot static dispatch from an instance *)
    }
  };
};

(* 5. Listas de expressões incorretas *)
class J {
  blockTest () : String {
    {
      "A";
      //; (* This is an error *)
      "B";
    }
  };
  methodTest (a : A) : String {
    a.goodFunction(1, 2, **, 3)
  };
};

(* 6.1. let bindings incorretos *)
class K {
  letPuncTest () : String {
    let i : Int j : String in y
  };
};

(* 6.2. Expressão incorreta após a keyword IN *)
class L {
  letExpr () : String {
    let i : Int, j : String in Potato
  };
};