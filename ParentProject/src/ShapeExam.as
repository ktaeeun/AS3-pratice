package {  
    import flash.display.Sprite;  
    import flash.events.MouseEvent;  
  
    public class ShapeExam extends Sprite {  
          
        private var circle:Sprite;  
        private var rect:Sprite;  
        private var roundRect:Sprite;  
          
        private var size:uint = 40;  
        private var borderSize:uint = 3;  
          
        public function ShapeExam() {  
            doDrawCircle(0xFFCC00);  
            doDrawRect(0x666666);  
            doDrawRoundRect(0x003399);  
        }  
          
        private function doDrawCircle(baseColor:uint):void  
        {  
            circle = new Sprite;  
            var harfSize:uint = Math.round(size/2);  
            circle.graphics.beginFill(baseColor);  
            circle.graphics.drawCircle(30,50,harfSize);  
            circle.graphics.endFill();  
            addChild(circle);  
        }  
          
        private function doDrawRect(baseColor:uint):void  
        {  
            rect = new Sprite;  
            rect.graphics.beginFill(baseColor);  
            rect.graphics.drawRect(0,10,size,size);  
            rect.graphics.endFill();  
            addChild(rect);  
        }  
          
        private function doDrawRoundRect(baseColor:uint):void  
        {  
            roundRect = new Sprite;  
            roundRect.graphics.beginFill(baseColor);  
            roundRect.graphics.drawRoundRect(80,80,size,size,15);  
            roundRect.graphics.endFill();  
            roundRect.buttonMode = true;  
            roundRect.addEventListener(MouseEvent.CLICK, swapHandler);  
            addChild(roundRect);  
        }  
          
        private function swapHandler(event:MouseEvent):void  
        {  
            this.swapChildren(circle, rect);  
        }  
    }  
}  


