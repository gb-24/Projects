//***************************************//
//PROJECT ON A MOBILE RETAILING SUPER STORE//
//                                     SPICE                                       //
//**************************************//


//**************************//
//DECLARATION OF HEADER FILES//
//**************************//

#include<dos.h>
#include<iostream.h>
#include<fstream.h>
#include<conio.h>
#include<process.h>
#include<stdio.h>
#include<string.h>
#include<graphics.h>


//**********************************//
//DECLARATION OF THE CLASS TO CONTAIN//
//            THE DETAILS OF A HANDSET             //
//**********************************//

class spice
{
  double code;
  char model[20];
  char color[20];
  int cost;
  char make[20];
  int day;
  int year;
  char month[20];
  int profit;
  int sellprice;

 public :


  //**************************//
  //FUNCTION TO RETURN COLOUR//
  //**************************//

  char* retcolor()
  {
  return color;
}


  //***********************//
  //FUNCTION TO RETURN CODE//
  //***********************//

  double retcode()
  {
   return code;
  }


  //*******************************//
  //FUNCTION TO RETURN SELLING PRICE//
  //*******************************//

  int retsp()
  {
   sellprice = (cost+((cost/100)*profit));
   return sellprice;
  }


  //**********************************//
  //FUNCTION TO ASK DETAILS OF AN OBJECT//
  //                           OF CLASS SPICE                    //
  //*********************************//

  void ask()
  {
   cout<<"\n\n Enter the code of the model : ";
   cin>>code;
   cout<<"\n\n Enter the maker name : ";
   gets(make);
   cout<<"\n\n Enter the model number : ";
   gets(model);
   cout<<"\n\n Enter the purchasing price : ";
   cin>>cost;
   cout<<"\n\n Enter the date of manufacturing : ";
   cout<<"\n\n\tDay : ";
   cin>>day;
   cout<<"\n\n\tMonth : ";
   gets(month);
   cout<<"\n\n\tYear : ";
   cin>>year;
   cout<<"\n\n Enter the percentage profit : ";
   cin>>profit;
   cout<<"\n\n Enter the colour of the model : ";
   gets(color);
  }


  //*****************************************//
  //FUNCTION TO DISPLAY THE DETAILS OF AN OBJECT//
  //                                 OF CLASS SPICE                              //
  //*****************************************//

  void ownerdisplay()
  {
   cout<<"\n\n";
   int s;
   cout<<"\n";
   cout<<"\n\n Code - ";
   cout<<code;
   cout<<"\n\n Maker's name - ";
   cout<<make;
   cout<<"\n\n Model number - ";
   cout<<model;
   cout<<"\n\n Purchasing price - ";
   cout<<cost;
   cout<<"\n\n Date of manufacturing - ";
   cout<<day<<" "<<month<<","<<year;
   cout<<"\n\n Selling price - ";
   s=retsp();
   cout<<s;
   cout<<"\n\n Precentage profit : ";
   cout<<profit;
   cout<<"\n\n Colour of the model : ";
   cout<<color;
  }


  //*****************************************//
  //FUNCTION TO DISPLAY THE DETAILS OF AN OBJECT//
  //                                 OF CLASS SPICE                              //
  //*****************************************//

  void odisplay()
  {
   int s;
   cout<<"\n";
   cout<<"\n\n Code : ";
   cout<<code;
   cout<<"\n\n Maker's name : ";
   cout<<make;
   cout<<"\n\n Model number : ";
   cout<<model;
   cout<<"\n\n Date of manufacturing : ";
   cout<<day<<" "<<month<<","<<year;
   cout<<"\n\n Price : ";
   s=retsp();
   cout<<s;
   cout<<"\n\n Colour of the model : ";
   cout<<color;
  }


  //*********************************//
  //FUNCTION TO RETURN MODEL NUMBER//
  //*********************************//

  char* retmodelno()
  {
   return model;
  }
};


//**************************************//
//FUNCTION TO WRITE OBJECTS OF CLASS SPICE  //
//                       ONTO THE FILE SP.DAT                     //
//**************************************//

void write()
{
 clrscr();
 int i;
 ofstream fout("sp.dat",ios::app|ios::binary);
 spice s;
 s.ask();
 fout.write((char*)&s,sizeof(s));
 fout.close();
}


//**************************************//
//FUNCTION TO READ OBJECTS OF CLASS SPICE  //
//                   FROM THE HILE SP.DAT                      //
//*************************************//

void read()
{
 ifstream fin("sp.dat",ios::in|ios::binary);
 spice s;

 while(fin.read((char*)&s,sizeof(s)))
 {
  clrscr();
  s.ownerdisplay();
  getch();
 }
 fin.close();
}


