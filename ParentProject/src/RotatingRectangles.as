package 
{
	import flash.display.*;
	import flash.events.*;
	
	/**
	 * ...
	 * @author 
	 */
	public class RotatingRectangles extends Sprite {
		private var _stage:Stage;
		
		public function RotatingRectangles($stage:Stage) {
			// 사각형 20개 만들기
			if ($stage != null) {
				_stage = $stage;
			}
			
			var rects:Array = new Array();
			for (var i:int = 0; i < 20; i++) {
				rects[i] = new ShapeExam();
				rects[i].graphics.lineStyle(1);
				rects[i].graphics.beginFill(Math.floor(Math.random() * 0xFFFFFF), 1);
				rects[i].graphics.drawRect(0, 0, 100, 50);
				rects[i].x = Math.floor(Math.random() * 500);
				rects[i].y = Math.floor(Math.random() * 400);
				addChild(rects[i]);
				var obj:DisplayObject 
			}
			
			// 마우스 클릭을 등록
			_stage.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownListener);
		}
		
		public function setStage($stage:Stage):void {
			_stage = $stage;
		}
		
		private function mouseDownListener(e:Event):void {
			// 각 객체의 자식을 무작위로 회전
			for (var i:int = 0; i < numChildren; i++) {
				getChildAt(i).rotation = Math.floor(Math.random() * 360);
			}
		}
	}
}