grammar Asn1Lexical;

// Static Lexicons
// Used lexical definitions in the parser
// chapter 12.38

fragment RESERVED
	: 'ABSENT' | 'ENCODED' | 'INTERSECTION' | 'SEQUENCE' | 'ABSTRACT-SYNTAX' | 'ENCODING-CONTROL' | 'ISO646String'
	| 'SET' | 'ALL' | 'END' | 'MAX' | 'SETTINGS' | 'APPLICATION' | 'ENUMERATED' | 'MIN' | 'SIZE'
	| 'AUTOMATIC' 'EXCEPT' 'MINUS-INFINITY' 'STRING'
	| 'BEGIN' | 'EXPLICIT' | 'NOT-A-NUMBER' | 'SYNTAX'
	| 'BIT' | 'EXPORTS' | 'NULL' | 'T61String'
	| 'BMPString' | 'EXTENSIBILITY' | 'NumericString' | 'TAGS'
	| 'BOOLEAN' | 'EXTERNAL' | 'OBJECT' | 'TeletexString'
	| 'BY' | 'FALSE' | 'ObjectDescriptor' | 'TIME'
	| 'CHARACTER' | 'FROM' | 'OCTET' | 'TIME-OF-DAY'
	| 'CHOICE' | 'GeneralizedTime' | 'OF' | 'TRUE'
	| 'CLASS' | 'GeneralString' | 'OID-IRI' | 'TYPE-IDENTIFIER'
	| 'COMPONENT' | 'GraphicString' | 'OPTIONAL' | 'UNION'
	| 'COMPONENTS' | 'IA5String' | 'PATTERN' | 'UNIQUE'
	| 'CONSTRAINED' | 'IDENTIFIER' | 'PDV' | 'UNIVERSAL'
	| 'CONTAINING' | 'IMPLICIT' | 'PLUS-INFINITY' | 'UniversalString'
	| 'DATE' | 'IMPLIED' | 'PRESENT' | 'UTCTime'
	| 'DATE-TIME' | 'IMPORTS' | 'PrintableString' | 'UTF8String'
	| 'DEFAULT' | 'INCLUDES' | 'PRIVATE' | 'VideotexString'
	| 'DEFINITIONS' | 'INSTANCE' | 'REAL' | 'VisibleString'
	| 'DURATION' | 'INSTRUCTIONS' | 'RELATIVE-OID' | 'WITH'
	| 'EMBEDDED' | 'INTEGER' | 'RELATIVE-OID-IRI' ;

DEFINITIONS: 'DEFINITIONS' ;

BEGIN: 'BEGIN' ;

END: 'END' ;

INSTRUCTIONS: 'INSTRUCTIONS' ;

EXPLICIT_TAGS: 'EXPLICIT TAGS' ;

IMPLICIT_TAGS: 'IMPLICIT TAGS' ;

AUTOMATIC_TAGS: 'AUTOMATIC TAGS' ;

EXTENSIBILITY_IMPLIED: 'EXTENSIBILITY IMPLIED' ;

EXPORTS_ALL: 'EXPORTS ALL' ;

EXPORTS: 'EXPORTS' ;

IMPORTS: 'IMPORTS' ;

FROM: 'FROM' ;

BOOLEAN: 'BOOLEAN' ;

TRUE: 'TRUE' ;

FALSE: 'FALSE' ;

ENUMERATED: 'ENUMERATED' ;

REAL: 'REAL' ;

PLUS_INFINITY: 'PLUS-INFINITY' ;

MINUS_INFINITY: 'MINUS-INFINITY' ;

NOT_A_NUMBER: 'NOT-A-NUMBER' ;

BIT_STRING: 'BIT STRING' ;

CONTAINING: 'CONTAINING' ;

OCTET_STRING: 'OCTET STRING' ;

NULL: 'NULL' ;

SEQUENCE: 'SEQUENCE' ;

OPTIONAL: 'OPTIONAL' ;

DEFAULT: 'DEFAULT' ;

COMPONENTS_OF: 'COMPONENTS OF' ;

SEQUENCE_OF: 'SEQUENCE OF' ;

