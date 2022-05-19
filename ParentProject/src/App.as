package 
{
	import flash.display.*;
	import flash.geom.*;
	/**
	 * ...
	 * @author 
	 */
	public class App extends Sprite {
		public function App() {
			// 자손 만들기
			var rect:Shape = new Shape();
			rect.graphics.lineStyle(1);
			rect.graphics.beginFill(0x0000FF, 1);
			rect.graphics.drawRect(0, 0, 75, 50);
			var sprite:Sprite = new Sprite();
			sprite.addChild(rect);
			addChild(sprite);
			
			// 자식을 app이 아니라 stage에 추가함
			stage.addChild(sprite);
			trace(rect.root);
			trace(sprite.root);
		}	
	}

}