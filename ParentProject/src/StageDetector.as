package 
{
	import flash.display.*;
	import flash.events.*;
	
	/**
	 * ...
	 * @author 
	 */
	public class StageDetector extends EventDispatcher 
	{
		public static const ADDED_TO_STAGE:String = "ADDED_TO_STAGE";
		public static const REMOVED_FROM_STAGE:String = "REMOVED_FROM_STAGE";
		
		// add to stage와 removed from stage 이벤트가 생성될 객체
		
		private var watchedObject:DisplayObject = null;
		
		// watchedobject를 가지고 있는 디스플레이 계층의 루트
		
		private var watchedRoot:DisplayObject = null;
		
		// watchedobject가 디스플레이 리스트에 있는지 알려주는 플래그
		
		private var onStage:Boolean = false;
		
		// 생성자
		
		public function StageDetector (objectToWatch:DisplayObject) {
			// 특정 객체에 대한 감시 시작
			setWatchedObject(objectToWatch);
		}
		
		// 객체가 디스플레이 리스트에 추가되거나 제거될때 감시 시작
		public function setWatchedObject (objectToWatch:DisplayObject):void {
			// 감시되고 있는 객체 등록
			watchedObject = objectToWatch;
			
			// watchobject가 디스플레이 리스트에 있는지 확인
			if (watchedObject.stage != null) {
				onStage = true;
			}
			
			setWatchedRoot(findWatchedObjectRoot());
		}
		
		// 현재 감시되고있는 객체의 참조를 반환
		public function getWatchedObject ():DisplayObject {
			return watchedObject;
		}
		
		// stagedetector 객체의 리소스 해제, 제거하기전에 호출해줌
		public function dispose():void {
			clearWatchedRoot();
			watchedObject = null;
		}
		
		// watchedobject 루트에 등록된 이벤트리스너
		private function addedListener (e:Event):void {
			if (e.eventPhase == EventPhase.AT_TARGET) {
				// 리스트에 있는지 확인
				if (watchedObject.stage != null) {
					onStage = true;
					dispatchEvent(new Event(StageDetector.ADDED_TO_STAGE));
				}
				setWatchedRoot(findWatchedObjectRoot());
			}
		}
		
		// watchedobject 디스플레이 루트에 등록된 이벤트 리스너
		private function removedListener (e:Event):void {
			if (onStage) {
				var wasRemoved:Boolean = false;
				var ancestor:DisplayObject = watchedObject;
				var target:DisplayObject = DisplayObject(e.target);
				while (ancestor != null) {
					if (target == ancestor) {
						wasRemoved = true;
						break;
					}
					ancestor = ancestor.parent;
				}
				
				// watchedobject나 그 조상이 제거되었다ㅕㄴ
				if (wasRemoved) {
					setWatchedRoot(target);
					
					// 리스트에 없다면
					onStage = false;
					dispatchEvent(new Event(StageDetector.REMOVED_FROM_STAGE));
				}
			}
		}
		
		// 현재 watchedobject를 포함하는 디스플레이 계층의 루트를 반환
		private function findWatchedObjectRoot():DisplayObject {
			var watchedObjectRoot:DisplayObject = watchedObject;
			while (watchedObjectRoot.parent != null) {
				watchedObjectRoot = watchedObjectRoot.parent;
			}
			return watchedObjectRoot;
		}
		
		// 이벤트 받을 준비
		private function setWatchedRoot (newWatchedRoot:DisplayObject):void {
			clearWatchedRoot();
			watchedRoot = newWatchedRoot;
			registerListeners(watchedRoot);
		}
		
		// 이벤트 리스너 제거
		// 객체 참조도 제거
		private function clearWatchedRoot ():void {
			if (watchedRoot != null) {
				unregisterListeners(watchedRoot);
				watchedRoot = null;
				
			}
		}
		
		// 이벤트 리스너 등록
		private function registerListeners (target:DisplayObject):void {
			target.addEventListener(Event.ADDED, addedListener);
			target.addEventListener(Event.REMOVED, removedListener);
		}
		
		// 이벤트 리스너 제거
		private function unregisterListeners (target:DisplayObject):void {
			target.removeEventListener(Event.ADDED, addedListener);
			target.removeEventListener(Event.REMOVED, removedListener);
		}
		
	}

}