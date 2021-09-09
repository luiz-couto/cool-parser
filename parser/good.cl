Class A {
  correctAttr : String <- "Hello World";
  correctUninitAttr : String;
  methodA ( correctFormal1 : Int, correctFormal2 : String ) : String{
    "Hello"
  };
};

Class B inherits A {
};

Class D {
  caseTest (object : Object) : String {
    case (object) of
      s : String => "String";
      o : Object => "Object"; 
    esac
  };

  branchTest (value : Bool) : Bool {
    if value 
      then true 
      else if false 
        then true 
        else false 
      fi 
    fi
  };

  loopTest (value : Int) : Int {
    while (value < 0) loop
      value <- value - 1
    pool
  };

  operatorBlockTest (input : Int) : Int {
    {
      2 + 2;
      4 - 4;
      15 / 3;
      10 * 2;
      11 = 11;
      input <- 0;
      12 < 5;
      10 <= 5;
    }
  };

  letStatementTest () : String {
    let i : Int, j : Int, g : Int in i + j + g
  };

  anotherLetTest() : Int {
    let x : Int <- let y : Int <- 5 in y + 3 in x + 2
  };

  dispatchStatementTest() : String { 
    (new A).methodA(1, "HelloWorld")
  };

  staticDispatchTest(b : B) : String {
    b@A.methodA(1, "Hello")
  };
  
  impliedSelfDispatchTest() : String {
    dispatchStatementTest()
  };
};