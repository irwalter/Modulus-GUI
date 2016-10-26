%test

function varargout = Module_420(varargin)
% MODULE_420 MATLAB code for Module_420.fig
%      MODULE_420, by itself, creates a new MODULE_420 or raises the existing
%      singleton*.
%
%      H = MODULE_420 returns the handle to a new MODULE_420 or the handle to
%      the existing singleton*.
%
%      MODULE_420('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODULE_420.M with the given input arguments.
%
%      MODULE_420('Property','Value',...) creates a new MODULE_420 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Module_420_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Module_420_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Module_420

% Last Modified by GUIDE v2.5 20-Jul-2015 10:54:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Module_420_OpeningFcn, ...
                   'gui_OutputFcn',  @Module_420_OutputFcn, ...
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


% --- Executes just before Module_420 is made visible.
function Module_420_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Module_420 (see VARARGIN)

% Choose default command line output for Module_420
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Adding images of variables
pict = imread('nu_m.png');
% Displays image in axes 2
axes(handles.axes2);
imshow(pict);
pict = imread('E_m.png');
% Displays image in axes 3
axes(handles.axes3);
imshow(pict);
pict = imread('E_fT.png');
% Displays image in axes 4
axes(handles.axes4);
imshow(pict);
pict = imread('phi.png');
% Displays image in axes 5
axes(handles.axes5);
imshow(pict);
pict = imread('nu_f.png');
% Displays image in axes 6
axes(handles.axes6);
imshow(pict);
pict = imread('E_fL.png');
% Displays image in axes 7
axes(handles.axes7);
imshow(pict);
pict = imread('ratio.png');
% Displays image in axes 8
axes(handles.axes8);
imshow(pict);
pict = imread('theta.png');
% Displays image in axes 9
axes(handles.axes9);
imshow(pict);
% For plotting 
axes(handles.axes1);
% Initializes plot
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
computeValues(A,B,C,D,E,F,G,H,handles);
% Initializing text boxes
A = round(A*100)/100;
set(handles.edit1,'String',A);
B = round(B*100)/100;
set(handles.edit2,'String',B);
C = round(C*100)/100;
set(handles.edit3,'String',C);
D = round(D*100)/100;
set(handles.edit4,'String',D);
E = round(E*100)/100;
set(handles.edit5,'String',E);
F = round(F);
set(handles.edit6,'String',F);
G = round(G);
set(handles.edit7,'String',G);
H = round(H);
set(handles.edit8,'String',H);



% --- Outputs from this function are returned to the command line.
function varargout = Module_420_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values

A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(A*100)/100;
set(handles.edit1,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(B*100)/100;
set(handles.edit2,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(C*100)/100;
set(handles.edit3,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(D*100)/100;
set(handles.edit4,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(E*100)/100;
set(handles.edit5,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(F);
set(handles.edit6,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
H = H*pi/180;
% Displays slider values
str = round(G);
set(handles.edit7,'String',str);
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Gets slider values
handles = guihandles(Module_420);
A = get(handles.slider1,'Value'); 
A = A+.15;
B = get(handles.slider2,'Value'); 
B = B+10.75;
C = get(handles.slider3,'Value'); 
C = C+3.1;
D = get(handles.slider4,'Value'); 
D = D+.5;
E = get(handles.slider5,'Value'); 
E = E+.15;
F = get(handles.slider6,'Value'); 
F = F+139.5;
G = get(handles.slider7,'Value'); 
G = G+5000;
H = get(handles.slider8,'Value');
% Displays slider values
str = round(H);
set(handles.edit8,'String',str);
H = H*pi/180;
computeValues(A,B,C,D,E,F,G,H,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function  [E_11,E_22,G_12] = computeValues(A,B,C,D,E,F,G,H,handles)
% Calculation of Moduli
theta = H:pi/100:H+2*pi;
E_11 = zeros(1,200);
E_22 = zeros(1,200);
G_12 = zeros(1,200);
xi_L = 2*G;
xi_T = 2;
eta_L = (F/B-1)/(F/B+xi_L);
eta_T = (C/B-1)/(C/B+xi_T);
E_L = B*(1+xi_L*eta_L*D)/(1-eta_L*D);
E_T = B*(1+xi_T*eta_T*D)/(1-eta_T*D);
G_m = B/(2*(1+A));
G_f = 75.8;
lambda = (G_f/G_m-1)/(G_f/G_m+1);
G_LT = G_m*(1+lambda*D)/(1-lambda*D);
nu_TL = D*E+(1-D)*A;
nu_LT = nu_TL*(E_T/E_L);
S_LL = 1/E_L;
S_LT = -nu_TL/E_T;
S_TL = -nu_LT/E_L;
S_TT = 1/E_T;
S_SS = 1/G_LT;
for i=1:201
    c = cos(theta(i));
    s = sin(theta(i));
    E_11(i) = 1/(c^4*S_LL+s^4*S_TT+2*c^2*s^2*S_LT+c^2*s^2*S_SS);
    E_22(i) = 1/(s^4*S_LL+c^4*S_TT+2*c^2*s^2*S_LT+c^2*s^2*S_SS);
    G_12(i) = 1/(4*c^2*s^2*S_LL+4*c^2*s^2*S_TT-8*c^2*s^2*S_LT+(c^2-s^2)^2*S_SS);
end
% Plotting moduli
% axes(handles.axes1);
theta = 0:pi/100:2*pi;
polar(theta,E_11,'k');
hold on;
polar(theta,E_22,'r');
polar(theta,G_12,'b');
hold off;
legend('E11','E22','G12','Location','eastoutside','Orientation','vertical')
