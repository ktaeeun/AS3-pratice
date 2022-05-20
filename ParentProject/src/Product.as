package 
{
	
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	/**
	 * ...
	 * @author 
	 */
	public class Product extends Sprite {
		
		
		public static const PRODUCT_SELECTED:String = "PRODUCT+SELECTED";
		// 화면에 표시할 상품 이름 레이블
		private var label:TextField;
		// 상품이름
		private var productName:String;
		
		// 생성자
		public function Product (productName:String) {
			// 상품의 이름을 기록
			this.productName = productName;
			
			// 화면 레이블 생성
			label = new TextField();
			label.text = productName;
			label.autoSize = TextFieldAutoSize.LEFT;
			label.border = true;
			label.background = true;
			label.selectable = false;
			addChild(label);
			
			addEventListener(MouseEvent.CLICK, clickListener);
		}
		
		// 상품 이름 반환
		public function getName():String {
			return productName;
		}
		
			
			private function clickListener (e:MouseEvent):void {
		dispatchEvent(new Event(Product.PRODUCT_SELECTED, true));
		}
	}
	

}

