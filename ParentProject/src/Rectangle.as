package 
{
	import flash.display.Shape;
	/**
	 * ...
	 * @author 
	 */
	public class Rectangle extends Shape 
	{
		
		public function Rectangle(w:Number, h:Number, lineThickness:Number, lineColor:uint, fillColor:uint) 
		{
			graphics.lineStyle(lineThickness, lineColor);
			graphics.beginFill(fillColor, 1);
			graphics.drawRect(0, 0, w, h);
		}
		
	}

}