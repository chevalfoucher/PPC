/*********************************************
 * OPL 12.5.1.0 Model
 * Author: foucher
 * Creation Date: 22 févr. 2016 at 14:34:59
 *********************************************/
using CP;

int n=7;
range N=1..n;
int f=10;
range F=1..f;
int offset[N][N]=...;
 
dvar int x[N] in F;
dvar boolean y[F];

minimize sum(j in F) y[j];
subject to{
 forall (i in N) (i+x[i]) mod 2==1;
 forall (i in N) forall (j in N) abs(x[i]-x[j])>=offset[i][j]; 
 forall (i in N) y[x[i]]==1;
}