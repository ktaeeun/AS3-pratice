package 
{
	import flash.display.*;
	import flash.events.*;
	/**
	 * ...
	 * @author 
	 */
	public class ContainmentEventDemo extends Sprite
	{
		
		public function ContainmentEventDemo() 
	
			
			//sprite  객체 만들기
			var container:Sprite = new Sprite();
			var child:Sprite = new Sprite();
			var granchild:Sprite = new Sprite();
			
			// Event.ADDED 이벤트와 Event.REMOVED 이벤트 리스너 등록
			 container.addEventListener(Event.ADDED, addedListener);
			 container.addEventListener(Event.REMOVED, removedListener);
			 
			 // child를 container에 추가함
			 container.addChild(child); // 버블링단계에서 addedlistener 실행
			 
			 // grandchild를 child에 추가
			 container.addChild(granchild); // 버블링단계에서 addedlistener 실행
			 
			 // container를 stage에 추가
			 stage.addChild(container); // 타깃단계에서 addedListener 실행
			 
			 // grandchild를 child로부터 제거
			 child.removeChild(granchild) // 버블링단계에서 removedlistener실행
			 
			 //container를 stage에서 제거
			 stage.removeChild(container)
		}
		
		private function addedListener (e:Event):void {
			if (e.eventPhase != EventPhase.AT_TARGET) {
				trace("container has a new descendant: " + e.target);
			} else {
				trace("container was added to a new parent: " + DisplayObject(e.target).parent);
			}
		}
		
		private function removedListener (e:Event):void {
			if (e.eventPhase != EventPhase.AT_TARGET) {
				trace("a descendant was removed from container: " + e.target);
			} else {
				trace("container was removed from its parent: " + DisplayObject(e.target).parent);
			}
		}
	}

}