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

% Last Modified by GUIDE v2.5 16-May-2020 11:12:28

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
    plot(t,y,t,z)
    title('Record 1 whith filter')
    grid on
end
if nr == 2
    set(handles.axes2,'Color','white','XColor','black','YColor','black');
    set(handles.axes2,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*cos(2*pi*1*t);
    axes(handles.axes2) 
    plot(t,y)
    grid on
end
if nr == 3
    set(handles.axes3,'Color','white','XColor','black','YColor','black');
    set(handles.axes3,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*cot(2*pi*1*t);
    axes(handles.axes3)
    plot(t,y)
    grid on
end
if nr == 4
    set(handles.axes4,'Color','white','XColor','black','YColor','black');
    set(handles.axes4,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*tan(2*pi*1*t);
    axes(handles.axes4)
    plot(t,y)
    grid on
end
if nr == 5
    set(handles.axes5,'Color','white','XColor','black','YColor','black');
    set(handles.axes5,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*sec(2*pi*1*t);
    axes(handles.axes5)
    plot(t,y)
    grid on
end
if nr == 6
    set(handles.axes6,'Color','white','XColor','black','YColor','black');
    set(handles.axes6,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*csc(2*pi*1*t);
    axes(handles.axes6)
    plot(t,y)
    grid on
end
if nr == 7
    set(handles.axes7,'Color','white','XColor','black','YColor','black');
    set(handles.axes7,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = exp(-1*t);
    axes(handles.axes7)
    plot(t,y)
    grid on
end
if nr == 8
    set(handles.axes8,'Color','white','XColor','black','YColor','black');
    set(handles.axes8,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = exp(1*t);
    axes(handles.axes8)
    plot(t,y)
    grid on
end
if nr == 9
    set(handles.axes9,'Color','white','XColor','black','YColor','black');
    set(handles.axes9,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*sinh(2*pi*1*t);
    axes(handles.axes9)
    plot(t,y)
    grid on
end
if nr == 10
    set(handles.axes10,'Color','white','XColor','black','YColor','black');
    set(handles.axes10,'XLim',[-2 2],'YLim',[-1 1]);
    t = linspace(-2,2,1000);
    y = 0.8*cosh(2*pi*1*t);
    axes(handles.axes10)
    plot(t,y)
    grid on
end