SET: 'SET' ;

SET_OF: 'SET OF' ;

CHOICE: 'CHOICE' ;

IMPLICIT: 'IMPLICIT' ;

EXPLICIT: 'EXPLICIT' ;

UNIVERSAL: 'UNIVERSAL' ;

APPLICATION: 'APPLICATION' ;

PRIVATE: 'PRIVATE' ;

OBJECT_IDENTIFIER: 'OBJECT IDENTIFIER' ;

RELATIVE_OID: 'RELATIVE-OID' ;

OID_IRI: 'OID-IRI' ;

RELATIVE_OID_IRI: 'RELATIVE-OID-IRI' ;

EMBEDDED_PDV: 'EMBEDDED PDV' ;

EXTERNAL: 'EXTERNAL' ;

TIME: 'TIME' ;

DATE: 'DATE' ;

TIME_OF_DAY: 'TIME-OF-DAY' ;

DATE_TIME: 'DATE-TIME' ;

DURATION: 'DURATION' ;

/*
BMPString: 'BMPString' ;

GeneralString: 'GeneralString' ;

GraphicString: 'GraphicString' ;

IA5String: 'IA5String' ;

ISO646String: 'ISO646String' ;

NumericString: 'NumericString' ;

PrintableString: 'PrintableString' ;

TeletexString: 'TeletexString' ;

T61String: 'T61String' ;

UniversalString: 'UniversalString' ;

UTF8String: 'UTF8String' ;

VideotexString: 'VideotexString' ;

VisibleString: 'VisibleString' ;
*/

CHARACTER_STRING: 'CHARACTER STRING' ;

OF: 'OF' ;

ALL: 'ALL' ;

EXCEPT: 'EXCEPT' ;

UNION: 'UNION' ;

INTERSECTION: 'INTERSECTION' ;

INCLUDES: 'INCLUDES' ;

MIN: 'MIN' ;

MAX: 'MAX' ;

SIZE: 'SIZE' ;

WITH_COMPONENT: 'WITH COMPONENT' ;

WITH_COMPONENTS: 'WITH COMPONENTS' ;

PRESENT: 'PRESENT' ;

ABSENT: 'ABSENT' ;

PATTERN: 'PATTERN' ;

SETTINGS: 'SETTINGS' ;

TYPE_IDENTIFIER: 'TYPE-IDENTIFIER' ;

ABSTRACT_SYNTAX: 'ABSTRACT-SYNTAX' ;

CLASS: 'CLASS' ;

WITH_SYNTAX: 'WITH SYNTAX' ;

UNIQUE: 'UNIQUE' ;

INSTANCE_OF: 'INSTANCE OF' ;

ENCODING_CONTROL: 'ENCODING-CONTROL' ;

CONSTRAINED_BY: 'CONSTRAINED BY' ;

INTEGER: 'INTEGER' ;

// chapter 12.28 XML end tag start item
XML_ENDTAG: '</';

// chapter 12.29 XML single tag end item
XML_SINGLE_ENDTAG: '/>';

// chapter 12.30 XML boolean true item
XML_TRUE: 'true' ;

// chapter 12.31 XML boolean extended-true item
extended_true: XML_TRUE | ONE ;

// chapter 12.32 XML boolean false item
XML_FALSE: 'false' ;

// chapter 12.33 XML boolean extended-false item
extended_false: XML_FALSE | ZERO ;

// chapter 12.34 XML real not-a-number item
XML_NAN: 'NaN' ;

// chapter 12.35 XML real infinity item
XML_INF: 'INF' ;

// chapter 12.20 Assignment lexical item
ASSIGNMENT: '::=' ;

// chapter 12.21 Range separator
RANGE: '..' ;

// chapter 12.22 Ellipsis
ELLIPSIS: '...' ;

// chapter 12.23 Left version brackets
LEFT_VERSION_BRACKET: '[[' ;

// chapter 12.24 Right version brackets
RIGHT_VERSION_BRACKET: ']]' ;

// Deprecated ANY type
ANY: 'ANY' ;

DEFINED_BY: 'DEFINED BY' ;

