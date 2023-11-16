#include<stdio.h>
#include<stdlib.h>
int a[10],front=-1,rear=-1,n;
void insert();
void display();
void del();
void search();

int main()

{

int ch;
printf("Enter the size of the queue: ");
scanf("%d",&n);
while(1)

{
 
printf("\n\n1:Insertion);
printf("\n\n2:Deletion);
printf("\n\n3:Display);
printf("\n\n4:Search);
printf("\n\n5:Exit);
printf("\n Enter your choice: ");
scanf("%d",&ch);

switch(ch)

{

 case 1:
  insert();
  break:
 case 2:
  del();
  break:
 case 3:
  display();
  break:
 case 4:
  search();
  break:
 case 5:
  printf("\n Press any key to exit");
  exit(0):
 default:
  printf("\n Invalid Choice");

}
}

return 0;
}   
  
  
  
  
