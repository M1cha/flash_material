package org.github.material.skins
{
	import spark.skins.spark.PanelSkin;
	
	public class WhitePanelSkin extends PanelSkin
	{
		override public function WhitePanelSkin()
		{
			super();
			topGroup.includeInLayout = false;
			setStyle("borderVisible", false);
			setStyle("dropShadowVisible", false);
		}
	}
}