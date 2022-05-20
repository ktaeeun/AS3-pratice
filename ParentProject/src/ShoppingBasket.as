package 
{
	
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	/**
	 * ...
	 * @author 
	 */
	public class ShoppingBasket extends Sprite
	{
		// 장바구니에 들어가는 제목 표시줄
		private var title:TextField;
		// 장바구니에 들어있는 상품 배열
		private var products:Array;
		// 현재 선택된 상품
		private var selectedProduct:Product;
		
		
		// 생성자
		public function ShoppingBasket() 
		{
			// 상품 객체를 담을 빈 배열
			products = new Array();
			
			// 제목 표시줄
			title = new TextField();
			title.text = "상품이 선택되지 않았습니다";
			title.autoSize = TextFieldAutoSize.LEFT;
			title.border = true;
			title.background = true;
			title.selectable = true;
			addChild(title);
			
			// 이벤트 리스너 등록
			addEventListener(Product.PRODUCT_SELECTED, productSelectedListener);
			
		}
		
		// 새 상품을 장바구니에 추가
		public function addProduct (product:Product):void {
			// 새 상품 만들고 상품배열에 추가
			products.push(product);
			// 새로운 상품을 이 객체의 디스플레이 계층에 추가
			addChild(products[products.length - 1]);
			// 상품 다시 정렬하기
			updateLayout();
		}
		
		// 모든 상품을 왼쪽에서 오른쪽으로 정리
	public function updateLayout():void {
		var totalX:Number = 0;
		for (var i:int = 0; i < products.length; i++) {
			products[i].x = totalX;
			totalX += products[i].width + 20; // 20은 상품 사이의 너비
			products[i].y = title.height + 20; // 상품 사이의 높이
		}
		
	}
	
	private function productSelectedListener (e:Event):void {
		selectedProduct = Product(e.target);
		
		// 장바구니 제목 표시줄 바꾸기
		title.text = selectedProduct.getName();
	}

}
}