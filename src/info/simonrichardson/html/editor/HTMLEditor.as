package info.simonrichardson.html.editor
{
	import info.simonrichardson.html.editor.components.Box;

	import org.osflash.css.CSSStyles;
	import org.osflash.html.builders.elements.body.HTMLBodyNode;
	import org.osflash.html.builders.elements.body.anchor.HTMLANode;
	import org.osflash.html.builders.elements.common.style.HTMLStyleNode;
	import org.osflash.html.builders.elements.head.HTMLHeadNode;
	import org.osflash.html.element.HTMLDocument;
	import org.osflash.logger.logs.error;
	import org.osflash.logger.logs.info;
	import org.osflash.logger.output.SOSMaxOutput;
	import org.osflash.logger.utils.getDefaultLogger;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.html.HTMLLoader;
	import flash.media.StageWebView;
	import flash.net.URLRequest;
	import flash.utils.setTimeout;

	[SWF(backgroundColor="#cccccc", frameRate="60", width="640", height="800")]
	public class HTMLEditor extends Sprite
	{
		
		public function HTMLEditor()
		{
			SOSMaxOutput(getDefaultLogger().stream.getAt(0)).foldMessage = false;
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			const server : HTMLServer = new HTMLServer();
			info('Server listening on port: ', server.port);
			
			const box0 : Box = new Box(0xff0000);
			box0.width = 100;
			box0.height = 100;
			box0.visible = false;
			
			addChild(box0);
			
			const box1 : Box = new Box(0xffff00);
			box1.width = 100;
			box1.height = 100;
			box1.visible = false;
			
			addChild(box1);
			
			const box2 : Box = new Box(0xcccccc);
			box2.width = 100;
			box2.height = 100;
			box2.visible = false;
			
			addChild(box2);
			
			const box3 : Box = new Box(0x111111);
			box3.width = 100;
			box3.height = 100;
			box3.visible = false;
			
			addChild(box3);
			
			server.add('/', createPage(box0, '1'));
			server.add('/1', createPage(box1, '2'));
			server.add('/2', createPage(box2, '3'));
			server.add('/3', createPage(box3, ''));
			
			if(HTMLLoader.isSupported)
			{
				info('HTMLLoader');
				
				const loader0 : HTMLLoader = new HTMLLoader();
				loader0.y = 200;
				loader0.width = stage.stageWidth;
				loader0.height = 200;
				loader0.load(new URLRequest('http://0.0.0.0:' + server.port));
				loader0.addEventListener(Event.COMPLETE, handleHTMLComplete);
				addChild(loader0);
				
				const loader1 : HTMLLoader = new HTMLLoader();
				loader1.y = 400;
				loader1.width = stage.stageWidth;
				loader1.height = 200;
				loader1.load(new URLRequest('http://0.0.0.0:' + server.port + '/1'));
				addChild(loader1);
			}
			else if(StageWebView.isSupported)
			{
				const webView : StageWebView = new StageWebView();
				webView.stage = stage;
				webView.viewPort = new Rectangle(0, 200, stage.stageWidth, stage.stageHeight - 200);
				webView.addEventListener(Event.COMPLETE, 
											function(event : Event) : void {
												setTimeout(handleHTMLComplete, 50, event);			
											});				
				webView.loadURL('http://0.0.0.0:' + server.port);
			}
			else error('HTMLRendering is not supported.');
		}
		
		private function createPage(box : Box, link : String) : XML
		{
			const dom : HTMLDocument = new HTMLDocument();
			const head : HTMLHeadNode = new HTMLHeadNode();
			
			const css : CSSStyles = new CSSStyles();
			css.addStyle(box.css);

			head.add(new HTMLStyleNode(css));
			dom.add(head);
			
			const body : HTMLBodyNode = new HTMLBodyNode();
			const a : HTMLANode = new HTMLANode('/' + link);
			a.id = box.name;
			a.add(box.html);
			body.add(a);
			dom.add(body);
			
			return dom.write();
		}
		
		private function handleHTMLComplete(event : Event) : void
		{
			if(HTMLLoader.isSupported)
			{
				// Yes we're doing JavaScript here!
				const loader : HTMLLoader = HTMLLoader(event.target);
				info('LOADER : ', loader.location);
				
				const list : Object = loader.window.document.getElementsByTagName('a');
				if(list['length'] > 0)
				{
					const total : int = numChildren;
					for(var i : int = 0; i < total; i++)
					{
						const child : DisplayObject = getChildAt(i);
						if(child is HTMLLoader) continue;
						else if(child.name == list.item(0).id) child.visible = true;
						else child.visible = false;
					}
				}
			}
			else if(StageWebView.isSupported)
			{
				// We can just bitmap the outout if required!
				const stageWebView : StageWebView = StageWebView(event.target);
				
				const webViewBitmapData : BitmapData = new BitmapData(	stageWebView.viewPort.width, 
																		stageWebView.viewPort.height
																		);
				
				 stageWebView.drawViewPortToBitmapData(webViewBitmapData);
								
				 const webViewBitmap : Bitmap = new Bitmap(webViewBitmapData);
				 webViewBitmap.x = stageWebView.viewPort.x;
				 webViewBitmap.y = stageWebView.viewPort.y;
				 addChild(webViewBitmap);
				
				 stageWebView.stage = null;
				 stageWebView.dispose();
				
				getChildAt(0).visible = true;
			}
			else error('HTMLRendering is not supported.');
		}
	}
}
