package 
{
	import flash.display.*;
	/**
	 * ...
	 * @author 
	 */
	public class CheckBoxIcon extends Sprite {
		public function CheckBoxIcon () {
			uncheck();
		}
		
		// 체크된 상태의 체크박스
		public function check():void {
			graphics.clear();
			graphics.lineStyle(1);
			graphics.beginFill(0xFFFFFF);
			graphics.drawRect(0, 0, 15, 15);
			graphics.endFill();
			graphics.moveTo(0, 15);
			graphics.lineTo(15,0)
		}
		
		// 체크안된 체크박스
		public function uncheck():void {
			graphics:clear();
			graphics.lineStyle(1);
			graphics.beginFill(0xFFFFFF);
			graphics.drawRect(0, 0, 15, 15);
		}
		
	}
}