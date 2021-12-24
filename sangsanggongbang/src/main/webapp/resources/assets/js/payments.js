
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

$(function(){
	$('#apibtn').click(function(){
		//가맹점 식별코드
		IMP.init('imp73895922');
		IMP.request_pay({
		    pg : 'html5_inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '상품1' , //결제창에서 보여질 이름
		    amount : 1000, //실제 결제되는 가격
		    buyer_email : 'wlddj22@gmail.com',
		    buyer_name : '오정훈',
		    buyer_tel : '010-6385-1321',
		    buyer_addr : '서울 강남구 도곡동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});
	});
});
