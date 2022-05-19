package
{
        import flash.display.Bitmap;
        import flash.display.BitmapData;
        import flash.display.Loader;
        import flash.display.Sprite;
        import flash.events.Event;
        import flash.net.URLRequest;
       
        public class ImageTest extends Sprite
        {      
                private var _load:Loader;
               
                public function ImageTest()
                {      
                        _load = new Loader();
                       
                        _load.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
                       
                        _load.load(new URLRequest("../bin/image.png"));
                }
               
                private function onComplete(e:Event):void
                {

       

                        var l_bmpData:BitmapData = new BitmapData(_load.width, _load.height);
                        var l_bmp:Bitmap = new Bitmap(l_bmpData, "auto", true);
                       
                        l_bmpData.draw(_load.content); // BitmapData에 불러온 이미지 그리기 
                        
                        l_bmp.scaleX = l_bmp.scaleY = 0.5;
                       
                        addChild(l_bmp);
                }
               
               
        } 
} 
 