package 
{
	
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	/**
	 * ...
	 * @author 
	 */
	public class ClickSensor extends Sprite
	{
		
		public function ClickSensor() 
		{
			//circle 만들기
			var circle:Sprite = new Sprite();
			circle.graphics.beginFill(0x999999, 1);
			circle.graphics.lineStyle(1);
			circle.graphics.drawEllipse(0, 0, 100, 100);
			
			//textfiled 만들기
			var textfield:TextField = new TextField();
			textfield.text = "클릭하기";
			textfield.autoSize = TextFieldAutoSize.LEFT;
			textfield.x = 30;
			textfield.y = 30;
			textfield.border = true;
			textfield.background = true;
			textfield.mouseEnabled = false;
			
			// circle을 디스플레이에 추가하기
			addChild(circle);
			// textfield를 디스플레이에 추가하기
			addChild(textfield);
			
			// 이벤트 리스너 등록
			circle.addEventListener(MouseEvent.CLICK, clickListener);
		}
		
		// mouseEvent.CLICK 처리하는 함수
		private function clickListener (e:MouseEvent):void {
			trace("유저가 클릭함 : " + e.target);
			DisplayObject(e.target).x += 10;
		}
		
	}

}