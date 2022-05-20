package 
{
	import flash.display.*;
	import flash.events.*;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		
		{
			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var objectKeyboardSensor:ObjectKeyboardSensor = new ObjectKeyboardSensor();
			stage.addChild(objectKeyboardSensor);
		}
		
	}
	
	
}