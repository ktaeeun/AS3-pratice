package 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author 
	 */
	public class ShoppingBasketDemo extends Sprite {
		public function ShoppingBasketDemo () {
			var basket:ShoppingBasket = new ShoppingBasket();
			basket.addProduct(new Product("닌텐도"));
			basket.addProduct(new Product("티비"));
			basket.addProduct(new Product("핸드폰"));
			addChild(basket);
		}
	}

}