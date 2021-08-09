unit jni.Io;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.Java.Security,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  JFilterInputStream = interface;//java.io.FilterInputStream
  JBufferedInputStream = interface;//java.io.BufferedInputStream
  JBufferedOutputStream = interface;//java.io.BufferedOutputStream
  JBufferedReader = interface;//java.io.BufferedReader
  JBufferedWriter = interface;//java.io.BufferedWriter
  JCharArrayReader = interface;//java.io.CharArrayReader
  JCharArrayWriter = interface;//java.io.CharArrayWriter
  JCharConversionException = interface;//java.io.CharConversionException
  JConsole = interface;//java.io.Console
  JDataInput = interface;//java.io.DataInput
  JDataInputStream = interface;//java.io.DataInputStream
  JDataOutput = interface;//java.io.DataOutput
  JDataOutputStream = interface;//java.io.DataOutputStream
  JEOFException = interface;//java.io.EOFException
  JExternalizable = interface;//java.io.Externalizable
  JFileNotFoundException = interface;//java.io.FileNotFoundException
  JFilePermission = interface;//java.io.FilePermission
  JInputStreamReader = interface;//java.io.InputStreamReader
  JFileReader = interface;//java.io.FileReader
  JOutputStreamWriter = interface;//java.io.OutputStreamWriter
  JFileWriter = interface;//java.io.FileWriter
  JFilterReader = interface;//java.io.FilterReader
  JFilterWriter = interface;//java.io.FilterWriter
  JFlushable = interface;//java.io.Flushable
  JError = interface;//java.lang.Error
  JIOError = interface;//java.io.IOError
  JInterruptedIOException = interface;//java.io.InterruptedIOException
  JObjectStreamException = interface;//java.io.ObjectStreamException
  JInvalidClassException = interface;//java.io.InvalidClassException
  JInvalidObjectException = interface;//java.io.InvalidObjectException
  JLineNumberInputStream = interface;//java.io.LineNumberInputStream
  JLineNumberReader = interface;//java.io.LineNumberReader
  JNotActiveException = interface;//java.io.NotActiveException
  JNotSerializableException = interface;//java.io.NotSerializableException
  JObjectInput = interface;//java.io.ObjectInput
  JObjectInputStream = interface;//java.io.ObjectInputStream
  JObjectInputStream_GetField = interface;//java.io.ObjectInputStream$GetField
  JObjectInputValidation = interface;//java.io.ObjectInputValidation
  JObjectOutput = interface;//java.io.ObjectOutput
  JObjectOutputStream = interface;//java.io.ObjectOutputStream
  JObjectOutputStream_PutField = interface;//java.io.ObjectOutputStream$PutField
  Jio_ObjectStreamClass = interface;//java.io.ObjectStreamClass
  JObjectStreamConstants = interface;//java.io.ObjectStreamConstants
  JObjectStreamField = interface;//java.io.ObjectStreamField
  JOptionalDataException = interface;//java.io.OptionalDataException
  JPipedInputStream = interface;//java.io.PipedInputStream
  JPipedOutputStream = interface;//java.io.PipedOutputStream
  JPipedReader = interface;//java.io.PipedReader
  JPipedWriter = interface;//java.io.PipedWriter
  JPushbackInputStream = interface;//java.io.PushbackInputStream
  JPushbackReader = interface;//java.io.PushbackReader
  JSequenceInputStream = interface;//java.io.SequenceInputStream
  JBasicPermission = interface;//java.security.BasicPermission
  JSerializablePermission = interface;//java.io.SerializablePermission
  JStreamCorruptedException = interface;//java.io.StreamCorruptedException
  JStreamTokenizer = interface;//java.io.StreamTokenizer
  JStringBufferInputStream = interface;//java.io.StringBufferInputStream
  JStringReader = interface;//java.io.StringReader
  JStringWriter = interface;//java.io.StringWriter
  JSyncFailedException = interface;//java.io.SyncFailedException
  JUTFDataFormatException = interface;//java.io.UTFDataFormatException
  JUnsupportedEncodingException = interface;//java.io.UnsupportedEncodingException
  JWriteAbortedException = interface;//java.io.WriteAbortedException

