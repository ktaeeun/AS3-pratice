package 
{
	import flash.display.Sprite;
	import flash.text.*;
	import flash.events.FocusEvent;
	/**
	 * ...
	 * @author 
	 */
	public class GlobalFocusSensor extends Sprite
	{
		
		public function GlobalFocusSensor() 
		{
			// 텍스트 필드 만들기
			var field1:TextField = new TextField();
			field1.width = 100;
			field1.height = 30;
			field1.border = true;
			field1.background = true;
			field1.type = TextFieldType.INPUT;
			
			var field2:TextField = new TextField();
			field2.width = 100;
			field2.height = 30;
			field2.y = 50;
			field2.border = true;
			field2.background = true;
			field2.type = TextFieldType.INPUT;
			
			// 텍스트 필드를 디스플레이 리스트에 추가한다
			addChild(field1);
			addChild(field2);
			
			// 이벤트 리스너 등록
			addEventListener(FocusEvent.FOCUS_IN, focusInListener);
			
		}
		
		// 이벤트 처리 담당
		private function focusInListener (e:FocusEvent):void {
			TextField(e.target).backgroundColor = 0xFF00FF00;
			
			// 포커스를 잃은 객체의 배경을 흰색으로 바꾸기
			if (e.relatedObject is TextField) {
				TextField(e.relatedObject).backgroundColor = 0xFFFFFF;
			}
		}
		
	}

}