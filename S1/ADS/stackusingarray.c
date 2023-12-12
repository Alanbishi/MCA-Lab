#include<stdio.h>
#include<stdlib.h>
int a[10],top=-1,n;
void push();
void pop();
void display();
void search();
int main()
{
	int ch;
	printf("Enter the size of the Stack:");
	scanf("%d",&n);
	while(1)
	{
		printf("\n\n1.Push\n2.Pop\n3.Display\n4.Search\n5.Exit\n");
		printf("\nEnter Your Choice:\n");
		scanf("%d",&ch);
		switch(ch)
		{
			 case 1:push();
					break;
			 case 2:pop();
					break;
			 case 3:display();
					break;
			 case 4:search();
					break;
			 case 5:exit(0);
			 default:printf("\nInvalid choice\n");
		}
	}
	return 0;
}
void push(){
	int value;
	if(top==n-1)
		printf("stack is full");
	else{
		printf("Enter the element to be inserted : ");
		scanf("%d",&value);
		if(top==-1)
			top=0;
		else
			top=top+1;
		a[top]=value;
	}
}
void pop(){
	if(top==-1)
		printf("Stack is Empty");
	else{
		printf("%d is deleted",a[top]);
		top=top-1;
	}
}
void display(){
	int i;
	if(top==-1)
		printf("Stack is Empty");
	else{
		printf("The Stack is : \n");
		for(i=top;i>=0;i--)
			printf("%d\n",a[i]);
	}
}
void search(){
	int value,f=0,i;
	if(top==-1)
		printf("Stack is Empty");
	else{
		printf("Enter the element to be searched : ");
		scanf("%d",&value);
		for(i=top;i>=0;i--){
			if(a[i]==value){
				printf("Element Found at the stack");
				f=1;
				break;
			}
		}
		if(f==0)
			printf("Element not found");
	}
}
			
