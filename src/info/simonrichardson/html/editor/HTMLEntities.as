package info.simonrichardson.html.editor
{
	/**
	 * @author Simon Richardson - simon@ustwo.co.uk
	 */
	public class HTMLEntities
	{
		
		public static function encode(value:String):String {
			var regExp:RegExp;
			
			///////////////////////////////////////////////////////////////////////
			// Reserved Characters in HTML
			// http://www.w3schools.com/tags/ref_entities.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/0026/index.htm
			// ampersand (Entity Number: &#38;)
			regExp = /&/g;
			value = value.replace(regExp, "&amp;");
			
			// http://www.fileformat.info/info/unicode/char/0022/index.htm
			// double quotation mark (Entity Number: &#34;)
			regExp = /"/g;
			value = value.replace(regExp, "&quot;");
			
			// http://www.fileformat.info/info/unicode/char/0027/index.htm
			// apostrophe (Entity Number: &#39;)
			regExp = /'/g;
			value = value.replace(regExp, "&apos;");
			
			// http://www.fileformat.info/info/unicode/char/003c/index.htm
			// less-than sign (Entity Number: &#60;)
			regExp = /</g;
			value = value.replace(regExp, "&lt;");
			
			// http://www.fileformat.info/info/unicode/char/003e/index.htm
			// greater-than sign (Entity Number: &#62;)
			regExp = /\>/g;
			value = value.replace(regExp, "&gt;");
			
			///////////////////////////////////////////////////////////////////////
			// ISO 8859-1 Symbols
			// http://www.w3schools.com/tags/ref_entities.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/00a0/index.htm
			// non-breaking space (Entity Number: &#160;)
			regExp = / /g;
			value = value.replace(regExp, "&nbsp;");
			
			// http://www.fileformat.info/info/unicode/char/00a1/index.htm
			// inverted exclamation (Entity Number: &#161;)
			regExp = /¡/g;
			value = value.replace(regExp, "&iexcl;");
			
			// http://www.fileformat.info/info/unicode/char/00a2/index.htm
			// cent sign (Entity Number: &#162;)
			regExp = /¢/g;
			value = value.replace(regExp, "&cent;");
			
			// http://www.fileformat.info/info/unicode/char/00a3/index.htm
			// pound sterling (Entity Number: &#163;)
			regExp = /£/g;
			value = value.replace(regExp, "&pound;");
			
			// http://www.fileformat.info/info/unicode/char/00a4/index.htm
			// general currency sign (Entity Number: &#164;)
			regExp = /¤/g;
			value = value.replace(regExp, "&curren;");
			
			// http://www.fileformat.info/info/unicode/char/00a5/index.htm
			// yen sign (Entity Number: &#165;)
			regExp = /¥/g;
			value = value.replace(regExp, "&yen;");
			
			// http://www.fileformat.info/info/unicode/char/00a6/index.htm
			// broken vertical bar (Entity Number: &#166;)
			regExp = /¦/g;
			value = value.replace(regExp, "&brvbar;");
			
			// http://www.fileformat.info/info/unicode/char/00a7/index.htm
			// section sign (Entity Number: &#167;)
			regExp = /§/g;
			value = value.replace(regExp, "&sect;");
			
			// http://www.fileformat.info/info/unicode/char/00a8/index.htm
			// umlaut (Entity Number: &#168;)
			regExp = /¨/g;
			value = value.replace(regExp, "&uml;");
			
			// http://www.fileformat.info/info/unicode/char/00a9/index.htm
			// copyright (Entity Number: &#169;)
			regExp = /©/g;
			value = value.replace(regExp, "&copy;");
			
			// http://www.fileformat.info/info/unicode/char/00aa/index.htm
			// feminine ordinal (Entity Number: &#170;)
			regExp = /ª/g;
			value = value.replace(regExp, "&ordf;");
			
			// http://www.fileformat.info/info/unicode/char/00ab/index.htm
			// left angle quote (Entity Number: &#171;)
			regExp = /«/g;
			value = value.replace(regExp, "&laquo;");
			
			// http://www.fileformat.info/info/unicode/char/00ac/index.htm
			// not sign (Entity Number: &#172;)
			regExp = /¬/g;
			value = value.replace(regExp, "&not;");
			
			// http://www.fileformat.info/info/unicode/char/00ad/index.htm
			// soft hyphen (Entity Number: &#173;)
			//regExp = //g;
			//$str = $str.replace(regExp, "&shy;");
			
			// http://www.fileformat.info/info/unicode/char/00ae/index.htm
			// registered trademark (Entity Number: &#174;)
			regExp = /®/g;
			value = value.replace(regExp, "&reg;");
			
			// http://www.fileformat.info/info/unicode/char/00af/index.htm
			// macron accent (Entity Number: &#175;)
			regExp = /¯/g;
			value = value.replace(regExp, "&macr;");
			
			// http://www.fileformat.info/info/unicode/char/00b0/index.htm
			// degree sign (Entity Number: &#176;)
			regExp = /°/g;
			value = value.replace(regExp, "&deg;");
			
			// http://www.fileformat.info/info/unicode/char/00b1/index.htm
			// plus or minus (Entity Number: &#177;)
			regExp = /±/g;
			value = value.replace(regExp, "&plusmn;");
			
			// http://www.fileformat.info/info/unicode/char/00b2/index.htm
			// superscript two (Entity Number: &#178;)
			regExp = /²/g;
			value = value.replace(regExp, "&sup2;");
			
			// http://www.fileformat.info/info/unicode/char/00b3/index.htm
			// superscript three (Entity Number: &#179;)
			regExp = /³/g;
			value = value.replace(regExp, "&sup3;");
			
			// http://www.fileformat.info/info/unicode/char/00b4/index.htm
			// acute accent (Entity Number: &#180;)
			regExp = /´/g;
			value = value.replace(regExp, "&acute;");
			
			// http://www.fileformat.info/info/unicode/char/00b5/index.htm
			// micro sign (Entity Number: &#181;)
			regExp = /µ/g;
			value = value.replace(regExp, "&micro;");
			
			// http://www.fileformat.info/info/unicode/char/00b6/index.htm
			// paragraph sign (Entity Number: &#182;)
			regExp = /¶/g;
			value = value.replace(regExp, "&para;");
			
			// http://www.fileformat.info/info/unicode/char/00b7/index.htm
			// middle dot (Entity Number: &#183;)
			regExp = /·/g;
			value = value.replace(regExp, "&middot;");
			
			// http://www.fileformat.info/info/unicode/char/00b8/index.htm
			// cedilla (Entity Number: &#184;)
			regExp = /¸/g;
			value = value.replace(regExp, "&cedil;");
			
			// http://www.fileformat.info/info/unicode/char/00b9/index.htm
			// superscript one (Entity Number: &#185;)
			regExp = /¹/g;
			value = value.replace(regExp, "&sup1;");
			
			// http://www.fileformat.info/info/unicode/char/00ba/index.htm
			// masculine ordinal (Entity Number: &#186;)
			regExp = /º/g;
			value = value.replace(regExp, "&ordm;");
			
			// http://www.fileformat.info/info/unicode/char/00bb/index.htm
			// right angle quote (Entity Number: &#187;)
			regExp = /»/g;
			value = value.replace(regExp, "&raquo;");
			
			// http://www.fileformat.info/info/unicode/char/00bc/index.htm
			// one-fourth (Entity Number: &#188;)
			regExp = /¼/g;
			value = value.replace(regExp, "&frac14;");
			
			// http://www.fileformat.info/info/unicode/char/00bd/index.htm
			// one-half (Entity Number: &#189;)
			regExp = /½/g;
			value = value.replace(regExp, "&frac12;");
			
			// http://www.fileformat.info/info/unicode/char/00be/index.htm
			// three-fourths (Entity Number: &#190;)
			regExp = /¾/g;
			value = value.replace(regExp, "&frac34;");
			
			// http://www.fileformat.info/info/unicode/char/00bf/index.htm
			// inverted question mark (Entity Number: &#191;)
			regExp = /¿/g;
			value = value.replace(regExp, "&iquest;");
			
			// http://www.fileformat.info/info/unicode/char/00d7/index.htm
			// multiplication sign (Entity Number: &#215;)
			regExp = /×/g;
			value = value.replace(regExp, "&times;");
			
			// http://www.fileformat.info/info/unicode/char/00f7/index.htm
			// division sign (Entity Number: &#247;)
			regExp = /÷/g;
			value = value.replace(regExp, "&divide;");
			
			///////////////////////////////////////////////////////////////////////
			// ISO 8859-1 Characters
			// http://www.w3schools.com/tags/ref_entities.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/00c0/index.htm
			// uppercase A, grave accent (Entity Number: &#192;)
			regExp = /À/g;
			value = value.replace(regExp, "&Agrave;");
			
			// http://www.fileformat.info/info/unicode/char/00c1/index.htm
			// uppercase A, acute accent (Entity Number: &#193;)
			regExp = /Á/g;
			value = value.replace(regExp, "&Aacute;");
			
			// http://www.fileformat.info/info/unicode/char/00c2/index.htm
			// uppercase A, circumflex accent (Entity Number: &#194;)
			regExp = /Â/g;
			value = value.replace(regExp, "&Acirc;");
			
			// http://www.fileformat.info/info/unicode/char/00c3/index.htm
			// uppercase A, tilde (Entity Number: &#195;)
			regExp = /Ã/g;
			value = value.replace(regExp, "&Atilde;");
			
			// http://www.fileformat.info/info/unicode/char/00c4/index.htm
			// uppercase A, umlaut (Entity Number: &#196;)
			regExp = /Ä/g;
			value = value.replace(regExp, "&Auml;");
			
			// http://www.fileformat.info/info/unicode/char/00c5/index.htm
			// uppercase A, ring (Entity Number: &#197;)
			regExp = /Å/g;
			value = value.replace(regExp, "&Aring;");
			
			// http://www.fileformat.info/info/unicode/char/00c6/index.htm
			// uppercase AE (Entity Number: &#198;)
			regExp = /Æ/g;
			value = value.replace(regExp, "&AElig;");
			
			// http://www.fileformat.info/info/unicode/char/00c7/index.htm
			// uppercase C, cedilla (Entity Number: &#199;)
			regExp = /Ç/g;
			value = value.replace(regExp, "&Ccedil;");
			
			// http://www.fileformat.info/info/unicode/char/00c8/index.htm
			// uppercase E, grave accent (Entity Number: &#200;)
			regExp = /È/g;
			value = value.replace(regExp, "&Egrave;");
			
			// http://www.fileformat.info/info/unicode/char/00c9/index.htm
			// uppercase E, acute accent (Entity Number: &#201;)
			regExp = /É/g;
			value = value.replace(regExp, "&Eacute;");
			
			// http://www.fileformat.info/info/unicode/char/00ca/index.htm
			// uppercase E, circumflex accent (Entity Number: &#202;)
			regExp = /Ê/g;
			value = value.replace(regExp, "&Ecirc;");
			
			// http://www.fileformat.info/info/unicode/char/00cb/index.htm
			// uppercase E, umlaut (Entity Number: &#203;)
			regExp = /Ë/g;
			value = value.replace(regExp, "&Euml;");
			
			// http://www.fileformat.info/info/unicode/char/00cc/index.htm
			// uppercase I, grave accent (Entity Number: &#204;)
			regExp = /Ì/g;
			value = value.replace(regExp, "&Igrave;");
			
			// http://www.fileformat.info/info/unicode/char/00cd/index.htm
			// uppercase I, acute accent (Entity Number: &#205;)
			regExp = /Í/g;
			value = value.replace(regExp, "&Iacute;");
			
			// http://www.fileformat.info/info/unicode/char/00ce/index.htm
			// uppercase I, circumflex accent (Entity Number: &#206;)
			regExp = /Î/g;
			value = value.replace(regExp, "&Icirc;");
			
			// http://www.fileformat.info/info/unicode/char/00cf/index.htm
			// uppercase I, umlaut (Entity Number: &#207;)
			regExp = /Ï/g;
			value = value.replace(regExp, "&Iuml;");
			
			// http://www.fileformat.info/info/unicode/char/00d0/index.htm
			// uppercase Eth, Icelandic (Entity Number: &#208;)
			regExp = /Ð/g;
			value = value.replace(regExp, "&ETH;");
			
			// http://www.fileformat.info/info/unicode/char/00d1/index.htm
			// uppercase N, tilde (Entity Number: &#209;)
			regExp = /Ñ/g;
			value = value.replace(regExp, "&Ntilde;");
			
			// http://www.fileformat.info/info/unicode/char/00d2/index.htm
			// uppercase O, grave accent (Entity Number: &#210;)
			regExp = /Ò/g;
			value = value.replace(regExp, "&Ograve;");
			
			// http://www.fileformat.info/info/unicode/char/00d3/index.htm
			// uppercase O, acute accent (Entity Number: &#211;)
			regExp = /Ó/g;
			value = value.replace(regExp, "&Oacute;");
			
			// http://www.fileformat.info/info/unicode/char/00d4/index.htm
			// uppercase O, circumflex accent (Entity Number: &#212;)
			regExp = /Ô/g;
			value = value.replace(regExp, "&Ocirc;");
			
			// http://www.fileformat.info/info/unicode/char/00d5/index.htm
			// uppercase O, tilde (Entity Number: &#213;)
			regExp = /Õ/g;
			value = value.replace(regExp, "&Otilde;");
			
			// http://www.fileformat.info/info/unicode/char/00d6/index.htm
			// uppercase O, umlaut (Entity Number: &#214;)
			regExp = /Ö/g;
			value = value.replace(regExp, "&Ouml;");
			
			// http://www.fileformat.info/info/unicode/char/00d8/index.htm
			// uppercase O, slash (Entity Number: &#216;)
			regExp = /Ø/g;
			value = value.replace(regExp, "&Oslash;");
			
			// http://www.fileformat.info/info/unicode/char/00d9/index.htm
			// uppercase U, grave accent (Entity Number: &#217;)
			regExp = /Ù/g;
			value = value.replace(regExp, "&Ugrave;");
			
			// http://www.fileformat.info/info/unicode/char/00da/index.htm
			// uppercase U, acute accent (Entity Number: &#218;)
			regExp = /Ú/g;
			value = value.replace(regExp, "&Uacute;");
			
			// http://www.fileformat.info/info/unicode/char/00db/index.htm
			// uppercase U, circumflex accent (Entity Number: &#219;)
			regExp = /Û/g;
			value = value.replace(regExp, "&Ucirc;");
			
			// http://www.fileformat.info/info/unicode/char/00dc/index.htm
			// uppercase U, umlaut (Entity Number: &#220;)
			regExp = /Ü/g;
			value = value.replace(regExp, "&Uuml;");
			
			// http://www.fileformat.info/info/unicode/char/00dd/index.htm
			// uppercase Y, acute accent (Entity Number: &#221;)
			regExp = /Ý/g;
			value = value.replace(regExp, "&Yacute;");
			
			// http://www.fileformat.info/info/unicode/char/00de/index.htm
			// uppercase THORN, Icelandic (Entity Number: &#222;)
			regExp = /Þ/g;
			value = value.replace(regExp, "&THORN;");
			
			// http://www.fileformat.info/info/unicode/char/00df/index.htm
			// lowercase sharps, German (Entity Number: &#223;)
			regExp = /ß/g;
			value = value.replace(regExp, "&szlig;");
			
			// http://www.fileformat.info/info/unicode/char/00e0/index.htm
			// lowercase a, grave accent (Entity Number: &#224;)
			regExp = /à/g;
			value = value.replace(regExp, "&agrave;");
			
			// http://www.fileformat.info/info/unicode/char/00e1/index.htm
			// lowercase a, acute accent (Entity Number: &#225;)
			regExp = /á/g;
			value = value.replace(regExp, "&aacute;");
			
			// http://www.fileformat.info/info/unicode/char/00e2/index.htm
			// lowercase a, circumflex accent (Entity Number: &#226;)
			regExp = /â/g;
			value = value.replace(regExp, "&acirc;");
			
			// http://www.fileformat.info/info/unicode/char/00e3/index.htm
			// lowercase a, tilde (Entity Number: &#227;)
			regExp = /ã/g;
			value = value.replace(regExp, "&atilde;");
			
			// http://www.fileformat.info/info/unicode/char/00e4/index.htm
			// lowercase a, umlaut (Entity Number: &#228;)
			regExp = /ä/g;
			value = value.replace(regExp, "&auml;");
			
			// http://www.fileformat.info/info/unicode/char/00e5/index.htm
			// lowercase a, ring (Entity Number: &#229;)
			regExp = /å/g;
			value = value.replace(regExp, "&aring;");
			
			// http://www.fileformat.info/info/unicode/char/00e6/index.htm
			// lowercase ae (Entity Number: &#230;)
			regExp = /æ/g;
			value = value.replace(regExp, "&aelig;");
			
			// http://www.fileformat.info/info/unicode/char/00e7/index.htm
			// lowercase c, cedilla (Entity Number: &#231;)
			regExp = /ç/g;
			value = value.replace(regExp, "&ccedil;");
			
			// http://www.fileformat.info/info/unicode/char/00e8/index.htm
			// lowercase e, grave accent (Entity Number: &#232;)
			regExp = /è/g;
			value = value.replace(regExp, "&egrave;");
			
			// http://www.fileformat.info/info/unicode/char/00e9/index.htm
			// lowercase e, acute accent (Entity Number: &#233;)
			regExp = /é/g;
			value = value.replace(regExp, "&eacute;");
			
			// http://www.fileformat.info/info/unicode/char/00ea/index.htm
			// lowercase e, circumflex accent (Entity Number: &#234;)
			regExp = /ê/g;
			value = value.replace(regExp, "&ecirc;");
			
			// http://www.fileformat.info/info/unicode/char/00eb/index.htm
			// lowercase e, umlaut (Entity Number: &#235;)
			regExp = /ë/g;
			value = value.replace(regExp, "&euml;");
			
			// http://www.fileformat.info/info/unicode/char/00ec/index.htm
			// lowercase i, grave accent (Entity Number: &#236;)
			regExp = /ì/g;
			value = value.replace(regExp, "&igrave;");
			
			// http://www.fileformat.info/info/unicode/char/00ed/index.htm
			// lowercase i, acute accent (Entity Number: &#237;)
			regExp = /í/g;
			value = value.replace(regExp, "&iacute;");
			
			// http://www.fileformat.info/info/unicode/char/00ee/index.htm
			// lowercase i, circumflex accent (Entity Number: &#238;)
			regExp = /î/g;
			value = value.replace(regExp, "&icirc;");
			
			// http://www.fileformat.info/info/unicode/char/00ef/index.htm
			// lowercase i, umlaut (Entity Number: &#239;)
			regExp = /ï/g;
			value = value.replace(regExp, "&iuml;");
			
			// http://www.fileformat.info/info/unicode/char/00f0/index.htm
			// lowercase eth, Icelandic (Entity Number: &#240;)
			regExp = /ð/g;
			value = value.replace(regExp, "&eth;");
			
			// http://www.fileformat.info/info/unicode/char/00f1/index.htm
			// lowercase n, tilde (Entity Number: &#241;)
			regExp = /ñ/g;
			value = value.replace(regExp, "&ntilde;");
			
			// http://www.fileformat.info/info/unicode/char/00f2/index.htm
			// lowercase o, grave accent (Entity Number: &#242;)
			regExp = /ò/g;
			value = value.replace(regExp, "&ograve;");
			
			// http://www.fileformat.info/info/unicode/char/00f3/index.htm
			// lowercase o, acute accent (Entity Number: &#243;)
			regExp = /ó/g;
			value = value.replace(regExp, "&oacute;");
			
			// http://www.fileformat.info/info/unicode/char/00f4/index.htm
			// lowercase o, circumflex accent (Entity Number: &#244;)
			regExp = /ô/g;
			value = value.replace(regExp, "&ocirc;");
			
			// http://www.fileformat.info/info/unicode/char/00f5/index.htm
			// lowercase o, tilde (Entity Number: &#245;)
			regExp = /õ/g;
			value = value.replace(regExp, "&otilde;");
			
			// http://www.fileformat.info/info/unicode/char/00f6/index.htm
			// lowercase o, umlaut (Entity Number: &#246;)
			regExp = /ö/g;
			value = value.replace(regExp, "&ouml;");
			
			// http://www.fileformat.info/info/unicode/char/00f8/index.htm
			// lowercase o, slash (Entity Number: &#248;)
			regExp = /ø/g;
			value = value.replace(regExp, "&oslash;");
			
			// http://www.fileformat.info/info/unicode/char/00f9/index.htm
			// lowercase u, grave accent (Entity Number: &#249;)
			regExp = /ù/g;
			value = value.replace(regExp, "&ugrave;");
			
			// http://www.fileformat.info/info/unicode/char/00fa/index.htm
			// lowercase u, acute accent (Entity Number: &#250;)
			regExp = /ú/g;
			value = value.replace(regExp, "&uacute;");
			
			// http://www.fileformat.info/info/unicode/char/00fb/index.htm
			// lowercase u, circumflex accent (Entity Number: &#251;)
			regExp = /û/g;
			value = value.replace(regExp, "&ucirc;");
			
			// http://www.fileformat.info/info/unicode/char/00fc/index.htm
			// lowercase u, umlaut (Entity Number: &#252;)
			regExp = /ü/g;
			value = value.replace(regExp, "&uuml;");
			
			// http://www.fileformat.info/info/unicode/char/00fd/index.htm
			// lowercase y, acute accent (Entity Number: &#253;)
			regExp = /ý/g;
			value = value.replace(regExp, "&yacute;");
			
			// http://www.fileformat.info/info/unicode/char/00fe/index.htm
			// lowercase thorn, Icelandic (Entity Number: &#254;)
			regExp = /þ/g;
			value = value.replace(regExp, "&thorn;");
			
			// http://www.fileformat.info/info/unicode/char/00ff/index.htm
			// lowercase y, umlaut (Entity Number: &#255;)
			regExp = /ÿ/g;
			value = value.replace(regExp, "&yuml;");
			
			///////////////////////////////////////////////////////////////////////
			//  Math Symbols Supported by HTML
			//  http://www.w3schools.com/tags/ref_symbols.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/2200/index.htm
			// for all (Entity Number: &#8704;)
			regExp = /∀/g;
			value = value.replace(regExp, "&forall;");
			
			// http://www.fileformat.info/info/unicode/char/2202/index.htm
			// part (Entity Number: &#8706;)
			regExp = /∂/g;
			value = value.replace(regExp, "&part;");
			
			// http://www.fileformat.info/info/unicode/char/2203/index.htm
			// exists (Entity Number: &#8707;)
			regExp = /∃/g;
			value = value.replace(regExp, "&exist;");
			
			// http://www.fileformat.info/info/unicode/char/2205/index.htm
			// empty (Entity Number: &#8709;)
			regExp = /∅/g;
			value = value.replace(regExp, "&empty;");
			
			// http://www.fileformat.info/info/unicode/char/2207/index.htm
			// nabla (Entity Number: &#8711;)
			regExp = /∇/g;
			value = value.replace(regExp, "&nabla;");
			
			// http://www.fileformat.info/info/unicode/char/2208/index.htm
			// isin (Entity Number: &#8712;)
			regExp = /∈/g;
			value = value.replace(regExp, "&isin;");
			
			// http://www.fileformat.info/info/unicode/char/2209/index.htm
			// notin (Entity Number: &#8713;)
			regExp = /∉/g;
			value = value.replace(regExp, "&notin;");
			
			// http://www.fileformat.info/info/unicode/char/220b/index.htm
			// ni (Entity Number: &#8715;)
			regExp = /∋/g;
			value = value.replace(regExp, "&ni;");
			
			// http://www.fileformat.info/info/unicode/char/220f/index.htm
			// prod (Entity Number: &#8719;)
			regExp = /∏/g;
			value = value.replace(regExp, "&prod;");
			
			// http://www.fileformat.info/info/unicode/char/2211/index.htm
			// sum (Entity Number: &#8721;)
			regExp = /∑/g;
			value = value.replace(regExp, "&sum;");
			
			// http://www.fileformat.info/info/unicode/char/2212/index.htm
			// minus (Entity Number: &#8722;)
			regExp = /−/g;
			value = value.replace(regExp, "&minus;");
			
			// http://www.fileformat.info/info/unicode/char/2217/index.htm
			// lowast (Entity Number: &#8727;)
			regExp = /∗/g;
			value = value.replace(regExp, "&lowast;");
			
			// http://www.fileformat.info/info/unicode/char/221a/index.htm
			// square root (Entity Number: &#8730;)
			regExp = /√/g;
			value = value.replace(regExp, "&radic;");
			
			// http://www.fileformat.info/info/unicode/char/221d/index.htm
			// proportional to (Entity Number: &#8733;)
			regExp = /∝/g;
			value = value.replace(regExp, "&prop;");
			
			// http://www.fileformat.info/info/unicode/char/221e/index.htm
			// infinity (Entity Number: &#8734;)
			regExp = /∞/g;
			value = value.replace(regExp, "&infin;");
			
			// http://www.fileformat.info/info/unicode/char/2220/index.htm
			// angle (Entity Number: &#8736;)
			regExp = /∠/g;
			value = value.replace(regExp, "&ang;");
			
			// http://www.fileformat.info/info/unicode/char/2227/index.htm
			// and (Entity Number: &#8743;)
			regExp = /∧/g;
			value = value.replace(regExp, "&and;");
			
			// http://www.fileformat.info/info/unicode/char/2228/index.htm
			// or (Entity Number: &#8744;)
			regExp = /∨/g;
			value = value.replace(regExp, "&or;");
			
			// http://www.fileformat.info/info/unicode/char/2229/index.htm
			// cap (Entity Number: &#8745;)
			regExp = /∩/g;
			value = value.replace(regExp, "&cap;");
			
			// http://www.fileformat.info/info/unicode/char/222a/index.htm
			// cup (Entity Number: &#8746;)
			regExp = /∪/g;
			value = value.replace(regExp, "&cup;");
			
			// http://www.fileformat.info/info/unicode/char/222b/index.htm
			// integral (Entity Number: &#8747;)
			regExp = /∫/g;
			value = value.replace(regExp, "&int;");
			
			// http://www.fileformat.info/info/unicode/char/2234/index.htm
			// therefore (Entity Number: &#8756;)
			regExp = /∴/g;
			value = value.replace(regExp, "&there4;");
			
			// http://www.fileformat.info/info/unicode/char/223c/index.htm
			// similar to (Entity Number: &#8764;)
			regExp = /∼/g;
			value = value.replace(regExp, "&sim;");
			
			// http://www.fileformat.info/info/unicode/char/2245/index.htm
			// congruent to (Entity Number: &#8773;)
			regExp = /≅/g;
			value = value.replace(regExp, "&cong;");
			
			// http://www.fileformat.info/info/unicode/char/2248/index.htm
			// almost equal (Entity Number: &#8776;)
			regExp = /≈/g;
			value = value.replace(regExp, "&asymp;");
			
			// http://www.fileformat.info/info/unicode/char/2260/index.htm
			// not equal (Entity Number: &#8800;)
			regExp = /≠/g;
			value = value.replace(regExp, "&ne;");
			
			// http://www.fileformat.info/info/unicode/char/2261/index.htm
			// equivalent (Entity Number: &#8801;)
			regExp = /≡/g;
			value = value.replace(regExp, "&equiv;");
			
			// http://www.fileformat.info/info/unicode/char/2264/index.htm
			// less or equal (Entity Number: &#8804;)
			regExp = /≤/g;
			value = value.replace(regExp, "&le;");
			
			// http://www.fileformat.info/info/unicode/char/2265/index.htm
			// greater or equal (Entity Number: &#8805;)
			regExp = /≥/g;
			value = value.replace(regExp, "&ge;");
			
			// http://www.fileformat.info/info/unicode/char/2282/index.htm
			// subset of (Entity Number: &#8834;)
			regExp = /⊂/g;
			value = value.replace(regExp, "&sub;");
			
			// http://www.fileformat.info/info/unicode/char/2283/index.htm
			// superset of (Entity Number: &#8835;)
			regExp = /⊃/g;
			value = value.replace(regExp, "&sup;");
			
			// http://www.fileformat.info/info/unicode/char/2284/index.htm
			// not subset of (Entity Number: &#8836;)
			regExp = /⊄/g;
			value = value.replace(regExp, "&nsub;");
			
			// http://www.fileformat.info/info/unicode/char/2286/index.htm
			// subset or equal (Entity Number: &#8838;)
			regExp = /⊆/g;
			value = value.replace(regExp, "&sube;");
			
			// http://www.fileformat.info/info/unicode/char/2287/index.htm
			// superset or equal (Entity Number: &#8839;)
			regExp = /⊇/g;
			value = value.replace(regExp, "&supe;");
			
			// http://www.fileformat.info/info/unicode/char/2295/index.htm
			// circled plus (Entity Number: &#8853;)
			regExp = /⊕/g;
			value = value.replace(regExp, "&oplus;");
			
			// http://www.fileformat.info/info/unicode/char/2297/index.htm
			// cirled times (Entity Number: &#8855;)
			regExp = /⊗/g;
			value = value.replace(regExp, "&otimes;");
			
			// http://www.fileformat.info/info/unicode/char/22a5/index.htm
			// perpendicular (Entity Number: &#8869;)
			regExp = /⊥/g;
			value = value.replace(regExp, "&perp;");
			
			// http://www.fileformat.info/info/unicode/char/22c5/index.htm
			// dot operator (Entity Number: &#8901;)
			regExp = /⋅/g;
			value = value.replace(regExp, "&sdot;");

			///////////////////////////////////////////////////////////////////////
			//  Greek Letters Supported by HTML
			//  http://www.w3schools.com/tags/ref_symbols.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/0391/index.htm
			// Alpha (Entity Number: &#913;)
			regExp = /Α/g;
			value = value.replace(regExp, "&Alpha;");
			
			// http://www.fileformat.info/info/unicode/char/0392/index.htm
			// Beta (Entity Number: &#914;)
			regExp = /Β/g;
			value = value.replace(regExp, "&Beta;");
			
			// http://www.fileformat.info/info/unicode/char/0393/index.htm
			// Gamma (Entity Number: &#915;)
			regExp = /Γ/g;
			value = value.replace(regExp, "&Gamma;");
			
			// http://www.fileformat.info/info/unicode/char/0394/index.htm
			// Delta (Entity Number: &#916;)
			regExp = /Δ/g;
			value = value.replace(regExp, "&Delta;");
			
			// http://www.fileformat.info/info/unicode/char/0395/index.htm
			// Epsilon (Entity Number: &#917;)
			regExp = /Ε/g;
			value = value.replace(regExp, "&Epsilon;");
			
			// http://www.fileformat.info/info/unicode/char/0396/index.htm
			// Zeta (Entity Number: &#918;)
			regExp = /Ζ/g;
			value = value.replace(regExp, "&Zeta;");
			
			// http://www.fileformat.info/info/unicode/char/0397/index.htm
			// Eta (Entity Number: &#919;)
			regExp = /Η/g;
			value = value.replace(regExp, "&Eta;");
			
			// http://www.fileformat.info/info/unicode/char/0398/index.htm
			// Theta (Entity Number: &#920;)
			regExp = /Θ/g;
			value = value.replace(regExp, "&Theta;");
			
			// http://www.fileformat.info/info/unicode/char/0399/index.htm
			// Iota (Entity Number: &#921;)
			regExp = /Ι/g;
			value = value.replace(regExp, "&Iota;");
			
			// http://www.fileformat.info/info/unicode/char/039a/index.htm
			// Kappa (Entity Number: &#922;)
			regExp = /Κ/g;
			value = value.replace(regExp, "&Kappa;");
			
			// http://www.fileformat.info/info/unicode/char/039b/index.htm
			// Lambda (Entity Number: &#923;)
			regExp = /Λ/g;
			value = value.replace(regExp, "&Lambda;");
			
			// http://www.fileformat.info/info/unicode/char/039c/index.htm
			// Mu (Entity Number: &#924;)
			regExp = /Μ/g;
			value = value.replace(regExp, "&Mu;");
			
			// http://www.fileformat.info/info/unicode/char/039d/index.htm	
			// Nu (Entity Number: &#925;)
			regExp = /Ν/g;
			value = value.replace(regExp, "&Nu;");
			
			// http://www.fileformat.info/info/unicode/char/039e/index.htm
			// Xi (Entity Number: &#926;)
			regExp = /Ξ/g;
			value = value.replace(regExp, "&Xi;");
			
			// http://www.fileformat.info/info/unicode/char/039f/index.htm
			// Omicron (Entity Number: &#927;)
			regExp = /Ο/g;
			value = value.replace(regExp, "&Omicron;");
			
			// http://www.fileformat.info/info/unicode/char/03a0/index.htm
			// Pi (Entity Number: &#928;)
			regExp = /Π/g;
			value = value.replace(regExp, "&Pi;");
			
			// http://www.fileformat.info/info/unicode/char/03a1/index.htm
			// Rho (Entity Number: &#929;)
			regExp = /Ρ/g;
			value = value.replace(regExp, "&Rho;");
				
			// http://www.fileformat.info/info/unicode/char/03a3/index.htm
			// Sigma (Entity Number: &#931;)
			regExp = /Σ/g;
			value = value.replace(regExp, "&Sigma;");
			
			// http://www.fileformat.info/info/unicode/char/03a4/index.htm
			// Tau (Entity Number: &#932;)
			regExp = /Τ/g;
			value = value.replace(regExp, "&Tau;");
			
			// http://www.fileformat.info/info/unicode/char/03a5/index.htm
			// Upsilon (Entity Number: &#933;)
			regExp = /Υ/g;
			value = value.replace(regExp, "&Upsilon;");
			
			// http://www.fileformat.info/info/unicode/char/03a6/index.htm
			// Phi (Entity Number: &#934;)
			regExp = /Φ/g;
			value = value.replace(regExp, "&Phi;");
			
			// http://www.fileformat.info/info/unicode/char/03a7/index.htm
			// Chi (Entity Number: &#935;)
			regExp = /Χ/g;
			value = value.replace(regExp, "&Chi;");
			
			// http://www.fileformat.info/info/unicode/char/03a8/index.htm
			// Psi (Entity Number: &#936;)
			regExp = /Ψ/g;
			value = value.replace(regExp, "&Psi;");
			
			// http://www.fileformat.info/info/unicode/char/03a9/index.htm
			// Omega (Entity Number: &#937;)
			regExp = /Ω/g;
			value = value.replace(regExp, "&Omega;");
						
			// http://www.fileformat.info/info/unicode/char/03b1/index.htm
			// alpha (Entity Number: &#945;)
			regExp = /α/g;
			value = value.replace(regExp, "&alpha;");
			
			// http://www.fileformat.info/info/unicode/char/03b2/index.htm
			// beta (Entity Number: &#946;)
			regExp = /β/g;
			value = value.replace(regExp, "&beta;");
			
			// http://www.fileformat.info/info/unicode/char/03b3/index.htm
			// gamma (Entity Number: &#947;)
			regExp = /γ/g;
			value = value.replace(regExp, "&gamma;");
			
			// http://www.fileformat.info/info/unicode/char/03b4/index.htm
			// delta (Entity Number: &#948;)
			regExp = /δ/g;
			value = value.replace(regExp, "&delta;");
			
			// http://www.fileformat.info/info/unicode/char/03b5/index.htm
			// epsilon (Entity Number: &#949;)
			regExp = /ε/g;
			value = value.replace(regExp, "&epsilon;");
			
			// http://www.fileformat.info/info/unicode/char/03b6/index.htm
			// zeta (Entity Number: &#950;)
			regExp = /ζ/g;
			value = value.replace(regExp, "&zeta;");
			
			// http://www.fileformat.info/info/unicode/char/03b7/index.htm
			// eta (Entity Number: &#951;)
			regExp = /η/g;
			value = value.replace(regExp, "&eta;");
			
			// http://www.fileformat.info/info/unicode/char/03b8/index.htm
			// theta (Entity Number: &#952;)
			regExp = /θ/g;
			value = value.replace(regExp, "&theta;");
			
			// http://www.fileformat.info/info/unicode/char/03b9/index.htm
			// iota (Entity Number: &#953;)
			regExp = /ι/g;
			value = value.replace(regExp, "&iota;");
			
			// http://www.fileformat.info/info/unicode/char/03ba/index.htm
			// kappa (Entity Number: &#954;)
			regExp = /κ/g;
			value = value.replace(regExp, "&kappa;");
			
			// http://www.fileformat.info/info/unicode/char/03bb/index.htm
			// lambda (Entity Number: &#955;)
			regExp = /λ/g;
			value = value.replace(regExp, "&lambda;");
			
			// http://www.fileformat.info/info/unicode/char/03bc/index.htm
			// mu (Entity Number: &#956;)
			regExp = /μ/g;
			value = value.replace(regExp, "&mu;");
			
			// http://www.fileformat.info/info/unicode/char/03bd/index.htm
			// nu (Entity Number: &#957;)
			regExp = /ν/g;
			value = value.replace(regExp, "&nu;");
			
			// http://www.fileformat.info/info/unicode/char/03be/index.htm
			// xi (Entity Number: &#958;)
			regExp = /ξ/g;
			value = value.replace(regExp, "&xi;");
			
			// http://www.fileformat.info/info/unicode/char/03bf/index.htm
			// omicron (Entity Number: &#959;)
			regExp = /ο/g;
			value = value.replace(regExp, "&omicron;");
			
			// http://www.fileformat.info/info/unicode/char/03c0/index.htm
			// pi (Entity Number: &#960;)
			regExp = /π/g;
			value = value.replace(regExp, "&pi;");
			
			// http://www.fileformat.info/info/unicode/char/03c1/index.htm
			// rho (Entity Number: &#961;)
			regExp = /ρ/g;
			value = value.replace(regExp, "&rho;");
			
			// http://www.fileformat.info/info/unicode/char/03c2/index.htm
			// sigmaf (Entity Number: &#962;)
			regExp = /ς/g;
			value = value.replace(regExp, "&sigmaf;");
			
			// http://www.fileformat.info/info/unicode/char/03c3/index.htm
			// sigma (Entity Number: &#963;)
			regExp = /σ/g;
			value = value.replace(regExp, "&sigma;");
			
			// http://www.fileformat.info/info/unicode/char/03c4/index.htm
			// tau (Entity Number: &#964;)
			regExp = /τ/g;
			value = value.replace(regExp, "&tau;");
			
			// http://www.fileformat.info/info/unicode/char/03c5/index.htm
			// upsilon (Entity Number: &#965;)
			regExp = /υ/g;
			value = value.replace(regExp, "&upsilon;");
			
			// http://www.fileformat.info/info/unicode/char/03c6/index.htm
			// phi (Entity Number: &#966;)
			regExp = /φ/g;
			value = value.replace(regExp, "&phi;");
			
			// http://www.fileformat.info/info/unicode/char/03c7/index.htm
			// chi (Entity Number: &#967;)
			regExp = /χ/g;
			value = value.replace(regExp, "&chi;");
			
			// http://www.fileformat.info/info/unicode/char/03c8/index.htm
			// psi (Entity Number: &#968;)
			regExp = /ψ/g;
			value = value.replace(regExp, "&psi;");
			
			// http://www.fileformat.info/info/unicode/char/03c9/index.htm
			// omega (Entity Number: &#969;)
			regExp = /ω/g;
			value = value.replace(regExp, "&omega;");
						 
			// http://www.fileformat.info/info/unicode/char/03d1/index.htm
			// theta symbol (Entity Number: &#977;)
			regExp = /ϑ/g;
			value = value.replace(regExp, "&thetasym;");
			
			// http://www.fileformat.info/info/unicode/char/03d2/index.htm
			// upsilon symbol (Entity Number: &#978;)
			regExp = /ϒ/g;
			value = value.replace(regExp, "&upsih;");
			
			// http://www.fileformat.info/info/unicode/char/03d6/index.htm
			// pi symbol (Entity Number: &#982;)
			regExp = /ϖ/g;
			value = value.replace(regExp, "&piv;");

			///////////////////////////////////////////////////////////////////////
			//  Other Entities Supported by HTML
			//  http://www.w3schools.com/tags/ref_symbols.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/0152/index.htm
			// capital ligature OE (Entity Number: &#338;)
			regExp = /Œ/g;
			value = value.replace(regExp, "&OElig;");
			
			// http://www.fileformat.info/info/unicode/char/0153/index.htm
			// small ligature oe (Entity Number: &#339;)
			regExp = /œ/g;
			value = value.replace(regExp, "&oelig;");
			
			// http://www.fileformat.info/info/unicode/char/0160/index.htm
			// capital S with caron (Entity Number: &#352;)
			regExp = /Š/g;
			value = value.replace(regExp, "&Scaron;");
			
			// http://www.fileformat.info/info/unicode/char/0161/index.htm
			// small S with caron (Entity Number: &#353;)
			regExp = /š/g;
			value = value.replace(regExp, "&scaron;");
			
			// http://www.fileformat.info/info/unicode/char/0178/index.htm
			// capital Y with diaeres (Entity Number: &#376;)
			regExp = /Ÿ/g;
			value = value.replace(regExp, "&Yuml;");
			
			// http://www.fileformat.info/info/unicode/char/0192/index.htm
			// f with hook (Entity Number: &#402;)
			regExp = /ƒ/g;
			value = value.replace(regExp, "&fnof;");
			
			// http://www.fileformat.info/info/unicode/char/02c6/index.htm
			// modifier letter circumflex accent (Entity Number: &#710;)
			regExp = /ˆ/g;
			value = value.replace(regExp, "&circ;");
			
			// http://www.fileformat.info/info/unicode/char/02dc/index.htm
			// small tilde (Entity Number: &#732;)
			regExp = /˜/g;
			value = value.replace(regExp, "&tilde;");
			
			// http://www.fileformat.info/info/unicode/char/2002/index.htm
			// en space (Entity Number: &#8194;)
			regExp = / /g;
			value = value.replace(regExp, "&ensp;");
			
			// http://www.fileformat.info/info/unicode/char/2003/index.htm
			// em space (Entity Number: &#8195;)
			regExp = / /g;
			value = value.replace(regExp, "&emsp;");
			
			// http://www.fileformat.info/info/unicode/char/2009/index.htm
			// thin space (Entity Number: &#8201;)
			regExp = / /g;
			value = value.replace(regExp, "&thinsp;");
			
			// http://www.fileformat.info/info/unicode/char/200c/index.htm
			// zero width non-joiner (Entity Number: &#8204;)
			//regExp = //g;
			//$str = $str.replace(regExp, "&zwnj;");
			
			// http://www.fileformat.info/info/unicode/char/200d/index.htm
			// zero width joiner (Entity Number: &#8205;)
			//regExp = /‍/g;
			//$str = $str.replace(regExp, "&zwj;");
			
			// http://www.fileformat.info/info/unicode/char/200e/index.htm
			// left-to-right mark (Entity Number: &#8206;)
			regExp = /	‎/g;
			value = value.replace(regExp, "&lrm;");
			
			// http://www.fileformat.info/info/unicode/char/200f/index.htm
			// right-to-left mark (Entity Number: &#8207;)
			regExp = /‏‏	‏/g;
			value = value.replace(regExp, "&rlm;");
			
			// http://www.fileformat.info/info/unicode/char/2013/index.htm
			// en dash (Entity Number: &#8211;)
			regExp = /–/g;
			value = value.replace(regExp, "&ndash;");
			
			// http://www.fileformat.info/info/unicode/char/2014/index.htm
			// em dash (Entity Number: &#8212;)
			regExp = /—/g;
			value = value.replace(regExp, "&mdash;");

			// http://www.fileformat.info/info/unicode/char/2018/index.htm
			// left single quote (Entity Number: &#8216;)
			regExp = /‘/g;
			value = value.replace(regExp, "&lsquo;");
			
			// http://www.fileformat.info/info/unicode/char/2019/index.htm
			// right single quote (Entity Number: &#8217;)
			regExp = /’/g;
			value = value.replace(regExp, "&rsquo;");
			
			// http://www.fileformat.info/info/unicode/char/201a/index.htm
			// single low-9 quote (Entity Number: &#8218;)
			regExp = /‚/g;
			value = value.replace(regExp, "&sbquo;");
			
			// http://www.fileformat.info/info/unicode/char/201c/index.htm
			// left double quote (Entity Number: &#8220;)
			regExp = /“/g;
			value = value.replace(regExp, "&ldquo;");
			
			// http://www.fileformat.info/info/unicode/char/201d/index.htm
			// right double quote (Entity Number: &#8221;)
			regExp = /”/g;
			value = value.replace(regExp, "&rdquo;");
			
			// http://www.fileformat.info/info/unicode/char/201e/index.htm
			// double low-9 quote (Entity Number: &#8222;)
			regExp = /„/g;
			value = value.replace(regExp, "&bdquo;");
			
			// http://www.fileformat.info/info/unicode/char/2020/index.htm
			// dagger (Entity Number: &#8224;)
			regExp = /†/g;
			value = value.replace(regExp, "&dagger;");
			
			// http://www.fileformat.info/info/unicode/char/2021/index.htm
			// double dagger (Entity Number: &#8225;)
			regExp = /‡/g;
			value = value.replace(regExp, "&Dagger;");
			
			// http://www.fileformat.info/info/unicode/char/2022/index.htm
			// bullet (Entity Number: &#8226;)
			regExp = /•/g;
			value = value.replace(regExp, "&bull;");
			
			// http://www.fileformat.info/info/unicode/char/2026/index.htm
			// horizontal ellipsis (Entity Number: &#8230;)
			regExp = /…/g;
			value = value.replace(regExp, "&hellip;");
			
			// http://www.fileformat.info/info/unicode/char/2030/index.htm
			// per mill sign (Entity Number: &#8240;)
			regExp = /‰/g;
			value = value.replace(regExp, "&permil;");

			// http://www.fileformat.info/info/unicode/char/2032/index.htm
			// minutes (Entity Number: &#8242;)
			regExp = /′/g;
			value = value.replace(regExp, "&prime;");

			// http://www.fileformat.info/info/unicode/char/2033/index.htm
			// seconds (Entity Number: &#8243;)
			regExp = /″/g;
			value = value.replace(regExp, "&Prime;");

			// http://www.fileformat.info/info/unicode/char/2039/index.htm
			// single left-pointing angle quote (Entity Number: &#8249;)
			regExp = /‹/g;
			value = value.replace(regExp, "&lsaquo;");
			
			// http://www.fileformat.info/info/unicode/char/203a/index.htm
			// single right-pointing angle quote (Entity Number: &#8250;)
			regExp = /›/g;
			value = value.replace(regExp, "&rsaquo;");
			
			// http://www.fileformat.info/info/unicode/char/203e/index.htm
			// overline, = spacing overscore (Entity Number: &#8254;)
			regExp = /‾/g;
			value = value.replace(regExp, "&oline;");

			// http://www.fileformat.info/info/unicode/char/20ac/index.htm
			// euro (Entity Number: &#8364;)
			regExp = /€/g;
			value = value.replace(regExp, "&euro;");

			// http://www.fileformat.info/info/unicode/char/2122/index.htm
			// trademark sign (Entity Number: &#8482;)
			regExp = /™/g;
			value = value.replace(regExp, "&trade;");
			
			// http://www.fileformat.info/info/unicode/char/2190/index.htm
			// leftward arrow (Entity Number: &#8592;)
			regExp = /←/g;
			value = value.replace(regExp, "&larr;");
			
			// http://www.fileformat.info/info/unicode/char/2191/index.htm
			// upward arrow (Entity Number: &#8593;)
			regExp = /↑/g;
			value = value.replace(regExp, "&uarr;");
			
			// http://www.fileformat.info/info/unicode/char/2192/index.htm
			// rightward arrow (Entity Number: &#8594;)
			regExp = /→/g;
			value = value.replace(regExp, "&rarr;");
			
			// http://www.fileformat.info/info/unicode/char/2193/index.htm
			// downward arrow (Entity Number: &#8595;)
			regExp = /↓/g;
			value = value.replace(regExp, "&darr;");
	
			// http://www.fileformat.info/info/unicode/char/2194/index.htm
			// left right arrow (Entity Number: &#8596;)
			regExp = /↔/g;
			value = value.replace(regExp, "&harr;");

			// http://www.fileformat.info/info/unicode/char/21b5/index.htm
			// carriage return arrow (Entity Number: &#8629;)
			regExp = /↵/g;
			value = value.replace(regExp, "&crarr;");
			
			// http://www.fileformat.info/info/unicode/char/2308/index.htm
			// left ceiling (Entity Number: &#8968;)
			regExp = /⌈/g;
			value = value.replace(regExp, "&lceil;");

			// http://www.fileformat.info/info/unicode/char/2309/index.htm
			// right ceiling (Entity Number: &#8969;)
			regExp = /⌉/g;
			value = value.replace(regExp, "&rceil;");

			// http://www.fileformat.info/info/unicode/char/230a/index.htm
			// left floor (Entity Number: &#8970;)
			regExp = /⌊/g;
			value = value.replace(regExp, "&lfloor;");

			// http://www.fileformat.info/info/unicode/char/230b/index.htm
			// right floor (Entity Number: &#8971;)
			regExp = /⌋/g;
			value = value.replace(regExp, "&rfloor;");

			// http://www.fileformat.info/info/unicode/char/25ca/index.htm
			// lozenge (Entity Number: &#9674;)
			regExp = /◊/g;
			value = value.replace(regExp, "&loz;");

			// http://www.fileformat.info/info/unicode/char/2660/index.htm
			// black spade suit (Entity Number: &#9824;)
			regExp = /♠/g;
			value = value.replace(regExp, "&spades;");
			
			// http://www.fileformat.info/info/unicode/char/2663/index.htm
			// black club suit (Entity Number: &#9827;)
			regExp = /♣/g;
			value = value.replace(regExp, "&clubs;");
			
			// http://www.fileformat.info/info/unicode/char/2665/index.htm
			// black heart suit (Entity Number: &#9829;)
			regExp = /♥/g;
			value = value.replace(regExp, "&hearts;");
			
			// http://www.fileformat.info/info/unicode/char/2666/index.htm
			// black diamond suit (Entity Number: &#9830;)
			regExp = /♦/g;
			value = value.replace(regExp, "&diams;");

			///////////////////////////////////////////////////////////////////////
			//  Other Named Entities
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/002f/index.htm
			// slash (Entity Number: &#47;)
			regExp = /\//g;
			value = value.replace(regExp, "&frasl;");
			
			///////////////////////////////////////////////////////////////////////

			return value;
		}
		
		public static function decode(value:String):String {
			var regExp:RegExp;
			
			///////////////////////////////////////////////////////////////////////
			// Reserved Characters in HTML
			// http://www.w3schools.com/tags/ref_entities.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/0026/index.htm
			// ampersand (Entity Number: &#38;)
			regExp = /&amp;/g;
			value = value.replace(regExp, "&");
			
			// http://www.fileformat.info/info/unicode/char/0022/index.htm
			// double quotation mark (Entity Number: &#34;)
			regExp = /&quot;/g;
			value = value.replace(regExp, "\"");
			
			// http://www.fileformat.info/info/unicode/char/0027/index.htm
			// apostrophe (Entity Number: &#39;)
			regExp = /&apos;/g;
			value = value.replace(regExp, "'");
			
			// http://www.fileformat.info/info/unicode/char/003c/index.htm
			// less-than sign (Entity Number: &#60;)
			regExp = /&lt;/g;
			value = value.replace(regExp, "<");
			
			// http://www.fileformat.info/info/unicode/char/003e/index.htm
			// greater-than sign (Entity Number: &#62;)
			regExp = /&gt;/g;
			value = value.replace(regExp, ">");
			
			///////////////////////////////////////////////////////////////////////
			// ISO 8859-1 Symbols
			// http://www.w3schools.com/tags/ref_entities.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/00a0/index.htm
			// non-breaking space (Entity Number: &#160;)
			regExp = /&nbsp;/g;
			value = value.replace(regExp, " ");
			
			// http://www.fileformat.info/info/unicode/char/00a1/index.htm
			// inverted exclamation (Entity Number: &#161;)
			regExp = /&iexcl;/g;
			value = value.replace(regExp, "¡");
			
			// http://www.fileformat.info/info/unicode/char/00a2/index.htm
			// cent sign (Entity Number: &#162;)
			regExp = /&cent;/g;
			value = value.replace(regExp, "¢");
			
			// http://www.fileformat.info/info/unicode/char/00a3/index.htm
			// pound sterling (Entity Number: &#163;)
			regExp = /&pound;/g;
			value = value.replace(regExp, "£");
			
			// http://www.fileformat.info/info/unicode/char/00a4/index.htm
			// general currency sign (Entity Number: &#164;)
			regExp = /&curren;/g;
			value = value.replace(regExp, "¤");
			
			// http://www.fileformat.info/info/unicode/char/00a5/index.htm
			// yen sign (Entity Number: &#165;)
			regExp = /&yen;/g;
			value = value.replace(regExp, "¥");
			
			// http://www.fileformat.info/info/unicode/char/00a6/index.htm
			// broken vertical bar (Entity Number: &#166;)
			regExp = /&brvbar;/g;
			value = value.replace(regExp, "¦");
			
			// http://www.fileformat.info/info/unicode/char/00a7/index.htm
			// section sign (Entity Number: &#167;)
			regExp = /&sect;/g;
			value = value.replace(regExp, "§");
			
			// http://www.fileformat.info/info/unicode/char/00a8/index.htm
			// umlaut (Entity Number: &#168;)
			regExp = /&uml;/g;
			value = value.replace(regExp, "¨");
			
			// http://www.fileformat.info/info/unicode/char/00a9/index.htm
			// copyright (Entity Number: &#169;)
			regExp = /&copy;/g;
			value = value.replace(regExp, "©");
			
			// http://www.fileformat.info/info/unicode/char/00aa/index.htm
			// feminine ordinal (Entity Number: &#170;)
			regExp = /&ordf;/g;
			value = value.replace(regExp, "ª");
			
			// http://www.fileformat.info/info/unicode/char/00ab/index.htm
			// left angle quote (Entity Number: &#171;)
			regExp = /&laquo;/g;
			value = value.replace(regExp, "«");
			
			// http://www.fileformat.info/info/unicode/char/00ac/index.htm
			// not sign (Entity Number: &#172;)
			regExp = /&not;/g;
			value = value.replace(regExp, "¬");
			
			// http://www.fileformat.info/info/unicode/char/00ad/index.htm
			// soft hyphen (Entity Number: &#173;)
			//regExp = /&shy;/g;
			//$str = $str.replace(regExp, "");
			
			// http://www.fileformat.info/info/unicode/char/00ae/index.htm
			// registered trademark (Entity Number: &#174;)
			regExp = /&reg;/g;
			value = value.replace(regExp, "®");
			
			// http://www.fileformat.info/info/unicode/char/00af/index.htm
			// macron accent (Entity Number: &#175;)
			regExp = /&macr;/g;
			value = value.replace(regExp, "¯");
			
			// http://www.fileformat.info/info/unicode/char/00b0/index.htm
			// degree sign (Entity Number: &#176;)
			regExp = /&deg;/g;
			value = value.replace(regExp, "°");
			
			// http://www.fileformat.info/info/unicode/char/00b1/index.htm
			// plus or minus (Entity Number: &#177;)
			regExp = /&plusmn;/g;
			value = value.replace(regExp, "±");
			
			// http://www.fileformat.info/info/unicode/char/00b2/index.htm
			// superscript two (Entity Number: &#178;)
			regExp = /&sup2;/g;
			value = value.replace(regExp, "²");
			
			// http://www.fileformat.info/info/unicode/char/00b3/index.htm
			// superscript three (Entity Number: &#179;)
			regExp = /&sup3;/g;
			value = value.replace(regExp, "³");
			
			// http://www.fileformat.info/info/unicode/char/00b4/index.htm
			// acute accent (Entity Number: &#180;)
			regExp = /&acute;/g;
			value = value.replace(regExp, "´");
			
			// http://www.fileformat.info/info/unicode/char/00b5/index.htm
			// micro sign (Entity Number: &#181;)
			regExp = /&micro;/g;
			value = value.replace(regExp, "µ");
			
			// http://www.fileformat.info/info/unicode/char/00b6/index.htm
			// paragraph sign (Entity Number: &#182;)
			regExp = /&para;/g;
			value = value.replace(regExp, "¶");
			
			// http://www.fileformat.info/info/unicode/char/00b7/index.htm
			// middle dot (Entity Number: &#183;)
			regExp = /&middot;/g;
			value = value.replace(regExp, "·");
			
			// http://www.fileformat.info/info/unicode/char/00b8/index.htm
			// cedilla (Entity Number: &#184;)
			regExp = /&cedil;/g;
			value = value.replace(regExp, "¸");
			
			// http://www.fileformat.info/info/unicode/char/00b9/index.htm
			// superscript one (Entity Number: &#185;)
			regExp = /&sup1;/g;
			value = value.replace(regExp, "¹");
			
			// http://www.fileformat.info/info/unicode/char/00ba/index.htm
			// masculine ordinal (Entity Number: &#186;)
			regExp = /&ordm;/g;
			value = value.replace(regExp, "º");
			
			// http://www.fileformat.info/info/unicode/char/00bb/index.htm
			// right angle quote (Entity Number: &#187;)
			regExp = /&raquo;/g;
			value = value.replace(regExp, "»");
			
			// http://www.fileformat.info/info/unicode/char/00bc/index.htm
			// one-fourth (Entity Number: &#188;)
			regExp = /&frac14;/g;
			value = value.replace(regExp, "¼");
			
			// http://www.fileformat.info/info/unicode/char/00bd/index.htm
			// one-half (Entity Number: &#189;)
			regExp = /&frac12;/g;
			value = value.replace(regExp, "½");
			
			// http://www.fileformat.info/info/unicode/char/00be/index.htm
			// three-fourths (Entity Number: &#190;)
			regExp = /&frac34;/g;
			value = value.replace(regExp, "¾");
			
			// http://www.fileformat.info/info/unicode/char/00bf/index.htm
			// inverted question mark (Entity Number: &#191;)
			regExp = /&iquest;/g;
			value = value.replace(regExp, "¿");
			
			// http://www.fileformat.info/info/unicode/char/00d7/index.htm
			// multiplication sign (Entity Number: &#215;)
			regExp = /&times;/g;
			value = value.replace(regExp, "×");
			
			// http://www.fileformat.info/info/unicode/char/00f7/index.htm
			// division sign (Entity Number: &#247;)
			regExp = /&divide;/g;
			value = value.replace(regExp, "÷");
			
			///////////////////////////////////////////////////////////////////////
			// ISO 8859-1 Characters
			// http://www.w3schools.com/tags/ref_entities.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/00c0/index.htm
			// uppercase A, grave accent (Entity Number: &#192;)
			regExp = /&Agrave;/g;
			value = value.replace(regExp, "À");
			
			// http://www.fileformat.info/info/unicode/char/00c1/index.htm
			// uppercase A, acute accent (Entity Number: &#193;)
			regExp = /&Aacute;/g;
			value = value.replace(regExp, "Á");
			
			// http://www.fileformat.info/info/unicode/char/00c2/index.htm
			// uppercase A, circumflex accent (Entity Number: &#194;)
			regExp = /&Acirc;/g;
			value = value.replace(regExp, "Â");
			
			// http://www.fileformat.info/info/unicode/char/00c3/index.htm
			// uppercase A, tilde (Entity Number: &#195;)
			regExp = /&Atilde;/g;
			value = value.replace(regExp, "Ã");
			
			// http://www.fileformat.info/info/unicode/char/00c4/index.htm
			// uppercase A, umlaut (Entity Number: &#196;)
			regExp = /&Auml;/g;
			value = value.replace(regExp, "Ä");
			
			// http://www.fileformat.info/info/unicode/char/00c5/index.htm
			// uppercase A, ring (Entity Number: &#197;)
			regExp = /&Aring;/g;
			value = value.replace(regExp, "Å");
			
			// http://www.fileformat.info/info/unicode/char/00c6/index.htm
			// uppercase AE (Entity Number: &#198;)
			regExp = /&AElig;/g;
			value = value.replace(regExp, "Æ");
			
			// http://www.fileformat.info/info/unicode/char/00c7/index.htm
			// uppercase C, cedilla (Entity Number: &#199;)
			regExp = /&Ccedil;/g;
			value = value.replace(regExp, "Ç");
			
			// http://www.fileformat.info/info/unicode/char/00c8/index.htm
			// uppercase E, grave accent (Entity Number: &#200;)
			regExp = /&Egrave;/g;
			value = value.replace(regExp, "È");
			
			// http://www.fileformat.info/info/unicode/char/00c9/index.htm
			// uppercase E, acute accent (Entity Number: &#201;)
			regExp = /&Eacute;/g;
			value = value.replace(regExp, "É");
			
			// http://www.fileformat.info/info/unicode/char/00ca/index.htm
			// uppercase E, circumflex accent (Entity Number: &#202;)
			regExp = /&Ecirc;/g;
			value = value.replace(regExp, "Ê");
			
			// http://www.fileformat.info/info/unicode/char/00cb/index.htm
			// uppercase E, umlaut (Entity Number: &#203;)
			regExp = /&Euml;/g;
			value = value.replace(regExp, "Ë");
			
			// http://www.fileformat.info/info/unicode/char/00cc/index.htm
			// uppercase I, grave accent (Entity Number: &#204;)
			regExp = /&Igrave;/g;
			value = value.replace(regExp, "Ì");
			
			// http://www.fileformat.info/info/unicode/char/00cd/index.htm
			// uppercase I, acute accent (Entity Number: &#205;)
			regExp = /&Iacute;/g;
			value = value.replace(regExp, "Í");
			
			// http://www.fileformat.info/info/unicode/char/00ce/index.htm
			// uppercase I, circumflex accent (Entity Number: &#206;)
			regExp = /&Icirc;/g;
			value = value.replace(regExp, "Î");
			
			// http://www.fileformat.info/info/unicode/char/00cf/index.htm
			// uppercase I, umlaut (Entity Number: &#207;)
			regExp = /&Iuml;/g;
			value = value.replace(regExp, "Ï");
			
			// http://www.fileformat.info/info/unicode/char/00d0/index.htm
			// uppercase Eth, Icelandic (Entity Number: &#208;)
			regExp = /&ETH;/g;
			value = value.replace(regExp, "Ð");
			
			// http://www.fileformat.info/info/unicode/char/00d1/index.htm
			// uppercase N, tilde (Entity Number: &#209;)
			regExp = /&Ntilde;/g;
			value = value.replace(regExp, "Ñ");
			
			// http://www.fileformat.info/info/unicode/char/00d2/index.htm
			// uppercase O, grave accent (Entity Number: &#210;)
			regExp = /&Ograve;/g;
			value = value.replace(regExp, "Ò");
			
			// http://www.fileformat.info/info/unicode/char/00d3/index.htm
			// uppercase O, acute accent (Entity Number: &#211;)
			regExp = /&Oacute;/g;
			value = value.replace(regExp, "Ó");
			
			// http://www.fileformat.info/info/unicode/char/00d4/index.htm
			// uppercase O, circumflex accent (Entity Number: &#212;)
			regExp = /&Ocirc;/g;
			value = value.replace(regExp, "Ô");
			
			// http://www.fileformat.info/info/unicode/char/00d5/index.htm
			// uppercase O, tilde (Entity Number: &#213;)
			regExp = /&Otilde;/g;
			value = value.replace(regExp, "Õ");
			
			// http://www.fileformat.info/info/unicode/char/00d6/index.htm
			// uppercase O, umlaut (Entity Number: &#214;)
			regExp = /&Ouml;/g;
			value = value.replace(regExp, "Ö");
			
			// http://www.fileformat.info/info/unicode/char/00d8/index.htm
			// uppercase O, slash (Entity Number: &#216;)
			regExp = /&Oslash;/g;
			value = value.replace(regExp, "Ø");
			
			// http://www.fileformat.info/info/unicode/char/00d9/index.htm
			// uppercase U, grave accent (Entity Number: &#217;)
			regExp = /&Ugrave;/g;
			value = value.replace(regExp, "Ù");
			
			// http://www.fileformat.info/info/unicode/char/00da/index.htm
			// uppercase U, acute accent (Entity Number: &#218;)
			regExp = /&Uacute;/g;
			value = value.replace(regExp, "Ú");
			
			// http://www.fileformat.info/info/unicode/char/00db/index.htm
			// uppercase U, circumflex accent (Entity Number: &#219;)
			regExp = /&Ucirc;/g;
			value = value.replace(regExp, "Û");
			
			// http://www.fileformat.info/info/unicode/char/00dc/index.htm
			// uppercase U, umlaut (Entity Number: &#220;)
			regExp = /&Uuml;/g;
			value = value.replace(regExp, "Ü");
			
			// http://www.fileformat.info/info/unicode/char/00dd/index.htm
			// uppercase Y, acute accent (Entity Number: &#221;)
			regExp = /&Yacute;/g;
			value = value.replace(regExp, "Ý");
			
			// http://www.fileformat.info/info/unicode/char/00de/index.htm
			// uppercase THORN, Icelandic (Entity Number: &#222;)
			regExp = /&THORN;/g;
			value = value.replace(regExp, "Þ");
			
			// http://www.fileformat.info/info/unicode/char/00df/index.htm
			// lowercase sharps, German (Entity Number: &#223;)
			regExp = /&szlig;/g;
			value = value.replace(regExp, "ß");
			
			// http://www.fileformat.info/info/unicode/char/00e0/index.htm
			// lowercase a, grave accent (Entity Number: &#224;)
			regExp = /&agrave;/g;
			value = value.replace(regExp, "à");
			
			// http://www.fileformat.info/info/unicode/char/00e1/index.htm
			// lowercase a, acute accent (Entity Number: &#225;)
			regExp = /&aacute;/g;
			value = value.replace(regExp, "á");
			
			// http://www.fileformat.info/info/unicode/char/00e2/index.htm
			// lowercase a, circumflex accent (Entity Number: &#226;)
			regExp = /&acirc;/g;
			value = value.replace(regExp, "â");
			
			// http://www.fileformat.info/info/unicode/char/00e3/index.htm
			// lowercase a, tilde (Entity Number: &#227;)
			regExp = /&atilde;/g;
			value = value.replace(regExp, "ã");
			
			// http://www.fileformat.info/info/unicode/char/00e4/index.htm
			// lowercase a, umlaut (Entity Number: &#228;)
			regExp = /&auml;/g;
			value = value.replace(regExp, "ä");
			
			// http://www.fileformat.info/info/unicode/char/00e5/index.htm
			// lowercase a, ring (Entity Number: &#229;)
			regExp = /&aring;/g;
			value = value.replace(regExp, "å");
			
			// http://www.fileformat.info/info/unicode/char/00e6/index.htm
			// lowercase ae (Entity Number: &#230;)
			regExp = /&aelig;/g;
			value = value.replace(regExp, "æ");
			
			// http://www.fileformat.info/info/unicode/char/00e7/index.htm
			// lowercase c, cedilla (Entity Number: &#231;)
			regExp = /&ccedil;/g;
			value = value.replace(regExp, "ç");
			
			// http://www.fileformat.info/info/unicode/char/00e8/index.htm
			// lowercase e, grave accent (Entity Number: &#232;)
			regExp = /&egrave;/g;
			value = value.replace(regExp, "è");
			
			// http://www.fileformat.info/info/unicode/char/00e9/index.htm
			// lowercase e, acute accent (Entity Number: &#233;)
			regExp = /&eacute;/g;
			value = value.replace(regExp, "é");
			
			// http://www.fileformat.info/info/unicode/char/00ea/index.htm
			// lowercase e, circumflex accent (Entity Number: &#234;)
			regExp = /&ecirc;/g;
			value = value.replace(regExp, "ê");
			
			// http://www.fileformat.info/info/unicode/char/00eb/index.htm
			// lowercase e, umlaut (Entity Number: &#235;)
			regExp = /&euml;/g;
			value = value.replace(regExp, "ë");
			
			// http://www.fileformat.info/info/unicode/char/00ec/index.htm
			// lowercase i, grave accent (Entity Number: &#236;)
			regExp = /&igrave;/g;
			value = value.replace(regExp, "ì");
			
			// http://www.fileformat.info/info/unicode/char/00ed/index.htm
			// lowercase i, acute accent (Entity Number: &#237;)
			regExp = /&iacute;/g;
			value = value.replace(regExp, "í");
			
			// http://www.fileformat.info/info/unicode/char/00ee/index.htm
			// lowercase i, circumflex accent (Entity Number: &#238;)
			regExp = /&icirc;/g;
			value = value.replace(regExp, "î");
			
			// http://www.fileformat.info/info/unicode/char/00ef/index.htm
			// lowercase i, umlaut (Entity Number: &#239;)
			regExp = /&iuml;/g;
			value = value.replace(regExp, "ï");
			
			// http://www.fileformat.info/info/unicode/char/00f0/index.htm
			// lowercase eth, Icelandic (Entity Number: &#240;)
			regExp = /&eth;/g;
			value = value.replace(regExp, "ð");
			
			// http://www.fileformat.info/info/unicode/char/00f1/index.htm
			// lowercase n, tilde (Entity Number: &#241;)
			regExp = /&ntilde;/g;
			value = value.replace(regExp, "ñ");
			
			// http://www.fileformat.info/info/unicode/char/00f2/index.htm
			// lowercase o, grave accent (Entity Number: &#242;)
			regExp = /&ograve;/g;
			value = value.replace(regExp, "ò");
			
			// http://www.fileformat.info/info/unicode/char/00f3/index.htm
			// lowercase o, acute accent (Entity Number: &#243;)
			regExp = /&oacute;/g;
			value = value.replace(regExp, "ó");
			
			// http://www.fileformat.info/info/unicode/char/00f4/index.htm
			// lowercase o, circumflex accent (Entity Number: &#244;)
			regExp = /&ocirc;/g;
			value = value.replace(regExp, "ô");
			
			// http://www.fileformat.info/info/unicode/char/00f5/index.htm
			// lowercase o, tilde (Entity Number: &#245;)
			regExp = /&otilde;/g;
			value = value.replace(regExp, "õ");
			
			// http://www.fileformat.info/info/unicode/char/00f6/index.htm
			// lowercase o, umlaut (Entity Number: &#246;)
			regExp = /&ouml;/g;
			value = value.replace(regExp, "ö");
			
			// http://www.fileformat.info/info/unicode/char/00f8/index.htm
			// lowercase o, slash (Entity Number: &#248;)
			regExp = /&oslash;/g;
			value = value.replace(regExp, "ø");
			
			// http://www.fileformat.info/info/unicode/char/00f9/index.htm
			// lowercase u, grave accent (Entity Number: &#249;)
			regExp = /&ugrave;/g;
			value = value.replace(regExp, "ù");
			
			// http://www.fileformat.info/info/unicode/char/00fa/index.htm
			// lowercase u, acute accent (Entity Number: &#250;)
			regExp = /&uacute;/g;
			value = value.replace(regExp, "ú");
			
			// http://www.fileformat.info/info/unicode/char/00fb/index.htm
			// lowercase u, circumflex accent (Entity Number: &#251;)
			regExp = /&ucirc;/g;
			value = value.replace(regExp, "û");
			
			// http://www.fileformat.info/info/unicode/char/00fc/index.htm
			// lowercase u, umlaut (Entity Number: &#252;)
			regExp = /&uuml;/g;
			value = value.replace(regExp, "ü");
			
			// http://www.fileformat.info/info/unicode/char/00fd/index.htm
			// lowercase y, acute accent (Entity Number: &#253;)
			regExp = /&yacute;/g;
			value = value.replace(regExp, "ý");
			
			// http://www.fileformat.info/info/unicode/char/00fe/index.htm
			// lowercase thorn, Icelandic (Entity Number: &#254;)
			regExp = /&thorn;/g;
			value = value.replace(regExp, "þ");
			
			// http://www.fileformat.info/info/unicode/char/00ff/index.htm
			// lowercase y, umlaut (Entity Number: &#255;)
			regExp = /&yuml;/g;
			value = value.replace(regExp, "ÿ");
			
			///////////////////////////////////////////////////////////////////////
			//  Math Symbols Supported by HTML
			//  http://www.w3schools.com/tags/ref_symbols.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/2200/index.htm
			// for all (Entity Number: &#8704;)
			regExp = /&forall;/g;
			value = value.replace(regExp, "∀");
			
			// http://www.fileformat.info/info/unicode/char/2202/index.htm
			// part (Entity Number: &#8706;)
			regExp = /&part;/g;
			value = value.replace(regExp, "∂");
			
			// http://www.fileformat.info/info/unicode/char/2203/index.htm
			// exists (Entity Number: &#8707;)
			regExp = /&exist;/g;
			value = value.replace(regExp, "∃");
			
			// http://www.fileformat.info/info/unicode/char/2205/index.htm
			// empty (Entity Number: &#8709;)
			regExp = /&empty;/g;
			value = value.replace(regExp, "∅");
			
			// http://www.fileformat.info/info/unicode/char/2207/index.htm
			// nabla (Entity Number: &#8711;)
			regExp = /&nabla;/g;
			value = value.replace(regExp, "∇");
			
			// http://www.fileformat.info/info/unicode/char/2208/index.htm
			// isin (Entity Number: &#8712;)
			regExp = /&isin;/g;
			value = value.replace(regExp, "∈");
			
			// http://www.fileformat.info/info/unicode/char/2209/index.htm
			// notin (Entity Number: &#8713;)
			regExp = /&notin;/g;
			value = value.replace(regExp, "∉");
			
			// http://www.fileformat.info/info/unicode/char/220b/index.htm
			// ni (Entity Number: &#8715;)
			regExp = /&ni;/g;
			value = value.replace(regExp, "∋");
			
			// http://www.fileformat.info/info/unicode/char/220f/index.htm
			// prod (Entity Number: &#8719;)
			regExp = /&prod;/g;
			value = value.replace(regExp, "∏");
			
			// http://www.fileformat.info/info/unicode/char/2211/index.htm
			// sum (Entity Number: &#8721;)
			regExp = /&sum;/g;
			value = value.replace(regExp, "∑");
			
			// http://www.fileformat.info/info/unicode/char/2212/index.htm
			// minus (Entity Number: &#8722;)
			regExp = /&minus;/g;
			value = value.replace(regExp, "−");
			
			// http://www.fileformat.info/info/unicode/char/2217/index.htm
			// lowast (Entity Number: &#8727;)
			regExp = /&lowast;/g;
			value = value.replace(regExp, "∗");
			
			// http://www.fileformat.info/info/unicode/char/221a/index.htm
			// square root (Entity Number: &#8730;)
			regExp = /&radic;/g;
			value = value.replace(regExp, "√");
			
			// http://www.fileformat.info/info/unicode/char/221d/index.htm
			// proportional to (Entity Number: &#8733;)
			regExp = /&prop;/g;
			value = value.replace(regExp, "∝");
			
			// http://www.fileformat.info/info/unicode/char/221e/index.htm
			// infinity (Entity Number: &#8734;)
			regExp = /&infin;/g;
			value = value.replace(regExp, "∞");
			
			// http://www.fileformat.info/info/unicode/char/2220/index.htm
			// angle (Entity Number: &#8736;)
			regExp = /&ang;/g;
			value = value.replace(regExp, "∠");
			
			// http://www.fileformat.info/info/unicode/char/2227/index.htm
			// and (Entity Number: &#8743;)
			regExp = /&and;/g;
			value = value.replace(regExp, "∧");
			
			// http://www.fileformat.info/info/unicode/char/2228/index.htm
			// or (Entity Number: &#8744;)
			regExp = /&or;/g;
			value = value.replace(regExp, "∨");
			
			// http://www.fileformat.info/info/unicode/char/2229/index.htm
			// cap (Entity Number: &#8745;)
			regExp = /&cap;/g;
			value = value.replace(regExp, "∩");
			
			// http://www.fileformat.info/info/unicode/char/222a/index.htm
			// cup (Entity Number: &#8746;)
			regExp = /&cup;/g;
			value = value.replace(regExp, "∪");
			
			// http://www.fileformat.info/info/unicode/char/222b/index.htm
			// integral (Entity Number: &#8747;)
			regExp = /&int;/g;
			value = value.replace(regExp, "∫");
			
			// http://www.fileformat.info/info/unicode/char/2234/index.htm
			// therefore (Entity Number: &#8756;)
			regExp = /&there4;/g;
			value = value.replace(regExp, "∴");
			
			// http://www.fileformat.info/info/unicode/char/223c/index.htm
			// similar to (Entity Number: &#8764;)
			regExp = /&sim;/g;
			value = value.replace(regExp, "∼");
			
			// http://www.fileformat.info/info/unicode/char/2245/index.htm
			// congruent to (Entity Number: &#8773;)
			regExp = /&cong;/g;
			value = value.replace(regExp, "≅");
			
			// http://www.fileformat.info/info/unicode/char/2248/index.htm
			// almost equal (Entity Number: &#8776;)
			regExp = /&asymp;/g;
			value = value.replace(regExp, "≈");
			
			// http://www.fileformat.info/info/unicode/char/2260/index.htm
			// not equal (Entity Number: &#8800;)
			regExp = /&ne;/g;
			value = value.replace(regExp, "≠");
			
			// http://www.fileformat.info/info/unicode/char/2261/index.htm
			// equivalent (Entity Number: &#8801;)
			regExp = /&equiv;/g;
			value = value.replace(regExp, "≡");
			
			// http://www.fileformat.info/info/unicode/char/2264/index.htm
			// less or equal (Entity Number: &#8804;)
			regExp = /&le;/g;
			value = value.replace(regExp, "≤");
			
			// http://www.fileformat.info/info/unicode/char/2265/index.htm
			// greater or equal (Entity Number: &#8805;)
			regExp = /&ge;/g;
			value = value.replace(regExp, "≥");
			
			// http://www.fileformat.info/info/unicode/char/2282/index.htm
			// subset of (Entity Number: &#8834;)
			regExp = /&sub;/g;
			value = value.replace(regExp, "⊂");
			
			// http://www.fileformat.info/info/unicode/char/2283/index.htm
			// superset of (Entity Number: &#8835;)
			regExp = /&sup;/g;
			value = value.replace(regExp, "⊃");
			
			// http://www.fileformat.info/info/unicode/char/2284/index.htm
			// not subset of (Entity Number: &#8836;)
			regExp = /&nsub;/g;
			value = value.replace(regExp, "⊄");
			
			// http://www.fileformat.info/info/unicode/char/2286/index.htm
			// subset or equal (Entity Number: &#8838;)
			regExp = /&sube;/g;
			value = value.replace(regExp, "⊆");
			
			// http://www.fileformat.info/info/unicode/char/2287/index.htm
			// superset or equal (Entity Number: &#8839;)
			regExp = /&supe;/g;
			value = value.replace(regExp, "⊇");
			
			// http://www.fileformat.info/info/unicode/char/2295/index.htm
			// circled plus (Entity Number: &#8853;)
			regExp = /&oplus;/g;
			value = value.replace(regExp, "⊕");
			
			// http://www.fileformat.info/info/unicode/char/2297/index.htm
			// cirled times (Entity Number: &#8855;)
			regExp = /&otimes;/g;
			value = value.replace(regExp, "⊗");
			
			// http://www.fileformat.info/info/unicode/char/22a5/index.htm
			// perpendicular (Entity Number: &#8869;)
			regExp = /&perp;/g;
			value = value.replace(regExp, "⊥");
			
			// http://www.fileformat.info/info/unicode/char/22c5/index.htm
			// dot operator (Entity Number: &#8901;)
			regExp = /&sdot;/g;
			value = value.replace(regExp, "⋅");
			
			///////////////////////////////////////////////////////////////////////
			//  Greek Letters Supported by HTML
			//  http://www.w3schools.com/tags/ref_symbols.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/0391/index.htm
			// Alpha (Entity Number: &#913;)
			regExp = /&Alpha;/g;
			value = value.replace(regExp, "Α");
			
			// http://www.fileformat.info/info/unicode/char/0392/index.htm
			// Beta (Entity Number: &#914;)
			regExp = /&Beta;/g;
			value = value.replace(regExp, "Β");
			
			// http://www.fileformat.info/info/unicode/char/0393/index.htm
			// Gamma (Entity Number: &#915;)
			regExp = /&Gamma;/g;
			value = value.replace(regExp, "Γ");
			
			// http://www.fileformat.info/info/unicode/char/0394/index.htm
			// Delta (Entity Number: &#916;)
			regExp = /&Delta;/g;
			value = value.replace(regExp, "Δ");
			
			// http://www.fileformat.info/info/unicode/char/0395/index.htm
			// Epsilon (Entity Number: &#917;)
			regExp = /&Epsilon;/g;
			value = value.replace(regExp, "Ε");
			
			// http://www.fileformat.info/info/unicode/char/0396/index.htm
			// Zeta (Entity Number: &#918;)
			regExp = /&Zeta;/g;
			value = value.replace(regExp, "Ζ");
			
			// http://www.fileformat.info/info/unicode/char/0397/index.htm
			// Eta (Entity Number: &#919;)
			regExp = /&Eta;/g;
			value = value.replace(regExp, "Η");
			
			// http://www.fileformat.info/info/unicode/char/0398/index.htm
			// Theta (Entity Number: &#920;)
			regExp = /&Theta;/g;
			value = value.replace(regExp, "Θ");
			
			// http://www.fileformat.info/info/unicode/char/0399/index.htm
			// Iota (Entity Number: &#921;)
			regExp = /&Iota;/g;
			value = value.replace(regExp, "Ι");
			
			// http://www.fileformat.info/info/unicode/char/039a/index.htm
			// Kappa (Entity Number: &#922;)
			regExp = /&Kappa;/g;
			value = value.replace(regExp, "Κ");
			
			// http://www.fileformat.info/info/unicode/char/039b/index.htm
			// Lambda (Entity Number: &#923;)
			regExp = /&Lambda;/g;
			value = value.replace(regExp, "Λ");
			
			// http://www.fileformat.info/info/unicode/char/039c/index.htm
			// Mu (Entity Number: &#924;)
			regExp = /&Mu;/g;
			value = value.replace(regExp, "Μ");
			
			// http://www.fileformat.info/info/unicode/char/039d/index.htm	
			// Nu (Entity Number: &#925;)
			regExp = /&Nu;/g;
			value = value.replace(regExp, "Ν");
			
			// http://www.fileformat.info/info/unicode/char/039e/index.htm
			// Xi (Entity Number: &#926;)
			regExp = /&Xi;/g;
			value = value.replace(regExp, "Ξ");
			
			// http://www.fileformat.info/info/unicode/char/039f/index.htm
			// Omicron (Entity Number: &#927;)
			regExp = /&Omicron;/g;
			value = value.replace(regExp, "Ο");
			
			// http://www.fileformat.info/info/unicode/char/03a0/index.htm
			// Pi (Entity Number: &#928;)
			regExp = /&Pi;/g;
			value = value.replace(regExp, "Π");
			
			// http://www.fileformat.info/info/unicode/char/03a1/index.htm
			// Rho (Entity Number: &#929;)
			regExp = /&Rho;/g;
			value = value.replace(regExp, "Ρ");
				
			// http://www.fileformat.info/info/unicode/char/03a3/index.htm
			// Sigma (Entity Number: &#931;)
			regExp = /&Sigma;/g;
			value = value.replace(regExp, "Σ");
			
			// http://www.fileformat.info/info/unicode/char/03a4/index.htm
			// Tau (Entity Number: &#932;)
			regExp = /&Tau;/g;
			value = value.replace(regExp, "Τ");
			
			// http://www.fileformat.info/info/unicode/char/03a5/index.htm
			// Upsilon (Entity Number: &#933;)
			regExp = /&Upsilon;/g;
			value = value.replace(regExp, "Υ");
			
			// http://www.fileformat.info/info/unicode/char/03a6/index.htm
			// Phi (Entity Number: &#934;)
			regExp = /&Phi;/g;
			value = value.replace(regExp, "Φ");
			
			// http://www.fileformat.info/info/unicode/char/03a7/index.htm
			// Chi (Entity Number: &#935;)
			regExp = /&Chi;/g;
			value = value.replace(regExp, "Χ");
			
			// http://www.fileformat.info/info/unicode/char/03a8/index.htm
			// Psi (Entity Number: &#936;)
			regExp = /&Psi;/g;
			value = value.replace(regExp, "Ψ");
			
			// http://www.fileformat.info/info/unicode/char/03a9/index.htm
			// Omega (Entity Number: &#937;)
			regExp = /&Omega;/g;
			value = value.replace(regExp, "Ω");
						
			// http://www.fileformat.info/info/unicode/char/03b1/index.htm
			// alpha (Entity Number: &#945;)
			regExp = /&alpha;/g;
			value = value.replace(regExp, "α");
			
			// http://www.fileformat.info/info/unicode/char/03b2/index.htm
			// beta (Entity Number: &#946;)
			regExp = /&beta;/g;
			value = value.replace(regExp, "β");
			
			// http://www.fileformat.info/info/unicode/char/03b3/index.htm
			// gamma (Entity Number: &#947;)
			regExp = /&gamma;/g;
			value = value.replace(regExp, "γ");
			
			// http://www.fileformat.info/info/unicode/char/03b4/index.htm
			// delta (Entity Number: &#948;)
			regExp = /&delta;/g;
			value = value.replace(regExp, "δ");
			
			// http://www.fileformat.info/info/unicode/char/03b5/index.htm
			// epsilon (Entity Number: &#949;)
			regExp = /&epsilon;/g;
			value = value.replace(regExp, "ε");
			
			// http://www.fileformat.info/info/unicode/char/03b6/index.htm
			// zeta (Entity Number: &#950;)
			regExp = /&zeta;/g;
			value = value.replace(regExp, "ζ");
			
			// http://www.fileformat.info/info/unicode/char/03b7/index.htm
			// eta (Entity Number: &#951;)
			regExp = /&eta;/g;
			value = value.replace(regExp, "η");
			
			// http://www.fileformat.info/info/unicode/char/03b8/index.htm
			// theta (Entity Number: &#952;)
			regExp = /&theta;/g;
			value = value.replace(regExp, "θ");
			
			// http://www.fileformat.info/info/unicode/char/03b9/index.htm
			// iota (Entity Number: &#953;)
			regExp = /&iota;/g;
			value = value.replace(regExp, "ι");
			
			// http://www.fileformat.info/info/unicode/char/03ba/index.htm
			// kappa (Entity Number: &#954;)
			regExp = /&kappa;/g;
			value = value.replace(regExp, "κ");
			
			// http://www.fileformat.info/info/unicode/char/03bb/index.htm
			// lambda (Entity Number: &#955;)
			regExp = /&lambda;/g;
			value = value.replace(regExp, "λ");
			
			// http://www.fileformat.info/info/unicode/char/03bc/index.htm
			// mu (Entity Number: &#956;)
			regExp = /&mu;/g;
			value = value.replace(regExp, "μ");
			
			// http://www.fileformat.info/info/unicode/char/03bd/index.htm
			// nu (Entity Number: &#957;)
			regExp = /&nu;/g;
			value = value.replace(regExp, "ν");
			
			// http://www.fileformat.info/info/unicode/char/03be/index.htm
			// xi (Entity Number: &#958;)
			regExp = /&xi;/g;
			value = value.replace(regExp, "ξ");
			
			// http://www.fileformat.info/info/unicode/char/03bf/index.htm
			// omicron (Entity Number: &#959;)
			regExp = /&omicron;/g;
			value = value.replace(regExp, "ο");
			
			// http://www.fileformat.info/info/unicode/char/03c0/index.htm
			// pi (Entity Number: &#960;)
			regExp = /&pi;/g;
			value = value.replace(regExp, "π");
			
			// http://www.fileformat.info/info/unicode/char/03c1/index.htm
			// rho (Entity Number: &#961;)
			regExp = /&rho;/g;
			value = value.replace(regExp, "ρ");
			
			// http://www.fileformat.info/info/unicode/char/03c2/index.htm
			// sigmaf (Entity Number: &#962;)
			regExp = /&sigmaf;/g;
			value = value.replace(regExp, "ς");
			
			// http://www.fileformat.info/info/unicode/char/03c3/index.htm
			// sigma (Entity Number: &#963;)
			regExp = /&sigma;/g;
			value = value.replace(regExp, "σ");
			
			// http://www.fileformat.info/info/unicode/char/03c4/index.htm
			// tau (Entity Number: &#964;)
			regExp = /&tau;/g;
			value = value.replace(regExp, "τ");
			
			// http://www.fileformat.info/info/unicode/char/03c5/index.htm
			// upsilon (Entity Number: &#965;)
			regExp = /&upsilon;/g;
			value = value.replace(regExp, "υ");
			
			// http://www.fileformat.info/info/unicode/char/03c6/index.htm
			// phi (Entity Number: &#966;)
			regExp = /&phi;/g;
			value = value.replace(regExp, "φ");
			
			// http://www.fileformat.info/info/unicode/char/03c7/index.htm
			// chi (Entity Number: &#967;)
			regExp = /&chi;/g;
			value = value.replace(regExp, "χ");
			
			// http://www.fileformat.info/info/unicode/char/03c8/index.htm
			// psi (Entity Number: &#968;)
			regExp = /&psi;/g;
			value = value.replace(regExp, "ψ");
			
			// http://www.fileformat.info/info/unicode/char/03c9/index.htm
			// omega (Entity Number: &#969;)
			regExp = /&omega;/g;
			value = value.replace(regExp, "ω");
						 
			// http://www.fileformat.info/info/unicode/char/03d1/index.htm
			// theta symbol (Entity Number: &#977;)
			regExp = /&thetasym;/g;
			value = value.replace(regExp, "ϑ");
			
			// http://www.fileformat.info/info/unicode/char/03d2/index.htm
			// upsilon symbol (Entity Number: &#978;)
			regExp = /&upsih;/g;
			value = value.replace(regExp, "ϒ");
			
			// http://www.fileformat.info/info/unicode/char/03d6/index.htm
			// pi symbol (Entity Number: &#982;)
			regExp = /&piv;/g;
			value = value.replace(regExp, "ϖ");
			
			///////////////////////////////////////////////////////////////////////
			//  Other Entities Supported by HTML
			//  http://www.w3schools.com/tags/ref_symbols.asp
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/0152/index.htm
			// capital ligature OE (Entity Number: &#338;)
			regExp = /&OElig;/g;
			value = value.replace(regExp, "Œ");
			
			// http://www.fileformat.info/info/unicode/char/0153/index.htm
			// small ligature oe (Entity Number: &#339;)
			regExp = /&oelig;/g;
			value = value.replace(regExp, "œ");
			
			// http://www.fileformat.info/info/unicode/char/0160/index.htm
			// capital S with caron (Entity Number: &#352;)
			regExp = /&Scaron;/g;
			value = value.replace(regExp, "Š");
			
			// http://www.fileformat.info/info/unicode/char/0161/index.htm
			// small S with caron (Entity Number: &#353;)
			regExp = /&scaron;/g;
			value = value.replace(regExp, "š");
			
			// http://www.fileformat.info/info/unicode/char/0178/index.htm
			// capital Y with diaeres (Entity Number: &#376;)
			regExp = /&Yuml;/g;
			value = value.replace(regExp, "Ÿ");
			
			// http://www.fileformat.info/info/unicode/char/0192/index.htm
			// f with hook (Entity Number: &#402;)
			regExp = /&fnof;/g;
			value = value.replace(regExp, "ƒ");
			
			// http://www.fileformat.info/info/unicode/char/02c6/index.htm
			// modifier letter circumflex accent (Entity Number: &#710;)
			regExp = /&circ;/g;
			value = value.replace(regExp, "ˆ");
			
			// http://www.fileformat.info/info/unicode/char/02dc/index.htm
			// small tilde (Entity Number: &#732;)
			regExp = /&tilde;/g;
			value = value.replace(regExp, "˜");
			
			// http://www.fileformat.info/info/unicode/char/2002/index.htm
			// en space (Entity Number: &#8194;)
			regExp = /&ensp;/g;
			value = value.replace(regExp, " ");
			
			// http://www.fileformat.info/info/unicode/char/2003/index.htm
			// em space (Entity Number: &#8195;)
			regExp = /&emsp;/g;
			value = value.replace(regExp, " ");
			
			// http://www.fileformat.info/info/unicode/char/2009/index.htm
			// thin space (Entity Number: &#8201;)
			regExp = /&thinsp;/g;
			value = value.replace(regExp, " ");
			
			// http://www.fileformat.info/info/unicode/char/200c/index.htm
			// zero width non-joiner (Entity Number: &#8204;)
			//regExp = /&zwnj;/g;
			//$str = $str.replace(regExp, "");
			
			// http://www.fileformat.info/info/unicode/char/200d/index.htm
			// zero width joiner (Entity Number: &#8205;)
			//regExp = /&zwj;‍/g;
			//$str = $str.replace(regExp, "");
			
			// http://www.fileformat.info/info/unicode/char/200e/index.htm
			// left-to-right mark (Entity Number: &#8206;)
			regExp = /&lrm;/g;
			value = value.replace(regExp, "	‎");
			
			// http://www.fileformat.info/info/unicode/char/200f/index.htm
			// right-to-left mark (Entity Number: &#8207;)
			regExp = /&rlm;‏‏/g;
			value = value.replace(regExp, "	‏");
			
			// http://www.fileformat.info/info/unicode/char/2013/index.htm
			// en dash (Entity Number: &#8211;)
			regExp = /&ndash;/g;
			value = value.replace(regExp, "–");
			
			// http://www.fileformat.info/info/unicode/char/2014/index.htm
			// em dash (Entity Number: &#8212;)
			regExp = /&mdash;/g;
			value = value.replace(regExp, "—");

			// http://www.fileformat.info/info/unicode/char/2018/index.htm
			// left single quote (Entity Number: &#8216;)
			regExp = /&lsquo;/g;
			value = value.replace(regExp, "‘");
			
			// http://www.fileformat.info/info/unicode/char/2019/index.htm
			// right single quote (Entity Number: &#8217;)
			regExp = /&rsquo;/g;
			value = value.replace(regExp, "’");
			
			// http://www.fileformat.info/info/unicode/char/201a/index.htm
			// single low-9 quote (Entity Number: &#8218;)
			regExp = /&sbquo;/g;
			value = value.replace(regExp, "‚");
			
			// http://www.fileformat.info/info/unicode/char/201c/index.htm
			// left double quote (Entity Number: &#8220;)
			regExp = /&ldquo;/g;
			value = value.replace(regExp, "“");
			
			// http://www.fileformat.info/info/unicode/char/201d/index.htm
			// right double quote (Entity Number: &#8221;)
			regExp = /&rdquo;/g;
			value = value.replace(regExp, "”");
			
			// http://www.fileformat.info/info/unicode/char/201e/index.htm
			// double low-9 quote (Entity Number: &#8222;)
			regExp = /&bdquo;/g;
			value = value.replace(regExp, "„");
			
			// http://www.fileformat.info/info/unicode/char/2020/index.htm
			// dagger (Entity Number: &#8224;)
			regExp = /&dagger;/g;
			value = value.replace(regExp, "†");
			
			// http://www.fileformat.info/info/unicode/char/2021/index.htm
			// double dagger (Entity Number: &#8225;)
			regExp = /&Dagger;/g;
			value = value.replace(regExp, "‡");
			
			// http://www.fileformat.info/info/unicode/char/2022/index.htm
			// bullet (Entity Number: &#8226;)
			regExp = /&bull;/g;
			value = value.replace(regExp, "•");
			
			// http://www.fileformat.info/info/unicode/char/2026/index.htm
			// horizontal ellipsis (Entity Number: &#8230;)
			regExp = /&hellip;/g;
			value = value.replace(regExp, "…");
			
			// http://www.fileformat.info/info/unicode/char/2030/index.htm
			// per mill sign (Entity Number: &#8240;)
			regExp = /&permil;/g;
			value = value.replace(regExp, "‰");
			
			// http://www.fileformat.info/info/unicode/char/2032/index.htm
			// minutes (Entity Number: &#8242;)
			regExp = /&prime;/g;
			value = value.replace(regExp, "′");

			// http://www.fileformat.info/info/unicode/char/2033/index.htm
			// seconds (Entity Number: &#8243;)
			regExp = /&Prime;/g;
			value = value.replace(regExp, "″");
			
			// http://www.fileformat.info/info/unicode/char/2039/index.htm
			// single left-pointing angle quote (Entity Number: &#8249;)
			regExp = /&lsaquo;/g;
			value = value.replace(regExp, "‹");
			
			// http://www.fileformat.info/info/unicode/char/203a/index.htm
			// single right-pointing angle quote (Entity Number: &#8250;)
			regExp = /&rsaquo;/g;
			value = value.replace(regExp, "›");
			
			// http://www.fileformat.info/info/unicode/char/203e/index.htm
			// overline, = spacing overscore (Entity Number: &#8254;)
			regExp = /&oline;/g;
			value = value.replace(regExp, "‾");
			
			// http://www.fileformat.info/info/unicode/char/20ac/index.htm
			// euro (Entity Number: &#8364;)
			regExp = /&euro;/g;
			value = value.replace(regExp, "€");
			
			// http://www.fileformat.info/info/unicode/char/2122/index.htm
			// trademark sign (Entity Number: &#8482;)
			regExp = /&trade;/g;
			value = value.replace(regExp, "™");
			
			// http://www.fileformat.info/info/unicode/char/2190/index.htm
			// leftward arrow (Entity Number: &#8592;)
			regExp = /&larr;/g;
			value = value.replace(regExp, "←");
			
			// http://www.fileformat.info/info/unicode/char/2191/index.htm
			// upward arrow (Entity Number: &#8593;)
			regExp = /&uarr;/g;
			value = value.replace(regExp, "↑");
			
			// http://www.fileformat.info/info/unicode/char/2192/index.htm
			// rightward arrow (Entity Number: &#8594;)
			regExp = /&rarr;/g;
			value = value.replace(regExp, "→");
			
			// http://www.fileformat.info/info/unicode/char/2193/index.htm
			// downward arrow (Entity Number: &#8595;)
			regExp = /&darr;/g;
			value = value.replace(regExp, "↓");
			
			// http://www.fileformat.info/info/unicode/char/2194/index.htm
			// left right arrow (Entity Number: &#8596;)
			regExp = /&harr;/g;
			value = value.replace(regExp, "↔");
			
			// http://www.fileformat.info/info/unicode/char/21b5/index.htm
			// carriage return arrow (Entity Number: &#8629;)
			regExp = /&crarr;/g;
			value = value.replace(regExp, "↵");
			
			// http://www.fileformat.info/info/unicode/char/2308/index.htm
			// left ceiling (Entity Number: &#8968;)
			regExp = /&lceil;/g;
			value = value.replace(regExp, "⌈");
			
			// http://www.fileformat.info/info/unicode/char/2309/index.htm
			// right ceiling (Entity Number: &#8969;)
			regExp = /&rceil;/g;
			value = value.replace(regExp, "⌉");
			
			// http://www.fileformat.info/info/unicode/char/230a/index.htm
			// left floor (Entity Number: &#8970;)
			regExp = /&lfloor;/g;
			value = value.replace(regExp, "⌊");
			
			// http://www.fileformat.info/info/unicode/char/230b/index.htm
			// right floor (Entity Number: &#8971;)
			regExp = /&rfloor;/g;
			value = value.replace(regExp, "⌋");
			
			// http://www.fileformat.info/info/unicode/char/25ca/index.htm
			// lozenge (Entity Number: &#9674;)
			regExp = /&loz;/g;
			value = value.replace(regExp, "◊");
			
			// http://www.fileformat.info/info/unicode/char/2660/index.htm
			// black spade suit (Entity Number: &#9824;)
			regExp = /&spades;/g;
			value = value.replace(regExp, "♠");
			
			// http://www.fileformat.info/info/unicode/char/2663/index.htm
			// black club suit (Entity Number: &#9827;)
			regExp = /&clubs;/g;
			value = value.replace(regExp, "♣");
			
			// http://www.fileformat.info/info/unicode/char/2665/index.htm
			// black heart suit (Entity Number: &#9829;)
			regExp = /&hearts;/g;
			value = value.replace(regExp, "♥");
			
			// http://www.fileformat.info/info/unicode/char/2666/index.htm
			// black diamond suit (Entity Number: &#9830;)
			regExp = /&diams;/g;
			value = value.replace(regExp, "♦");
			
			///////////////////////////////////////////////////////////////////////
			//  Other Named Entities
			///////////////////////////////////////////////////////////////////////
			
			// http://www.fileformat.info/info/unicode/char/002f/index.htm
			// slash (Entity Number: &#47;)
			regExp = /&frasl;/g;
			value = value.replace(regExp, "/");
			
			///////////////////////////////////////////////////////////////////////

			return value;
		}
	}
}
