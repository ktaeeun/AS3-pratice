package 
{
	import flash.display.*;
	import flash.text.*;
	import flash.events.*;
	
	public class WordHighlighter extends Sprite {
		private var word1:Sprite;
		private var text1:TextField;
		
		// 두번째 단어
		private var word2:Sprite;
		private var text2:TextField;
		
		// 강조 shpe
		private var bgRect:Shape;
		
		
		public function WordHighlighter () {
			// 첫번째  textfield와 sprite를 만든다
			word1 = new Sprite();
			text1 = new TextField();
			text1.text = "Products";
			text1.selectable = false;
			text1.autoSize = TextFieldAutoSize.LEFT;
			word1.addChild(text1)
			text1.addEventListener(MouseEvent.MOUSE_OVER, mouseOverListener);
			
			// 두번째 textfield와  sprite 를 만든다
			
			word2 = new Sprite();
			text2 = new TextField();
			text2.text = "services";
			text2.selectable = false;
			text2.autoSize = TextFieldAutoSize.LEFT;
			word2.x = 75;
			word2.addChild(text2);
			text2.addEventListener(MouseEvent.MOUSE_OVER, mouseOverListener);
			
			// sprite  인스턴스를  wordhighlighter에 추가
			addChild(word1);
			addChild(word2);
			
			// shape(라운드 사각형)을 만든다
			bgRect = new Shape();
			bgRect.graphics.lineStyle(1);
			bgRect.graphics.beginFill(0xCCCCCC, 1);
			bgRect.graphics.drawRoundRect(0, 0, 60, 15, 8);
			
		}
		
		// 마우스 포인터가 텍스트 위로 지나갈때 실행됨
		private function mouseOverListener (e:MouseEvent):void {
			if (!e.target.parent.contains(bgRect )) {
				e.target.parent.addchildAt(bgRect , 0);
			}
		}
	}

}