//****************************************//
//FUNCTION TO MODIFY OBJECTS OF CLASS SPICE  //
//                     PRESENT IN THE FILE SP.DAT                //
//***************************************//

void update()
{
 ifstream fin("sp.dat",ios::in|ios::binary);
 ofstream fout("t.dat",ios::out|ios::binary);
 spice s;
 int flag = 0;
 char md[20];
 cout<<"\n Enter the model number : "<<endl;
 gets(md);

 while(fin.read((char*)&s,sizeof(s)))
 {

  if(strcmpi(md,s.retmodelno())==0)
  {
   s.ownerdisplay();
   s.ask();
   flag=1;
  }

  fout.write((char*)&s,sizeof(s));
 }

 fin.close();
 fout.close();
 remove("sp.dat");
 rename("t.dat","sp.dat");

 if(flag == 0)
  cout<<"\n Model not found";
}


//*****************************************//
//FUNCTION TO DELETE AN OBJECT OF CLASS SPICE  //
//                        FROM THE FILE SP.DAT                          //
//*****************************************//

void del()
{
 int flag = 0;
 clrscr();
 spice s;
 double cd;
 gotoxy(4,25);
 cout<<"\n \t  ***ENTER THE CODE NUMBER WHICH HAS TO BE DELETED***\n\n";
 cin>>cd;
 ifstream fin("sp.dat",ios::in|ios::binary);
 ofstream fout("z.dat",ios::out|ios::binary);
 fin.seekg(0,ios::beg);
 {

  while(fin.read((char*)&s,sizeof(s)))
  {

   if(cd == s.retcode() && flag == 0)
   {
    cout<<"\n";
    flag = 1;
   }

   else
    fout.write((char*)&s,sizeof(s));
  }

  remove("sp.dat");
  rename("z.dat","sp.dat");
 }

 if(flag == 1)
 {
  cout<<"\n  \t \t THE REQUIRED MODEL IS DELETED!!!!!!!!";
 }

 if(flag == 0)
 {
  cout<<"\n  \t \t The required model does not exit!!!!!!!!";
 }

 fin.close();
 fout.close();
}


//*****************************************//
//FUNCTION TO DELETE AN OBJECT OF CLASS SPICE  //
//     FROM THE FILE SP.DAT TAKING THE CODE AS     //
//                                     ARGUMENT                                //
//*****************************************//

void del(double cd)
{
 int flag = 0;
 clrscr();
 spice s;
 ifstream fin("sp.dat",ios :: in|ios :: binary);
 ofstream fout("z.dat",ios :: out|ios :: binary);
 fin.seekg(0,ios :: beg);
 {

  while(fin.read((char*)&s,sizeof(s)))
  {

   if(cd == s.retcode()&&flag == 0)
   {
    cout<<"\n";
    flag = 1;
   }

   else
    fout.write((char*)&s,sizeof(s));
  }

  remove("sp.dat");
  rename("z.dat","sp.dat");
 }

 if(flag == 1)
 {
  cout<<"\n\n\n\n\n  The purchased model has been deleted form your stock list.";
 }

 if(flag == 0)
 {
  cout<<"\n \t \t The required model does not exist!!!!!!!!";
 }

 fin.close();
 fout.close();
}


//*******************************************************//
//FUNCTION TO SEARCH TO SEARCH FOR AN OBJECT OF CLASS SPICE  //
//       FROM THE FILE SP.DAT TAKING CODE AS THE ARGUEMENT         //
//*******************************************************//

void search(int c)
{
 int flag = 0;
 int p = 0;
 ifstream fin("sp.dat",ios :: in|ios :: binary);
 spice s;

 while(fin.read((char*)&s,sizeof(s)))
 {

  if(c == s.retcode())
  {
   p++;
   s.odisplay();
   flag = 1;
  }
 }

 fin.close();

 if(flag == 0)
 {
  cout<<"\n\n Model does not exist!!!!!!!!";
 }
}


//****************************************//
//FUNCTION TO SEARCH FOR AN OBJECT OF CLASS//
//            SPICE FROM THE FILE SP.DAT                       //
//***************************************//

void search()
{
 char c[20];
 cout<<"\n Enter the model number to search.";
 cin>>c;
 int flag = 0;
 int p = 0;
 ifstream fin("sp.dat",ios :: in|ios :: binary);
 spice s;

 while(fin.read((char*)&s,sizeof(s)))
 {

  if(strcmpi(c,s.retmodelno()) == 0)
  {
   p++;
   s.odisplay();
   flag = 1;
  }
 }

 fin.close();

 if(flag == 0)
 {
  cout<<"\n Model does not exist!!!!!!!!";
  getch();
 }

 if(flag == 1)
 {
  cout<<"\n\n The number of pieces of the model in stock are : "<<p;
 }
}