// chapter 12.6 Comments
// Comment --
fragment COMMENT_DASHES: '--' ;

// Begin comment /*
fragment BEGIN_COMMENT: '/*' ;

// End comment */
fragment END_COMMENT: '*/' ;
fragment ASN_CHARACTER_SET
    : NONHEX_CAPITAL
    | NONHEX_SMALL
    | HEX_CAPITAL
    | HEX_SMALL
    | ZERO
    | ONE
    | NONZERO
    | EXCLAMATION
    | QUOTATION
    | AMPERSAND
    | APOSTROPHE
    | LEFT_PARENTHESIS
    | RIGHT_PARENTHESIS
    | ASTERISK
    | COMMA
    | HYPHEN_MINUS
    | FULL_STOP
    | SOLIDUS
    | COLON
    | SEMICOLON
    | LESS_THAN_SIGN
    | EQUALS_SIGN
    | GREATER_THAN_SIGN
    | COMMERCIAL_AT
    | LEFT_SQUARE_BRACKET
    | RIGHT_SQUARE_BRACKET
    | CIRCUMFLEX_ACCENT
    | LOW_LINE
    | LEFT_CURLY_BRACKET
    | VERTICAL_LINE
    | RIGHT_CURLY_BRACKET
    | PLUS ;

COMMENT1: COMMENT_DASHES (ASN_CHARACTER_SET | ' ' | '\t')*? ( COMMENT_DASHES | NEWLINE) -> skip;
COMMENT2: BEGIN_COMMENT (ASN_CHARACTER_SET | WS)*? END_COMMENT -> skip;

// chapter 12.1 General Rules
WS : ('\t' | '\n' | '\u0011' | '\u0012' | '\r' | ' ') -> skip;
NEWLINE: ('\n' | '\u0011' | '\u0012' | '\r') -> skip ;

EXCLAMATION: '!' ;
QUOTATION: '"' ;
AMPERSAND: '&' ;
APOSTROPHE: '\'' ;
LEFT_PARENTHESIS: '(' ;
RIGHT_PARENTHESIS: ')' ;
ASTERISK: '*' ;
COMMA: ',' ;
HYPHEN_MINUS: '-' ;
FULL_STOP: '.' ;
SOLIDUS: '/' ;
COLON: ':' ;
SEMICOLON: ';' ;
LESS_THAN_SIGN: '<' ;
EQUALS_SIGN: '=' ;
GREATER_THAN_SIGN: '>' ;
COMMERCIAL_AT: '@' ;
LEFT_SQUARE_BRACKET: '[' ;
RIGHT_SQUARE_BRACKET: ']' ;
CIRCUMFLEX_ACCENT: '^' ;
LOW_LINE: '_' ;
LEFT_CURLY_BRACKET: '{' ;
VERTICAL_LINE: '|' ;
RIGHT_CURLY_BRACKET: '}' ;
PLUS: '+' ;

// General lexicons
NONHEX_CAPITAL: [G-Z] ;
fragment NONHEX_SMALL: [g-z] ;
fragment CAPITAL: [A-Z] ;
fragment SMALL: [a-z] ;
fragment LETTER: CAPITAL | SMALL ;
fragment ALPHANUMERIC: [a-zA-Z0-9] ;
// (HEX_SMALL | NONHEX_SMALL |HEX_CAPITAL | NONHEX_CAPITAL | ZERO | ONE | NONZERO)
ZERO: '0';
ONE: '1';
NONZERO: [2-9] ;

fragment BIT: ( ZERO | ONE ) ;
HEX_CAPITAL: [A-F] ;
HEX_SMALL: [a-f] ;

// chapter 12.2 Type references
TYPEREFERENCE: CAPITAL (ALPHANUMERIC | '-' ALPHANUMERIC)* ;

// chapter 12.3 Identifiers
IDENTIFIER: SMALL (ALPHANUMERIC | '-' ALPHANUMERIC)* ;

// chapter 12.4 Value references
valuereference: IDENTIFIER ;

// chapter 12.5 Module references
modulereference: TYPEREFERENCE ;

