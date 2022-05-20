package 
{
	import flash.display.*;
	import flash.text.*;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class MousePositionChecker extends Sprite
	{
		
		public function MousePositionChecker() 
		{
			// textfield  만들기
			var textfield :TextField = new TextField();
			textfield.text = "클릭";
			textfield.autoSize = TextFieldAutoSize.LEFT;
			textfield.x = 100;
			textfield.y = 100;
			
			// 디스플레이 리스트에 추가
			addChild(textfield);
			
			// 이벤트 리스너 등록
			textfield.addEventListener(MouseEvent.CLICK, clickListener);
		}
		
		// 마우스 포인터 위치 출력
		private function clickListener (e:MouseEvent):void {
			// textfield 기준 마우스 포인터 위치
			trace("TextField의 공간의 위치 : (" + e.localX + ", " + e.localY + ")");
			
			//stage 기준의 마우스 포인터 위치
			trace("stage의 공간의 위치 : (" + e.stageX + ", " + e.stageY + ")");
		}
		
	}

}