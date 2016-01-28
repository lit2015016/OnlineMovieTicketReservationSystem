
seatCount=0;
numPremSeatsPerRow = 16;
PremRowNames = ['A','B','C'];
numCheapSeatsPerRow = 16;
CheapRowNames = ['D','E','F','G','H'];
CheapRowNames1 = ['I','J'];
statusPics = new Array();
statusPics['avail'] = new Image();
statusPics['mine'] = new Image();
statusPics['taken'] = new Image();
statusPics['unavail'] = new Image();
statusPics['avail'].src = '/CINEMAX/jsp/images/chair01.png';
statusPics['mine'].src = '/CINEMAX/jsp/images/chair03.png';
statusPics['taken'].src = '/CINEMAX/jsp/images/chair02.png';
statusPics['unavail'].src = '/CINEMAX/jsp/images/chair4.png';


function createSeats(oSeatsContainer,seatsPerRow,rowNames) 
{
	var oRow = document.createElement('tr');
	oRow.appendChild(document.createElement('th'));

	for(i=1; i <= seatsPerRow; i++)
	{						//this contains the seat numbers

		if(i==9)
		{
			var oTh = document.createElement('th');
			oTh.appendChild(document.createTextNode(" "));

			oRow.appendChild(oTh);

			var oTh = document.createElement('th');
			oTh.innerHtml="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			oTh.appendChild(document.createTextNode(" "));
			oRow.appendChild(oTh);


		}




		var oTh = document.createElement('th');
		oTh.appendChild(document.createTextNode(i));

		oRow.appendChild(oTh);

		var oTh = document.createElement('th');
		oTh.innerHtml="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		oTh.appendChild(document.createTextNode(" "));
		oRow.appendChild(oTh);


	}



	oSeatsContainer.appendChild(oRow); 	
	var oRow = document.createElement('tr');
	var oCell = document.createElement('td');
	oCell.innerHTML = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	oRow.appendChild(oCell);
	oSeatsContainer.appendChild(oRow);


	//this row contains the seat 
	for(i=0; i < rowNames.length; i++)
	{
		var oRow = document.createElement('tr');
		var oCell = document.createElement('td');
		oCell.innerHTML = rowNames[i]+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		oRow.appendChild(oCell);
		for(j=0; j < seatsPerRow; j++)
		{
			if(j==8)
			{

				oCell = document.createElement('td');
				oCell.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				oCell.appendChild(document.createTextNode(" "));

				oRow.appendChild(oCell);
				oCell = document.createElement('td');
				oCell.innerHTML="&nbsp;";
				oCell.appendChild(document.createTextNode(" "));

				oRow.appendChild(oCell);

			}


			oCell = document.createElement('td');
			var oImg = document.createElement('img');
			oImg.src = statusPics['taken'].src;
			oImg.onclick=function()
			{

			};
			oImg.status = 'taken';
			oImg.id = rowNames[i]+(j+1);
			var arrav=new Array();			
			var arrav=document.getElementById('availableseats').value.split(', ');		    
			var x=arrav.length;

			while(x>0)
			{
				if(oImg.id==arrav.pop())
				{
					oImg.src = statusPics['avail'].src;
					oImg.status='avail';

					oImg.onclick=function()
					{
						var n=oQuantity.value;
						if(this.status == 'mine')
							{
							this.status='avail';
							seatCount--;
							this.src = (this.status == 'avail')? statusPics['avail'].src : statusPics['mine'].src;
							
							oTotalprice.innerHTML = '';
							oBookedSeatNos.innerHTML = '';
							oBtnCheckout.disabled = true;
							}
						if(seatCount<n)
						{
						if(this.status == 'avail')
							{
							this.status='mine' ;
							seatCount++;
							}
						else
							{
							this.status='avail';
							seatCount--;
							}
						
						this.src = (this.status == 'avail')? statusPics['avail'].src : statusPics['mine'].src;
						
						oTotalprice.innerHTML = '';
						oBookedSeatNos.innerHTML = '';
						oBtnCheckout.disabled = true;
						}
					};

				}
				x--;
			}

			oCell.appendChild(oImg);                        
			oRow.appendChild(oCell);
			oCell = document.createElement('td');
			oCell.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";                        
			oCell.appendChild(document.createTextNode(" "));

			oRow.appendChild(oCell);
		}
		oSeatsContainer.appendChild(oRow);
	}
}
function createSeats1(oSeatsContainer,seatsPerRow,rowNames) 
{
	var oRow = document.createElement('tr');
	oRow.appendChild(document.createElement('th'));

	for(i=1; i <= seatsPerRow; i++)
	{						//this contains the seat numbers

		if(i==9)
		{
			var oTh = document.createElement('th');
			oTh.appendChild(document.createTextNode(" "));

			oRow.appendChild(oTh);

			var oTh = document.createElement('th');
			oTh.innerHtml="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			oTh.appendChild(document.createTextNode(" "));
			oRow.appendChild(oTh);


		}




		var oTh = document.createElement('th');
		oTh.appendChild(document.createTextNode(i));

		oRow.appendChild(oTh);

		var oTh = document.createElement('th');
		oTh.innerHtml="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		oTh.appendChild(document.createTextNode(" "));
		oRow.appendChild(oTh);


	}



	oSeatsContainer.appendChild(oRow); 	
	var oRow = document.createElement('tr');
	var oCell = document.createElement('td');
	oCell.innerHTML = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	oRow.appendChild(oCell);
	oSeatsContainer.appendChild(oRow);


	//this row contains the seat 
	for(i=0; i < rowNames.length; i++)
	{
		var oRow = document.createElement('tr');
		var oCell = document.createElement('td');
		oCell.innerHTML = rowNames[i]+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		oRow.appendChild(oCell);
		for(j=0; j < seatsPerRow; j++)
		{
			if(j==8)
			{

				oCell = document.createElement('td');
				oCell.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				oCell.appendChild(document.createTextNode(" "));

				oRow.appendChild(oCell);
				oCell = document.createElement('td');
				oCell.innerHTML="&nbsp;";
				oCell.appendChild(document.createTextNode(" "));

				oRow.appendChild(oCell);

			}


			oCell = document.createElement('td');
			var oImg = document.createElement('img');
			oImg.src = statusPics['unavail'].src;
			oImg.onclick=function()
			{

			};
			oImg.status = 'unavail';
			oImg.id = rowNames[i]+(j+1);		
			oCell.appendChild(oImg);                        
			oRow.appendChild(oCell);
			oCell = document.createElement('td');
			oCell.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";                        
			oCell.appendChild(document.createTextNode(" "));

			oRow.appendChild(oCell);
		}
		oSeatsContainer.appendChild(oRow);
	}
}

