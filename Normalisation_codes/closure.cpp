#include<iostream>
#include<string>
using namespace std;
int c1[100],c2[100],length1=0;
class Closure
{
   public:
   int n;
   int f;
   string left[100];
   string right[100];
   string clos;
   void Input();
   void compute();
   void Disp();
   int subset(string c3,int p);
   int present(char b,string str1);
};

int main()
{
   Closure ob;
   ob.Input();
   ob.compute();
   
   return(0);
}
void Closure:: Input()
{

   cout<<"Enter the number of fds\n";
   cin>>f;
   for(int i=0;i<100;i++)
   {
      c1[i]=0;
      c2[i]=0;
   }
   for(int i=1;i<=f;i++)
   {
      cout<<"Enter lhs part\n";
      cin>>left[i];
      c1[i]=c1[i]+left[i].length();
      //cout<<c1[i];
      cout<<"Enter rhs part\n";
      cin>>right[i];
      c2[i]=c2[i]+right[i].length();
   }
   cout<<"Enter the string for which the closure has to be found\n";
   cin>>clos;
   length1=clos.length();
   
}

void Closure:: compute()
{
   for(int i=1;i<=f;i++)
   {
      //cout<<"left[i]"<<left[i]<<endl;
      if(subset(left[i],i)==1 && c1[i]>0)
      {
      clos=clos+right[i];
      length1=length1+c2[i];
      //cout<<clos<<endl;
      c1[i]=-1;
      i=0;
      }
   }
   string final="";
   int count1=0;
   for(int i=0;i<=length1;i++)
   {
      for(int j=0;j<=length1 && j!=i;j++)
      {
         if(clos[i]==clos[j])
         count1++;
 
      }
   if(count1==0)
   final=final+clos[i];
   count1=0;
   }
   cout<<"Closure is:"<<final<<endl;
}

int Closure:: subset(string c3,int p)
{
   int count=0;
   for(int i=0;i<=length1-1;i++)
   {
         if(present(clos[i],c3)==1)
         count++;
   }
   if(count<=length1 && count==c1[p])
   return(1);
   else
   return(0);
   
}

int Closure:: present(char b,string str1)
{
   int flag=0;
   for(int i=0;i<=str1.length()-1;i++)
   {
      if(b==str1[i])
      {
         flag=1;
         return(1);  
       }
   }
   if(flag==0)
   return(0);
   
}
