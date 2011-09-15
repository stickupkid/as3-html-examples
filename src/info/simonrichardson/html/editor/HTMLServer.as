package info.simonrichardson.html.editor
{
	import flash.utils.setTimeout;
	import org.osflash.logger.logs.info;
	import org.osflash.logger.logs.warn;

	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.events.ServerSocketConnectEvent;
	import flash.net.ServerSocket;
	import flash.net.Socket;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;

	/**
	 * @author Simon Richardson - simon@ustwo.co.uk
	 */
	public class HTMLServer
	{
		
		private var _port : int;
		
		private var _serverSocket : ServerSocket;
		
		private var _requests : Dictionary;
		
		public function HTMLServer()
		{
			_port = int(Math.random() * 1000) + 8000;
			
			_requests = new Dictionary();
				
			_serverSocket = new ServerSocket();
			_serverSocket.addEventListener(Event.CONNECT, socketConnectHandler);
			_serverSocket.bind(port);
			_serverSocket.listen();
		}
		
		public function add(request : String, content : XML) : void
		{
			_requests[request] = content;
		}

		private function socketConnectHandler(event : ServerSocketConnectEvent) : void
		{
			const socket : Socket = event.socket;
			socket.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler);
		}

		private function socketDataHandler(event : ProgressEvent) : void
		{
			const socket : Socket = event.target as Socket;
			
			try
			{
				const bytes : ByteArray = new ByteArray();
				socket.readBytes(bytes);
				
				const request : String = bytes.toString();
				
				info(request);
				
				const requestPath : String = request.substring(4, request.indexOf("HTTP/") - 1);
				
				if (null != _requests[requestPath])
				{
					const xml : XML = _requests[requestPath];
					const content : String = xml.toXMLString();
					
					const time : int = requestPath == '/' ? 1000 : 10;
					setTimeout(handleFinish, time, socket, content);
				}
				else
				{
					socket.writeUTFBytes("HTTP/1.1 404 Not Found\n");
					socket.writeUTFBytes("Content-Type: text/html\n\n");
					socket.writeUTFBytes("<html><body><h2>Page Not Found</h2></body></html>");
					
					socket.flush();
					socket.close();
				}
			}
			catch (error : Error)
			{
				warn(error);
				
				socket.close();
			}
			
		}
		
		private function handleFinish(socket : Socket, content : String) : void
		{
			info('Write');
			
			socket.writeUTFBytes("HTTP/1.1 200 OK\n");
			socket.writeUTFBytes("Content-Type: text/html\n\n");
			socket.writeUTFBytes(content);
			
			socket.flush();
			socket.close();
		}
		
		public function get port() : int {  return _port; }
	}
}
