// ActionScript file
package org.github.material  {

	public class MaterialUtils {
		private static var _density:Number = 140;
		private static var DENSITY_DEFAULT:uint = 160;
		private static var _primaryColor:uint = 0x00a9f4;
		
		public static function get density():uint {
			return _density;
		}
		
		public static function set density(density:uint):void {
			_density = density;
		}
		
		[Bindable]
		public static function get primaryColor():uint {
			return _primaryColor;
		}
		
		public static function set primaryColor(primaryColor:uint):void {
			_primaryColor = primaryColor;
		}
		
		public static function dp2px(dp:uint):uint{
			return (dp * (_density / DENSITY_DEFAULT));
		}
		
		public static function sp2px(str:String):String{
			if(str.length>2 && str.substr(-2)=="sp") {
				return sp2px_force(str);
			}
			
			return str;
		}
		
		public static function sp2px_force(str:String):String{
			return String(dp2px(uint(str.substr(0, -2))));
		}
		
		public static function strcolor2uint(str:String):uint {
			if(str.length>2 && str.substr(0, 1)=="#") {
				return uint("0x"+str.substr(1));
			}
			return uint(str);
		}
		
		public static function colorBrightness(colour:uint):Number
		{
			var rgb:Array = HexToRGB(colour);
			
			//return Math.sqrt((rgb[0] * rgb[0] * 0.241) + (rgb[1] * rgb[1] * 0.691) + (rgb[2] * rgb[2] * 0.068) ) / 255;
			return ((rgb[0] * 299) + (rgb[1] * 587) + (rgb[2] * 114)) / 1000;
		}
		
		public static function HexToRGB(hex:uint):Array
		{
			var rgb:Array = [];
			
			var r:uint = hex >> 16 & 0xFF;
			var g:uint = hex >> 8 & 0xFF;
			var b:uint = hex & 0xFF;
			
			rgb.push(r, g, b);
			return rgb;
		}
		
		public static function useWhite(color:uint):Boolean {
			trace(colorBrightness(color));
			return colorBrightness(color) < 100;
		}
	}
}