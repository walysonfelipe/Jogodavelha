Program jogo_da_velha;
var
hor1,hor2,ver1,ver2,ven,jogadas,X_O:integer;
p1,p2,p3,p4,p5,p6,p7,p8,p9,casa:char;
nome1,nome2,jogar:string[11];                                                                                                                                                                                                                                                                                                                                        
Begin
	jogar:='s';
		while (jogar='S')or(jogar='s')or(jogar='sim')or(jogar='SIM')or(jogar='Sim')or(jogar='sIm')
		or(jogar='siM')or(jogar='SIm')or(jogar='sIM')or(jogar='SiM') do
			Begin
			  p1:='0';
		    p2:='0';
		    p3:='0';
		    p4:='0';
		    p5:='0';
		    p6:='0';
		    p7:='0';
		    p8:='0';
		    p9:='0';
			  X_O:=1;
				
				textcolor(11);
				gotoxy(25,3);
					writeln('Sejam Bem Vindos ao');
				gotoxy(25,4);
					writeln('   Jogo da Velha');
					textcolor(3);
							gotoxy(20,7);
							writeln('Digite o nome dos jogadores');
					textcolor(7);
							gotoxy(20,8);
							writeln('                         ex: João');
							gotoxy(20,9);
							writeln('                             Maria');
					textcolor(7);
					gotoxy(7,10);
						writeln('Jogador X:');
					gotoxy(7,11);
						writeln('Jogador O:');
					textcolor(7);
					gotoxy(30,24);
						writeln('Feito por Walyson Felipe e Nicolas Carvalho');	
					
				 //------------------Desenhos
					textcolor(6);
						gotoxy(25,22);
						writeln('|');
						gotoxy(25,20);
						writeln('|');
						gotoxy(24,21);
						writeln('-');
						gotoxy(26,21);
						writeln('-');
					//-------
						gotoxy(10,3);
						writeln('|');
						gotoxy(10,5);
						writeln('|');
						gotoxy(9,4);
						writeln('-');
						gotoxy(11,4);
						writeln('-');
					//--------
						gotoxy(60,3);
						writeln('|');
						gotoxy(60,5);
						writeln('|');
						gotoxy(59,4);
						writeln('-');
						gotoxy(61,4);
						writeln('-'); 
					//--------
						gotoxy(50,15);
						writeln('|');
						gotoxy(50,17);
						writeln('|');
						gotoxy(49,16);
						writeln('-');
						gotoxy(51,16);
						writeln('-');
					//--------
						gotoxy(9,13);
						writeln('|');
						gotoxy(9,15);
						writeln('|');
						gotoxy(8,14);
						writeln('-');
						gotoxy(10,14);
						writeln('-');
				  textcolor(11);			
							gotoxy(20,10);
							readln(nome1);
							gotoxy(20,11);
							readln(nome2);
							clrscr;
  //-------------------------------------------TABULEIRO  
		//-------------Horizontais 
				textcolor(6);
					gotoxy(20,5);
					writeln('|');
					gotoxy(20,7);
					writeln('|');
					gotoxy(19,6);
					writeln('-');
					gotoxy(21,6);
					writeln('-');
				//-------------
					gotoxy(55,15);
					writeln('|');
					gotoxy(55,17);
					writeln('|');
					gotoxy(54,16);
					writeln('-');
					gotoxy(56,16);
					writeln('-');
				//-------------
					gotoxy(12,19);
					writeln('|');
					gotoxy(12,21);
					writeln('|');
					gotoxy(11,20);
					writeln('-');
					gotoxy(13,20);
					writeln('-');
				//-------------
					gotoxy(46,19);
					writeln('|');
					gotoxy(46,21);
					writeln('|');
					gotoxy(45,20);
					writeln('-');
					gotoxy(47,20);
					writeln('-');
				//-------------	
	textcolor(11);	
		hor2:=27;
	  ver2:=3;
		 for hor1:=27 to 49 do
		 	Begin
		 		gotoxy(hor1,7);
		 		writeln('-');
		 	End;
  
     while hor2<=49 do
  	 	Begin
  	 		gotoxy(hor2,12);
  	 		writeln('-');
  	 		hor2:=hor2+1;
  	 	End;
		//-------------Verticais	   
     for ver1:=3 to 16 do
     	Begin
     		gotoxy(34,ver1);
     		writeln('|');
     	End;
  	
  	 
  	while ver2<=16 do
  		Begin
  			gotoxy(42,ver2);
  			writeln('|');
  			ver2:=ver2+1;
  		End;
		//----------NÙMEROS
			gotoxy(30,5);
				writeln('1');
			gotoxy(38,5);
				writeln('2');
			gotoxy(46,5);
				writeln('3');
		
		  gotoxy(30,10);
				writeln('4');
			gotoxy(38,10);
				writeln('5');
			gotoxy(46,10);
				writeln('6');
				
			gotoxy(30,15);
				writeln('7');
			gotoxy(38,15);
				writeln('8');
			gotoxy(46,15);
				writeln('9');
	//-----------------------------------TABULEIRO		  
		  textcolor(15);   
	    //---------------------------------------------------------INÍCIO DO JOGO
	  ven:=0;
	  jogadas:=0;
    while (ven=0) and (jogadas<9)  do
     begin  
	    //-----------------------Jogador X
			if(X_O=1)then
			Begin
	    	  	gotoxy(20,21);
	    	  	writeln('É a vez do ',nome1,'        ');
	    	  	gotoxy(16,22);
	          writeln('-* Qual casa você deseja? *-');
						gotoxy(18,23);
	          readln(casa);                                         
	      textcolor(15);    
	        if (casa='1') then
	        	begin
	        	  jogadas:=jogadas+1;
	        	  p1:='X';
	            gotoxy(30,5);
	            writeln('X');
	    	    end
	        else if (casa='2') then
	          begin
	          	jogadas:=jogadas+1;
	        	  p2:='X';	          
	    			  gotoxy(38,5);
	            writeln('X');
	    	    end	
		      else if (casa='3') then
	        	begin
	        		jogadas:=jogadas+1;
	        	  p3:='X';
	    			  gotoxy(46,5);
	            writeln('X');
	    	    end    	    
	        else if (casa='4') then
	          begin
	          	jogadas:=jogadas+1;
	            p4:='X';
	    			  gotoxy(30,10);
	            writeln('X');
	    	    end
			    else if (casa='5') then
	          begin
	          	jogadas:=jogadas+1;
	            p5:='X';
	    			  gotoxy(38,10);
	            writeln('X');
	    	    end
					else if (casa='6') then
	          begin
	            jogadas:=jogadas+1;
	            p6:='X';
	    			  gotoxy(46,10);
	            writeln('X');
	    	    end
					else if (casa='7') then
	          begin
	            jogadas:=jogadas+1;
	            p7:='X';
	    			  gotoxy(30,15);
	            writeln('X');
	    	    end		 
		 			else if (casa='8') then
	          begin
	            jogadas:=jogadas+1;
	            p8:='X';
	    			  gotoxy(38,15);
	            writeln('X');
	    	    end
					else if (casa='9') then
	          begin
	            jogadas:=jogadas+1;
	            p9:='X';
	    			  gotoxy(46,15);
	            writeln('X');
	    	    end;
	    	    X_O:=2;
	     End
	     //-------------------------Jogador O
	     else
	    	 begin
	    	  	gotoxy(20,21);
	    	  	writeln('É a vez do ',nome2,'        ');
	    	  	gotoxy(16,22);
	          writeln('-* Qual casa você deseja? *-');
						gotoxy(18,23);
						readln(casa);
	        textcolor(15);  
	        if (casa='1') then
	        	begin
	        	  jogadas:=jogadas+1;
	        	  p1:='O';
	            gotoxy(30,5);
	            writeln('O');
	    	    end
	        else if (casa='2') then
	          begin
	            jogadas:=jogadas+1;
	         	  p2:='O';	          
	    			  gotoxy(38,5);
	            writeln('O');
	    	    end	
		      else if (casa='3') then
	        	begin
	        	  jogadas:=jogadas+1;
	        	  p3:='O';
	    			  gotoxy(46,5);
	            writeln('O');
	    	    end    	    
	        else if (casa='4') then
	          begin
	            jogadas:=jogadas+1;
	            p4:='O';
	    			  gotoxy(30,10);
	            writeln('O');
	    	    end
			    else if (casa='5') then
	          begin
	            jogadas:=jogadas+1;
	            p5:='O';
	    			  gotoxy(38,10);
	            writeln('O');
	    	    end
					else if (casa='6') then
	          begin
	            jogadas:=jogadas+1;
	            p6:='O';
	    			  gotoxy(46,10);
	            writeln('O');
	    	    end
					else if (casa='7') then
	          begin
	            jogadas:=jogadas+1;
	            p7:='O';
	    			  gotoxy(30,15);
	            writeln('O');
	    	    end		 
					else if (casa='8') then
	          begin
	            jogadas:=jogadas+1;
	            p8:='O';
	    			  gotoxy(38,15);
	            writeln('O');
	    	    end
		 			else if (casa='9') then
	          begin
	            jogadas:=jogadas+1;
	            p9:='O';
	    			  gotoxy(46,15);
	            writeln('O');
	    	    end;
			     X_O:=1;
	   end;   
	//---------------------------------X ganhou	   
		if(p1='X') and (p2='X') and (p3='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
			 gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end   	
	 
		else	if(p4='X') and (p5='X') and (p6='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 	 
		
		else if(p7='X') and (p8='X') and (p9='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 

	else 	if(p1='X') and (p4='X') and (p7='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 
		
		else if(p2='X') and (p5='X') and (p8='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end
		
		else if(p3='X') and (p6='X') and (p9='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 

	 else 	if(p1='X') and (p5='X') and (p9='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end  
		
		else 	if(p3='X') and (p5='X') and (p7='X') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome1);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 
		
	//------------------------------------O ganhou
			else	if(p1='O') and (p2='O') and (p3='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end   	
		else if(p4='O') and (p5='O') and (p6='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 	 
		
	 else	if(p7='O') and (p8='O') and (p9='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10; 
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 

		else if(p1='O') and (p4='O') and (p7='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 
		
	  else	if(p2='O') and (p5='O') and (p8='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end
		
		else if(p3='O') and (p6='O') and (p9='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end 

		else if(p1='O') and (p5='O') and (p9='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end  
		
		else if(p3='O') and (p5='O') and (p7='O') then
		begin
			 readln;
		   clrscr;
			 jogadas:=10;
		   gotoxy(25,10);
		   writeln('Parabéns ',nome2);
		   gotoxy(25,11);
		   writeln('Você Ganhou!!');
		end
	 
	//--------------------------Velha	   
		else if(ven=0) and (jogadas=9) then
			 begin
			 	  readln;
		   		clrscr;
			    jogadas:=10;
			    gotoxy(25,10);
		   		writeln('Xiii! Deu velha!');
			 end;	 
	 End; 
	
		 textcolor(11);
	   gotoxy(3,15);
	 	 writeln(nome1,' e ',nome2,', desejam jogar novamente?');
	   gotoxy(3,16);
	   writeln('                          s=sim n=não');
	 	 gotoxy(5,17);
		 readln(jogar);
	 			  clrscr;
	 			End;
	readln;
End.