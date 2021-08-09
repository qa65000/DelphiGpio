unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation,
  Androidapi.Helpers,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Jni.io,
  Jni.Process,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    OutputButton: TButton;
    InputButton: TButton;
    ExportButton: TButton;
    UnExportButton: TButton;
    latch1: TButton;
    Latch0: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    ReadValue: TButton;
    Button1: TButton;
    GpIo2moni: TButton;
    Timer1: TTimer;
    GPIO2State: TLabel;
    procedure ExportButtonClick(Sender: TObject);
    procedure UnExportButtonClick(Sender: TObject);
    procedure OutputButtonClick(Sender: TObject);
    procedure InputButtonClick(Sender: TObject);
    procedure latch1Click(Sender: TObject);
    procedure Latch0Click(Sender: TObject);
    procedure FileRead(Sender: TObject);
    procedure CatRead(Sender: TObject);
    procedure GpIo2moniClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}



procedure JavaStreamToAddStrings(Stream:JInputStream; Strings:TStrings);
var
    i: Integer;
   Buffer : TJavaArray<Byte>;
   Str   : String;
   Count :  Integer;
 begin
   Str := '';
   Count := Stream.available;
   if( Count = 0) then exit;
   Buffer := TJavaArray<Byte>.Create(Count);
   stream.read(Buffer);
   for i := 0 to Count - 1 do
   begin
      Str := Str + char(Buffer[i]);
   end;
   Strings.Add(Str);
 end;


function SuCmdExec(CmdList: TStrings; sOut : TStrings) :integer;
var
  i      : integer;
 Process : JLang_Process;
 Output  : JOutputstream;
begin
      Result := 0;
      try
       Process := TJRuntime.JavaClass.getRuntime.exec(StringToJString('su'+sLineBreak));
       Output := Process.getOutputStream;
         if Assigned(sOut) then
         begin
           JavaStreamToAddStrings( Process.getInputStream,sOut);
            JavaStreamToAddStrings( Process.getErrorStream,sOut);
         end;


       for I := 0 to CmdList.Count - 1 do
       begin
         Sout.add('Cmd:'+CmdList[i]);
         Output.write(StringToJString(CmdList[i]+slineBreak).getBytes(StringToJString('UTF8')));
         Output.flush();
         if Assigned(sOut) then
         begin
           JavaStreamToAddStrings( Process.getInputStream,sOut);
            JavaStreamToAddStrings( Process.getErrorStream,sOut);
         end;

       end;
       Output.write(StringToJString('exit'+slineBreak).getBytes(StringToJString('UTF8')));
       Output.flush();
       Process.waitFor;
       Result :=  Process.exitValue;

       if Assigned(sOut) then
       begin
         JavaStreamToAddStrings( Process.getInputStream,sOut);
         JavaStreamToAddStrings( Process.getErrorStream,sOut);
       end;

     except
        on e: Exception do
        if Assigned(sOut) then
        begin
           sOut.Add('Error:'+e.Message);
        end;
    end;

  if(Assigned(Process)) then
  begin
      Process.getOutputStream.close;
      Process.getInputStream.close;
      Process.getErrorStream.close;
      Process.destroy();
  end;
end;



procedure TMainForm.ExportButtonClick(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('echo '+IntTostr(PortNum)+' >/sys/class/gpio/export');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add('Gpio '+IntTostr(PortNum)+'expot!!');
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot export!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;




procedure TMainForm.UnExportButtonClick(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('echo '+IntTostr(PortNum)+' >/sys/class/gpio/unexport');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add('Gpio '+IntTostr(PortNum)+'unexport!!');
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot unexport!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;

procedure TMainForm.InputButtonClick(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('echo in >/sys/class/gpio/gpio'+IntToStr(PortNum)+'/direction');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add('Gpio'+IntToStr(PortNum)+'Input!!');
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot Input!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;

procedure TMainForm.Latch0Click(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
  Self.Tag := 0;

   Memo1.Lines.add('Try Gpio Latch .');
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('echo '+IntToStr(Self.tag)+' >/sys/class/gpio/gpio'+IntToStr(PortNum)+'/value');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add(CmdList[0]);
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot Change Latch!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;

procedure TMainForm.latch1Click(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
   Self.Tag := 1;

   Memo1.Lines.add('Try Gpio Latch .');
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('echo '+IntToStr(Self.tag)+' >/sys/class/gpio/gpio'+IntToStr(PortNum)+'/value');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add(CmdList[0]);
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot Change Latch!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;

procedure TMainForm.OutputButtonClick(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('echo out >/sys/class/gpio/gpio'+IntToStr(PortNum)+'/direction');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add('Gpio'+IntToStr(PortNum)+'OutPut!!');
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot OutPut!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;




procedure TMainForm.CatRead(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
begin
   CmdList := TStringList.Create;
   PortNum := StrToInt(Edit1.Text);
   CmdList.add('cat /sys/class/gpio/gpio'+IntToStr(PortNum)+'/value');

   if  SuCmdExec(CmdList,
                        Memo1.lines) <> -1 then

  begin
    Memo1.Lines.add('Gpio Read'+IntToStr(PortNum)+'Value!!');
  end
  else
   begin
    Memo1.Lines.add('Gpio Cannot Cat Read File!!');
   end;
   CmdList.Free;
   Memo1.GoToTextEnd;
end;

procedure TMainForm.FileRead(Sender: TObject);
var
  PortNum : Integer;
  TF :TextFile;
  S: String;
begin
   PortNum := StrToInt(Edit1.Text);
   AssignFile(TF, '/sys/class/gpio/gpio'+IntToStr(PortNum)+'/value');
   Reset(TF);
   ReadLn(TF,s);
   CloseFile(TF);
   Memo1.Lines.add('ReadFile:'+S);
   Memo1.GoToTextEnd;
end;

procedure TMainForm.GpIo2moniClick(Sender: TObject);
var
  TF :TextFile;
  CmdList: TStrings;
  PortNum : Integer;
begin
    if Timer1.Enabled  then
    begin
      Timer1.Enabled := false;
      Gpio2State.text := 'NONE READ';
    end
    else
    begin
      if not  FileExists('/sys/class/gpio/gpio2/value') then
      begin
         CmdList := TStringList.Create;
         CmdList.add('echo 2  >/sys/class/gpio/export');
         CmdList.add('echo in >/sys/class/gpio/gpio2/direction');

         if  SuCmdExec(CmdList,
                                Memo1.lines) <> -1 then
                                        timer1.Enabled := true;
         CmdList.Free;
      end;
      timer1.Enabled := true;
    end;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var
  CmdList: TStrings;
  PortNum : Integer;
  TF :TextFile;
  S: String;
begin
   if not  FileExists('/sys/class/gpio/gpio2/value') then
   begin
      timer1.Enabled := false;
      Gpio2State.text := 'NONE READ';
      exit;
   end;
   AssignFile(TF, '/sys/class/gpio/gpio2/value');
   Reset(TF);
   ReadLn(TF,s);
   CloseFile(TF);
   if(S[1] = '0') then Gpio2State.text := 'Close Door(SW)'
   else             Gpio2State.text := 'Open  Door(SW)';
end;
end.

