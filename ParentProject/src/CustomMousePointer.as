package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.events.MouseEvent;
	import flash.geom.*;
	import flash.ui.*;
	/**
	 * ...
	 * @author 
	 */
	public class CustomMousePointer extends Sprite
	{
		
		public function CustomMousePointer() 
		{
			graphics.lineStyle(1);
			graphics.beginFill(0x0000FF, 1);
			graphics.lineTo(15, 5);
			graphics.lineTo(5, 15);
			graphics.lineTo(0, 0);
			graphics.endFill();
			
			// 헬퍼클래스가 필요함
			var stageDetector:StageDetector = new StageDetector(this);
			stageDetector.addEventListener(StageDetector.ADDED_TO_STAGE, addedToStageListener);
			stageDetector.addEventListener(StageDetector.REMOVED_FROM_STAGE, removeFromStageListener);
		}
		
		// 이벤트 처리
		private function addedToStageListener (e:Event):void {
			// 포인터 감추기
			Mouse.hide();
			
			// 나가는 것을 감지할 리스너 등록
			stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveListener);
			stage.addEventListener(Event.MOUSE_LEAVE, mouseLeaveListener);
			
		}
		 // 이벤트 처리
		private function removeFromStageListener(e:Event):void {
			Mouse.show();
			
			// stage 인스턴스에서 마우스 이벤트 제거
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveListener);
			stage.removeEventListener(Event.MOUSE_LEAVE, mouseLeaveListener);
		}
		
		// mouseleave 이벤트 처리
		private function mouseLeaveListener(e:Event):void {
			visible = false;
		}
		
		// mouse_move 이벤트 처리
		private function mouseMoveListener(e:MouseEvent):void {
			var pointInParent:Point = parent.globalToLocal(new Point(e.stageX, e.stageY));
			
			x = pointInParent.x;
			y = pointInParent.y;
			
			e.updateAfterEvent();
			
			if (!visible) {
				visible = true;
			}
		}
		
	}

}