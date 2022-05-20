package 
{
	import flash.display.*;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class MouseMotionSensor extends Sprite
	{
		
		public function MouseMotionSensor() 
		{
			var triangle:Sprite = new Sprite();
			triangle.graphics.lineStyle(1);
			triangle.graphics.beginFill(0X00FF00, 1);
			triangle.graphics.moveTo(25, 0);
			triangle.graphics.lineTo(50, 25);
			triangle.graphics.lineTo(0, 25);
			triangle.graphics.lineTo(25, 0);
			triangle.graphics.endFill();
			triangle.x = 200;
			triangle.y = 100;
			
			// 디스플레이 리스트에 추가
			addChild(triangle);
			// 이벤트 리스너 등록
			triangle.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveListener);
			triangle.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownListener);
		}
		
		private function mouseMoveListener(e:MouseEvent):void {
			trace("마우스 무브!");
			
		}
		
		private function mouseDownListener(e:MouseEvent):void {
			trace("마우스 다운!");
		}
		
	}

}