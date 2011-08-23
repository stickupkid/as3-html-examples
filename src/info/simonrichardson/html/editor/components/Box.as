package info.simonrichardson.html.editor.components
{
	import org.osflash.css.CSSStyle;
	import org.osflash.css.types.CSSStyleType;
	import org.osflash.html.builders.elements.body.HTMLDIVNode;
	import org.osflash.html.builders.elements.common.HTMLRawTextNode;
	import org.osflash.html.element.HTMLNode;

	import flash.display.Graphics;
	import flash.geom.Rectangle;
	/**
	 * @author Simon Richardson - me@simonrichardson.info
	 */
	public class Box extends Component
	{
		
		private var _css : CSSStyle;

		private var _html : HTMLDIVNode;

		private var _bounds : Rectangle;

		public function Box(color : int)
		{
			super();
			
			_html = new HTMLDIVNode();
			_html.add(new HTMLRawTextNode(''));
			_html.classes.add('RedBox');
			
			_css = new CSSStyle(CSSStyleType.CLASS, 'RedBox');
			_css.background.color = color;
			
			_bounds = new Rectangle();
		}
		
		private function redraw() : void
		{
			const g : Graphics = graphics;
			g.clear();
			g.beginFill(_css.background.color, 1.0);
			g.drawRect(x, y, width, height);
			g.endFill();
		}
		
		override public function get css() : CSSStyle
		{
			_css.width = width + 'px';
			_css.height = height + 'px';
			
			return _css;
		}
		
		override public function get html() : HTMLNode
		{
			return _html;
		}
		
		override public function get width() : Number
		{
			return _bounds.width;
		}
		
		override public function set width(value : Number) : void
		{
			_bounds.width = value;
			
			redraw();
		}
		
		override public function get height() : Number
		{
			return _bounds.height;
		}
			
		override public function set height(value : Number) : void
		{
			_bounds.height = value;
			
			redraw();
		}
	}
}
