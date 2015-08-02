package org.github.material
{
	import flash.events.Event;
	
	import mx.controls.Image;
	import mx.core.UIComponent;
	
	import spark.components.Button;

	public class NavigationButton extends Button
	{
		private var mIcon:Object = null;
		private var mIconLeft:Number = 0;
		private var mIconTop:Number = 0;
		private var mIconRight:Number = 0;
		private var mIconBottom:Number = 0;
		
		public var mImageIconComponent:Image = null;
		
		public function NavigationButton()
		{
			super();
			buttonMode = true;
		}
		
		public function set icon(object:Object):void {
			mIcon = object;
			
			if(mImageIconComponent!=null)
				mImageIconComponent.source = mIcon;
		}
		public function get icon():Object {
			return mIcon;
		}
		
		public function set iconLeft(val:Number):void {
			mIconLeft = MaterialUtils.dp2px(val);
		}
		public function get iconLeft():Number {
			return mIconLeft;
		}
		
		public function set iconTop(val:Number):void {
			mIconTop = MaterialUtils.dp2px(val);
		}
		public function get iconTop():Number {
			return mIconTop;
		}
		
		public function set iconRight(val:Number):void {
			mIconRight = MaterialUtils.dp2px(val);
		}
		public function get iconRight():Number {
			return mIconRight;
		}
		
		public function set iconBottom(val:Number):void {
			mIconBottom = MaterialUtils.dp2px(val);
		}
		public function get iconBottom():Number {
			return mIconBottom;
		}
	}
}