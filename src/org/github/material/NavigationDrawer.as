package org.github.material
{	
	import mx.events.EffectEvent;
	import mx.utils.OnDemandEventDispatcher;
	
	import spark.components.Group;
	import spark.components.Panel;
	import spark.effects.Fade;
	import spark.effects.Move;
	import spark.filters.DropShadowFilter;
	import spark.primitives.Rect;
	
	public class NavigationDrawer extends Panel
	{
		public var obfuscator:Panel = null;
		public var container:Group = null;
		public var dropShadow:DropShadowFilter = null;
		
		public function NavigationDrawer()
		{
			super();
			percentWidth = 100;
			percentHeight = 100;
		}
		
		public function fadeIn(duration:uint = 170):void {
			var move:Move = new Move();
			move.duration = duration;
			move.xFrom = container.x;
			move.xTo = 0;
			
			var fade:Fade = new Fade();
			fade.duration = duration;
			fade.alphaFrom = obfuscator.alpha;
			fade.alphaTo = 0.5;
			
			obfuscator.visible = true;
			move.play([container]);
			fade.play([obfuscator]);
		}
		
		public function fadeOut(duration:uint = 170):void {
			var move:Move = new Move();
			move.duration = duration;
			move.xFrom = container.x;
			move.xTo = -(container.width + dropShadow.blurX);
			
			var fade:Fade = new Fade();
			fade.duration = duration;
			fade.alphaFrom = obfuscator.alpha;
			fade.alphaTo = 0;
			fade.addEventListener(EffectEvent.EFFECT_END, function():void{
				obfuscator.visible = false;
			});
			
			obfuscator.visible = true;
			move.play([container]);
			fade.play([obfuscator]);
		}
	}
}