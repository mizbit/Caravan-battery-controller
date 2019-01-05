unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, VrControls, VrButtons,
  VrLeds, VrAngularMeter, VrLabel, Vcl.ExtCtrls, Vcl.ComCtrls, IdBaseComponent, SyncObjs,
  IdComponent, IdTCPConnection, IdTCPClient, VrBlinkLed, VrCheckLed, VrSlider,
  VrGauge, VrSwitch, VrDesign, VCLTee.TeCanvas, VCLTee.TeeEdiGrad, frxCtrls;

  const WM_UPDATE_PROGRESS = WM_APP + 100;
type

  TFixedCriticalSection = class(TCriticalSection)
      private
         FDummy : array [0..95] of Byte;
   end;

   twifi=class(tthread)                   // leser comport

   protected
    procedure Execute; override;
public
// constructor create;
end;





  TForm3 = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
     Edit2: TEdit;
    Button2: TButton;
    Button1: TButton;
    Label4: TLabel;
    Memo1: TMemo;
    Timer1: TTimer;
    VrAngularMeter3: TVrAngularMeter;
    VrLabel1: TVrLabel;
    VrLabel2: TVrLabel;
    VrLabel3: TVrLabel;
    VrLabel4: TVrLabel;
    VrAngularMeter2: TVrAngularMeter;
    VrAngularMeter6: TVrAngularMeter;
    Label33: TLabel;
    VrAngularMeter5: TVrAngularMeter;
    VrAngularMeter7: TVrAngularMeter;
    VrAngularMeter8: TVrAngularMeter;
    VrAngularMeter10: TVrAngularMeter;
    VrLed3: TVrLed;
    VrLed2: TVrLed;
    VrLed1: TVrLed;
    VrDemoButton2: TVrDemoButton;
    VrDemoButton3: TVrDemoButton;
    VrDemoButton4: TVrDemoButton;
    VrDemoButton5: TVrDemoButton;
    VrAngularMeter1: TVrAngularMeter;
    VrAngularMeter4: TVrAngularMeter;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    VrLabel5: TVrLabel;
    VrLabel6: TVrLabel;
    VrLabel7: TVrLabel;
    VrLabel8: TVrLabel;
    VrAngularMeter9: TVrAngularMeter;
    VrAngularMeter11: TVrAngularMeter;
    VrAngularMeter12: TVrAngularMeter;
    VrAngularMeter13: TVrAngularMeter;
    VrAngularMeter14: TVrAngularMeter;
    VrAngularMeter15: TVrAngularMeter;
    VrAngularMeter16: TVrAngularMeter;
    VrLed4: TVrLed;
    VrAngularMeter17: TVrAngularMeter;
    VrAngularMeter18: TVrAngularMeter;
    VrLed5: TVrLed;
    VrDemoButton1: TVrDemoButton;
    VrLed6: TVrLed;
    VrDemoButton6: TVrDemoButton;
    VrDemoButton7: TVrDemoButton;
    VrDemoButton8: TVrDemoButton;
    VrDemoButton9: TVrDemoButton;
    VrLabel9: TVrLabel;
    VrLabel10: TVrLabel;
    VrLabel11: TVrLabel;
    VrAngularMeter19: TVrAngularMeter;
      IdTCPClient1: TIdTCPClient;
    Button3: TButton;
    VrSlider1: TVrSlider;
    VrLabel12: TVrLabel;
    VrGauge1: TVrGauge;
    frxComboBox1: TfrxComboBox;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Timer2: TTimer;
    Edit11: TEdit;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
//    procedure IdTCPClient1Connected(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure VrDemoButton7Click(Sender: TObject);
    procedure VrDemoButton8Click(Sender: TObject);
    procedure VrDemoButton9Click(Sender: TObject);
    procedure VrDemoButton6Click(Sender: TObject);
    procedure VrDemoButton1Click(Sender: TObject);
    procedure DoTerminate(Sender: TObject);
    procedure IdTCPClient1AfterBind(Sender: TObject);
    procedure IdTCPClient1BeforeBind(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure IdTCPClient1SocketAllocated(Sender: TObject);
    procedure IdTCPClient1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdTCPClient1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdTCPClient1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdTCPClient1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure Button3Click(Sender: TObject);
    procedure frxComboBox1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);

  private
 kk:integer;
    st,st1:string;
    kontakt:boolean;
  stoplogfile,shift,alarm_batt1,alarm_batt2,alarm_gass:boolean;
    mld_turtall,mld_spenning, mld_strom,mld_temp,mld_brensel:string[60];
    RF_linje:string;
    i_max,u_max,u_min:real;
    Fsection : TCriticalSection;
    wifi:twifi;
    wifi_linje:string;
    LU,U1,U2,I1,I2,T1,T2,KT:real;
    procedure WMUpdateProgress(var Message: TMessage); message WM_UPDATE_PROGRESS;
  public
    procedure UpdateProgress( Alinje:string );

  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var st,st1:string;
