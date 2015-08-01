package org.github.material
{
	import mx.events.ResizeEvent;
	
	import spark.components.Button;
	import spark.core.IDisplayText;
	
	public class TwoLineListItem extends spark.components.Button
	{	
		public var labelDisplaySecondary:IDisplayText;
		private var secondaryText:String = "";
		
		public function TwoLineListItem()
		{
			super();
			percentWidth = 100;
			height = MaterialUtils.dp2px(72);
			useHandCursor = true;
			buttonMode = true;
		}
		
		public function set labelSecondary(s:String):void {
			secondaryText = s;
			
			updateText();
		}
		
		public function updateText():void {
			if(labelDisplaySecondary)
				labelDisplaySecondary.text = secondaryText;
		}
	}
}