package 
{
	import flash.display.*;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class CustomEventDemo extends Sprite {
		
		
		public static const SOME_EVENT:String = "SOME_EVENT";
		
		public function CustomEventDemo() {
		
			
			var sprite:Sprite = new Sprite();
			addChild(sprite);
			
			stage.addEventListener(CustomEventDemo.SOME_EVENT, someEventListener);
			
			sprite.dispatchEvent(new Event(CustomEventDemo.SOME_EVENT, true));
		}
		
		
		private function someEventListener(e:Event):void {
			trace("SOME_EVENT occurred.");
		}
	}
	

}