begin
if (button1.Caption='Connect') then
begin
//          if (not idtcpclient1.connected) then
  //           idtcpclient1.connect();
//IdTCPClient1.Connect ;
button1.Caption:='Avbryt';
button2.Enabled:=true;
kontakt:=true;
    VrLed6.Color:=clGreen;
      VrLed5.Color:=clGreen;



  (*

 //    if (not kontakt) then     exit;
 if (not idtcpclient1.connected) then
 idtcpclient1.connect();
       while (idtcpclient1.connected) do
     begin
    st:=idtcpclient1.IOHandler.ReadLn;
    st1:=st;//+' : '+inttostr(kk);
//    inc(kk)  ;
    memo1.Lines.Add(st1)             ;
     end;




      *)









end
else
begin
 //  IdTCPClient1.Disconnect;
  button1.Caption:='Connect';
//  button2.Enabled:=false;
  VrLed5.Color:=clBlack;
  VrLed6.Color:=clBlack;
kontakt:=false;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
//  if (not idtcpclient1.connected) then
//    idtcpclient1.connect();
//   IdTCPClient1.Socket.WriteLn('2:'+Edit2.Text);
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  IdTCPClient1.Connect;
   IdTCPClient1.ConnectTimeout:=30;
  IdTCPClient1.IOHandler.WriteLn('test');
  IdTCPClient1.Disconnect;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
kk:=0;
kontakt:=false;
i_max:=50;
u_min:=11;
u_max:=15;
wifi:=twifi.Create;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Fsection := TCriticalSection.create     ;
end;

procedure TForm3.frxComboBox1Change(Sender: TObject);
begin
if (frxComboBox1.ItemIndex=1) then
begin
          VrSlider1.Visible:=true;
          VrGauge1.Visible:=false;
         // IdTCPClient1.Socket.WriteLn('bat1 off');
end
 else  if  (frxComboBox1.ItemIndex=2)     then
begin
          VrSlider1.Visible:=false;
         VrGauge1.Visible:=false;
end
 else
begin
          VrSlider1.Visible:=false;
          VrGauge1.Visible:=true;
end;
end;

procedure TForm3.IdTCPClient1AfterBind(Sender: TObject);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1BeforeBind(Sender: TObject);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1Connected(Sender: TObject);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1Disconnected(Sender: TObject);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1SocketAllocated(Sender: TObject);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
var i:integer;
b:boolean;
begin
        b:= IdTCPClient1.Connected;
      i:=4;

end;

procedure TForm3.IdTCPClient1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.IdTCPClient1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
var i:integer;
begin
      i:=4;
end;

procedure TForm3.DoTerminate(Sender: TObject);
begin
  wifi.Terminate;
//  trad := NIL;
end;

procedure TForm3.Edit11Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (KT>0) then
begin
    j:=round(128*strtofloat(edit11.Text)/KT);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'8'+#9+inttostr(j));
       label24.Caption:='kalib'+#9+'8'+#9+inttostr(j);
end;

   end;

procedure TForm3.Edit12Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (U1>0) then
begin
    j:=round(128*strtofloat(edit1.Text)/U1);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'7'+#9+inttostr(j));
       label13.Caption:='kalib'+#9+'7'+#9+inttostr(j);
end;

   end;

procedure TForm3.Edit1Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (U1>0) then
begin
    j:=round(128*strtofloat(edit1.Text)/U1);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'1'+#9+inttostr(j));
       label13.Caption:='kalib'+#9+'1'+#9+inttostr(j);
end;

   end;

procedure TForm3.Edit3Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (U2>0) then
begin
    j:=round(128*strtofloat(edit3.Text)/U2);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'2'+#9+inttostr(j));
       label16.Caption:='kalib'+#9+'2'+#9+inttostr(j);
