package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
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
			
			//var wordHighlighter:WordHighlighter = new WordHighlighter();
			//stage.addChild(wordHighlighter);
			
			//var shapeExam:ShapeExam = new ShapeExam();
			//stage.addChild(shapeExam);
			
			//var rotatingRectangles:RotatingRectangles = new RotatingRectangles();
			//stage.addChild(rotatingRectangles);
			
			var app:App = new App();
			stage.addChild(app);
			
			// entry point
		}
		
	}
	
}       