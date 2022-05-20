package 
{
	import flash.display.*;
	import flash.text.*;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class ObjectFocusSensor extends Sprite 
	{
		
		private var namefield:TextField;
		private var passfield:TextField;
		
		public function ObjectFocusSensor() 
		{
			
			//텍스트 필드 만들기
			namefield = new TextField();
			namefield.width = 100;
			namefield.height = 30;
			namefield.border = true;
			namefield.background = true;
			namefield.type = TextFieldType.INPUT;
			
			
			passfield = new TextField();
			passfield.width = 100;
			passfield.height = 30;
			passfield.y = 50;
			passfield.border = true;
			passfield.background = true;
			passfield.type = TextFieldType.INPUT;
			
			// 텍스트 필드를 디스플레이에 추가
			addChild(namefield);
			addChild(passfield);
			
			// 이벤트리스너 추가
			namefield.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE, focusChangeListener);
			namefield.addEventListener(FocusEvent.KEY_FOCUS_CHANGE, focusChangeListener);
			
		}
		
		private function focusChangeListener (e:FocusEvent):void {
			if (e.target == namefield && namefield.text.length < 3) {
				trace ("이름이 3글자보다 작아야함");
				e.preventDefault();
			}
		}
		
	}

}