// chapter 12.7 Empty
// EMPTY: ;

// chapter 12.8 Numbers
number:  ((ONE | NONZERO) (ZERO | ONE | NONZERO)*) | ZERO ;

// chapter 12.9 Real numbers
realnumber: number (FULL_STOP (ZERO | ONE | NONZERO)*)? ('e'|'E' HYPHEN_MINUS? number )?;

// chapter 12.10 XML Binary string
bSTRING: (ZERO | ONE)+ | APOSTROPHE (ZERO | ONE)+ APOSTROPHE 'B' ;

// chapter 12.11 XML Binary string
xMLBSTRING: ( ZERO | ONE )+ ;

// chapter 12.12 Hexadecimal string
hSTRING: (ZERO | ONE | NONZERO | HEX_CAPITAL)+ | APOSTROPHE (ZERO | ONE | NONZERO | HEX_CAPITAL)+ APOSTROPHE 'H' ;

// chapter 12.13 XML hexadecimal string item
xMLHSTRING: (ZERO | ONE | NONZERO | HEX_CAPITAL | HEX_SMALL)+ ;

// chapter 12.14 Character strings
// TODO: extend further according to ISO/IEC 8824
CSTRINGCHAR: ~[\"] ;
CSTRING: ('"' CSTRINGCHAR+ '"')+;

// chapter 12.15 XML character string item
XMLCHARACTER: [\u0009\u0010\u0013\u0020-\uD7FF\uE000-\uFFFD\u010000-\u10FFFF] ;
xMLCHARCODES: '&#' number* ';' ;
xMLCHARHEXCODES: '&#x' (ZERO | ONE | NONZERO | HEX_CAPITAL | HEX_SMALL)* ';' ;
XMLCHARAMPCODES: '&amp;' | '&lt;' | '&gt;' ;
XMLCHARXMLCODES
	: '<nul/>' | '<soh/>' | '<stx/>' | '<etx/>' | '<eot/>' | '<enq/>' | '<ack/>' | '<bel/>' | '<bs/>'
	| '<vt/>' | '<ff/>' | '<so/>' | '<si/>' | '<dle/>' | '<dc1/>' | '<dc2/>' | '<dc3/>' | '<dc4/>' | '<nak/>'
	| '<syn/>' | '<etb/>' | '<can/>' | '<em/>' | '<sub/>' | '<esc/>' | '<is4/>' | '<is3/>' | '<is2/>' | '<is1/>' ;

xMLCSTRING: (XMLCHARACTER | xMLCHARCODES | xMLCHARHEXCODES | XMLCHARAMPCODES | XMLCHARXMLCODES)+;

// chapter 12.16 Simple string item

SIMPLESTRING: '"' [\u0032-\u007E]+ '"' ;

// chapter 12.17 Time string item
// TSTRINGCHARACTER: [0-9+-:.,/CDHMRPSTWYZ] ;

tSTRING
	: '"' ( ZERO | ONE | NONZERO | PLUS | HYPHEN_MINUS | COLON | FULL_STOP | COMMA | SOLIDUS | HEX_CAPITAL | NONHEX_CAPITAL )+ '"' ;

// chapter 12.18 XML Time string item
xMLTSTRING: ( ZERO | ONE | NONZERO | PLUS | HYPHEN_MINUS | COLON | FULL_STOP | COMMA | SOLIDUS | HEX_CAPITAL | NONHEX_CAPITAL )+ ;

// chapter 12.19 property and settings name lexical item
PSNAME: (HEX_CAPITAL | NONHEX_CAPITAL) (ALPHANUMERIC | '-' ALPHANUMERIC)* ;

// chapter 12.25 encoding references
ENCODINGREFERENCE: (HEX_CAPITAL | NONHEX_CAPITAL) (ALPHANUMERIC | '-' ALPHANUMERIC)* ;

// chapter 12.26 Integer-valued Unicode labels ;
iNTEGERUNICODELABEL: number ;

// chapter 12.27 Non-integer Unicode labels ;
fragment UNICODENONINTEGER
	: [-._~0-9A-Za-z]
	| [\x000000A0-\x0000DFFE]
	| [\x0000F900-\x0000FDCF]
	| [\x0000FDF0-\x0000FFEF]
	| [\x000000A0-\x0000DFFE]
	| [\x0000F900-\x0000FDCF]
	| [\x0000FDF0-\x0000FFEF]
	| [\x00010000-\x0001FFFD]
	| [\x00020000-\x0002FFFD]
	| [\x00030000-\x0003FFFD]
	| [\x00040000-\x0004FFFD]
	| [\x00050000-\x0005FFFD]
	| [\x00060000-\x0006FFFD]
	| [\x00070000-\x0007FFFD]
	| [\x00080000-\x0008FFFD]
	| [\x00090000-\x0009FFFD]
	| [\x000A0000-\x000AFFFD]
	| [\x000B0000-\x000BFFFD]
	| [\x000C0000-\x000CFFFD]
	| [\x000D0000-\x000DFFFD]
	| [\x000E1000-\x000EFFFD] ;

NONINTEGERUNICODELABEL: UNICODENONINTEGER ;

// chapter 12.36 XML tag names for ASN.1 types
XMLASN1TYPENAME
	: 'BIT_STRING' | 'BOOLEAN' | 'CHOICE' | 'DATE'
	| 'DATE_TIME' | 'DURATION' | 'SEQUENCE' | 'ENUMERATED'
	| 'INTEGER' | 'OID_IRI' | 'NULL' | 'OCTET_STRING'
	| 'REAL' | 'RELATIVE_OID_IRI' | 'RELATIVE_OID' | 'SEQUENCE_OF'
	| 'SET' | 'SET_OF' | 'TIME' | 'TIME_OF_DAY' ;

// chapter 12.37 Single character
// SINLE_CHAR
//	: '{' | '}' | '<' | '>' | ',' | '.' | '/' | '(' | ')' | '[' | ']'
//	| '-' | ':' | '=' | '"' | '\'' | ' ' | ';' | '@' | '|' | '!' | '^' ;

objectclassreference: TYPEREFERENCE ;

objectreference: valuereference ;

objectsetreference: TYPEREFERENCE ;

typefieldreference: '&' TYPEREFERENCE ;

valuefieldreference: '&' valuereference ;

valuesetfieldreference: '&' TYPEREFERENCE ;

objectfieldreference: '&' objectreference ;

objectsetfieldreference: '&' objectsetreference ;

WORD
	: 'ABSENT' | 'ENCODED' | 'ABSTRACT-SYNTAX' | 'ENCODING-CONTROL' | 'ISO646String'
	| 'ALL' | 'MAX' | 'SETTINGS' | 'APPLICATION' | 'MIN' | 'SIZE'
	| 'AUTOMATIC' | 'EXCEPT' | 'STRING' | 'BEGIN' | 'EXPLICIT' | 'NOT-A-NUMBER' | 'SYNTAX'
	| 'EXPORTS' | 'T61String' | 'BMPString' | 'EXTENSIBILITY' | 'NumericString' | 'TAGS'
	| 'TeletexString' | 'BY' | 'ObjectDescriptor' | 'FROM' | 'GeneralizedTime' | 'OF'
	| 'CLASS' | 'GeneralString' | 'OID-IRI' | 'TYPE-IDENTIFIER' | 'COMPONENT' | 'GraphicString' | 'OPTIONAL'
	| 'COMPONENTS' | 'IA5String' | 'PATTERN' | 'UNIQUE' | 'CONSTRAINED' | 'IDENTIFIER' | 'PDV' | 'UNIVERSAL'
	| 'CONTAINING' | 'IMPLICIT' | 'UniversalString' | 'IMPLIED' | 'PRESENT' | 'UTCTime'
	| 'IMPORTS' | 'PrintableString' | 'UTF8String' | 'DEFAULT' | 'INCLUDES' | 'PRIVATE' | 'VideotexString'
	| 'DEFINITIONS' | 'VisibleString' | 'INSTRUCTIONS' | 'WITH' | 'RELATIVE-OID-IRI' ;

