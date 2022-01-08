
$("#num-add").off('click').on('click', function(){
				var quantity = parseInt($('#quantity').val(), 10) + 1;
				var price = parseInt('40000', 10);
				
				$('#quantity').val( quantity );
				$('#price').empty().append( util.numberComma(price * quantity) + ' <span> ì</span>' );
			});
			
			$('#num-sub').off('click').on('click', function(){
				var quantity = parseInt($('#quantity').val(), 10);
				var price = parseInt('40000', 10);
				
				if(quantity > 1){
					quantity = 	quantity - 1;
				}
				
				$('#quantity').val( quantity );
				$('#price').empty().append( util.numberComma(price * quantity) + ' <span> ì</span>' );
				$('#price').append( util.numberComma(data.price) + ' <span>ì</span>' );
			});


