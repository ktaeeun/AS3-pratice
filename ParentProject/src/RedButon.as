package 
{
	import org.osflash.signals.Signal;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author 
	 */
	public class RedButon extends Sprite
	{
		var clicked:Signal;
		public function RedButon() 
		{
			graphics.beginFill(0xF17058);
			graphics.drawCircle(70, 130, 50);
			graphics.endFill();
			
			addEventListener(MouseEvent.CLICK, onClick);
			
			clicked = new Signal();
		
		private function onClick(e:MouseEvent):void
		{
			
		}
		
	}

}