function confirmChoices()
{
	premSeatsSelected = new Array();
	for(i=0; i < oPremSeats.length; i++)
	{
		if(oPremSeats[i].status == 'mine')
		{
			premSeatsSelected.push(oPremSeats[i].id);
			oPremSeats[i].src=statusPics['taken'].src;
		}
	}
	cheapSeatsSelected = new Array;
	for(i=0; i < oCheapSeats.length; i++)
	{
		if(oCheapSeats[i].status == 'mine')
		{
			cheapSeatsSelected.push(oCheapSeats[i].id);
			oCheapSeats[i].src=statusPics['taken'].src;
		}
	}
	cheapSeats1Selected = new Array;
	for(i=0; i < oCheapSeats1.length; i++)
	{
		if(oCheapSeats1[i].status == 'mine')
		{
			cheapSeats1Selected.push(oCheapSeats1[i].id);
			oCheapSeats1[i].src=statusPics['taken'].src;
		}
	}
	oBtnCheckout.disabled = (premSeatsSelected.length > 0 || cheapSeatsSelected.length || cheapSeats1Selected.length > 0)? false : true;
}


function checkout()
{
	var cheapSeatPrice1 = 50;
	var cheapSeatPrice = 100;
	var premSeatPrice = 150;
	var totPrice = (premSeatsSelected.length*premSeatPrice)+(cheapSeatsSelected.length*cheapSeatPrice)+(cheapSeats1Selected.length*cheapSeatPrice1);
	if(totPrice > 0)
	{
	//	oTotalprice.innerHTML = totPrice;
		var strBookedSeats = '';
		for(i=0; i < premSeatsSelected.length; i++)
		{
			strBookedSeats += premSeatsSelected[i] + ' ';
		}
		for(i=0; i < cheapSeatsSelected.length; i++)
		{
			strBookedSeats += cheapSeatsSelected[i] + ' ';
		}
		for(i=0; i < cheapSeats1Selected.length; i++)
		{
			strBookedSeats += cheapSeats1Selected[i] + ' ';
		}
	}
	oBookedSeatNos1.innerHTML='Booked Seats are:';
	oBookedSeatNos.value = strBookedSeats; 

}