//***********************************//
//DECLARATION OF THE CLASS TO CONTAING//
//                THE DETAILS OF THE BILL                 //
//***********************************//

class bill
{
  long invoiceno;
  char name[100];
  char hadd[100];
  char block[100];
  char locality[100];
  char city[100];
  double pin;
  long phone;

 public :


  //##################################### //
  //FUNCTION TO ASK THE DETAILS OF AN OBJECT//
  //                                 OF CLASS BILL                          //
  //##################################### //

  void askk()
  {
   getch();
   clrscr();
   cout<<"\n\nEnter the invoice number : ";
   cin>>invoiceno;
   cout<<"\n\nEnter the name of the customer : ";
   gets(name);
   cout<<"\n\nEnter the address of the customer -> ";
   cout<<"\n  Enter the house address : ";
   gets(hadd);
   cout<<"\n  Enter the block : ";
   gets(block);
   cout<<"\n  Enter the area : ";
   gets(locality);
   cout<<"\n  Enter the city : ";
   gets(city);
   cout<<"\n  Enter the pin : ";
   cin>>pin;
  }


  //######################################### //
  //FUNCTION TO DISPLAY THE DETAILS OF AN OBJECT//
  //                                  OF CLASS BILL                                 //
  //######################################### //

  void displayy()
  {
   int i;
   cout<<"\n Invoice number : ";
   cout<<invoiceno;
   cout<<"\n Name of the customer : ";
   cout<<name;
   cout<<"\n Address ->";
   cout<<"\n   House address : ";
   cout<<hadd;
   cout<<"\n   Block : ";
   cout<<block;
   cout<<"\n   Area : ";
   cout<<locality;
   cout<<"\n   City : ";
   cout<<city;
   cout<<"\n   Pin : ";
   cout<<pin;
  }
};


//**************************//
//FUNCTION TO DISPLAY THE BILL//
//      OF AN ITEM PURCHASED      //
//*************************//

void bil(double cod)
{
 ofstream fin("sp.dat",ios :: in|ios :: binary);
 spice s;
 bill a;
 a.askk();
 clrscr();
 gotoxy(35,25);
 cout<<"YOUR BILL";
 getch();
 clrscr();
 cout<<"\n\n\n\n\n\n";
 cout<<"¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ";
 cout<<"\n";
 cout<<"\n              SPICE MOBILE STORE";
 cout<<"\n                 PVR COMPLEX    ";
 cout<<"\n";
 cout<<"\n";
 a.displayy();
 cout<<"\n";
 search(cod);
 cout<<"\n";
 cout<<"¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ";
 fin.close();
}


//*********************************************//
//FUNCTIONS TO ASK DETAILS REGARDING PURCHASING//
//                OF A MODEL AND TO GENERATE ITS BILL          //
//********************************************//

void purchase()
{
 clrscr();
 ifstream fin("sp.dat",ios :: in|ios :: binary);
 spice q;
 char m[20];
 cout<<"\n\n";

	//CHECKING IF THE REQUIRED FUNCTION IS AVAILABLE//
	cout<<"\nEnter the model number to be purchased : ";
	gets(m);
	int flag = 0;

	while(fin.read((char*)&q,sizeof(q)))
	{

	 if(strcmpi(m,q.retmodelno()) == 0)
	 {
	  flag = 1;
	 }
	}

	if(flag == 0)
	{
	 cout<<"\n\nMODEL OUT OF STOCK!!!!!!!!";
	 getch();
	}

 fin.close();

 //IF THE MODEL EXISTS//
 if(flag == 1)
 {
  double b;
  char c;
  char a[20];
  cout<<"\nThe price of your selected model is : ";
  b = q.retsp();
  cout<<b;
  int f = 0;
  char z[20];//stored colour//
  a:
  cout<<"\nEnter the colour you want to buy  ";
  gets(z);
  double g;
  ifstream fin("sp.dat",ios :: in|ios :: binary);

  while(fin.read((char*)&q,sizeof(q)))
  {

   if(strcmpi(z,q.retcolor()) == 0 && strcmpi(m,q.retmodelno()) == 0)
   {
    f = 1;
    g = q.retcode();
   }
  }

  fin.close();

  if(f == 1)
  {
   cout<<"The required colour is available.\n\n";
   getch();
   cout<<"\nDo you want to buy the model????";
   cout<<"\nIf Yes, press 'Y' or 'y'";
   cout<<"\nIf No, press 'N' or 'n'    ";
   cin>>c;

   if(c=='y'| c=='Y')
   {
    bil(g);//generating bill//
    getch();
    del(g);//code number has been deleted//
   }

   else
   {
    cout<<"THANK YOU";
   }
  }

  else //colour not available//
  {
   cout<<"\nThe required colour is OUT OF STOCK!!!!!!!!";
   cout<<"\n\nThe colours available are : ";
   ifstream fin("sp.dat",ios :: in|ios :: binary);

   while(fin.read((char*)&q,sizeof(q)))
   {

    if(strcmpi(m,q.retmodelno()) == 0)
    {
     strcpy(a,q.retcolor());
     cout<<a;
     cout<<".";
    }
   }

   getch();
   fin.close();
   char z;
   cout<<"\n\nAre you interested in any other colour????";
   cout<<"\nIf Yes, press 'Y' or 'y'";
   cout<<"\nIf No, press 'N' or 'n'    ";
   cin>>z;

   if(z=='y'|z=='Y')
   {
    goto a;
   }

   else
   {
    clrscr();
    cout<<"\nTHANK YOU";
    getch();
   }
  }
 }
}


