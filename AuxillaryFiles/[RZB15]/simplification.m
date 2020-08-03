

// Simplification function. This takes as input a rational function f
// and returns a simplier version of f, obtained by composing
// with a linear fractional transformation. This transformation is also
// returned.

// This comes from Rouse--Zureick-Brown's code from their 2-adic images paper

/*
function size(f)
  num := Numerator(f);
  denom := Denominator(f);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  coflist := coflist cat [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  mult := LCM(coflist);
  num := num*mult;
  denom := denom*mult;
  if Degree(num) gt 0 then
    ret := &+[ Log(1+AbsoluteValue(Numerator(Coefficient(num,n)))) : n in [0..Degree(num)]];
  else
    ret := Log(1);
  end if;
  if Degree(denom) gt 0 then
    ret := ret + (&+[ Log(1+AbsoluteValue(Numerator(Coefficient(denom,n)))) : n in [0..Degree(denom)]]);
  end if;
  return ret;
end function;
*/

function size(f)
  return #Sprintf("%o",f);
end function;

// Supersimplify functions - This is probably only necessary on
// functions coming from index 3 or 4 covers because the rational
// functions that are output are ridiculously complicated

function transcheck(f)
  //printf "Finding optimal translation.\n";
  t := Parent(f).1;
  done := true;
  if size(Evaluate(f,t-1)) lt size(f) then
    upp := 0;
    mid := -1;
    low := -2;
    while size(Evaluate(f,t+low)) lt size(Evaluate(f,t+mid)) do
      upp := mid;
      mid := low;
      low := low*2;
    end while;
    done := false;
  end if;
  if size(Evaluate(f,t+1)) lt size(f) then
    low := 0;
    mid := 1;
    upp := 2;
    while size(Evaluate(f,t+2*mid)) lt size(f) do
      low := mid;
      mid := 2*mid;
      upp := 2*mid;
    end while;
    done := false;
  end if;
  if done eq false then
    uppsiz := size(Evaluate(f,t+upp));
    midsiz := size(Evaluate(f,t+mid));
    lowsiz := size(Evaluate(f,t+low));
    round := 0;
    while done eq false do
      round := round + 1;
      //printf "Bisection method, round %o.\n",round;
      //printf "low = %o, lowsiz = %o.\n",low,lowsiz;
      //printf "mid = %o, midsiz = %o.\n",mid,midsiz;
      //printf "upp = %o, uppsiz = %o.\n",upp,uppsiz;
      if (upp-low) le 1 then
        done := true;
      else
        check1 := Round((low+mid)/2);
        check2 := Round((mid+upp)/2);
        newsiz1 := size(Evaluate(f,t+check1));
        newsiz2 := size(Evaluate(f,t+check2));
        sizelist := [lowsiz,newsiz1,midsiz,newsiz2,uppsiz];
        ind := Index(sizelist,Min(sizelist));
        if (ind eq 2) then
          upp := mid;
          uppsiz := midsiz;
          mid := check1;
          midsiz := newsiz1;
        end if;
        if (ind eq 3) then
          low := check1;
          lowsiz := newsiz1;
          upp := check2;
          uppsiz := newsiz2;
        end if;
        if (ind eq 4) then
          low := mid;
          lowsiz := midsiz;
          mid := check2;
          midsiz := newsiz2;
        end if;
      end if;
    end while;
    f2 := Evaluate(f,t+mid);
    if size(f2) lt size(f) then
      //printf "It is %o.\n",mid;
      retM := Matrix([[1,mid],[0,1]]);
      //printf "It is %o.\n",mid;
      retM := Matrix([[1,mid],[0,1]]);
    else
      //printf "It is %o.\n",0;
      f2 := f;
      retM := Matrix([[1,0],[0,1]]);
    end if;
  else
    f2 := f;
    //printf "It is %o.\n",0;
    retM := Matrix([[1,0],[0,1]]);
  end if;
  return f2,retM;
end function;

// This function returns the optimal scaling of the
// polynomial g with relatively prime integer coefficients.

