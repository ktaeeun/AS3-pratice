package 
{
	import flash.display.SpreadMethod;
	import flash.display.*;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class ObjectKeyboardSensor extends Sprite
	{
		
		public function ObjectKeyboardSensor() 
		{
			// 사각형 만들기
			var rect1:Sprite = new Sprite();
			rect1.graphics.lineStyle(1);
			rect1.graphics.beginFill(0x0000FF);
			rect1.graphics.drawRect(0, 0, 75, 75);
			rect1.tabEnabled = true;
			
			
			var rect2:Sprite = new Sprite();
			rect2.graphics.lineStyle(1);
			rect2.graphics.beginFill(0x0000FF);
			rect2.graphics.drawRect(0, 0, 75, 75);
			rect2.x = 200;
			rect2.tabEnabled = true;
			
			// 디스플레이 리스트에 추가하기
			addChild(rect1);
			addChild(rect2);
			
			// 키보드 이벤트리스너 등록
			rect1.addEventListener(KeyboardEvent.KEY_DOWN, rect1KeyDownListener);
			rect2.addEventListener(KeyboardEvent.KEY_DOWN, rect2KeyDownListener);
			
		}
		
		// rect1이 포커스를 가지고 있을때 키를 누르면 실행
		private function rect1KeyDownListener(e:KeyboardEvent):void {
			Sprite(e.target).x += 10;
		}
		
		// rect2가 포커스를 가지고 있을때 키를 누르면 실행
		private function rect2KeyDownListener(e:KeyboardEvent):void {
			Sprite(e.target).rotation += 10;
		}
		
	}

}