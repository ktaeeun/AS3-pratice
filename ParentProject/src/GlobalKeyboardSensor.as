package 
{
	import flash.display.*a;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class GlobalKeyboardSensor extends Sprite
	{
		
		public function GlobalKeyboardSensor() 
		{
			// 키가 눌릴 때 처리 할 리스너 등록
			addEventListener(KeyboardEvent.KEY_DOWN, keyDownListener);
		}
		
		private function keyDownListener (e:KeyboardEvent):void {
			trace("A키가 눌렸습니다");
		}
		
	}

}