function scale(g)
  coflist := Coefficients(g);
  ret := 1;
  if #[ i : i in [1..#coflist] | coflist[i] ne 0] ge 2 then
    gcd1 := GCD([Coefficient(g,i) : i in [1..Degree(g)]]);
    //printf "GCD1 = %o.\n",gcd1;
    gcd2 := GCD([Coefficient(g,i) : i in [0..Degree(g)-1]]);
    //printf "GCD2 = %o.\n",gcd2;
    //printf "Computing prime factorization.\n";
    primelist := PrimeDivisors(LCM(gcd1,gcd2));
    //printf "Done!\n";
    for j in [1..#primelist] do
      p := primelist[j];
      vallist := [ Valuation(Coefficient(g,n),p) : n in [0..Degree(g)]];
      //printf "Checking p = %o.\n",p;
      if Valuation(Coefficient(g,Degree(g)),p) gt 0 then
        //printf "Exponent should be negative.\n";
        //printf "List = %o.\n",[ vallist[n+1]/n : n in [1..Degree(g)]];
        ex := Floor(Min([ vallist[n+1]/n : n in [1..Degree(g)]]));
        ex := -ex;
      else
        //printf "Exponent should be positive.\n";
        //printf "List = %o.\n",[ vallist[n+1]/(Degree(g)-n) : n in [0..Degree(g)-1]];
        ex := Floor(Min([ vallist[n+1]/(Degree(g)-n) : n in [0..Degree(g)-1]]));
      end if;

      ret := ret*p^(ex);
    end for;
  end if;
  return ret;
end function;

function scale2(f)
  t := Parent(f).1;
  num := Numerator(f);
  denom := Denominator(f);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  coflist := coflist cat [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  mult := LCM(coflist);
  num := PolynomialRing(Integers())!(num*mult);
  denom := PolynomialRing(Integers())!(denom*mult);
  //printf "Current size = %o.\n",size(f);
  //printf "Scaling numerator.\n";
  r1 := scale(num div Content(num));
  //printf "Scaling denominator.\n";
  r2 := scale(denom div Content(denom));
  primelist := PrimeDivisors(Numerator(r1)*Denominator(r1)*Numerator(r2)*Denominator(r2));
  primevals := [];
  for i in [1..#primelist] do
    v1 := Valuation(r1,primelist[i]);
    v2 := Valuation(r2,primelist[i]);
    if (v1 lt 0) and (v2 lt 0) then
      Append(~primevals,Max(v1,v2));
    else
      if (v1 gt 0) and (v2 gt 0) then
        Append(~primevals,Min(v1,v2));
      else
        Append(~primevals,0);
      end if;
    end if;
  end for;
  if #primelist gt 0 then
    scalfac := &*[ primelist[i]^primevals[i] : i in [1..#primelist]];
  else
    scalfac := 1;
  end if;
  //printf "Scaling factor %o.\n",scalfac;
  newf := Evaluate(f,scalfac*t);
  retsize := size(newf);
  //printf "Size of scaled f = %o.\n",retsize;
  return scalfac,retsize;
end function;

// Supersimplify function

function supersimplify(f)
  //printf "Call to supersimplify.\n";
  t := Parent(f).1;
  j := f;
  changemat := Matrix([[1,0],[0,1]]);
  prevsize := size(j);
  prevj := j;
  prevmat := changemat;
  alldone := false;
  while alldone eq false do
  //printf "Entering simplification iteration. Current size = %o.\n",prevsize;
  scal, newsize := scale2(j);
  jnew := Evaluate(j,t*scal);
  changemat := changemat*Matrix([[scal,0],[0,1]]);
  //printf "Size after scaling = %o.\n",newsize;

  // Do translations - do this by
  // factoring num and denom modulo prime
  // powers

  //printf "Translation check.\n";
  num := PolynomialRing(Rationals())!Numerator(jnew);
  denom := PolynomialRing(Rationals())!Denominator(jnew);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  num := num*LCM(coflist);
  num := PolynomialRing(Integers())!num;
  coflist := [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  denom := denom*LCM(coflist);
  denom := PolynomialRing(Integers())!denom;
  if Degree(num) gt 0 then
    FF := Factorization(num);
    sqrfreenum := &*[ FF[i][1] : i in [1..#FF]];
  else
    sqrfreenum := PolynomialRing(Integers())!1;
  end if;
  if Degree(denom) gt 0 then
    FF := Factorization(denom);
    sqrfreedenom := &*[ FF[i][1] : i in [1..#FF]];
  else
    sqrfreedenom := PolynomialRing(Integers())!1;
  end if;
  if (Degree(sqrfreenum) gt 0) and (Degree(sqrfreedenom) gt 0) then
    D := GCD(Discriminant(sqrfreenum),Discriminant(sqrfreedenom));
  end if;
  if Degree(sqrfreenum) eq 0 then
    D := Discriminant(sqrfreedenom);
  end if;
  if Degree(sqrfreedenom) eq 0 then
    D := Discriminant(sqrfreenum);
  end if;
  plist := PrimeDivisors(D);
  for n in [1..#plist] do
    p := plist[n];
    F := GF(p);
    RRRR<zzzz> := PolynomialRing(F);
    done := false;
    while done eq false do
      //printf "Translation check at p = %o.\n",p;
      num := PolynomialRing(Rationals())!Numerator(jnew);
      denom := PolynomialRing(Rationals())!Denominator(jnew);
      coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
      num := num*LCM(coflist);
      num := RRRR!num;
      coflist := [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
      denom := denom*LCM(coflist);
      denom := RRRR!denom;
      prod := RRRR!1;
      if (num ne 0) then
        prod := prod*num;
      end if;
      if (denom ne 0) then
        prod := prod*denom;
      end if;
      fac := Factorization(prod);
      //printf "Factorization = %o.\n",fac;
      if (#fac eq 1) and Degree(fac[1][1]) eq 1 then
        r := Integers()!(Roots(prod)[1][1]);
        chk1 := Evaluate(jnew,p*t+r);
        chk2 := Evaluate(jnew,p*t+(-p+r));
        size1 := size(chk1);
        size2 := size(chk2);
       //printf "Possible new sizes are %o and %o.\n",size1,size2;
        minsize := Min(size1,size2);
        if (minsize lt newsize) then
          if (size1 eq minsize) then
            jnew := chk1;
            changemat := changemat*Matrix([[p,r],[0,1]]);
            newsize := size1;
            //printf "Transformation %o. New size = %o.\n",p*t+r,newsize;
          else
            jnew := chk2;
            changemat := changemat*Matrix([[p,r-p],[0,1]]);
            newsize := size2;
            //printf "Transformation %o. New size = %o.\n",p*t+(-p+r),newsize;
          end if;
        else
          done := true;
        end if;
      else
        done := true;
      end if;
    end while;
  end for;
  //printf "Translation check done. New size = %o.\n",newsize;
  j := jnew;

  // Do some rounds of random substitutions
  done := false;
  bound := 5;
  it := 0;
  ptlist := [];
  for aa in [-bound..bound] do
    for bb in [-bound..bound] do
      for cc in [-bound..bound] do
        for dd in [0..bound] do
          if GCD([aa,bb,cc,dd]) eq 1 then
            if aa*dd - bb*cc ne 0 then
              Append(~ptlist,<aa,bb,cc,dd>);
            end if;
          end if;
        end for;
      end for;
    end for;
  end for;
  //printf "Doing up to 5 rounds of substitutions.\n";
  while done eq false do
    it := it + 1;
    cursize := size(j);
    //printf "Beginning iteration %o. Size = %o.\n",it,cursize;
    minsize := cursize;
    for n in [1..#ptlist] do
      pt := ptlist[n];
      aa := pt[1];
      bb := pt[2];
      cc := pt[3];
      dd := pt[4];
      jnew := Evaluate(j,(aa*t+bb)/(cc*t+dd));
      chksize := size(jnew);
      if (chksize lt minsize) then
        //printf "Index %o has size %o. pt = %o\n",n,chksize,pt;
        minsize := chksize;
        ind := n;
      end if;
    end for;
    if minsize lt cursize then
      pt := ptlist[ind];
      aa := pt[1];
      bb := pt[2];
      cc := pt[3];
      dd := pt[4];
      jnew := Evaluate(j,(aa*t+bb)/(cc*t+dd));
      changemat := changemat*Matrix([[aa,bb],[cc,dd]]);
      //printf "After round %o size = %o.\n",it,minsize;
      j := jnew;
      //printf "j = %o.\n",j;
      if (it ge 5) then
        done := true;
      end if;
    else
      done := true;
    end if;
  end while;
  // Translation rounds
  //printf "Doing two more random checks.\n";
  j, retM := transcheck(j);
  changemat := changemat*retM;
  // Hack for group number 7
  if size(Evaluate(j,t/31)) lt size(j) then
    j := Evaluate(j,t/31);
    changemat := changemat*Matrix([[1,0],[0,31]]);
  end if;
  //printf "Final size is %o.\n",size(j);
  if size(j) ge prevsize then
    alldone := true;
    j := prevj;
    changemat := prevmat;
  else
    prevj := j;
    prevmat := changemat;
    prevsize := size(j);
  end if;
  end while;
  return j, changemat;
end function;
