package 
{
	
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	
	/**
	 * ...
	 * @author 
	 */
	public class DisappearingTextField extends Sprite
	{
		private var textField:TextField;
		public function DisappearingTextField() {
			// textfield 객체 만들기
			textField = new TextField();
			textField.text = "클릭"
			textField.autoSize = TextFieldAutoSize.LEFT;
			
			// textfield 객체를 disappearingtextfield에 추가
			addChild(textField);
			
			// mouserevent.click 이벤트를 stage에 등록
			stage.addEventListener(MouseEvent.CLICK, stageClickedListener, true);
			
			// textfield 객체에 mouseevent.click 이벤트 리스너 등록
			textField.addEventListener(MouseEvent.CLICK, textFieldClickListener);
		}
		
		private function stageClickListener (e:MouseEvent):void {
			if ( e.target == textField) {
				// 제거
				removeChild(textField);
				textField = null;
			}
		}
		
		// 사용자가 textfield를 클릭시 실행
		private function textFieldClickListener (e:MouseEvent):void {
			trace("textFieldClickListener triggered");
		}
		
		
	}

}