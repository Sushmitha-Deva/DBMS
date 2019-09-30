#include<iostream>
#include<cstring>
using namespace std;
struct node
{
  char a[100][100];
};
struct node s[100];
char b[20][2];
int n,m,p=1;
int q;
char c[20];
void nf2();
void nf();
int main()
{

   
   cout<<"Enter no. of dependencies\n";
   cin>>n;
   cout<<"Enter the no. of attributes\n";
   cin>>m;
   cout<<"Enter the attributes\n";
   for(int i=0;i<m;i++)
    cin>>b[i][0];
   for(int i=0;i<m;i++)
       b[i][1]='0';
  
   for(int i=0;i<100;i++)
    {
     for(int j=0;j<n;j++)
      { 
        strcpy(s[i].a[j],"xxxxx"); 
       }
     }
   cout<<"Enter the dependencies\n";
   for(int i=0;i<n;i++)
      cin>>s[0].a[i];
   cout<<"Display:\n";
   for(int i=0;i<n;i++)
      cout<<"\t"<<s[0].a[i]<<endl;
     // cout<<endl;   
        
   cout<<"Enter the candidate key\n"; 
   cin>>c;
   for(int i=0;i<m;i++)
    {
      int k=0;
      while(c[k]!='\0')
       {
         if(c[k]==b[i][0])
           b[i][1]='1';
         k++;
        }
     }
    //for(int i=0;i<m;i++)
    //cout<<b[i][1];
  nf2();
  nf();
  return 0;
}
void nf1()
{
   int cou,cou1;
   int x=strlen(c);
   //cout<<x;
   int r=0;
   cout<<"\nDecomposition into 2nf\n";
   
   for(int i=0;i<n;i++)
   {
     int j,flag=0,flag1=0;
       cou=0;cou1=0;
       for(j=0;s[0].a[i][j]!='\0';j++)
        {

         if(s[0].a[i][j]=='-')
          { flag1=1;}
        else if(flag1==1)
          {
           int k=0;
             //cout<<s[0].a[i][j]<<endl;
            while(c[k]!='\0')
            {
               
               if(s[0].a[i][j]==c[k]) 
                {
                    cou1++;
                 }
              k++;
            }
          }
         else
            { int k=0;
             //cout<<s[0].a[i][j]<<endl;
            while(c[k]!='\0')
            {
               
               if(s[0].a[i][j]==c[k]) 
                {
                    cou++;
                 }
               else
                 {
                    for(int l=0;l<m;l++)
                     {
                        if(s[0].a[i][j]==b[l][0]&&b[l][1]=='0')
                                
                         {       
                           flag=1;

                         }
                     }
                  }                
               k++;
            }
           }
          }  
        //cout<<"count:"<<cou<<endl;
         if(cou<x&&cou!=0&&flag==0&&cou1==0)
           {
             strcpy(s[p].a[r],s[0].a[i]);
             strcpy(s[0].a[i],"xxxxx");
             p++;
            }  
     }
   
   
  for(int i=0;i<p;i++)
  {
    cout<<" Table "<<i+1<<":"<<endl;
    for(int j=0;j<n;j++)
    {
      if(strcmp(s[i].a[j],"xxxxx")!=0)
      cout<<"\t"<<s[i].a[j]<<" ";
    }
    cout<<endl;
  }
 cout<<p;
   q=p;
}
void nf2()
{
   int cou,cou1;
   int x=strlen(c);
   //cout<<x;
   int r=0;
   cout<<"\nDecomposition into 2nf\n";
    char rhs[20];
   for(int i=0;i<n;i++)
   {
     int j,flag=0,flag1=0;
     int r=0,d=0;
    
       cou=0;cou1=0;
       for(j=0;s[0].a[i][j]!='\0';j++)
        {

         if(s[0].a[i][j]=='-')
          { flag1=1;}
        else if(flag1==1)
          {
           int k=0;
            rhs[d]=s[0].a[i][j];
              
             //cout<<rhs[d]<<endl;
                d++;
            while(c[k]!='\0')
            {
               
               if(s[0].a[i][j]==c[k]) 
                {
                    cou1++;
                 }
              k++;
            }
          }
         else
            { int k=0;
             //cout<<s[0].a[i][j]<<endl;
            while(c[k]!='\0')
            {
               
               if(s[0].a[i][j]==c[k]) 
                {
                    cou++;
                 }
               else
                 {
                    for(int l=0;l<m;l++)
                     {
                        if(s[0].a[i][j]==b[l][0]&&b[l][1]=='0')
                                
                         {       
                           flag=1;

                         }
                     }
                  }                
               k++;
            }
           }
          }  
        //cout<<"count:"<<cou<<endl;
         if(cou<x&&cou!=0&&flag==0&&cou1==0)
           {
             strcpy(s[p].a[r],s[0].a[i]);
             strcpy(s[0].a[i],"xxxxx");
             r++;
               for(int y=0;y<n;y++)
               {
                   int cou2=0,cou3=0;
                  int flag2=0; 
                 if(strcmp(s[i].a[j],"xxxxx")!=0)
                  {
                  for(int z=0;s[0].a[y][z]!='\0';z++)
                   {
                      int k=0;
                       if(s[0].a[y][z]=='-')
                        break; 
                       else
                      {
                      while(rhs[k]!='\0')
                       {
                         if(rhs[k]==s[0].a[y][z])
                            cou3++;
                         k++;
                       }
                      }
                   }
                  
                  if(cou3>=1)
                  {
                    strcpy(s[p].a[r],s[0].a[y]);
                    strcpy(s[0].a[y],"xxxxx");
                    r++;
                   }
                 }
               }
             p++;
            }  
     }
   
   
  for(int i=0;i<p;i++)
  {
    cout<<" Table "<<i+1<<":"<<endl;
    for(int j=0;j<n;j++)
    {
      if(strcmp(s[i].a[j],"xxxxx")!=0)
      cout<<"\t"<<s[i].a[j]<<" ";
    }
    cout<<endl;
  }
 cout<<p;
  q=p;
}
void nf3()
{
 cout<<"\nDecomposition into 3nf\n";
 int x=strlen(c);
   for(int j=0;j<n;j++)
    {
     if(strcmp(s[0].a[j],"xxxxx")!=0)
      {
        int cou=0,cou1=0,cou2=0,flag=0;
      for(int k=0;s[0].a[j][k]!='\0';k++)
       {
        
            if(s[0].a[j][k]=='-')
                {
                    flag=1;
                 }
            else if(flag==1)
                 {
                   for(int l=0;l<m;l++)
                     {
                        if(s[0].a[j][k]==b[l][0])      
                         {       
                           if(b[l][1]=='1')
                            cou2++;
                         }
                     
                     } 
               
                  }
            else
               {
                  cou1++;
                  for(int l=0;l<m;l++)
                     {
                        if(s[0].a[j][k]==b[l][0])      
                         {       
                           if(b[l][1]=='0')
                            cou++;
                         }
                     
                     }
               }              
           }
          //cout<<cou1<<" "<<cou<<" "<<cou2<<endl;
          if(cou2<1&&(cou1-cou)==0&&cou>=1)
            { 
             strcpy(s[p].a[0],s[0].a[j]);
             strcpy(s[0].a[j],"xxxxx");
             p++;

            }           
       }
     }
     
 
  for(int i=0;i<p;i++)
       {
        cout<<" Table "<<i+1<<":"<<endl;
        for(int j=0;j<n;j++)
         {
           if(strcmp(s[i].a[j],"xxxxx")!=0)
              cout<<"\t"<<s[i].a[j]<<" ";
          }
                 cout<<endl;
        }

   
}
void nf()
{
  cout<<"\nDecomposition into 3nf\n";
 int x=strlen(c);
 for(int i=0;i<q;i++)
  {
   for(int j=0;j<n;j++)
    {
     if(strcmp(s[i].a[j],"xxxxx")!=0)
      {
        int cou=0,cou1=0,cou2=0,flag=0;
      for(int k=0;s[i].a[j][k]!='\0';k++)
       {
        
            if(s[i].a[j][k]=='-')
                {
                    flag=1;
                 }
            else if(flag==1)
                 {
                   for(int l=0;l<m;l++)
                     {
                        if(s[i].a[j][k]==b[l][0])      
                         {       
                           if(b[l][1]=='1')
                            cou2++;
                         }
                     
                     } 
               
                  }
            else
               {
                  cou1++;
                  for(int l=0;l<m;l++)
                     {
                        if(s[i].a[j][k]==b[l][0])      
                         {       
                           if(b[l][1]=='0')
                            cou++;
                         }
                     
                     }
               }              
           }
          //cout<<cou1<<" "<<cou<<" "<<cou2<<endl;
          if(cou2<1&&(cou1-cou)==0&&cou>=1)
            { 
             strcpy(s[p].a[0],s[i].a[j]);
             strcpy(s[i].a[j],"xxxxx");
             p++;

            }           
       }
     }
     
    }
  for(int i=0;i<p;i++)
       {
        cout<<" Table "<<i+1<<":"<<endl;
        for(int j=0;j<n;j++)
         {
           if(strcmp(s[i].a[j],"xxxxx")!=0)
              cout<<"\t"<<s[i].a[j]<<" ";
          }
                 cout<<endl;
        }




}