// ===== Interface declarations =====

  JFilterInputStreamClass = interface(JInputStreamClass)
    ['{F86EBD21-681A-43DA-BDF9-A28ACD4A7EE5}']
    {class} function available: Integer; cdecl;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} procedure mark(readlimit: Integer); cdecl;//Deprecated
    {class} procedure reset; cdecl;//Deprecated
    {class} function skip(byteCount: Int64): Int64; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/FilterInputStream')]
  JFilterInputStream = interface(JInputStream)
    ['{9F9FA98A-C38C-4DDE-9600-073E9DA3BA85}']
    function markSupported: Boolean; cdecl;//Deprecated
    function read: Integer; cdecl; overload;//Deprecated
    function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
  end;
  TJFilterInputStream = class(TJavaGenericImport<JFilterInputStreamClass, JFilterInputStream>) end;

  JBufferedInputStreamClass = interface(JFilterInputStreamClass)
    ['{46CAE4C7-AEEB-4593-9ADA-27D353C50B4B}']
    {class} function init(in_: JInputStream): JBufferedInputStream; cdecl; overload;//Deprecated
    {class} function init(in_: JInputStream; size: Integer): JBufferedInputStream; cdecl; overload;//Deprecated
    {class} procedure mark(readlimit: Integer); cdecl;
    {class} function markSupported: Boolean; cdecl;
    {class} function read: Integer; cdecl; overload;
    {class} function skip(byteCount: Int64): Int64; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/BufferedInputStream')]
  JBufferedInputStream = interface(JFilterInputStream)
    ['{CF872199-D2D0-4691-AD94-ABE0EACFDC46}']
    function available: Integer; cdecl;
    procedure close; cdecl;
    function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
    procedure reset; cdecl;//Deprecated
  end;
  TJBufferedInputStream = class(TJavaGenericImport<JBufferedInputStreamClass, JBufferedInputStream>) end;

  JBufferedOutputStreamClass = interface(JFilterOutputStreamClass)
    ['{75916F42-2A8F-4522-A6AF-183DF94E8086}']
    {class} function init(out_: JOutputStream): JBufferedOutputStream; cdecl; overload;//Deprecated
    {class} function init(out_: JOutputStream; size: Integer): JBufferedOutputStream; cdecl; overload;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} procedure write(buffer: TJavaArray<Byte>; offset: Integer; length: Integer); cdecl; overload;//Deprecated
    {class} procedure write(oneByte: Integer); cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/BufferedOutputStream')]
  JBufferedOutputStream = interface(JFilterOutputStream)
    ['{DBCD31AF-A47F-4202-891B-3938A0BBCCCE}']
    procedure close; cdecl;//Deprecated
  end;
  TJBufferedOutputStream = class(TJavaGenericImport<JBufferedOutputStreamClass, JBufferedOutputStream>) end;

  JBufferedReaderClass = interface(JReaderClass)
    ['{ED860F80-BCB7-4BC0-977F-95DE9CACE248}']
    {class} function init(in_: JReader): JBufferedReader; cdecl; overload;//Deprecated
    {class} function init(in_: JReader; size: Integer): JBufferedReader; cdecl; overload;//Deprecated
    {class} procedure mark(markLimit: Integer); cdecl;
    {class} function markSupported: Boolean; cdecl;
    {class} function read: Integer; cdecl; overload;
    {class} procedure reset; cdecl;
    {class} function skip(charCount: Int64): Int64; cdecl;
  end;

  [JavaSignature('java/io/BufferedReader')]
  JBufferedReader = interface(JReader)
    ['{81A25906-BC48-4F21-B1D4-5FDA81218C63}']
    procedure close; cdecl;
    function read(buffer: TJavaArray<Char>; offset: Integer; length: Integer): Integer; cdecl; overload;
    function readLine: JString; cdecl;
    function ready: Boolean; cdecl;
  end;
  TJBufferedReader = class(TJavaGenericImport<JBufferedReaderClass, JBufferedReader>) end;

  JBufferedWriterClass = interface(JWriterClass)
    ['{6DE0060B-5766-4A4F-9808-CD41A030B39D}']
    {class} function init(out_: JWriter): JBufferedWriter; cdecl; overload;//Deprecated
    {class} function init(out_: JWriter; size: Integer): JBufferedWriter; cdecl; overload;//Deprecated
    {class} procedure flush; cdecl;
    {class} procedure newLine; cdecl;
    {class} procedure write(buffer: TJavaArray<Char>; offset: Integer; count: Integer); cdecl; overload;
  end;

  [JavaSignature('java/io/BufferedWriter')]
  JBufferedWriter = interface(JWriter)
    ['{09584D87-0061-4D72-AE7B-5FE1AC0E215F}']
    procedure close; cdecl;
    procedure write(oneChar: Integer); cdecl; overload;
    procedure write(str: JString; offset: Integer; count: Integer); cdecl; overload;
  end;
  TJBufferedWriter = class(TJavaGenericImport<JBufferedWriterClass, JBufferedWriter>) end;

  JCharArrayReaderClass = interface(JReaderClass)
    ['{7632C9F8-E987-41BA-97F6-C211694B6D98}']
    {class} function init(buf: TJavaArray<Char>): JCharArrayReader; cdecl; overload;//Deprecated
    {class} function init(buf: TJavaArray<Char>; offset: Integer; length: Integer): JCharArrayReader; cdecl; overload;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;//Deprecated
    {class} function ready: Boolean; cdecl;//Deprecated
    {class} procedure reset; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/CharArrayReader')]
  JCharArrayReader = interface(JReader)
    ['{85CF5343-255A-4B12-8518-CDF061813EAB}']
    procedure mark(readLimit: Integer); cdecl;//Deprecated
    function markSupported: Boolean; cdecl;//Deprecated
    function read: Integer; cdecl; overload;//Deprecated
    function skip(charCount: Int64): Int64; cdecl;//Deprecated
  end;
  TJCharArrayReader = class(TJavaGenericImport<JCharArrayReaderClass, JCharArrayReader>) end;

  JCharArrayWriterClass = interface(JWriterClass)
    ['{8B1E0194-BAC9-436D-B6AD-961B64CFE479}']
    {class} function init: JCharArrayWriter; cdecl; overload;//Deprecated
    {class} function init(initialSize: Integer): JCharArrayWriter; cdecl; overload;//Deprecated
    {class} function append(csq: JCharSequence; start: Integer; end_: Integer): JCharArrayWriter; cdecl; overload;
    {class} procedure close; cdecl;
    {class} procedure flush; cdecl;
    {class} function toString: JString; cdecl;
    {class} procedure write(buffer: TJavaArray<Char>; offset: Integer; len: Integer); cdecl; overload;
    {class} procedure write(oneChar: Integer); cdecl; overload;
  end;

  [JavaSignature('java/io/CharArrayWriter')]
  JCharArrayWriter = interface(JWriter)
    ['{3C41D322-7D61-4787-8B22-78BF793453BF}']
    function append(c: Char): JCharArrayWriter; cdecl; overload;
    function append(csq: JCharSequence): JCharArrayWriter; cdecl; overload;
    procedure reset; cdecl;
    function size: Integer; cdecl;
    function toCharArray: TJavaArray<Char>; cdecl;
    procedure write(str: JString; offset: Integer; count: Integer); cdecl; overload;//Deprecated
    procedure writeTo(out_: JWriter); cdecl;//Deprecated
  end;
  TJCharArrayWriter = class(TJavaGenericImport<JCharArrayWriterClass, JCharArrayWriter>) end;

  JCharConversionExceptionClass = interface(JIOExceptionClass)
    ['{5604294D-CAA1-40A1-A668-FB3A0400F832}']
    {class} function init: JCharConversionException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JCharConversionException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/CharConversionException')]
  JCharConversionException = interface(JIOException)
    ['{882BF83F-517D-4EF9-BFDE-D02F881AE087}']
  end;
  TJCharConversionException = class(TJavaGenericImport<JCharConversionExceptionClass, JCharConversionException>) end;

  JConsoleClass = interface(JObjectClass)
    ['{37B17E41-C395-41DD-8B62-3D5C7EAA2F12}']
    {class} function readLine: JString; cdecl; overload;
    {class} function writer: JPrintWriter; cdecl;
  end;

  [JavaSignature('java/io/Console')]
  JConsole = interface(JObject)
    ['{6143C144-E6C4-430A-8904-5B3B66E9940D}']
    procedure flush; cdecl;
    function readPassword: TJavaArray<Char>; cdecl; overload;
    function reader: JReader; cdecl;
  end;
  TJConsole = class(TJavaGenericImport<JConsoleClass, JConsole>) end;

  JDataInputClass = interface(IJavaClass)
    ['{DE6CE794-6EE2-4768-AA83-2B4831F9E318}']
    {class} function readDouble: Double; cdecl;
    {class} function readFloat: Single; cdecl;
    {class} function readLine: JString; cdecl;//Deprecated
    {class} function readLong: Int64; cdecl;//Deprecated
    {class} function readShort: SmallInt; cdecl;//Deprecated
    {class} function skipBytes(count: Integer): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/DataInput')]
  JDataInput = interface(IJavaInstance)
    ['{531D4DB8-9C0C-435C-938F-91007288CE8D}']
    function readBoolean: Boolean; cdecl;
    function readByte: Byte; cdecl;
    function readChar: Char; cdecl;
    procedure readFully(dst: TJavaArray<Byte>); cdecl; overload;//Deprecated
    procedure readFully(dst: TJavaArray<Byte>; offset: Integer; byteCount: Integer); cdecl; overload;//Deprecated
    function readInt: Integer; cdecl;//Deprecated
    function readUTF: JString; cdecl;//Deprecated
    function readUnsignedByte: Integer; cdecl;//Deprecated
    function readUnsignedShort: Integer; cdecl;//Deprecated
  end;
  TJDataInput = class(TJavaGenericImport<JDataInputClass, JDataInput>) end;

  JDataInputStreamClass = interface(JFilterInputStreamClass)
    ['{63A3E0C6-D830-4711-8A5B-563F95DEDBD5}']
    {class} function init(in_: JInputStream): JDataInputStream; cdecl;//Deprecated
    {class} function read(buffer: TJavaArray<Byte>): Integer; cdecl; overload;
    {class} function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;
    {class} function readBoolean: Boolean; cdecl;
    {class} function readFloat: Single; cdecl;
    {class} procedure readFully(dst: TJavaArray<Byte>); cdecl; overload;
    {class} procedure readFully(dst: TJavaArray<Byte>; offset: Integer; byteCount: Integer); cdecl; overload;
    {class} function readShort: SmallInt; cdecl;
    {class} function readUTF: JString; cdecl; overload;
    {class} function readUTF(in_: JDataInput): JString; cdecl; overload;
  end;

  [JavaSignature('java/io/DataInputStream')]
  JDataInputStream = interface(JFilterInputStream)
    ['{76AFD071-40B2-49D6-9C88-FBDE64374D14}']
    function readByte: Byte; cdecl;
    function readChar: Char; cdecl;
    function readDouble: Double; cdecl;
    function readInt: Integer; cdecl;
    function readLine: JString; cdecl;//Deprecated
    function readLong: Int64; cdecl;
    function readUnsignedByte: Integer; cdecl;//Deprecated
    function readUnsignedShort: Integer; cdecl;//Deprecated
    function skipBytes(count: Integer): Integer; cdecl;//Deprecated
  end;
  TJDataInputStream = class(TJavaGenericImport<JDataInputStreamClass, JDataInputStream>) end;

  JDataOutputClass = interface(IJavaClass)
    ['{04F50445-AEB8-4060-A0E5-D9959F6B3922}']
    {class} procedure write(buffer: TJavaArray<Byte>); cdecl; overload;
    {class} procedure write(buffer: TJavaArray<Byte>; offset: Integer; count: Integer); cdecl; overload;
    {class} procedure write(oneByte: Integer); cdecl; overload;
    {class} procedure writeChar(val: Integer); cdecl;
    {class} procedure writeChars(str: JString); cdecl;
    {class} procedure writeDouble(val: Double); cdecl;
    {class} procedure writeShort(val: Integer); cdecl;
    {class} procedure writeUTF(str: JString); cdecl;
  end;

  [JavaSignature('java/io/DataOutput')]
  JDataOutput = interface(IJavaInstance)
    ['{1DF61D80-C6B0-46D8-9CA6-29AEB5CBE013}']
    procedure writeBoolean(val: Boolean); cdecl;
    procedure writeByte(val: Integer); cdecl;
    procedure writeBytes(str: JString); cdecl;
    procedure writeFloat(val: Single); cdecl;
    procedure writeInt(val: Integer); cdecl;
    procedure writeLong(val: Int64); cdecl;
  end;
  TJDataOutput = class(TJavaGenericImport<JDataOutputClass, JDataOutput>) end;

  JDataOutputStreamClass = interface(JFilterOutputStreamClass)
    ['{BBF8F504-2C62-424E-80F5-C3806D75B104}']
    {class} function init(out_: JOutputStream): JDataOutputStream; cdecl;//Deprecated
    {class} function size: Integer; cdecl;
    {class} procedure write(buffer: TJavaArray<Byte>; offset: Integer; count: Integer); cdecl; overload;
    {class} procedure writeBytes(str: JString); cdecl;
    {class} procedure writeChar(val: Integer); cdecl;
    {class} procedure writeChars(str: JString); cdecl;
    {class} procedure writeLong(val: Int64); cdecl;
    {class} procedure writeShort(val: Integer); cdecl;
    {class} procedure writeUTF(str: JString); cdecl;
  end;

  [JavaSignature('java/io/DataOutputStream')]
  JDataOutputStream = interface(JFilterOutputStream)
    ['{3267CB91-F587-402B-AE7B-61F726D56A02}']
    procedure flush; cdecl;
    procedure write(oneByte: Integer); cdecl; overload;
    procedure writeBoolean(val: Boolean); cdecl;
    procedure writeByte(val: Integer); cdecl;
    procedure writeDouble(val: Double); cdecl;
    procedure writeFloat(val: Single); cdecl;
    procedure writeInt(val: Integer); cdecl;
  end;
  TJDataOutputStream = class(TJavaGenericImport<JDataOutputStreamClass, JDataOutputStream>) end;

  JEOFExceptionClass = interface(JIOExceptionClass)
    ['{30FDB35E-7ED8-446E-8F45-6325EFF35C84}']
    {class} function init: JEOFException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JEOFException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/EOFException')]
  JEOFException = interface(JIOException)
    ['{44457AA6-598C-41C9-B75C-6D9BBEFDE050}']
  end;
  TJEOFException = class(TJavaGenericImport<JEOFExceptionClass, JEOFException>) end;

  JExternalizableClass = interface(JSerializableClass)
    ['{79149A82-1131-44E0-977B-FC521C9595D2}']
    {class} procedure readExternal(input: JObjectInput); cdecl;
  end;

  [JavaSignature('java/io/Externalizable')]
  JExternalizable = interface(JSerializable)
    ['{D1EFB2F1-EE0F-43BF-B85D-5B1AFBDEC065}']
    procedure writeExternal(output: JObjectOutput); cdecl;
  end;
  TJExternalizable = class(TJavaGenericImport<JExternalizableClass, JExternalizable>) end;

  JFileNotFoundExceptionClass = interface(JIOExceptionClass)
    ['{E56F21B7-A7A4-4B24-82A2-566A43858C5E}']
    {class} function init: JFileNotFoundException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JFileNotFoundException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/FileNotFoundException')]
  JFileNotFoundException = interface(JIOException)
    ['{2BC17F8C-D1D9-44FD-98B8-138A274A4A7C}']
  end;
  TJFileNotFoundException = class(TJavaGenericImport<JFileNotFoundExceptionClass, JFileNotFoundException>) end;

  JFilePermissionClass = interface(JPermissionClass)
    ['{511C233E-D370-45CB-B536-F38F2CEC47C6}']
    {class} function init(path: JString; actions: JString): JFilePermission; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/FilePermission')]
  JFilePermission = interface(JPermission)
    ['{24DECD6D-AFFB-4E3A-BEB6-01C9F561E2E3}']
    function getActions: JString; cdecl;//Deprecated
    function implies(permission: JPermission): Boolean; cdecl;//Deprecated
  end;
  TJFilePermission = class(TJavaGenericImport<JFilePermissionClass, JFilePermission>) end;

  JInputStreamReaderClass = interface(JReaderClass)
    ['{14494B9F-6C7C-4680-910F-5FB8105F9D79}']
    {class} function init(in_: JInputStream): JInputStreamReader; cdecl; overload;//Deprecated
    {class} function init(in_: JInputStream; charsetName: JString): JInputStreamReader; cdecl; overload;//Deprecated
    {class} function init(in_: JInputStream; dec: JCharsetDecoder): JInputStreamReader; cdecl; overload;//Deprecated
    {class} function init(in_: JInputStream; charset: JCharset): JInputStreamReader; cdecl; overload;//Deprecated
    {class} function getEncoding: JString; cdecl;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/InputStreamReader')]
  JInputStreamReader = interface(JReader)
    ['{65D0B3D6-0E50-4A18-B874-56D3D773BB9D}']
    procedure close; cdecl;//Deprecated
    function ready: Boolean; cdecl;
  end;
  TJInputStreamReader = class(TJavaGenericImport<JInputStreamReaderClass, JInputStreamReader>) end;

  JFileReaderClass = interface(JInputStreamReaderClass)
    ['{68D195FE-E80F-4169-B962-CF14B2638F4E}']
    {class} function init(file_: JFile): JFileReader; cdecl; overload;//Deprecated
    {class} function init(fd: JFileDescriptor): JFileReader; cdecl; overload;//Deprecated
    {class} function init(filename: JString): JFileReader; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/FileReader')]
  JFileReader = interface(JInputStreamReader)
    ['{0A59379E-6DDC-427B-811C-E4F6264A4C75}']
  end;
  TJFileReader = class(TJavaGenericImport<JFileReaderClass, JFileReader>) end;

  JOutputStreamWriterClass = interface(JWriterClass)
    ['{489A3707-CB2E-4DA2-8F6C-EE2A8087F8AE}']
    {class} function init(out_: JOutputStream): JOutputStreamWriter; cdecl; overload;//Deprecated
    {class} function init(out_: JOutputStream; charsetName: JString): JOutputStreamWriter; cdecl; overload;//Deprecated
    {class} function init(out_: JOutputStream; cs: JCharset): JOutputStreamWriter; cdecl; overload;//Deprecated
    {class} function init(out_: JOutputStream; charsetEncoder: JCharsetEncoder): JOutputStreamWriter; cdecl; overload;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} procedure write(str: JString; offset: Integer; count: Integer); cdecl; overload;
  end;

  [JavaSignature('java/io/OutputStreamWriter')]
  JOutputStreamWriter = interface(JWriter)
    ['{7753545A-959E-45B1-A299-C692D8A93482}']
    function getEncoding: JString; cdecl;
    procedure write(buffer: TJavaArray<Char>; offset: Integer; count: Integer); cdecl; overload;
    procedure write(oneChar: Integer); cdecl; overload;
  end;
  TJOutputStreamWriter = class(TJavaGenericImport<JOutputStreamWriterClass, JOutputStreamWriter>) end;

  JFileWriterClass = interface(JOutputStreamWriterClass)
    ['{C760BC7C-BDCC-4CBF-9C81-4410E7E09B02}']
    {class} function init(file_: JFile): JFileWriter; cdecl; overload;//Deprecated
    {class} function init(file_: JFile; append: Boolean): JFileWriter; cdecl; overload;//Deprecated
    {class} function init(fd: JFileDescriptor): JFileWriter; cdecl; overload;//Deprecated
    {class} function init(filename: JString): JFileWriter; cdecl; overload;//Deprecated
    {class} function init(filename: JString; append: Boolean): JFileWriter; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/FileWriter')]
  JFileWriter = interface(JOutputStreamWriter)
    ['{4F4388DD-8CC5-4FD0-99AA-EF2F3E645A92}']
  end;
  TJFileWriter = class(TJavaGenericImport<JFileWriterClass, JFileWriter>) end;

  JFilterReaderClass = interface(JReaderClass)
    ['{E8DE29CD-5A5B-4776-ADB5-D59F31B78180}']
    {class} function markSupported: Boolean; cdecl;
    {class} function read: Integer; cdecl; overload;
    {class} function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;
  end;

  [JavaSignature('java/io/FilterReader')]
  JFilterReader = interface(JReader)
    ['{97A99005-83F2-49B4-B4CB-92C6DDFAFDEC}']
    procedure close; cdecl;
    procedure mark(readlimit: Integer); cdecl;
    function ready: Boolean; cdecl;
    procedure reset; cdecl;
    function skip(charCount: Int64): Int64; cdecl;
  end;
  TJFilterReader = class(TJavaGenericImport<JFilterReaderClass, JFilterReader>) end;

  JFilterWriterClass = interface(JWriterClass)
    ['{CE00E37B-E32E-4AB9-9F82-C3B1CCD3F1D3}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} procedure write(buffer: TJavaArray<Char>; offset: Integer; count: Integer); cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/FilterWriter')]
  JFilterWriter = interface(JWriter)
    ['{622EB85F-2870-4964-A346-2C3B7A057C3F}']
    procedure write(oneChar: Integer); cdecl; overload;//Deprecated
    procedure write(str: JString; offset: Integer; count: Integer); cdecl; overload;//Deprecated
  end;
  TJFilterWriter = class(TJavaGenericImport<JFilterWriterClass, JFilterWriter>) end;

  JFlushableClass = interface(IJavaClass)
    ['{7AD63B53-BA6A-4290-8D7F-3AB63B590BB4}']
    {class} procedure flush; cdecl;
  end;

  [JavaSignature('java/io/Flushable')]
  JFlushable = interface(IJavaInstance)
    ['{CB7F1178-A6F8-4DA6-8D82-759E8334027D}']
  end;
  TJFlushable = class(TJavaGenericImport<JFlushableClass, JFlushable>) end;

  JErrorClass = interface(JThrowableClass)
    ['{B5506987-691F-46FE-A537-0ED9F1DA894C}']
    {class} function init: JError; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JError; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString; throwable: JThrowable): JError; cdecl; overload;//Deprecated
    {class} function init(throwable: JThrowable): JError; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/lang/Error')]
  JError = interface(JThrowable)
    ['{0C7634F3-B4AD-491A-817D-3E449D4FA639}']
  end;
  TJError = class(TJavaGenericImport<JErrorClass, JError>) end;

  JIOErrorClass = interface(JErrorClass)
    ['{F3CBB400-8159-4372-B42F-4DDF607C0981}']
    {class} function init(cause: JThrowable): JIOError; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/IOError')]
  JIOError = interface(JError)
    ['{01484FDD-7376-41A6-B278-5D242550AAE9}']
  end;
  TJIOError = class(TJavaGenericImport<JIOErrorClass, JIOError>) end;

  JInterruptedIOExceptionClass = interface(JIOExceptionClass)
    ['{A80F2707-931E-46EB-982C-E73EFDB445E3}']
    {class} function init: JInterruptedIOException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JInterruptedIOException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/InterruptedIOException')]
  JInterruptedIOException = interface(JIOException)
    ['{835D617F-14E3-4073-8381-014FF4C9DF9B}']
    function _GetbytesTransferred: Integer; cdecl;
    property bytesTransferred: Integer read _GetbytesTransferred;
  end;
  TJInterruptedIOException = class(TJavaGenericImport<JInterruptedIOExceptionClass, JInterruptedIOException>) end;

  JObjectStreamExceptionClass = interface(JIOExceptionClass)
    ['{D3E87A56-365A-490B-A155-D6ADDFB13A42}']
  end;

  [JavaSignature('java/io/ObjectStreamException')]
  JObjectStreamException = interface(JIOException)
    ['{8697D941-526B-48C4-9929-CA328490A7D0}']
  end;
  TJObjectStreamException = class(TJavaGenericImport<JObjectStreamExceptionClass, JObjectStreamException>) end;

  JInvalidClassExceptionClass = interface(JObjectStreamExceptionClass)
    ['{9EE30BCA-F9F6-4BD6-A553-CC442CE067AC}']
    {class} function init(detailMessage: JString): JInvalidClassException; cdecl; overload;//Deprecated
    {class} function init(className: JString; detailMessage: JString): JInvalidClassException; cdecl; overload;//Deprecated
    {class} function getMessage: JString; cdecl;
  end;

  [JavaSignature('java/io/InvalidClassException')]
  JInvalidClassException = interface(JObjectStreamException)
    ['{DAB921C2-E82F-4322-8C5D-091EA5B66E3D}']
    function _Getclassname: JString; cdecl;
    procedure _Setclassname(Value: JString); cdecl;
    property classname: JString read _Getclassname write _Setclassname;
  end;
  TJInvalidClassException = class(TJavaGenericImport<JInvalidClassExceptionClass, JInvalidClassException>) end;

  JInvalidObjectExceptionClass = interface(JObjectStreamExceptionClass)
    ['{1AAC5FCA-5B7D-4D84-9C6B-3A64609B5ABA}']
    {class} function init(detailMessage: JString): JInvalidObjectException; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/InvalidObjectException')]
  JInvalidObjectException = interface(JObjectStreamException)
    ['{8D636ACC-F204-4428-B412-ADE9F10747BA}']
  end;
  TJInvalidObjectException = class(TJavaGenericImport<JInvalidObjectExceptionClass, JInvalidObjectException>) end;

  JLineNumberInputStreamClass = interface(JFilterInputStreamClass)
    ['{5572E846-5532-47AF-ADA2-F5DAE0BF4659}']
    {class} function init(in_: JInputStream): JLineNumberInputStream; cdecl;//Deprecated
    {class} procedure mark(readlimit: Integer); cdecl;
    {class} function read: Integer; cdecl; overload;
    {class} function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;
  end;

  [JavaSignature('java/io/LineNumberInputStream')]
  JLineNumberInputStream = interface(JFilterInputStream)
    ['{3F36E815-60EC-408F-934C-7E5F12692110}']
    function available: Integer; cdecl;
    function getLineNumber: Integer; cdecl;
    procedure reset; cdecl;
    procedure setLineNumber(lineNumber: Integer); cdecl;
    function skip(byteCount: Int64): Int64; cdecl;
  end;
  TJLineNumberInputStream = class(TJavaGenericImport<JLineNumberInputStreamClass, JLineNumberInputStream>) end;

  JLineNumberReaderClass = interface(JBufferedReaderClass)
    ['{846383DA-A980-45EC-A547-F6578308D770}']
    {class} function init(in_: JReader): JLineNumberReader; cdecl; overload;//Deprecated
    {class} function init(in_: JReader; size: Integer): JLineNumberReader; cdecl; overload;//Deprecated
    {class} function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;//Deprecated
    {class} function readLine: JString; cdecl;//Deprecated
    {class} procedure reset; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/LineNumberReader')]
  JLineNumberReader = interface(JBufferedReader)
    ['{33B9B619-DC9F-4F2A-BB65-DBFB9F880110}']
    function getLineNumber: Integer; cdecl;//Deprecated
    procedure mark(readlimit: Integer); cdecl;//Deprecated
    function read: Integer; cdecl; overload;//Deprecated
    procedure setLineNumber(lineNumber: Integer); cdecl;//Deprecated
    function skip(charCount: Int64): Int64; cdecl;//Deprecated
  end;
  TJLineNumberReader = class(TJavaGenericImport<JLineNumberReaderClass, JLineNumberReader>) end;

  JNotActiveExceptionClass = interface(JObjectStreamExceptionClass)
    ['{BB91AD48-9A09-4C25-A640-B57EBEE8CDF8}']
    {class} function init: JNotActiveException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JNotActiveException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/NotActiveException')]
  JNotActiveException = interface(JObjectStreamException)
    ['{3228B413-0DCD-46C9-8472-AF9EA5DAB678}']
  end;
  TJNotActiveException = class(TJavaGenericImport<JNotActiveExceptionClass, JNotActiveException>) end;

  JNotSerializableExceptionClass = interface(JObjectStreamExceptionClass)
    ['{77719B29-F636-441F-A0DA-77D4BE06D93B}']
    {class} function init: JNotSerializableException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JNotSerializableException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/NotSerializableException')]
  JNotSerializableException = interface(JObjectStreamException)
    ['{8BFC456F-131F-4006-87F1-6293CE18C4D8}']
  end;
  TJNotSerializableException = class(TJavaGenericImport<JNotSerializableExceptionClass, JNotSerializableException>) end;

  JObjectInputClass = interface(JAutoCloseableClass)
    ['{9E58C1BE-FA45-45F6-84CF-AFAE072DFC89}']
    {class} procedure close; cdecl;
    {class} function read: Integer; cdecl; overload;
    {class} function read(buffer: TJavaArray<Byte>): Integer; cdecl; overload;
  end;

  [JavaSignature('java/io/ObjectInput')]
  JObjectInput = interface(JAutoCloseable)
    ['{A2648BB0-9DB5-4AA7-B456-02EF21DEE60D}']
    function available: Integer; cdecl;
    function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
    function readObject: JObject; cdecl;//Deprecated
    function skip(byteCount: Int64): Int64; cdecl;//Deprecated
  end;
  TJObjectInput = class(TJavaGenericImport<JObjectInputClass, JObjectInput>) end;

  JObjectInputStreamClass = interface(JInputStreamClass)
    ['{443A1BEF-E21F-4012-A28B-4D7735136BD3}']
    {class} function init(input: JInputStream): JObjectInputStream; cdecl;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} procedure defaultReadObject; cdecl;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function readChar: Char; cdecl;
    {class} function readDouble: Double; cdecl;
    {class} function readFields: JObjectInputStream_GetField; cdecl;
    {class} function readInt: Integer; cdecl;
    {class} function readLine: JString; cdecl;//Deprecated
    {class} function readLong: Int64; cdecl;
    {class} function readUnshared: JObject; cdecl;
    {class} function readUnsignedByte: Integer; cdecl;
    {class} function readUnsignedShort: Integer; cdecl;
  end;

  [JavaSignature('java/io/ObjectInputStream')]
  JObjectInputStream = interface(JInputStream)
    ['{C1360ABB-AF58-4607-B43E-C1E1652E8FC2}']
    function available: Integer; cdecl;//Deprecated
    function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;
    function readBoolean: Boolean; cdecl;
    function readByte: Byte; cdecl;
    function readFloat: Single; cdecl;
    procedure readFully(dst: TJavaArray<Byte>); cdecl; overload;
    procedure readFully(dst: TJavaArray<Byte>; offset: Integer; byteCount: Integer); cdecl; overload;
    function readObject: JObject; cdecl;
    function readShort: SmallInt; cdecl;
    function readUTF: JString; cdecl;
    procedure registerValidation(object_: JObjectInputValidation; priority: Integer); cdecl;
    function skipBytes(length: Integer): Integer; cdecl;
  end;
  TJObjectInputStream = class(TJavaGenericImport<JObjectInputStreamClass, JObjectInputStream>) end;

  JObjectInputStream_GetFieldClass = interface(JObjectClass)
    ['{B2A17356-DC2C-4DD0-BA5B-926AB526F0F6}']
    {class} function init: JObjectInputStream_GetField; cdecl;//Deprecated
    {class} function defaulted(name: JString): Boolean; cdecl;
    {class} function &get(name: JString; defaultValue: Boolean): Boolean; cdecl; overload;
    {class} function &get(name: JString; defaultValue: Char): Char; cdecl; overload;
    {class} function &get(name: JString; defaultValue: Int64): Int64; cdecl; overload;//Deprecated
    {class} function &get(name: JString; defaultValue: Single): Single; cdecl; overload;//Deprecated
    {class} function &get(name: JString; defaultValue: Double): Double; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/ObjectInputStream$GetField')]
  JObjectInputStream_GetField = interface(JObject)
    ['{B087619B-FB6D-415B-BE57-9D4EBDC7E9B9}']
    function &get(name: JString; defaultValue: Byte): Byte; cdecl; overload;//Deprecated
    function &get(name: JString; defaultValue: SmallInt): SmallInt; cdecl; overload;//Deprecated
    function &get(name: JString; defaultValue: Integer): Integer; cdecl; overload;//Deprecated
    function &get(name: JString; defaultValue: JObject): JObject; cdecl; overload;//Deprecated
    function getObjectStreamClass: Jio_ObjectStreamClass; cdecl;//Deprecated
  end;
  TJObjectInputStream_GetField = class(TJavaGenericImport<JObjectInputStream_GetFieldClass, JObjectInputStream_GetField>) end;

  JObjectInputValidationClass = interface(IJavaClass)
    ['{62ED8408-3F77-4D14-869F-9B23C6114A7E}']
  end;

  [JavaSignature('java/io/ObjectInputValidation')]
  JObjectInputValidation = interface(IJavaInstance)
    ['{84E8CFA7-F64F-43D1-AC79-DAE8ADB43A56}']
    procedure validateObject; cdecl;//Deprecated
  end;
  TJObjectInputValidation = class(TJavaGenericImport<JObjectInputValidationClass, JObjectInputValidation>) end;

  JObjectOutputClass = interface(JAutoCloseableClass)
    ['{F4A98D44-0FB7-4173-B4CF-B078F3B70FD9}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure write(value: Integer); cdecl; overload;//Deprecated
    {class} procedure writeObject(obj: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('java/io/ObjectOutput')]
  JObjectOutput = interface(JAutoCloseable)
    ['{6161B3E5-4157-483D-A2E5-BBD585E248FB}']
    procedure flush; cdecl;//Deprecated
    procedure write(buffer: TJavaArray<Byte>); cdecl; overload;//Deprecated
    procedure write(buffer: TJavaArray<Byte>; offset: Integer; count: Integer); cdecl; overload;//Deprecated
  end;
  TJObjectOutput = class(TJavaGenericImport<JObjectOutputClass, JObjectOutput>) end;

  JObjectOutputStreamClass = interface(JOutputStreamClass)
    ['{D43CF30C-1E94-4D2E-A473-91EE54E41F07}']
    {class} function init(output: JOutputStream): JObjectOutputStream; cdecl;//Deprecated
    {class} procedure defaultWriteObject; cdecl;
    {class} procedure flush; cdecl;
    {class} function putFields: JObjectOutputStream_PutField; cdecl;
    {class} procedure write(value: Integer); cdecl; overload;
    {class} procedure writeBoolean(value: Boolean); cdecl;
    {class} procedure writeByte(value: Integer); cdecl;
    {class} procedure writeChars(value: JString); cdecl;
    {class} procedure writeDouble(value: Double); cdecl;
    {class} procedure writeFields; cdecl;
    {class} procedure writeObject(object_: JObject); cdecl;
    {class} procedure writeShort(value: Integer); cdecl;
    {class} procedure writeUTF(value: JString); cdecl;
  end;

  [JavaSignature('java/io/ObjectOutputStream')]
  JObjectOutputStream = interface(JOutputStream)
    ['{F4E441F8-B3D0-4463-A052-880F6644FB42}']
    procedure close; cdecl;
    procedure reset; cdecl;
    procedure useProtocolVersion(version: Integer); cdecl;
    procedure write(buffer: TJavaArray<Byte>; offset: Integer; length: Integer); cdecl; overload;
    procedure writeBytes(value: JString); cdecl;
    procedure writeChar(value: Integer); cdecl;
    procedure writeFloat(value: Single); cdecl;
    procedure writeInt(value: Integer); cdecl;
    procedure writeLong(value: Int64); cdecl;
    procedure writeUnshared(object_: JObject); cdecl;//Deprecated
  end;
  TJObjectOutputStream = class(TJavaGenericImport<JObjectOutputStreamClass, JObjectOutputStream>) end;

  JObjectOutputStream_PutFieldClass = interface(JObjectClass)
    ['{C280794E-D22D-40E4-854E-442CAC3B5350}']
    {class} function init: JObjectOutputStream_PutField; cdecl;//Deprecated
    {class} procedure put(name: JString; value: Boolean); cdecl; overload;
    {class} procedure put(name: JString; value: Byte); cdecl; overload;
    {class} procedure put(name: JString; value: Int64); cdecl; overload;//Deprecated
    {class} procedure put(name: JString; value: Single); cdecl; overload;//Deprecated
    {class} procedure put(name: JString; value: Double); cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/ObjectOutputStream$PutField')]
  JObjectOutputStream_PutField = interface(JObject)
    ['{0312E88F-1456-44D3-820F-C162F2F9CCAF}']
    procedure put(name: JString; value: Char); cdecl; overload;//Deprecated
    procedure put(name: JString; value: SmallInt); cdecl; overload;//Deprecated
    procedure put(name: JString; value: Integer); cdecl; overload;//Deprecated
    procedure put(name: JString; value: JObject); cdecl; overload;//Deprecated
    procedure write(out_: JObjectOutput); cdecl;//Deprecated
  end;
  TJObjectOutputStream_PutField = class(TJavaGenericImport<JObjectOutputStream_PutFieldClass, JObjectOutputStream_PutField>) end;

  Jio_ObjectStreamClassClass = interface(JObjectClass)
    ['{58DBAE53-DDE4-43B3-8112-035D4955F07D}']
    {class} function _GetNO_FIELDS: TJavaObjectArray<JObjectStreamField>; cdecl;
    {class} function getName: JString; cdecl;
    {class} function getSerialVersionUID: Int64; cdecl;
    {class} function lookup(cl: Jlang_Class): Jio_ObjectStreamClass; cdecl;
    {class} function lookupAny(cl: Jlang_Class): Jio_ObjectStreamClass; cdecl;
    {class} property NO_FIELDS: TJavaObjectArray<JObjectStreamField> read _GetNO_FIELDS;
  end;

  [JavaSignature('java/io/ObjectStreamClass')]
  Jio_ObjectStreamClass = interface(JObject)
    ['{13F49D75-C16F-47C6-91F9-B37C879D7FF2}']
    function forClass: Jlang_Class; cdecl;
    function getField(name: JString): JObjectStreamField; cdecl;
    function getFields: TJavaObjectArray<JObjectStreamField>; cdecl;
    function toString: JString; cdecl;
  end;
  TJio_ObjectStreamClass = class(TJavaGenericImport<Jio_ObjectStreamClassClass, Jio_ObjectStreamClass>) end;

  JObjectStreamConstantsClass = interface(IJavaClass)
    ['{5361A23C-10E9-478A-AAE1-EAC77EF37F09}']
    {class} function _GetPROTOCOL_VERSION_1: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_2: Integer; cdecl;
    {class} function _GetSC_BLOCK_DATA: Byte; cdecl;
    {class} function _GetSC_ENUM: Byte; cdecl;
    {class} function _GetSC_EXTERNALIZABLE: Byte; cdecl;
    {class} function _GetSC_SERIALIZABLE: Byte; cdecl;
    {class} function _GetSC_WRITE_METHOD: Byte; cdecl;
    {class} function _GetSTREAM_MAGIC: SmallInt; cdecl;
    {class} function _GetSTREAM_VERSION: SmallInt; cdecl;
    {class} function _GetSUBCLASS_IMPLEMENTATION_PERMISSION: JSerializablePermission; cdecl;
    {class} function _GetSUBSTITUTION_PERMISSION: JSerializablePermission; cdecl;
    {class} function _GetTC_ARRAY: Byte; cdecl;
    {class} function _GetTC_BASE: Byte; cdecl;
    {class} function _GetTC_BLOCKDATA: Byte; cdecl;
    {class} function _GetTC_BLOCKDATALONG: Byte; cdecl;
    {class} function _GetTC_CLASS: Byte; cdecl;
    {class} function _GetTC_CLASSDESC: Byte; cdecl;
    {class} function _GetTC_ENDBLOCKDATA: Byte; cdecl;
    {class} function _GetTC_ENUM: Byte; cdecl;
    {class} function _GetTC_EXCEPTION: Byte; cdecl;
    {class} function _GetTC_LONGSTRING: Byte; cdecl;
    {class} function _GetTC_MAX: Byte; cdecl;
    {class} function _GetTC_NULL: Byte; cdecl;
    {class} function _GetTC_OBJECT: Byte; cdecl;
    {class} function _GetTC_PROXYCLASSDESC: Byte; cdecl;
    {class} function _GetTC_REFERENCE: Byte; cdecl;
    {class} function _GetTC_RESET: Byte; cdecl;
    {class} function _GetTC_STRING: Byte; cdecl;
    {class} function _GetbaseWireHandle: Integer; cdecl;
    {class} property PROTOCOL_VERSION_1: Integer read _GetPROTOCOL_VERSION_1;
    {class} property PROTOCOL_VERSION_2: Integer read _GetPROTOCOL_VERSION_2;
    {class} property SC_BLOCK_DATA: Byte read _GetSC_BLOCK_DATA;
    {class} property SC_ENUM: Byte read _GetSC_ENUM;
    {class} property SC_EXTERNALIZABLE: Byte read _GetSC_EXTERNALIZABLE;
    {class} property SC_SERIALIZABLE: Byte read _GetSC_SERIALIZABLE;
    {class} property SC_WRITE_METHOD: Byte read _GetSC_WRITE_METHOD;
    {class} property STREAM_MAGIC: SmallInt read _GetSTREAM_MAGIC;
    {class} property STREAM_VERSION: SmallInt read _GetSTREAM_VERSION;
    {class} property SUBCLASS_IMPLEMENTATION_PERMISSION: JSerializablePermission read _GetSUBCLASS_IMPLEMENTATION_PERMISSION;
    {class} property SUBSTITUTION_PERMISSION: JSerializablePermission read _GetSUBSTITUTION_PERMISSION;
    {class} property TC_ARRAY: Byte read _GetTC_ARRAY;
    {class} property TC_BASE: Byte read _GetTC_BASE;
    {class} property TC_BLOCKDATA: Byte read _GetTC_BLOCKDATA;
    {class} property TC_BLOCKDATALONG: Byte read _GetTC_BLOCKDATALONG;
    {class} property TC_CLASS: Byte read _GetTC_CLASS;
    {class} property TC_CLASSDESC: Byte read _GetTC_CLASSDESC;
    {class} property TC_ENDBLOCKDATA: Byte read _GetTC_ENDBLOCKDATA;
    {class} property TC_ENUM: Byte read _GetTC_ENUM;
    {class} property TC_EXCEPTION: Byte read _GetTC_EXCEPTION;
    {class} property TC_LONGSTRING: Byte read _GetTC_LONGSTRING;
    {class} property TC_MAX: Byte read _GetTC_MAX;
    {class} property TC_NULL: Byte read _GetTC_NULL;
    {class} property TC_OBJECT: Byte read _GetTC_OBJECT;
    {class} property TC_PROXYCLASSDESC: Byte read _GetTC_PROXYCLASSDESC;
    {class} property TC_REFERENCE: Byte read _GetTC_REFERENCE;
    {class} property TC_RESET: Byte read _GetTC_RESET;
    {class} property TC_STRING: Byte read _GetTC_STRING;
    {class} property baseWireHandle: Integer read _GetbaseWireHandle;
  end;

  [JavaSignature('java/io/ObjectStreamConstants')]
  JObjectStreamConstants = interface(IJavaInstance)
    ['{386486E6-AEFD-4220-BD64-9B478922980E}']
  end;
  TJObjectStreamConstants = class(TJavaGenericImport<JObjectStreamConstantsClass, JObjectStreamConstants>) end;

  JObjectStreamFieldClass = interface(JObjectClass)
    ['{FE2D8AF0-961B-40C3-834D-38B8B5258EDA}']
    {class} function init(name: JString; cl: Jlang_Class): JObjectStreamField; cdecl; overload;//Deprecated
    {class} function init(name: JString; cl: Jlang_Class; unshared: Boolean): JObjectStreamField; cdecl; overload;//Deprecated
    {class} function getType: Jlang_Class; cdecl;
    {class} function getTypeCode: Char; cdecl;
    {class} function getTypeString: JString; cdecl;
  end;

  [JavaSignature('java/io/ObjectStreamField')]
  JObjectStreamField = interface(JObject)
    ['{A48306B9-9899-47BD-BE6B-4C5922811119}']
    function compareTo(o: JObject): Integer; cdecl;
    function getName: JString; cdecl;
    function getOffset: Integer; cdecl;
    function isPrimitive: Boolean; cdecl;
    function isUnshared: Boolean; cdecl;
    function toString: JString; cdecl;
  end;
  TJObjectStreamField = class(TJavaGenericImport<JObjectStreamFieldClass, JObjectStreamField>) end;

  JOptionalDataExceptionClass = interface(JObjectStreamExceptionClass)
    ['{0B362DC9-FF5E-4AD1-A291-08C4278BD76D}']
    {class} function _Geteof: Boolean; cdecl;
    {class} procedure _Seteof(Value: Boolean); cdecl;
    {class} function _Getlength: Integer; cdecl;
    {class} property eof: Boolean read _Geteof write _Seteof;
    {class} property length: Integer read _Getlength;
  end;

  [JavaSignature('java/io/OptionalDataException')]
  JOptionalDataException = interface(JObjectStreamException)
    ['{6864ABB8-1DA3-470B-BC0A-6FF024BAA211}']
  end;
  TJOptionalDataException = class(TJavaGenericImport<JOptionalDataExceptionClass, JOptionalDataException>) end;

  JPipedInputStreamClass = interface(JInputStreamClass)
    ['{E6CE4F7F-95BD-480A-8DFE-8DC05B3621FA}']
    {class} function init: JPipedInputStream; cdecl; overload;//Deprecated
    {class} function init(out_: JPipedOutputStream): JPipedInputStream; cdecl; overload;//Deprecated
    {class} function init(pipeSize: Integer): JPipedInputStream; cdecl; overload;//Deprecated
    {class} function init(out_: JPipedOutputStream; pipeSize: Integer): JPipedInputStream; cdecl; overload;//Deprecated
    {class} function available: Integer; cdecl;//Deprecated
    {class} function read(bytes: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/PipedInputStream')]
  JPipedInputStream = interface(JInputStream)
    ['{76EDD1BD-1C75-49EB-8FD5-4BD779DAAF68}']
    procedure close; cdecl;//Deprecated
    procedure connect(src: JPipedOutputStream); cdecl;//Deprecated
    function read: Integer; cdecl; overload;//Deprecated
  end;
  TJPipedInputStream = class(TJavaGenericImport<JPipedInputStreamClass, JPipedInputStream>) end;

  JPipedOutputStreamClass = interface(JOutputStreamClass)
    ['{113AEDD2-D996-4A40-99A0-BC4A384F1091}']
    {class} function init: JPipedOutputStream; cdecl; overload;//Deprecated
    {class} function init(target: JPipedInputStream): JPipedOutputStream; cdecl; overload;//Deprecated
    {class} procedure close; cdecl;
    {class} procedure connect(stream: JPipedInputStream); cdecl;
  end;

  [JavaSignature('java/io/PipedOutputStream')]
  JPipedOutputStream = interface(JOutputStream)
    ['{80A29CC6-BD8C-4F56-B556-6FE272D2BFA4}']
    procedure flush; cdecl;
    procedure write(buffer: TJavaArray<Byte>; offset: Integer; count: Integer); cdecl; overload;
    procedure write(oneByte: Integer); cdecl; overload;
  end;
  TJPipedOutputStream = class(TJavaGenericImport<JPipedOutputStreamClass, JPipedOutputStream>) end;

  JPipedReaderClass = interface(JReaderClass)
    ['{7D844118-F885-49BA-8167-A5701F53FAE8}']
    {class} function init: JPipedReader; cdecl; overload;//Deprecated
    {class} function init(out_: JPipedWriter): JPipedReader; cdecl; overload;//Deprecated
    {class} function init(pipeSize: Integer): JPipedReader; cdecl; overload;//Deprecated
    {class} function init(out_: JPipedWriter; pipeSize: Integer): JPipedReader; cdecl; overload;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/PipedReader')]
  JPipedReader = interface(JReader)
    ['{D4CC7048-C519-4CCA-A603-BF944D4D98FA}']
    procedure close; cdecl;//Deprecated
    procedure connect(src: JPipedWriter); cdecl;//Deprecated
    function ready: Boolean; cdecl;//Deprecated
  end;
  TJPipedReader = class(TJavaGenericImport<JPipedReaderClass, JPipedReader>) end;

  JPipedWriterClass = interface(JWriterClass)
    ['{71DF9A17-20CC-45BF-97EE-80ADD80DE07F}']
    {class} function init: JPipedWriter; cdecl; overload;//Deprecated
    {class} function init(destination: JPipedReader): JPipedWriter; cdecl; overload;//Deprecated
    {class} procedure write(buffer: TJavaArray<Char>; offset: Integer; count: Integer); cdecl; overload;
    {class} procedure write(c: Integer); cdecl; overload;
  end;

  [JavaSignature('java/io/PipedWriter')]
  JPipedWriter = interface(JWriter)
    ['{41A4B620-5C93-4F7F-BD41-30E956FDCE92}']
    procedure close; cdecl;
    procedure connect(reader: JPipedReader); cdecl;
    procedure flush; cdecl;
  end;
  TJPipedWriter = class(TJavaGenericImport<JPipedWriterClass, JPipedWriter>) end;

  JPushbackInputStreamClass = interface(JFilterInputStreamClass)
    ['{8F2B7727-45BC-452D-AC65-1FACE0881D40}']
    {class} function init(in_: JInputStream): JPushbackInputStream; cdecl; overload;//Deprecated
    {class} function init(in_: JInputStream; size: Integer): JPushbackInputStream; cdecl; overload;//Deprecated
    {class} function markSupported: Boolean; cdecl;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
    {class} procedure unread(buffer: TJavaArray<Byte>; offset: Integer; length: Integer); cdecl; overload;//Deprecated
    {class} procedure unread(oneByte: Integer); cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/PushbackInputStream')]
  JPushbackInputStream = interface(JFilterInputStream)
    ['{24F3A0CC-2D44-46B3-A6A4-443E00621EFB}']
    function available: Integer; cdecl;//Deprecated
    procedure close; cdecl;//Deprecated
    procedure mark(readlimit: Integer); cdecl;//Deprecated
    procedure reset; cdecl;//Deprecated
    function skip(byteCount: Int64): Int64; cdecl;//Deprecated
    procedure unread(buffer: TJavaArray<Byte>); cdecl; overload;//Deprecated
  end;
  TJPushbackInputStream = class(TJavaGenericImport<JPushbackInputStreamClass, JPushbackInputStream>) end;

  JPushbackReaderClass = interface(JFilterReaderClass)
    ['{9FD403C2-8363-4BBB-A9DC-417AF3EBFD35}']
    {class} function init(in_: JReader): JPushbackReader; cdecl; overload;//Deprecated
    {class} function init(in_: JReader; size: Integer): JPushbackReader; cdecl; overload;//Deprecated
    {class} function read: Integer; cdecl; overload;
    {class} function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;
    {class} function ready: Boolean; cdecl;
    {class} procedure unread(buffer: TJavaArray<Char>; offset: Integer; length: Integer); cdecl; overload;
    {class} procedure unread(oneChar: Integer); cdecl; overload;
  end;

  [JavaSignature('java/io/PushbackReader')]
  JPushbackReader = interface(JFilterReader)
    ['{D4914DDA-DDC2-41C4-B60D-01E4E8E5A352}']
    procedure close; cdecl;
    procedure mark(readAheadLimit: Integer); cdecl;
    function markSupported: Boolean; cdecl;
    procedure reset; cdecl;
    function skip(charCount: Int64): Int64; cdecl;
    procedure unread(buffer: TJavaArray<Char>); cdecl; overload;
  end;
  TJPushbackReader = class(TJavaGenericImport<JPushbackReaderClass, JPushbackReader>) end;

  JSequenceInputStreamClass = interface(JInputStreamClass)
    ['{90A3ABE5-FDA2-430B-9B64-D524BE61750A}']
    {class} function init(s1: JInputStream; s2: JInputStream): JSequenceInputStream; cdecl; overload;//Deprecated
    {class} function init(e: JEnumeration): JSequenceInputStream; cdecl; overload;//Deprecated
    {class} function available: Integer; cdecl;
    {class} procedure close; cdecl;
  end;

  [JavaSignature('java/io/SequenceInputStream')]
  JSequenceInputStream = interface(JInputStream)
    ['{1A590AF3-C1C9-4A8B-954B-2CFAA9B16571}']
    function read: Integer; cdecl; overload;
    function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;
  end;
  TJSequenceInputStream = class(TJavaGenericImport<JSequenceInputStreamClass, JSequenceInputStream>) end;

  JBasicPermissionClass = interface(JPermissionClass)
    ['{F435BC48-A19C-4921-BD7F-D818060D9B5A}']
    {class} function init(name: JString): JBasicPermission; cdecl; overload;//Deprecated
    {class} function init(name: JString; action: JString): JBasicPermission; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/security/BasicPermission')]
  JBasicPermission = interface(JPermission)
    ['{BB317514-2161-49DA-BD12-7284967AE0F7}']
    function getActions: JString; cdecl;
    function implies(permission: JPermission): Boolean; cdecl;
  end;
  TJBasicPermission = class(TJavaGenericImport<JBasicPermissionClass, JBasicPermission>) end;

  JSerializablePermissionClass = interface(JBasicPermissionClass)
    ['{C3E20FC9-EAA2-4D4B-8233-D966F37905DA}']
    {class} function init(permissionName: JString): JSerializablePermission; cdecl; overload;//Deprecated
    {class} function init(name: JString; actions: JString): JSerializablePermission; cdecl; overload;//Deprecated
    {class} function getActions: JString; cdecl;
    {class} function implies(permission: JPermission): Boolean; cdecl;
  end;

  [JavaSignature('java/io/SerializablePermission')]
  JSerializablePermission = interface(JBasicPermission)
    ['{528F4378-61DC-4A2E-9989-16E55ABDA348}']
  end;
  TJSerializablePermission = class(TJavaGenericImport<JSerializablePermissionClass, JSerializablePermission>) end;

  JStreamCorruptedExceptionClass = interface(JObjectStreamExceptionClass)
    ['{319F98C4-7FFB-40F4-BF4C-B2613FF6F8E8}']
    {class} function init: JStreamCorruptedException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JStreamCorruptedException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/StreamCorruptedException')]
  JStreamCorruptedException = interface(JObjectStreamException)
    ['{4BBD5A53-C073-4D41-B2C3-282C7A8CD342}']
  end;
  TJStreamCorruptedException = class(TJavaGenericImport<JStreamCorruptedExceptionClass, JStreamCorruptedException>) end;

  JStreamTokenizerClass = interface(JObjectClass)
    ['{640B376E-419A-47CD-AC9F-D8F7F8F6B621}']
    {class} function _GetTT_EOF: Integer; cdecl;
    {class} function _GetTT_EOL: Integer; cdecl;
    {class} function _GetTT_NUMBER: Integer; cdecl;
    {class} function _GetTT_WORD: Integer; cdecl;
    {class} function _Getnval: Double; cdecl;
    {class} procedure _Setnval(Value: Double); cdecl;
    {class} function init(is_: JInputStream): JStreamTokenizer; cdecl; overload;//Deprecated
    {class} function init(r: JReader): JStreamTokenizer; cdecl; overload;//Deprecated
    {class} procedure eolIsSignificant(flag: Boolean); cdecl;//Deprecated
    {class} function lineno: Integer; cdecl;//Deprecated
    {class} procedure lowerCaseMode(flag: Boolean); cdecl;//Deprecated
    {class} procedure parseNumbers; cdecl;//Deprecated
    {class} procedure pushBack; cdecl;//Deprecated
    {class} procedure quoteChar(ch: Integer); cdecl;//Deprecated
    {class} procedure slashStarComments(flag: Boolean); cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} procedure whitespaceChars(low: Integer; hi: Integer); cdecl;//Deprecated
    {class} property TT_EOF: Integer read _GetTT_EOF;
    {class} property TT_EOL: Integer read _GetTT_EOL;
    {class} property TT_NUMBER: Integer read _GetTT_NUMBER;
    {class} property TT_WORD: Integer read _GetTT_WORD;
    {class} property nval: Double read _Getnval write _Setnval;
  end;

  [JavaSignature('java/io/StreamTokenizer')]
  JStreamTokenizer = interface(JObject)
    ['{266D3922-7908-4065-958D-BFE7B3C0EF88}']
    function _Getsval: JString; cdecl;
    procedure _Setsval(Value: JString); cdecl;
    function _Getttype: Integer; cdecl;
    procedure commentChar(ch: Integer); cdecl;//Deprecated
    function nextToken: Integer; cdecl;//Deprecated
    procedure ordinaryChar(ch: Integer); cdecl;//Deprecated
    procedure ordinaryChars(low: Integer; hi: Integer); cdecl;//Deprecated
    procedure resetSyntax; cdecl;//Deprecated
    procedure slashSlashComments(flag: Boolean); cdecl;//Deprecated
    procedure wordChars(low: Integer; hi: Integer); cdecl;
    property sval: JString read _Getsval write _Setsval;
    property ttype: Integer read _Getttype;
  end;
  TJStreamTokenizer = class(TJavaGenericImport<JStreamTokenizerClass, JStreamTokenizer>) end;

  JStringBufferInputStreamClass = interface(JInputStreamClass)
    ['{80691E66-0796-4F18-A600-209C81F1F623}']
    {class} function init(str: JString): JStringBufferInputStream; cdecl;//Deprecated
    {class} function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
    {class} procedure reset; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/StringBufferInputStream')]
  JStringBufferInputStream = interface(JInputStream)
    ['{221AD0B8-AFC4-4B4E-933C-E77121187BC4}']
    function available: Integer; cdecl;//Deprecated
    function read: Integer; cdecl; overload;//Deprecated
    function skip(charCount: Int64): Int64; cdecl;//Deprecated
  end;
  TJStringBufferInputStream = class(TJavaGenericImport<JStringBufferInputStreamClass, JStringBufferInputStream>) end;

  JStringReaderClass = interface(JReaderClass)
    ['{C9A99E27-A1F4-4397-8291-EFB68953F789}']
    {class} function init(str: JString): JStringReader; cdecl;//Deprecated
    {class} procedure mark(readLimit: Integer); cdecl;//Deprecated
    {class} function markSupported: Boolean; cdecl;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function skip(charCount: Int64): Int64; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/StringReader')]
  JStringReader = interface(JReader)
    ['{493048B8-58E9-4A48-BB91-DC0AD9F7102C}']
    procedure close; cdecl;//Deprecated
    function read(buffer: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;//Deprecated
    function ready: Boolean; cdecl;//Deprecated
    procedure reset; cdecl;//Deprecated
  end;
  TJStringReader = class(TJavaGenericImport<JStringReaderClass, JStringReader>) end;

  JStringWriterClass = interface(JWriterClass)
    ['{C77E5C83-8D28-4208-84D4-6032BBCCED61}']
    {class} function init: JStringWriter; cdecl; overload;//Deprecated
    {class} function init(initialSize: Integer): JStringWriter; cdecl; overload;//Deprecated
    {class} function append(csq: JCharSequence; start: Integer; end_: Integer): JStringWriter; cdecl; overload;
    {class} procedure close; cdecl;
    {class} procedure flush; cdecl;
    {class} procedure write(oneChar: Integer); cdecl; overload;
    {class} procedure write(str: JString); cdecl; overload;
    {class} procedure write(str: JString; offset: Integer; count: Integer); cdecl; overload;
  end;

  [JavaSignature('java/io/StringWriter')]
  JStringWriter = interface(JWriter)
    ['{0DC52D95-7626-415E-BA3F-96BCCF1281D8}']
    function append(c: Char): JStringWriter; cdecl; overload;
    function append(csq: JCharSequence): JStringWriter; cdecl; overload;
    function getBuffer: JStringBuffer; cdecl;
    function toString: JString; cdecl;
    procedure write(chars: TJavaArray<Char>; offset: Integer; count: Integer); cdecl; overload;
  end;
  TJStringWriter = class(TJavaGenericImport<JStringWriterClass, JStringWriter>) end;

  JSyncFailedExceptionClass = interface(JIOExceptionClass)
    ['{A575F2D6-B5F1-40BD-A79A-BCA70153F57B}']
    {class} function init(detailMessage: JString): JSyncFailedException; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/SyncFailedException')]
  JSyncFailedException = interface(JIOException)
    ['{72037172-AF0E-42FE-889B-AB5000B41628}']
  end;
  TJSyncFailedException = class(TJavaGenericImport<JSyncFailedExceptionClass, JSyncFailedException>) end;

  JUTFDataFormatExceptionClass = interface(JIOExceptionClass)
    ['{102E9C2D-FEAB-4E62-89DC-A4A11B93CA64}']
    {class} function init: JUTFDataFormatException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JUTFDataFormatException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/UTFDataFormatException')]
  JUTFDataFormatException = interface(JIOException)
    ['{90E6B629-EE9C-4776-89E6-14C19DF68DCA}']
  end;
  TJUTFDataFormatException = class(TJavaGenericImport<JUTFDataFormatExceptionClass, JUTFDataFormatException>) end;

  JUnsupportedEncodingExceptionClass = interface(JIOExceptionClass)
    ['{F91C59F7-47A8-4DA9-AC29-BEA2EE26FC68}']
    {class} function init: JUnsupportedEncodingException; cdecl; overload;//Deprecated
    {class} function init(detailMessage: JString): JUnsupportedEncodingException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/io/UnsupportedEncodingException')]
  JUnsupportedEncodingException = interface(JIOException)
    ['{95DAC049-7657-46CC-8A0E-9E58B65C6CC1}']
  end;
  TJUnsupportedEncodingException = class(TJavaGenericImport<JUnsupportedEncodingExceptionClass, JUnsupportedEncodingException>) end;

  JWriteAbortedExceptionClass = interface(JObjectStreamExceptionClass)
    ['{065475D0-73B7-4F16-B1DF-7EC026C6980F}']
    {class} function _Getdetail: JException; cdecl;
    {class} function init(detailMessage: JString; rootCause: JException): JWriteAbortedException; cdecl;//Deprecated
    {class} property detail: JException read _Getdetail;
  end;

  [JavaSignature('java/io/WriteAbortedException')]
  JWriteAbortedException = interface(JObjectStreamException)
    ['{3E23BD5B-879D-4FFA-994F-6472260DCB15}']
    function getCause: JThrowable; cdecl;
    function getMessage: JString; cdecl;
  end;
  TJWriteAbortedException = class(TJavaGenericImport<JWriteAbortedExceptionClass, JWriteAbortedException>) end;

implementation

{
 procedure RegisterTypes;
begin
  TRegTypes.RegisterType('JavaInterfaces.JFilterInputStream', TypeInfo(JavaInterfaces.JFilterInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JBufferedInputStream', TypeInfo(JavaInterfaces.JBufferedInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JBufferedOutputStream', TypeInfo(JavaInterfaces.JBufferedOutputStream));
  TRegTypes.RegisterType('JavaInterfaces.JBufferedReader', TypeInfo(JavaInterfaces.JBufferedReader));
  TRegTypes.RegisterType('JavaInterfaces.JBufferedWriter', TypeInfo(JavaInterfaces.JBufferedWriter));
  TRegTypes.RegisterType('JavaInterfaces.JCharArrayReader', TypeInfo(JavaInterfaces.JCharArrayReader));
  TRegTypes.RegisterType('JavaInterfaces.JCharArrayWriter', TypeInfo(JavaInterfaces.JCharArrayWriter));
  TRegTypes.RegisterType('JavaInterfaces.JCharConversionException', TypeInfo(JavaInterfaces.JCharConversionException));
  TRegTypes.RegisterType('JavaInterfaces.JConsole', TypeInfo(JavaInterfaces.JConsole));
  TRegTypes.RegisterType('JavaInterfaces.JDataInput', TypeInfo(JavaInterfaces.JDataInput));
  TRegTypes.RegisterType('JavaInterfaces.JDataInputStream', TypeInfo(JavaInterfaces.JDataInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JDataOutput', TypeInfo(JavaInterfaces.JDataOutput));
  TRegTypes.RegisterType('JavaInterfaces.JDataOutputStream', TypeInfo(JavaInterfaces.JDataOutputStream));
  TRegTypes.RegisterType('JavaInterfaces.JEOFException', TypeInfo(JavaInterfaces.JEOFException));
  TRegTypes.RegisterType('JavaInterfaces.JExternalizable', TypeInfo(JavaInterfaces.JExternalizable));
  TRegTypes.RegisterType('JavaInterfaces.JFileNotFoundException', TypeInfo(JavaInterfaces.JFileNotFoundException));
  TRegTypes.RegisterType('JavaInterfaces.JFilePermission', TypeInfo(JavaInterfaces.JFilePermission));
  TRegTypes.RegisterType('JavaInterfaces.JInputStreamReader', TypeInfo(JavaInterfaces.JInputStreamReader));
  TRegTypes.RegisterType('JavaInterfaces.JFileReader', TypeInfo(JavaInterfaces.JFileReader));
  TRegTypes.RegisterType('JavaInterfaces.JOutputStreamWriter', TypeInfo(JavaInterfaces.JOutputStreamWriter));
  TRegTypes.RegisterType('JavaInterfaces.JFileWriter', TypeInfo(JavaInterfaces.JFileWriter));
  TRegTypes.RegisterType('JavaInterfaces.JFilterReader', TypeInfo(JavaInterfaces.JFilterReader));
  TRegTypes.RegisterType('JavaInterfaces.JFilterWriter', TypeInfo(JavaInterfaces.JFilterWriter));
  TRegTypes.RegisterType('JavaInterfaces.JFlushable', TypeInfo(JavaInterfaces.JFlushable));
  TRegTypes.RegisterType('JavaInterfaces.JError', TypeInfo(JavaInterfaces.JError));
  TRegTypes.RegisterType('JavaInterfaces.JIOError', TypeInfo(JavaInterfaces.JIOError));
  TRegTypes.RegisterType('JavaInterfaces.JInterruptedIOException', TypeInfo(JavaInterfaces.JInterruptedIOException));
  TRegTypes.RegisterType('JavaInterfaces.JObjectStreamException', TypeInfo(JavaInterfaces.JObjectStreamException));
  TRegTypes.RegisterType('JavaInterfaces.JInvalidClassException', TypeInfo(JavaInterfaces.JInvalidClassException));
  TRegTypes.RegisterType('JavaInterfaces.JInvalidObjectException', TypeInfo(JavaInterfaces.JInvalidObjectException));
  TRegTypes.RegisterType('JavaInterfaces.JLineNumberInputStream', TypeInfo(JavaInterfaces.JLineNumberInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JLineNumberReader', TypeInfo(JavaInterfaces.JLineNumberReader));
  TRegTypes.RegisterType('JavaInterfaces.JNotActiveException', TypeInfo(JavaInterfaces.JNotActiveException));
  TRegTypes.RegisterType('JavaInterfaces.JNotSerializableException', TypeInfo(JavaInterfaces.JNotSerializableException));
  TRegTypes.RegisterType('JavaInterfaces.JObjectInput', TypeInfo(JavaInterfaces.JObjectInput));
  TRegTypes.RegisterType('JavaInterfaces.JObjectInputStream', TypeInfo(JavaInterfaces.JObjectInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JObjectInputStream_GetField', TypeInfo(JavaInterfaces.JObjectInputStream_GetField));
  TRegTypes.RegisterType('JavaInterfaces.JObjectInputValidation', TypeInfo(JavaInterfaces.JObjectInputValidation));
  TRegTypes.RegisterType('JavaInterfaces.JObjectOutput', TypeInfo(JavaInterfaces.JObjectOutput));
  TRegTypes.RegisterType('JavaInterfaces.JObjectOutputStream', TypeInfo(JavaInterfaces.JObjectOutputStream));
  TRegTypes.RegisterType('JavaInterfaces.JObjectOutputStream_PutField', TypeInfo(JavaInterfaces.JObjectOutputStream_PutField));
  TRegTypes.RegisterType('JavaInterfaces.Jio_ObjectStreamClass', TypeInfo(JavaInterfaces.Jio_ObjectStreamClass));
  TRegTypes.RegisterType('JavaInterfaces.JObjectStreamConstants', TypeInfo(JavaInterfaces.JObjectStreamConstants));
  TRegTypes.RegisterType('JavaInterfaces.JObjectStreamField', TypeInfo(JavaInterfaces.JObjectStreamField));
  TRegTypes.RegisterType('JavaInterfaces.JOptionalDataException', TypeInfo(JavaInterfaces.JOptionalDataException));
  TRegTypes.RegisterType('JavaInterfaces.JPipedInputStream', TypeInfo(JavaInterfaces.JPipedInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JPipedOutputStream', TypeInfo(JavaInterfaces.JPipedOutputStream));
  TRegTypes.RegisterType('JavaInterfaces.JPipedReader', TypeInfo(JavaInterfaces.JPipedReader));
  TRegTypes.RegisterType('JavaInterfaces.JPipedWriter', TypeInfo(JavaInterfaces.JPipedWriter));
  TRegTypes.RegisterType('JavaInterfaces.JPushbackInputStream', TypeInfo(JavaInterfaces.JPushbackInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JPushbackReader', TypeInfo(JavaInterfaces.JPushbackReader));
  TRegTypes.RegisterType('JavaInterfaces.JSequenceInputStream', TypeInfo(JavaInterfaces.JSequenceInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JBasicPermission', TypeInfo(JavaInterfaces.JBasicPermission));
  TRegTypes.RegisterType('JavaInterfaces.JSerializablePermission', TypeInfo(JavaInterfaces.JSerializablePermission));
  TRegTypes.RegisterType('JavaInterfaces.JStreamCorruptedException', TypeInfo(JavaInterfaces.JStreamCorruptedException));
  TRegTypes.RegisterType('JavaInterfaces.JStreamTokenizer', TypeInfo(JavaInterfaces.JStreamTokenizer));
  TRegTypes.RegisterType('JavaInterfaces.JStringBufferInputStream', TypeInfo(JavaInterfaces.JStringBufferInputStream));
  TRegTypes.RegisterType('JavaInterfaces.JStringReader', TypeInfo(JavaInterfaces.JStringReader));
  TRegTypes.RegisterType('JavaInterfaces.JStringWriter', TypeInfo(JavaInterfaces.JStringWriter));
  TRegTypes.RegisterType('JavaInterfaces.JSyncFailedException', TypeInfo(JavaInterfaces.JSyncFailedException));
  TRegTypes.RegisterType('JavaInterfaces.JUTFDataFormatException', TypeInfo(JavaInterfaces.JUTFDataFormatException));
  TRegTypes.RegisterType('JavaInterfaces.JUnsupportedEncodingException', TypeInfo(JavaInterfaces.JUnsupportedEncodingException));
  TRegTypes.RegisterType('JavaInterfaces.JWriteAbortedException', TypeInfo(JavaInterfaces.JWriteAbortedException));
end;

initialization
  RegisterTypes;
}

end.

