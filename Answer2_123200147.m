function varargout = Answer2_123200147(varargin)
% ANSWER2_123200147 MATLAB code for Answer2_123200147.fig
%      ANSWER2_123200147, by itself, creates a new ANSWER2_123200147 or raises the existing
%      singleton*.
%
%      H = ANSWER2_123200147 returns the handle to a new ANSWER2_123200147 or the handle to
%      the existing singleton*.
%
%      ANSWER2_123200147('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANSWER2_123200147.M with the given input arguments.
%
%      ANSWER2_123200147('Property','Value',...) creates a new ANSWER2_123200147 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Answer2_123200147_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Answer2_123200147_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Answer2_123200147

% Last Modified by GUIDE v2.5 20-May-2022 07:46:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Answer2_123200147_OpeningFcn, ...
                   'gui_OutputFcn',  @Answer2_123200147_OutputFcn, ...
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


% --- Executes just before Answer2_123200147 is made visible.
function Answer2_123200147_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Answer2_123200147 (see VARARGIN)

% Choose default command line output for Answer2_123200147
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Answer2_123200147 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Answer2_123200147_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button1_147.
function button1_147_Callback(hObject, eventdata, handles)
% hObject    handle to button1_147 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('laptop_price.csv');
opts.SelectedVariableNames =(2:4);
dataset = readcell('laptop_price.csv', 'Range', 'A1:M51');
header = readcell('laptop_price.csv', 'Range', 'A1:M1');
set(handles.table1_147, 'Data', dataset, 'ColumnName', header);
