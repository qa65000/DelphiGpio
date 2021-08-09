unit Jni.Process;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  Jlang_Process = interface;//java.lang.Process
  JRuntime = interface;//java.lang.Runtime

// ===== Interface declarations =====

  Jlang_ProcessClass = interface(JObjectClass)
    ['{F57F6F1A-B4A2-4CD0-9ACB-06CBEBDCA561}']
    {class} function init: Jlang_Process; cdecl;//Deprecated
 //   {class} procedure destroy; cdecl;//Deprecated
 //   {class} function getOutputStream: JOutputStream; cdecl;
 //   {class} function waitFor: Integer; cdecl;
  end;

  [JavaSignature('java/lang/Process')]
  Jlang_Process = interface(JObject)
    ['{1B505DDF-5BE4-40C8-BC81-75AAA5158B02}']
    function exitValue: Integer; cdecl;
    function getErrorStream: JInputStream; cdecl;
    function getInputStream: JInputStream; cdecl;
    function getOutputStream: JOutputStream; cdecl;
    function waitFor: Integer; cdecl;
    procedure destroy; cdecl;//Deprecated
  end;
  TJlang_Process = class(TJavaGenericImport<Jlang_ProcessClass, Jlang_Process>) end;

  JRuntimeClass = interface(JObjectClass)
    ['{5F789EE2-7243-47D9-B950-F8B638DD3076}']
    {class} function exec(progArray: TJavaObjectArray<JString>): Jlang_Process; cdecl; overload;//Deprecated
    {class} function exec(progArray: TJavaObjectArray<JString>; envp: TJavaObjectArray<JString>): Jlang_Process; cdecl; overload;//Deprecated
    {class} function exec(progArray: TJavaObjectArray<JString>; envp: TJavaObjectArray<JString>; directory: JFile): Jlang_Process; cdecl; overload;//Deprecated
    {class} procedure exit(code: Integer); cdecl;//Deprecated
    {class} function freeMemory: Int64; cdecl;//Deprecated
    {class} procedure gc; cdecl;//Deprecated
    {class} function getRuntime: JRuntime; cdecl;
    {class} procedure halt(code: Integer); cdecl;
    {class} procedure load(absolutePath: JString); cdecl;
    {class} procedure loadLibrary(nickname: JString); cdecl;
    {class} procedure runFinalizersOnExit(run: Boolean); cdecl;//Deprecated
    {class} function totalMemory: Int64; cdecl;
  end;

  [JavaSignature('java/lang/Runtime')]
  JRuntime = interface(JObject)
    ['{D56F91EA-6432-4391-ABBA-885F22C2E21A}']
    procedure addShutdownHook(hook: JThread); cdecl;//Deprecated
    function availableProcessors: Integer; cdecl;//Deprecated
    function exec(prog: JString): Jlang_Process; cdecl; overload;//Deprecated
    function exec(prog: JString; envp: TJavaObjectArray<JString>): Jlang_Process; cdecl; overload;//Deprecated
    function exec(prog: JString; envp: TJavaObjectArray<JString>; directory: JFile): Jlang_Process; cdecl; overload;//Deprecated
    function getLocalizedInputStream(stream: JInputStream): JInputStream; cdecl;//Deprecated
    function getLocalizedOutputStream(stream: JOutputStream): JOutputStream; cdecl;//Deprecated
    function maxMemory: Int64; cdecl;
    function removeShutdownHook(hook: JThread): Boolean; cdecl;
    procedure runFinalization; cdecl;
    procedure traceInstructions(enable: Boolean); cdecl;
    procedure traceMethodCalls(enable: Boolean); cdecl;
  end;
  TJRuntime = class(TJavaGenericImport<JRuntimeClass, JRuntime>) end;

implementation

{

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('JavaInterfaces.Jlang_Process', TypeInfo(JavaInterfaces.Jlang_Process));
  TRegTypes.RegisterType('JavaInterfaces.JRuntime', TypeInfo(JavaInterfaces.JRuntime));
end;

initialization
  RegisterTypes;
}

end.