//******************//
//                MAIN              //
//******************//

void main()
{
 clrscr();
 int i;


	//****CODING FOR PASSWORD****//

	char h[21];
	cout<<"\n";
	cout<<"\n";
	cout<<"\n\n\n\n\n\n\n\t\t^^^^ENTER THE STAFF IDENTIFICATION CODE^^^^\n\n\t\t\t";

	for(i=0 ; i<21 ; i++)
	{
	 h[i] = getch();
	 cout<<"*";
	}

	h[i] = '\0';

	if(strcmpi("senbonzakurakageyoshi",h) == 0)
	{ //corrected password entered//
	 cout<<"\n\n\n\n\n\t\t\t  ÛÛÛÛ ACCESS GRANTED ÛÛÛÛ";
	 getch();
	 clrscr();


	 //**** LOADING SCREEN ****//

	 cout<<"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\t\t\t           LOADING....";
	 cout<<"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
	 cout<<"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";

	 for(int i = 0 ; i<80 ; i++)
	 {
	  delay(100);
	  {
	   cout<<"±";
	  }
	 }

	 clrscr();


	 //**** WELCOME SCREEN ****//

	 cout<<"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
	 cout<<"\n       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦";
	 cout<<"\n       ¦¦                                                             ¦¦";
	 cout<<"\n       ¦¦                                                             ¦¦";
	 cout<<"\n       ¦¦                        WELCOME                              ¦¦";
	 cout<<"\n       ¦¦							      ¦¦";
	 cout<<"\n       ¦¦      	                 TO SPICE            		      ¦¦";
	 cout<<"\n       ¦¦							      ¦¦";
	 cout<<"\n       ¦¦							      ¦¦";
	 cout<<"\n       ¦¦        The newest mobile retailing superstore in town       ¦¦";
	 cout<<"\n       ¦¦							      ¦¦";
	 cout<<"\n       ¦¦							      ¦¦";
	 cout<<"\n       ¦¦							      ¦¦";
	 cout<<"\n       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦";
	 cout<<"\n\n\n\n";
	 cout<<"\n  			  Press Enter to continue....";
	 getch();
	 clrscr();


		//**** FIRST MENU ****//

		int dc;

		while(dc != 3)
		{
		 clrscr();
		 cout<<"\n\n\n\n\tDear staff member, please select the required option.";
		 cout<<"\n\n\t 1. Perform elementary staff function.";
		 cout<<"\n\n\t 2. Sell a handset.";
		 cout<<"\n\n\t 3. Exit.";
		 cin>>dc;

		 switch(dc)
		 {
		  case 1 : clrscr();
			   int ch = 0;

			   while(ch != 6)
			   {

				//**** SECOND MENU ****//

				clrscr();
				cout<<"\n\n\t 1. Add a new model to our stock.";
				cout<<"\n\n\t 2. View our stock.";
				cout<<"\n\n\t 3. Update the details of a handset";
				cout<<"\n\n\t 4. Delete a handset from stock.";
				cout<<"\n\n\t 5. Search for a handset.";
				cout<<"\n\n\t 6. Exit.";
				cout<<"\n\n\n\t Enter your choice : ";
				cin>>ch;

				switch(ch)
				{
				 case 1 : clrscr();
					  write();
					  getch();
					  break;

				 case 2 : clrscr();
					  read();
					  getch();
					  break;

				 case 3 : clrscr();
					  update();
					  getch();
					  break;

				 case 4 : clrscr();
					  del();
					  getch();
					  break;

				 case 5 : clrscr();
					  search();
					  getch();
					  break;

				 case 6 : break;

				 default : cout<<"INVALID KEY";
				}
			   }
			   break;

			   case 2 : clrscr();
				    purchase();
				    break;

			   case 3 : break;

			   default : cout<<"\n REQUEST INVALID.";
		 }
		}

	 getch();
	}

	else //wrong password entered//
	cout<<"\n\n\n\n\n\n\t\t\t\tWRONG PASSWORD.";
	getch();

}