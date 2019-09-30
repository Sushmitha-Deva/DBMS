#include<iostream>
#include<cstring>
#include<vector>
using namespace std;
typedef vector<char>::iterator Riter;

struct FD
{
  char lhs[100];
  char rhs[100];
};

struct Relation
{
  struct FD F[100];
  int nfd;
}R; 

bool charsub(string ,string);
char Attr[100];
void subset(int S[],int n);
int N_ATTR;
bool iscandid(char B[],int n);
string candidatekey[100];
int mincandid;
int no_candid;

int main()
{
 mincandid=9999;
 no_candid=-1;
 int n;
 cout<<"\n Enter the no of attributes: ";
 cin>>N_ATTR;
 n=N_ATTR;
 cout<<"\n Enter the attributes: ";
 for(int i=0;i<n;i++)
 	cin>>Attr[i];
 cout<<"\n Enter the no.of fds";
 cin>>R.nfd;
 cout<<"\n Enter the fds: \n";
 for(int i=0;i<R.nfd;i++)
 	{
	  cout<<"\n lhs:";cin>>R.F[i].lhs;
	  cout<<"\n rhs:";cin>>R.F[i].rhs;
	}
 cout<<"\n possible subsets:\n";
 int S[100];
 for(int i=0;i<n;i++)
   S[i]=-1;

 subset(S,n);

 cout<<"\n Candidate keys:\n";
 for(int i=0;i<=no_candid;i++)
	if(candidatekey[i].length()==mincandid)
	cout<<candidatekey[i]<<endl;
 cout<<endl;
 return 0;
}
void subset(int S[],int n)
{
	if(n==0)
	{
		vector <char> A;
		char B[100]={'\0'},C[100];
		for(int i=0;i<N_ATTR;i++)
		{
			if(S[i]==1)
				A.push_back(Attr[i]);
		}
		int k=0;
		for (Riter it = A.begin() ; it != A.end(); ++it)
    		{
			B[k]=*it;
			cout<<' '<<B[k];    k++;	
		}
		strcpy(C,B);
		bool val=iscandid(B,A.size());
		if(val)
		{
			cout<<"   is a super key";
			if(A.size()<=mincandid)
			{
				no_candid++;
				candidatekey[no_candid]=C;
				mincandid=A.size();
			}
		}
		cout<<endl;
		return;
	}
	S[n-1]=0;
	subset(S,n-1);
	S[n-1]=1;
	subset(S,n-1);
    return;
}
bool iscandid(char B[],int num)
{
  int marked[100]={0};
  for(int i=0;i<R.nfd;i++)
   {
		if(charsub(B,R.F[i].lhs))
		{
			int j=0;
			while(R.F[i].rhs[j]!='\0')
			{
				for(int k=0;k<N_ATTR;k++)
					if(Attr[k]==R.F[i].rhs[j]&&marked[k]!=1)
						{
							B[num++]=Attr[k];
							marked[k]=1;
							i=0;	
						}

				j++;
			}
		}
   }
  for(int i=0;i<num;i++)
	for(int j=0;j<N_ATTR;j++)
		if(B[i]==Attr[j])
			marked[j]=1;

  cout<<"\tClosure: ";
  for(int i=0;i<N_ATTR;i++)
	if(marked[i]==1)
		cout<<Attr[i];

  for(int i=0;i<N_ATTR;i++)
	if(marked[i]==0)
		return false;

 return true;
}
bool charsub(string A1,string A2)
{
  int flag=0;
  for(int i=0;i<A2.length();i++)
  {
    flag=0;
    for(int j=0;j<A1.length();j++)
	{
      if(A2[i]==A1[j])
	  flag=1;
	}
    if(flag==0)
	return false;

  }
return true;		
}
