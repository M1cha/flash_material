package org.github.material
{
	import flash.events.MouseEvent;
	import flash.text.FontStyle;
	
	import mx.states.SetProperty;
	
	import spark.components.Button;
	
	[Style(name="buttonColor", type="uint", format="Color", inherit="yes")]

	public class Button extends spark.components.Button
	{
		public function Button()
		{
			super();
			height = MaterialUtils.dp2px(48);
			minWidth = MaterialUtils.dp2px(64);
			useHandCursor = true;
			buttonMode = true;
		}
	}

}