/*********************************************
 * OPL 12.5.1.0 Model
 * Author: foucher
 * Creation Date: 22 févr. 2016 at 15:38:18
 *********************************************/
int n=8;
range N=1..n;
range N1=-1..n+2;
{int} N2={-1,0,n+1,n+2};


dvar boolean x[N1][N1];

minimize sum(i in N)sum(j in N) x[i][j];
subject to{
  forall (i in N2)forall (j in N1) x[i][j]==0;
  forall (i in N1)forall (j in N2) x[i][j]==0;
  forall (i in N)forall(j in N)  x[i][j]+x[i+2][j+1]+x[i+2][j-1]+x[i-2][j+1]+x[i-2][j-1]+x[i+1][j+2]+x[i-1][j+2]+x[i+1][j-2]+x[i-1][j-2] >=1; 
}  