end;

   end;
procedure TForm3.Edit4Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (LU>0) then
begin
    j:=round(128*strtofloat(edit4.Text)/LU);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'7'+#9+inttostr(j));
       label17.Caption:='kalib'+#9+'7'+#9+inttostr(j);
end;

end;



procedure TForm3.Edit5Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (I1>0) then
begin
    j:=round(128*strtofloat(edit5.Text)/I1);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'5'+#9+inttostr(j));
       label18.Caption:='kalib'+#9+'5'+#9+inttostr(j);
end;

   end;

procedure TForm3.Edit6Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (I2>0) then
begin
    j:=round(128*strtofloat(edit6.Text)/I2);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'6'+#9+inttostr(j));
       label19.Caption:='kalib'+#9+'6'+#9+inttostr(j);
end;

   end;



procedure TForm3.Edit7Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (T1>0) then
begin
    j:=round(128*strtofloat(edit7.Text)/T1);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'3'+#9+inttostr(j));
       label20.Caption:='kalib'+#9+'3'+#9+inttostr(j);
end;

   end;


procedure TForm3.Edit8Exit(Sender: TObject);
var  j:integer;
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
    if (T2>0) then
begin
    j:=round(128*strtofloat(edit8.Text)/T2);
     IdTCPClient1.Socket.WriteLn('kalib'+#9+'4'+#9+inttostr(j));
       label21.Caption:='kalib'+#9+'4'+#9+inttostr(j);
end;

   end;

(*
procedure TForm3.IdTCPClient1Connected(Sender: TObject);

begin
if idtcpclient1.Connected then
 if not idtcpclient1.IOHandler.InputBufferIsEmpty then
  try
  st:=    idtcpclient1.IOHandler.ReadLn   ;
 //   listbox2.AddItem(st,nil);
    memo1.Lines.Add(st);
  finally
     ;
  end;
 //   listbox2.AddItem( IdTCPClient1.Socket.ReadLn,nil);


end;
  *)
procedure TForm3.Timer2Timer(Sender: TObject);
var
s: string;
begin
if not IdTCPClient1.Connected then Exit;
if IdTCPClient1.IOHandler.InputBufferIsEmpty then Exit;
s := IdTCPClient1.IOHandler.ReadLn();
       UpdateProgress( s )
end;

//end;

procedure TForm3.VrDemoButton1Click(Sender: TObject);
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
   if (VrDemoButton1.Caption='Koble til') then
   begin
   IdTCPClient1.Socket.WriteLn('bat1 on');
   VrDemoButton1.Caption:='Koble fra';
   VrLed5.Color:=clGreen;
   end
   else
   begin
   IdTCPClient1.Socket.WriteLn('bat1 off');
   VrDemoButton1.Caption:='Koble til';
    VrLed5.Color:=clBlack;
  end ;
   if (( VrDemoButton1.Caption='Koble til') and    ( VrDemoButton6.Caption='Koble til') ) then
    VrDemoButton8.Caption:='Koble til';
   if (( VrDemoButton1.Caption='Koble fra') and    ( VrDemoButton6.Caption='Koble fra') ) then
    VrDemoButton8.Caption:='Koble fra'  ;
end;

procedure TForm3.VrDemoButton6Click(Sender: TObject);
begin
   if (not idtcpclient1.connected) then
    idtcpclient1.connect();
   if (VrDemoButton6.Caption='Koble til') then
   begin
   IdTCPClient1.Socket.WriteLn('bat2 on');
   VrDemoButton6.Caption:='Koble fra';
   VrLed6.Color:=clGreen;
   end
   else
   begin
   IdTCPClient1.Socket.WriteLn('bat2 off');
   VrDemoButton6.Caption:='Koble til';
   VrLed6.Color:=clBlack;
   end ;
   if (( VrDemoButton1.Caption='Koble til') and    ( VrDemoButton6.Caption='Koble til') ) then
    VrDemoButton8.Caption:='Koble til';
   if (( VrDemoButton1.Caption='Koble fra') and    ( VrDemoButton6.Caption='Koble fra') ) then
    VrDemoButton8.Caption:='Koble fra'  ;

end;

procedure TForm3.VrDemoButton9Click(Sender: TObject);
var st,st1:string;
begin
//Button1Click(Sender);

if (VrDemoButton9.Caption='Avbryt nett') then
begin


if (not idtcpclient1.Connected) then  idtcpclient1.Connect;
if (not idtcpclient1.IOHandler.InputBufferIsEmpty) then   idtcpclient1.IOHandler.InputBuffer.Clear;
VrDemoButton9.Caption:='Koble til nett';
//kontakt:=true;
    VrDemoButton8.Enabled:=false;
    VrAngularMeter13.Position:=0;
end
else
begin
if (idtcpclient1.Connected) then  idtcpclient1.Disconnect;
if (not idtcpclient1.Connected) then  idtcpclient1.Connect;
VrDemoButton9.Caption:='Avbryt nett';
VrDemoButton8.Enabled:=true;
    VrAngularMeter13.Position:=0;
//kontakt:=false;
end;

end;

procedure TForm3.VrDemoButton8Click(Sender: TObject);
begin
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();

if (VrDemoButton8.Caption='Frakoble') then
begin
   IdTCPClient1.Socket.WriteLn('bat1 off');
   IdTCPClient1.Socket.WriteLn('bat2 off');
   VrDemoButton8.Caption:='Koble til';
end
else
begin
   IdTCPClient1.Socket.WriteLn('bat1 on');
   IdTCPClient1.Socket.WriteLn('bat2 on');
   VrDemoButton8.Caption:='Frakoble';
end    ;

  VrDemoButton1Click(Sender);
  VrDemoButton6Click(Sender);
end;

procedure TForm3.VrDemoButton7Click(Sender: TObject);
begin
alarm_batt1:=false;
alarm_batt2:=false;
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();
IdTCPClient1.Socket.WriteLn('resett_alarm');
          VrDemoButton7.Enabled:=false;

end;


 procedure twifi.Execute;
     var linje:string;
   begin
// FSection.Enter();
    with form3 do
         begin
          if (not idtcpclient1.connected) then
             idtcpclient1.connect();
             while (idtcpclient1.connected) do
               begin
                 linje:=idtcpclient1.IOHandler.ReadLn;
                 linje:=st;//+' : '+inttostr(kk);
                 UpdateProgress( linje )  ;
              end;
              idtcpclient1.Disconnect();
         end;
  //  FSection.Leave();
   end;

  procedure TForm3.UpdateProgress( Alinje:string );
begin
FSection.Enter();
   wifi_linje := Alinje;
 FSection.Leave();
  PostMessage( Handle, WM_UPDATE_PROGRESS, 0, 0 );
end;


procedure TForm3.WMUpdateProgress(var Message: TMessage);
var
  AProgress,i,j : Integer;
  linje,st,st1,st2,st3:String;
 begin
//  ProgressBar1.Position := Message.WParam;
FSection.Enter();
   linje:=wifi_linje;
   //memo1.Lines.Add(linje)   ;

  //  if (not kontakt) then     exit;

     (*
  wifi := twifi.Create;
  wifi.FreeOnTerminate := True;
  wifi.OnTerminate := DoTerminate;
 // wifi.Start;
 (*
    *)
  if (not idtcpclient1.connected) then
    idtcpclient1.connect();

  //  while (idtcpclient1.connected) do
     begin
  //  st:=idtcpclient1.IOHandler.ReadLn;
  st:= wifi_linje;
 //   sleep(10);
    st1:=st;//+' : '+inttostr(kk);
//    inc(kk)  ;
  //FSection.Enter();
    memo1.Lines.Add(st)    ;
    if (memo1.Lines.Count=25) then
        memo1.Lines.Delete(0);

//    FSection.Leave();








 if (VrLed5.Color<>clBlack) then
  if (alarm_batt1 and shift) then
       VrLed5.Transparent:=true
       else
       VrLed5.Transparent:=false;
 if (VrLed6.Color<>clBlack) then
  if (alarm_batt2 and shift) then
       VrLed6.Transparent:=true
       else
       VrLed6.Transparent:=false;
  shift:=not shift;


 // if (not kontakt) then     exit;

  //if (not idtcpclient1.connected) then
   // idtcpclient1.connect();

 // while (idtcpclient1.connected) do
   //  if (True)  then
 //   try
  //  st:=idtcpclient1.IOHandler.ReadLn;
    st3:='';
    st1:=st;//+' : '+inttostr(kk);
//    inc(kk)  ;
 //   memo1.Lines.Add(st1);
  //  listbox2.AddItem(st1,nil);

   i:=ansipos(#9,st);
    st1:=copy(st,1,i-1);
    st2:=copy(st,i+1,length(st)-i);
    j:=ansipos(#9,st2);
    if (j>0) then
    begin
      st3:=copy(st2,j+1,length(st2)-j);
      st2:=copy(st2,1,j-1)  ;
  end;
    i:=ansipos('.',st2);
    if (i>0) then
        st2[i]:=',';
  if (st1='T1 ') then
     begin
               T1:=      strtofloat(st2);
      VrAngularMeter18.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter18.Caption:=floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1);
     end
 else if (copy(st1,1,2)='I1') then
     begin
                I1:=      strtofloat(st2);
      VrAngularMeter14.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter14.Caption:=floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1);
      if (strtofloat(st2)>I_max)  then
           alarm_batt1:=true;
     end
  else if (copy(st1,1,2)='I2') then
     begin
           I2:=      strtofloat(st2);
      VrAngularMeter15.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter15.Caption:=inttostr(round(strtofloat(st2)));
      if (strtofloat(st2)>I_max)  then
           alarm_batt2:=true;
     end

 else if (copy(st1,1,7)='KabTemp') then
     begin
           KT:=      strtofloat(st2);
      VrAngularMeter19.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter19.Caption:=floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1);
   //   if ((strtofloat(st2)>U_max) or (strtofloat(st2)<U_min)) then
   //        alarm_batt1:=true;
     end
else if (copy(st1,1,7)='fan_set') then
     begin
      VrGauge1.Position:=round(strtofloat(st2));
     //   if ((strtofloat(st2)>U_max) or (strtofloat(st2)<U_min)) then
   //        alarm_batt1:=true;
     end
 else if (copy(st1,1,2)='U1') then
     begin
      U1:=      strtofloat(st2);
      VrAngularMeter13.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter13.Caption:= floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1) ;
      if ((strtofloat(st2)>U_max) or (strtofloat(st2)<U_min)) then
           alarm_batt1:=true;
     end
  else if (st1='T2 ') then
     begin
          T2:=      strtofloat(st2);
      VrAngularMeter17.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter17.Caption:=floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1);
     end
 else if (copy(st1,1,4)='Gass') then
     begin
      VrAngularMeter9.Position:=round(strtofloat(st2));
      VrAngularMeter9.Caption:=st2;
     end
 else if (copy(st1,1,2)='U2') then
     begin
           U2:=      strtofloat(st2);
      VrAngularMeter12.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter12.Caption:=floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1);
      if ((strtofloat(st2)>U_max) or (strtofloat(st2)<U_min)) then
           alarm_batt1:=true;
     end
 else if (copy(st1,1,7)='Alarm 1') then
     begin
     if (VrLed5.color<>clBlack) then
     if (st2='1') then
     begin
        alarm_batt1:=true;
       VrDemoButton7.Enabled:=true;
      VrLed5.Color:=clYellow;
     end
     else
     begin
        alarm_batt1:=false;
        VrLed5.Color:=clGreen;
     end;
    end
 else if (copy(st1,1,7)='Alarm 2') then
     begin
     if (VrLed6.color<>clBlack) then
     if (st2='1') then
      begin
        alarm_batt2:=true;
        VrDemoButton7.Enabled:=true;
        VrLed6.Color:=clYellow;
      end
     end
      else if (copy(st1,1,12)='LadeSpenning') then
     begin
           LU:=      strtofloat(st2);
      VrAngularMeter11.Position:=round(strtofloat(st2)*strtofloat(st3)/128);
      VrAngularMeter11.Caption:=floattostrf(strtofloat(st2)*strtofloat(st3)/128, ffFixed, 4, 1);
     end
     else
     begin
        alarm_batt2:=false;
        VrLed6.Color:=clGreen;
     end;


      VrAngularMeter16.Position:=VrAngularMeter14.Position+VrAngularMeter15.Position;
      VrAngularMeter16.Caption:= floattostrf  (VrAngularMeter16.Position,ffGeneral, 6, 2);



//
  //finally
     //     IdTCPClient1.Disconnect;
//  button1.Caption:='Connect';
//  button2.Enabled:=false;

//    finally


    end;


    end;



end.