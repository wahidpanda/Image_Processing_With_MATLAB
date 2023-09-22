function varargout = carnumberplatedetection(varargin)
% CARNUMBERPLATEDETECTION MATLAB code for carnumberplatedetection.fig
%      CARNUMBERPLATEDETECTION, by itself, creates a new CARNUMBERPLATEDETECTION or raises the existing
%      singleton*.
%
%      H = CARNUMBERPLATEDETECTION returns the handle to a new CARNUMBERPLATEDETECTION or the handle to
%      the existing singleton*.
%
%      CARNUMBERPLATEDETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CARNUMBERPLATEDETECTION.M with the given input arguments.
%
%      CARNUMBERPLATEDETECTION('Property','Value',...) creates a new CARNUMBERPLATEDETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before carnumberplatedetection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to carnumberplatedetection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help carnumberplatedetection

% Last Modified by GUIDE v2.5 02-Jun-2022 23:57:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @carnumberplatedetection_OpeningFcn, ...
                   'gui_OutputFcn',  @carnumberplatedetection_OutputFcn, ...
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


% --- Executes just before carnumberplatedetection is made visible.
function carnumberplatedetection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to carnumberplatedetection (see VARARGIN)

% Choose default command line output for carnumberplatedetection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes carnumberplatedetection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = carnumberplatedetection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text4.
function text4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
car_plate=imread('D:/BMW.jpg');
imshow(car_plate);
pause(2)
ocrResults   = ocr(car_plate); 
result  = insertObjectAnnotation(car_plate,'rectangle', ...
                         ocrResults.WordBoundingBoxes, ...
                         ocrResults.WordConfidences);
                     rr=ocrResults.Text
class(result)
imshow(result)
str_res=num2str(result)
set(handles.edit1,'String',rr)
