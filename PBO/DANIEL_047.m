function varargout = DANIEL_047(varargin)
% DANIEL_047 MATLAB code for DANIEL_047.fig
%      DANIEL_047, by itself, creates a new DANIEL_047 or raises the existing
%      singleton*.
%
%      H = DANIEL_047 returns the handle to a new DANIEL_047 or the handle to
%      the existing singleton*.
%
%      DANIEL_047('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DANIEL_047.M with the given input arguments.
%
%      DANIEL_047('Property','Value',...) creates a new DANIEL_047 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DANIEL_047_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DANIEL_047_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDEs Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DANIEL_047

% Last Modified by GUIDE v2.5 05-Mar-2023 19:18:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DANIEL_047_OpeningFcn, ...
                   'gui_OutputFcn',  @DANIEL_047_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before DANIEL_047 is made visible.
function DANIEL_047_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DANIEL_047 (see VARARGIN)

% Choose default command line output for DANIEL_047
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DANIEL_047 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DANIEL_047_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in balok.
function balok_Callback(hObject, eventdata, handles)
% hObject    handle to balok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

panjang=get(handles.panjang_box,'string');
panjang=str2num(panjang);
lebar=get(handles.lebar_box,'string');
lebar=str2num(lebar);
tinggi=get(handles.tinggi_box,'string');
tinggi=str2num(tinggi);
jari=get(handles.jari_box,'string');
jari=str2num(jari);
miring=get(handles.miring_box,'string');
miring=str2num(miring);

cek1=get(handles.opsi1,'Value');
cek2=get(handles.opsi2,'Value');

luas = "---------";
volume = "---------";

if cek1
    luas=(panjang*lebar)*2+(panjang*tinggi)*2+(lebar*tinggi)*2;
    luas=num2str(luas);
end
if cek2
    volume=panjang*lebar*tinggi;
    volume=num2str(volume);
end

set(handles.hasil_luas,'string',(luas));
set(handles.hasil_volume,'string',(volume));

im=imread("balok.jpg");
axis(handles.axes1);
imagesc(im);
set(gca,'visible','off');

% --- Executes on button press in tabung.
function tabung_Callback(hObject, eventdata, handles)
% hObject    handle to tabung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

phi=3.1415;
panjang=get(handles.panjang_box,'string');
panjang=str2num(panjang);
lebar=get(handles.lebar_box,'string');
lebar=str2num(lebar);
tinggi=get(handles.tinggi_box,'string');
tinggi=str2num(tinggi);
jari=get(handles.jari_box,'string');
jari=str2num(jari);
miring=get(handles.miring_box,'string');
miring=str2num(miring);

cek1=get(handles.opsi1,'Value');
cek2=get(handles.opsi2,'Value');

luas = "---------";
volume = "---------";

if cek1
    luas=2*phi*jari *(jari+tinggi);
    luas=num2str(luas);
end
if cek2
    volume=phi*jari*jari*tinggi;
    volume=num2str(volume);
end

set(handles.hasil_luas,'string',(luas));
set(handles.hasil_volume,'string',(volume));

im=imread("tabung.jpg");
axis(handles.axes1);
imagesc(im);
set(gca,'visible','off');

% --- Executes on button press in kerucut.
function kerucut_Callback(hObject, eventdata, handles)
% hObject    handle to kerucut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

phi=3.1415;
panjang=get(handles.panjang_box,'string');
panjang=str2num(panjang);
lebar=get(handles.lebar_box,'string');
lebar=str2num(lebar);
tinggi=get(handles.tinggi_box,'string');
tinggi=str2num(tinggi);
jari=get(handles.jari_box,'string');
jari=str2num(jari);
miring=get(handles.miring_box,'string');
miring=str2num(miring);

cek1=get(handles.opsi1,'Value');
cek2=get(handles.opsi2,'Value');

luas = "---------";
volume = "---------";

if cek1
    luas=phi*jari*(jari+miring);
    luas=num2str(luas);
end
if cek2
    volume=(1/3)*phi*jari*jari*tinggi;
    volume=num2str(volume);
end

set(handles.hasil_luas,'string',(luas));
set(handles.hasil_volume,'string',(volume));

im=imread("kerucut.jpg");
axis(handles.axes1);
imagesc(im);
set(gca,'visible','off');

% --- Executes on button press in kubus.
function kubus_Callback(hObject, eventdata, handles)
% hObject    handle to kubus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

phi=3.1415;
panjang=get(handles.panjang_box,'string');
panjang=str2num(panjang);
lebar=get(handles.lebar_box,'string');
lebar=str2num(lebar);
tinggi=get(handles.tinggi_box,'string');
tinggi=str2num(tinggi);
jari=get(handles.jari_box,'string');
jari=str2num(jari);
miring=get(handles.miring_box,'string');
miring=str2num(miring);

cek1=get(handles.opsi1,'Value');
cek2=get(handles.opsi2,'Value');

luas = "---------";
volume = "---------";

if cek1
    luas=panjang*panjang*6;
    luas=num2str(luas);
end
if cek2
    volume=panjang*panjang*panjang;
    volume=num2str(volume);
end

set(handles.hasil_luas,'string',(luas));
set(handles.hasil_volume,'string',(volume));

im=imread("kubus.jpg");
axis(handles.axes1);
imagesc(im);
set(gca,'visible','off');

% --- Executes on button press in bola.
function bola_Callback(hObject, eventdata, handles)
% hObject    handle to bola (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

phi=3.1415;
panjang=get(handles.panjang_box,'string');
panjang=str2num(panjang);
lebar=get(handles.lebar_box,'string');
lebar=str2num(lebar);
tinggi=get(handles.tinggi_box,'string');
tinggi=str2num(tinggi);
jari=get(handles.jari_box,'string');
jari=str2num(jari);
miring=get(handles.miring_box,'string');
miring=str2num(miring);

cek1=get(handles.opsi1,'Value');
cek2=get(handles.opsi2,'Value');

luas = "---------";
volume = "---------";

if cek1
    luas=4*phi*jari*jari;
    luas=num2str(luas);
end
if cek2
    volume=(4/3)*phi*jari*jari*jari;
    volume=num2str(volume);
end

set(handles.hasil_luas,'string',(luas));
set(handles.hasil_volume,'string',(volume));

im=imread("bola.jpg");
axis(handles.axes1);
imagesc(im);
set(gca,'visible','off');


% --- Executes on button press in hapus.
function hapus_Callback(hObject, eventdata, handles)
% hObject    handle to hapus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.panjang_box,'string',(""));
set(handles.lebar_box,'string',(""));
set(handles.tinggi_box,'string',(""));
set(handles.jari_box,'string',(""));
set(handles.miring_box,'string',(""));
set(handles.hasil_luas,'string',(""));
set(handles.hasil_volume,'string',(""));

im=imread("white.jpg");
axis(handles.axes1);
imagesc(im);
set(gca,'visible','off');

% --- Executes on button press in opsi1.
function opsi1_Callback(hObject, eventdata, handles)
% hObject    handle to opsi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of opsi1


% --- Executes on button press in opsi2.
function opsi2_Callback(hObject, eventdata, handles)
% hObject    handle to opsi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of opsi2



function panjang_box_Callback(hObject, eventdata, handles)
% hObject    handle to panjang_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang_box as text
%        str2double(get(hObject,'String')) returns contents of panjang_box as a double


% --- Executes during object creation, after setting all properties.
function panjang_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_box_Callback(hObject, eventdata, handles)
% hObject    handle to lebar_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar_box as text
%        str2double(get(hObject,'String')) returns contents of lebar_box as a double


% --- Executes during object creation, after setting all properties.
function lebar_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_box_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi_box as text
%        str2double(get(hObject,'String')) returns contents of tinggi_box as a double


% --- Executes during object creation, after setting all properties.
function tinggi_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jari_box_Callback(hObject, eventdata, handles)
% hObject    handle to jari_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jari_box as text
%        str2double(get(hObject,'String')) returns contents of jari_box as a double


% --- Executes during object creation, after setting all properties.
function jari_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jari_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function miring_box_Callback(hObject, eventdata, handles)
% hObject    handle to miring_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of miring_box as text
%        str2double(get(hObject,'String')) returns contents of miring_box as a double


% --- Executes during object creation, after setting all properties.
function miring_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to miring_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_luas_Callback(hObject, eventdata, handles)
% hObject    handle to hasil_luas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil_luas as text
%        str2double(get(hObject,'String')) returns contents of hasil_luas as a double


% --- Executes during object creation, after setting all properties.
function hasil_luas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil_luas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_volume_Callback(hObject, eventdata, handles)
% hObject    handle to hasil_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil_volume as text
%        str2double(get(hObject,'String')) returns contents of hasil_volume as a double


% --- Executes during object creation, after setting all properties.
function hasil_volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
