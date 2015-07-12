package org.github.material
{
	import spark.components.Panel;
	
	public class Toolbar extends Panel
	{
		public function Toolbar()
		{
			super();
			percentWidth = 100;
			height = MaterialUtils.dp2px(56); 
		}
	}
}