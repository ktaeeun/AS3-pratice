package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	
	/**
	 * ...
	 * @author 
	 */
	public class CheckBox extends Sprite {
		private var label:TextField;
		private var icon:CheckBoxIcon;
		private var checked:Boolean;
	
		// 생성자
		public function CheckBox (msg:String) {
			checked = false;
			
			//아이콘 만들기
			icon = new CheckBoxIcon();
			
			//텍스트 레이블 만들기
			label = new TextField();
			
			label.text = msg;
			label.autoSize = TextFieldAutoSize.LEFT;
			label.selectable = false;
			
			// 텍스트레이블을 체크박스 옆에 위치하기
			
			label.x = icon.x + icon.width + 5;
			
			// 레이블과 아이콘을 자식으로 추가하기
			addChild(icon);
			addChild(label);
			
		
			// 이벤트리스너 등록
			addEventListener(MouseEvent.CLICK, clickListener);
		}
		
		//  마우스 클릭 이벤트 처리
		private function clickListener (e:MouseEvent):void {
			if (checked) {
				icon.uncheck();
				checked = false;
			} else {
				icon.check();
				checked = true;
			}
		}
	}
}
	