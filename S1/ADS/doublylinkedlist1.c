#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

struct node
{
 int data;
 struct node*prev;
 struct node*next;
};
struct node *start;
 void beginsert() {
 struct node *ptr;
 int x;
 ptr = (struct node *)malloc(sizeof(struct node));
 if(ptr == NULL) {
  printf("\n Overflow");
  } else {
   printf("\n Enter value: ");
   scanf("%d",&x);
   if(start == NULL) {
    ptr->data = x;
    ptr->prev = NULL;
    ptr->next = NULL;
    start->prev = ptr;
    start = ptr;
   }
  }
 }
 
 void lastinsert() {
  struct node *ptr,*temp;
  int x;
  ptr = (struct node *)malloc(sizeof(struct node));
  if(ptr == NULL) {
   printf("\n Overflow");
  }else {
   printf("\n Enter value: ");
   scanf("%d",&x);
   ptr->data = x;
   if(start == NULL) {
    ptr->next = NULL;
    ptr ->prev = NULL;
    start = ptr;
    } else {
     temp = start;
     while(temp->next != NULL) {
      temp=temp->next;
     }
     temp->next = ptr;
     ptr->prev = temp;
     ptr->next = NULL;
    }
   }
  }
  
  void posinsert() {
   int pos,i,x;
   struct node *ptr, *temp;
   ptr = (struct node *)malloc(sizeof(struct node));
   if(ptr == NULL) {
    printf("\n Overflow");
   }else{
   printf("\n Enter value :");
   scanf("%d",&x);
   ptr->data = x;
   printf("\n Enter the position");
   scanf("%d",&pos);
   temp = start;
   if(pos == 1) {
    if(start == NULL) {
     ptr->data = x;
     ptr->prev = NULL;
     ptr->next = NULL;
     start = ptr;
    }else{
     ptr->data = x;
     ptr->prev = NULL;
     ptr->next = start;
     start->prev = ptr;
     start = ptr;
    }
   }else {
    for(i=1;i<pos - 1;i++){
     temp = temp->next;
     if(temp == NULL) {
      printf("\n Can't insert");
      return;
     }
    }
    ptr->next=temp->next;
    temp->next = ptr;
    ptr->prev = temp;
    if(ptr->next != NULL) {
      (ptr->next)->prev = ptr;
     }
    }
   }
  }
  
  void begdel(){
   int x; 
   struct node *ptr;
   if(start == NULL) {
    printf("\n List is empty");
    }else{
     ptr = start;
     start = ptr->next;
     if(start != NULL) {
      start->prev = NULL;
     }
     x = ptr->data;
     free(ptr);
     printf("\n %d Deleted",x);
    }
   }
    void lastdel() {
     int x;
     struct node *ptr, *ptr1;
     if(start == NULL) {
      printf("\n List is empty");
     }else if (start->next == NULL) {
     x = start->data;
     free(start);
     start = NULL;
     printf("\n%d Deleted",x);
    }else{
     ptr = start;
     while(ptr->next != NULL) {
      ptr1 = ptr;
      ptr = ptr->next;
     }
     ptr->next=NULL;
     x=ptr->data;
     free(ptr);
     printf("\n%d Deleted",x);
    }
   }
   
   void posdel() {
    struct node *ptr, *ptr1;
    int pos,i,x;
    ptr = start;
    if(ptr == NULL) {
     printf("\n List is empty");
    }else {
     printf("\n Enter position: ");
     scanf("%d",&pos);
     if(pos == 1) {
       start=ptr->next;
       if(start!=NULL){
          start->prev=NULL;
         }
         x=ptr->data;
         free(ptr);
         printf("\n%d Deleted",x);
        }else{
         for(i=1;i<pos;i++){
         ptr1=ptr;
         ptr=ptr->next;
         if(ptr==NULL){
            printf("\n Can't delete");
            return;
           }
          }
          ptr1->next=ptr->next;
          if(ptr->next!=NULL){
            (ptr->next)->prev=ptr1;
           }
           x=ptr->data;
           free(ptr);
           printf("\n%d Deleted",x);
          }
         }
        }
        
        void search(){
         struct node *ptr;
         int x,i=0;
         bool found=false;
         ptr=start;
         if(ptr==NULL){
          printf("\n List is empty");
         }else{
          printf("\n Enter the element to search: ");
          scanf("%d",&x);
          while(ptr!=NULL){
           if(ptr->data==x){
            printf("\n Item found at position %d",i+1);
            found=true;
            break;
           }
           i++;
           ptr=ptr->next;
          }
           if(!found){
            printf("\n Item not found");
            }
            }
            }
            
            void display(){
             struct node *ptr;
             ptr=start;
             if(ptr==NULL){
              printf("\n List is empty");
              }else{
               while(ptr!=NULL){
                printf("%d->",ptr->data);
                ptr=ptr->next;
                }
                printf("null");
               }
              }
              
              int main(){
               int ch=0;
               while(ch!=9){
                printf("\n\n1:Insert at beginning");
                printf("\n2:Insert at last");
                printf("\n3:Insert at position");
                printf("\n4:Delete from beginning");
                printf("\n5:Delete from last");
                printf("\n6:Delete from position");
                printf("\n7:Search");
                printf("\n8:Display");
                printf("\n9:Exit");
                printf("\nEnter your choice: ");
                scanf("%d",&ch);
                switch(ch){
                 case 1:
                  beginsert();
                  break;
                 case 2:
                  lastinsert(); 
                  break;
                 case 3:
                  posinsert();
                  break;
                 case 4:
                  begdel();
                  break;
                 case 5:
                  lastdel();
                  break;
                 case 6:
                  posdel();
                  break;
                 case 7 :
                  search();
                  break;
                 case 8:
                  display();
                  break;
                 case 9:
                  exit(0);
                 default:
                  printf("\n Invalid Choice");
                 }
                }
                return 0;
               }
               
               
                
            
       
             
      