window.onload=function()
{
	oTblPremium = document.getElementById('tblPremium');
	oTblCheap = document.getElementById('tblCheap');
	oTblCheap1 = document.getElementById('tblCheap1');

	oPremSeats = oTblPremium.getElementsByTagName('img');
	oCheapSeats = oTblCheap.getElementsByTagName('img');
	oCheapSeats1 = oTblCheap1.getElementsByTagName('img');


	oBtnCheckout = document.getElementById('checkout');
	oTotalprice = document.getElementById('totalprice');
	oBookedSeatNos = document.getElementById('bookedSeatNos');
	oBookedSeatNos1 = document.getElementById('bookedSeatNos1');
	oSeatType = document.getElementById('type');
	oQuantity=document.getElementById('quantity');

	oBtnCheckout.onclick=checkout;
	var type1=oSeatType.value;
	if(type1=='Platinum')
		createSeats(oTblPremium,numPremSeatsPerRow,PremRowNames); //create platinum seats function
	else
		createSeats1(oTblPremium,numPremSeatsPerRow,PremRowNames); //create platinum seats function
	if(type1=='Gold')
		createSeats(oTblCheap,numCheapSeatsPerRow,CheapRowNames);
	else
		createSeats1(oTblCheap,numCheapSeatsPerRow,CheapRowNames); //create gold seats function
	if(type1=='Silver')
		createSeats(oTblCheap1,numCheapSeatsPerRow,CheapRowNames1);
	else
		createSeats1(oTblCheap1,numCheapSeatsPerRow,CheapRowNames1); //create silver seats function

	document.getElementById('confirm').onclick=confirmChoices;			//calling confirm choice function
	document.getElementById('imgAvail').src = statusPics['avail'].src;
	document.getElementById('imgMine').src = statusPics['mine'].src;
	document.getElementById('imgTaken').src = statusPics['taken'].src;
//	document.getElementById('btnReset').onclick=function()
//	{
//		oTotalprice.innerHTML = '';
//		oBtnCheckout.disabled = true;
//		oBookedSeatNos.innerHTML = '';
//		for(i=0; i < oPremSeats.length; i++)
//		{
//			oPremSeats[i].src = statusPics['avail'].src;
//			oPremSeats[i].status = 'avail';
//
//		}
//		for(i=0; i < oCheapSeats.length; i++)
//		{
//			oCheapSeats[i].src = statusPics['avail'].src;
//			oCheapSeats[i].status = 'avail';
//		}
//		for(i=0; i < oCheapSeats1.length; i++)
//		{
//			oCheapSeats1[i].src = statusPics['avail'].src;
//			oCheapSeats1[i].status = 'avail';
//		}
//	};
	
};