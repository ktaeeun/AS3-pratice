package 
{
	import flash.display.*;
	import flash.events.*;
	
	/**
	 * ...
	 * @author 
	 */
	public class RotatingRectangles extends Sprite {
		public function RotatingRectangles() {
			// 사각형 20개 만들기
			var rects:Array = new Array();
			for (var i:int = 0; i < 20; i++) {
				rects[i] = new ShapeExam();
				rects[i].graphics.lineStyle(1);
				rects[i].graphics.beginFill(Math.floor(Math.random() * 0xFFFFFF), 1);
				rects[i].graphics.drawRect(0, 0, 100, 50);
				rects[i].x = Math.floor(Math.random() * 500);
				rects[i].y = Math.floor(Math.random() * 400);
				addChild(rects[i]);
			}
			
			// 마우스 클릭을 등록
			stage.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownListener);
		}
		
		private function mouseDownListener(e:Event):void {
			// 각 객체의 자식을 무작위로 회전
			for (var i:int = 0; i < numChildren; i++) {
				getChildAt(i).rotation = Math.floor(Math.random() * 360);
			}
		}
	}
}