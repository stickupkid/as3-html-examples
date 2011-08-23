package info.simonrichardson.html.editor.components
{
	import org.osflash.css.CSSStyle;
	import org.osflash.html.element.HTMLNode;

	import flash.display.Sprite;
	/**
	 * @author Simon Richardson - me@simonrichardson.info
	 */
	public class Component extends Sprite
	{

		public function Component()
		{
			super();
		}
		
		public function get css() : CSSStyle
		{
			throw new Error('Abstract Method Error');
		}
		
		public function get html() : HTMLNode
		{
			throw new Error('Abstract Method Error');
		}
	}
}
