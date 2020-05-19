
function varargout = interfazu(varargin)
% INTERFAZU MATLAB code for interfazu.fig
%      INTERFAZU, by itself, creates a new INTERFAZU or raises the existing
%      singleton*.
%
%      H = INTERFAZU returns the handle to a new INTERFAZU or the handle to
%      the existing singleton*.
%
%      INTERFAZU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZU.M with the given input arguments.
%
%      INTERFAZU('Property','Value',...) creates a new INTERFAZU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfazu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfazu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfazu

% Last Modified by GUIDE v2.5 18-May-2020 17:24:50

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfazu_OpeningFcn, ...
                   'gui_OutputFcn',  @interfazu_OutputFcn, ...
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


% --- Executes just before interfazu is made visible.
function interfazu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfazu (see VARARGIN)

% Choose default command line output for interfazu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global nr
global Recognized
nr = 0;
set(handles.axes1,'Color','none','XColor','none','YColor','none');
set(handles.axes2,'Color','none','XColor','none','YColor','none');
set(handles.axes3,'Color','none','XColor','none','YColor','none');
set(handles.axes4,'Color','none','XColor','none','YColor','none');
set(handles.axes5,'Color','none','XColor','none','YColor','none');
set(handles.axes6,'Color','none','XColor','none','YColor','none');
set(handles.axes7,'Color','none','XColor','none','YColor','none');
set(handles.axes8,'Color','none','XColor','none','YColor','none');
set(handles.axes9,'Color','none','XColor','none','YColor','none');
set(handles.axes10,'Color','none','XColor','none','YColor','none');
set(handles.axes11,'Color','none','XColor','none','YColor','none');
set(handles.axes12,'Color','none','XColor','none','YColor','none');

% UIWAIT makes interfazu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfazu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
anrecordismade
datosBase
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDAT00A)
set(handles.text3,'String',nr);
if nr == 1
    set(handles.axes1,'Color','white','XColor','black','YColor','black');
    set(handles.axes1,'XLim',[-2 2],'YLim',[-1 1]);
    %funcion que graba
    %funcion del diagrama de bode
    t = linspace(-2,2,1000);
    y = 0.8*sin(2*pi*1*t);
    z = 0.8*cos(2*pi*1*t);
    axes(handles.axes1)
    t = y0_freq1;
    y = abs(y0_fft);
    plot(t(1:371),y(1:371));
    title('Record 1')
    grid on
end
if nr == 2

    set(handles.axes2,'Color','white','XColor','black','YColor','black'); %
    set(handles.axes2,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*cos(2*pi*1*t);
    axes(handles.axes2) 
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 2')
    grid on
end
if nr == 3
    set(handles.axes3,'Color','white','XColor','black','YColor','black');
    set(handles.axes3,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*cot(2*pi*1*t);
    axes(handles.axes3)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 3')
    grid on
end
if nr == 4
    set(handles.axes4,'Color','white','XColor','black','YColor','black');
    set(handles.axes4,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*tan(2*pi*1*t);
    axes(handles.axes4)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 4')
    grid on
end
if nr == 5
    set(handles.axes5,'Color','white','XColor','black','YColor','black');
    set(handles.axes5,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*sec(2*pi*1*t);
    axes(handles.axes5)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 5')
    grid on
end
if nr == 6
    set(handles.axes6,'Color','white','XColor','black','YColor','black');
    set(handles.axes6,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*csc(2*pi*1*t);
    axes(handles.axes6)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 6')
    grid on
end
if nr == 7
    set(handles.axes7,'Color','white','XColor','black','YColor','black');
    set(handles.axes7,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = exp(-1*t);
    axes(handles.axes7)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 7')
    grid on
end
if nr == 8
    set(handles.axes8,'Color','white','XColor','black','YColor','black');
    set(handles.axes8,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = exp(1*t);
    axes(handles.axes8)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 8')
    grid on
end
if nr == 9
    set(handles.axes9,'Color','white','XColor','black','YColor','black');
    set(handles.axes9,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*sinh(2*pi*1*t);
    axes(handles.axes9)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    title('Record 9')
    grid on
end
if nr == 10
    set(handles.axes10,'Color','white','XColor','black','YColor','black');
    set(handles.axes10,'XLim',[-2 2],'YLim',[-1 1]);
    set(handles.pushbutton1,'String','Start Recording')
    t = linspace(-2,2,1000);
    y = 0.8*cosh(2*pi*1*t);
    axes(handles.axes10)
    [t,y] = figN(nr-1);
    plot(t(1:371),y(1:371));
    grid on
    title('Record 10')
    
end
if nr == 0
    a = arduino;
    set(handles.text4,'String','Recording');
    [inputVoice, t2, inputVoiceFFT, inputVoice_freq] =  grabacionVoz();
    set(handles.text4,'String','Recording finished');
    set(handles.axes11,'Color','white','XColor','black','YColor','black');
    set(handles.axes11,'XLim',[-2 2],'YLim',[-1 1]);
    axes(handles.axes11)
    t = inputVoice_freq;
    y = abs(inputVoiceFFT);
    plot(t(1:371),y(1:371));
    grid on
    title('Your record')
    s = servo(a,"D3");
    [prs, prsFFT, prsFFT_freq] = inputVoiceFilter(inputVoice);
    Rec = reconocer(prsFFT,minimumSpike);
    set(handles.axes12,'Color','white','XColor','black','YColor','black');
    axes(handles.axes12);
    plot(prsFFT_freq,abs(prsFFT));
    grid on
    title('your record with filter');
    set(handles.text5,'String',Rec);
    if Rec == "abrir"
        writePosition(s,1);
        writeDigitalPin(a,"D8",1);
    end
end
