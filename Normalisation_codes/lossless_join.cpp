#include<iostream>
using namespace std;
const int R=3;
const int N=5;
class reln
{
    int s[R][N];
    int r, n;
    int chk[N];
public:
    void init();
    void disp();
    int lossless();
};
void reln::init()
{
    cout<<"----\nx.init()\n";
    r=R;
    n=N;

    int a[][N]={{1, 0, 0, 1, 0}, {1, 1, 1, 0, 0}, {0, 0, 0, 0, 1}};

    for(int i=0; i<r; i++)
    {
        for(int j=0; j<n; j++)
        {
            s[i][j]=a[i][j];
        }
    }
    for(int j=0; j<n; j++)
    {
           chk[j]=0;
    }
}
void reln::disp()
{
    cout<<"----\nx.disp()\n";
    for(int i=0; i<r; i++)
    {
        for(int j=0; j<n; j++)
        {
            cout<<s[i][j]<<'\t';//=a[i][j];
        }
        cout<<endl;
    }
    cout<<"Check:\n";
    for(int i=0; i<n; i++)
        cout<<chk[i]<<'\t';
    cout<<endl;
}
int reln::lossless()
{
    cout<<"----\nx.lossless()\n";
    for(int i=0; i<n; i++)
    {
        chk[i]=s[0][i];
    }

    int m[R];
   // int m[R];
    for(int i=0; i<r; i++)
        m[i]=0;
    m[0]=1;
    int toggle=1;
    while(toggle==1)
    {
        toggle=0;
        int flag=0;
        //int i;//=0;
        for(int i=0; i<r; i++)
        {
            if(m[i]==0)
            {
                flag=1;
                break;
            }
        }
        if(flag==1)
        {
            for(int i=0; i<r; i++)
            {
                if (m[i]==0)
                {
                    for(int j=0; j<n; j++)
                    {
                        if ((chk[j]==1)&&(s[i][j]==1))
                        {
                            for(int k=0; k<n; k++)
                            {
                               if(chk[k]==0)
                                    chk[k]=s[i][k];

                            }
                            m[i]=1;
                            toggle=1;
                            break;
                        }
                    }

                }
            }
        }
        else break;
    }

    int i=0;
    for(i=0; i<n; i++)
    {
        if (chk[i]!=1)
            break;
    }
    if(i==n)
        return(1);
    else
    {
        cout<<"----\ncheck\n";
        for(int i=0; i<n; i++)
            cout<<chk[i]<<"\t";
        cout<<endl;
        return (0);
    }
}
int main()
{
    cout<<"Hello World!\n";
    reln x;
    x.init();
    x.disp();
    cout<<x.lossless();
    return(0);
}
