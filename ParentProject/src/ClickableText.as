package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	/**
	 * ...
	 * @author 
	 */
	public class ClickableText extends Sprite
	{
		
		public function ClickableText() 
		{
			var theTextField:TextField = new TextField();
			theTextField.text = "클릭하기";
			theTextField.autoSize = TextFieldAutoSize.LEFT;
			theTextField.border = true;
			theTextField.background = true;
			theTextField.selectable = false;
			addChild(theTextField);
			
			theTextField.addEventListener(MouseEvent.CLICK,clickListener);
			
		}
		
		private function clickListener (e:MouseEvent):void {
			trace("이미 클릭되었습니다.");
		}
		
	}

}