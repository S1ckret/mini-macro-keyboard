#include <windows.h>
#include <iostream>
#include <cstdlib>
#include <string>

// Important: later move this code to an .h file
// initialize objects that will been modified with different functions
LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);
bool modifstart = false;
//std::string button1func = "null";
//std::string button2func = "null";
//std::string button3func = "null";
char CurrentButton[2] = "1";
HINSTANCE hInstance;
HWND macro1, macro2, macro3;
HWND SettingsWind;
HWND mod1, mod2, mod3, mod4, mod5, mod6, mod7, mod8, hrtext;
std::string cStat = "choosebutton";
// buffer for reports
unsigned char buf[5];
unsigned char curmac[5];
bool lctrl = 0, lshift = 0, lalt = 0, lgui = 0, rctrl = 0, rshift = 0, ralt = 0, rgui = 0;

// transforming an incoming bits into string-like binary form
std::string FromHexToBin(char hex) {
	int temp = int(hex);
	std::string str = "";
	for (int i = 0; i < 8; i++) {
		if (temp > 0) {
			str = std::to_string(temp % 2) + str;
			temp /= 2;
		}
		else
			str = '0' + str;
	}
	return str;
}

// shanging a mod imnformation according to button functionality
COLORREF crBk = RGB(255, 0, 0);
void ModUpdate(char buf) {
	std::string s = FromHexToBin(buf);
	if(s[0] == '1')
		SetWindowTextW(mod1, L"lCtrl");
	else
		SetWindowTextW(mod1, L"-");
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	TCHAR szClassName[] = "Мой класс";
	HWND hMainWnd;
	MSG msg; 
	WNDCLASSEX wc;
	wc.cbSize = sizeof(wc);
	wc.style = CS_HREDRAW | CS_VREDRAW;
	wc.lpfnWndProc = WndProc;
	wc.lpszMenuName = NULL;
	wc.lpszClassName = szClassName;
	wc.cbWndExtra = NULL;
	wc.cbClsExtra = NULL;
	wc.hIcon = LoadIcon(NULL, IDI_WINLOGO);
	wc.hIconSm = LoadIcon(NULL, IDI_WINLOGO);
	wc.hCursor = LoadCursor(NULL, IDC_ARROW);
	wc.hbrBackground = (HBRUSH)GetStockObject(WHITE_BRUSH);
	wc.hInstance = hInstance;

	if (!RegisterClassEx(&wc)) {
		MessageBox(NULL, "Не получилось зарегистрировать класс!", "Ошибка", MB_OK);
		return NULL;
	}
	RegisterClassEx(&wc);

	hMainWnd = CreateWindow(
		szClassName,
		"Выберите клавишу для модификации",
		WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT, NULL, 300, 250,
		(HWND)NULL,
		NULL,
		HINSTANCE(hInstance),
		NULL);

	// text on main screen
	macro1 = CreateWindow("EDIT", "Ctrl + Shift + A", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_MULTILINE,
		20, 120, 75, 75, hMainWnd, NULL, hInstance, NULL);
	macro2 = CreateWindow("EDIT", "null", WS_VISIBLE | WS_CHILD | WS_BORDER | WS_DISABLED | ES_CENTER | ES_MULTILINE,
		105, 120, 75, 75, hMainWnd, NULL, hInstance, NULL);
	macro3 = CreateWindow("EDIT", "Alt + Tab", WS_VISIBLE | WS_CHILD | WS_BORDER | WS_DISABLED | ES_CENTER | ES_MULTILINE,
		190, 120, 75, 75, hMainWnd, NULL, hInstance, NULL);

	//buttons on main screen
	HWND Button1choose = CreateWindow(
		"BUTTON",
		"1",
		WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
		20, 30, 75, 75,
		hMainWnd, (HMENU)1,
		(HINSTANCE)GetWindowLongPtr(hMainWnd, GWLP_HINSTANCE),
		NULL);
	HWND Button2choose = CreateWindow(
		"BUTTON",
		"2",
		WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
		105, 30, 75, 75,
		hMainWnd, (HMENU)2,
		(HINSTANCE)GetWindowLongPtr(hMainWnd, GWLP_HINSTANCE),
		NULL);
	HWND Button3choose = CreateWindow(
		"BUTTON",
		"3",
		WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
		190, 30, 75, 75,
		hMainWnd, (HMENU)3,
		(HINSTANCE)GetWindowLongPtr(hMainWnd, GWLP_HINSTANCE),
		NULL);

	// second window - updating functions of selected key
	SettingsWind = CreateWindow(
		szClassName,
		"Настройки клавиши №",
		WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT, NULL, 390, 400,
		(HWND)NULL,
		NULL,
		hInstance,
		NULL);

	// cells with text on second window - key modificators
	hrtext = CreateWindow("EDIT", "Ctrl + Shift + A", WS_VISIBLE | WS_CHILD | WS_BORDER,
		10, 10, 355, 25, SettingsWind, NULL, hInstance, NULL);
	mod1 = CreateWindow("EDIT", "lCtrl", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		10, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod2 = CreateWindow("EDIT", "lShift", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		55, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod3 = CreateWindow("EDIT", "lAlt", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		100, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod4 = CreateWindow("EDIT", "lGUI", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		145, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod5 = CreateWindow("EDIT", "rCtrl", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		190, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod6 = CreateWindow("EDIT", "rShift", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		235, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod7 = CreateWindow("EDIT", "rAlt", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		280, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	mod8 = CreateWindow("EDIT", "rGUI", WS_VISIBLE | WS_CHILD | WS_BORDER | ES_CENTER | ES_READONLY,
		325, 40, 40, 20, SettingsWind, NULL, hInstance, NULL);
	// action buttons on second window
	HWND CancelChanges = CreateWindow(
		"BUTTON",
		"Cancel",
		WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
		15, 320, 60, 30,
		SettingsWind, (HMENU)11,
		(HINSTANCE)GetWindowLongPtr(SettingsWind, GWLP_HINSTANCE),
		NULL);
	HWND DefaultMac = CreateWindow(
		"BUTTON",
		"Default",
		WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
		85, 320, 60, 30,
		SettingsWind, (HMENU)12,
		(HINSTANCE)GetWindowLongPtr(SettingsWind, GWLP_HINSTANCE),
		NULL);
	HWND ConfirmChanges = CreateWindow(
		"BUTTON",
		"Ок",
		WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
		155, 320, 60, 30,
		SettingsWind, (HMENU)10,
		(HINSTANCE)GetWindowLongPtr(SettingsWind, GWLP_HINSTANCE),
		NULL);
	

	if (!hMainWnd) {
		MessageBox(NULL, "Не получилось создать окно!", "Ошибка", MB_OK);
		return NULL;
	}
	HBRUSH brush = CreateSolidBrush(RGB(169, 169, 165));
	//SetClassLongPtr(hMainWnd, GCLP_HBRBACKGROUND, (LONG_PTR)brush);
	
	SetClassLongPtr(macro1, GCLP_HBRBACKGROUND, (LONG_PTR)brush);

	ShowWindow(hMainWnd, SW_SHOW);
	UpdateWindow(hMainWnd);

	// message processing
	while (GetMessage(&msg, NULL, NULL, NULL)) {
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return msg.wParam;
}

LRESULT CALLBACK WndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
	HDC hDC;
	PAINTSTRUCT ps;
	RECT rect;
	COLORREF colorText = RGB(255, 255, 255);
	HFONT hFont;

	switch (uMsg) {
	case WM_COMMAND:
		// buton press actions
		switch (wParam) {
		// Choose a one button to update
		case 1:
			if (cStat == "choosebutton") {
				CurrentButton[0] = '1';
				cStat = "modificatebutton";
				SetWindowTextA(SettingsWind, "Настройки клавиши №1");
				ShowWindow(SettingsWind, SW_SHOW);
			}
			return 0;
		case 2:
			if (cStat == "choosebutton") {
				CurrentButton[0] = '2';
				cStat = "modificatebutton";
				SetWindowTextA(SettingsWind, "Настройки клавиши №2");
				ShowWindow(SettingsWind, SW_SHOW);
			}
			return 0;
		case 3:
			if (cStat == "choosebutton") {
				CurrentButton[0] = '3';
				cStat = "modificatebutton";
				SetWindowTextA(SettingsWind, "Настройки клавиши №3");
				ShowWindow(SettingsWind, SW_SHOW);
			}
			return 0;
		// Confirm changes:
		case 10:
			if (cStat == "modificatebutton") {
				buf[0] = 0x4D;

				std::string s = FromHexToBin(buf[0]);
				std::wstring stemp = std::wstring(s.begin(), s.end());
				LPCWSTR sw = stemp.c_str();

				SetWindowTextW(hrtext, sw);

				cStat = "choosebutton";
				ShowWindow(SettingsWind, SW_HIDE);
			}
			return 0;
		// Cancel changes
		case 11:
			if (cStat == "modificatebutton") {
				cStat = "choosebutton";
				ShowWindow(SettingsWind, SW_HIDE);
			}
			return 0;
		}
	case WM_PAINT:
		hDC = BeginPaint(hWnd, &ps);

		//main font
		hFont = CreateFont(24, 0, 0, 0, 0, 0, 0, 0,
			DEFAULT_CHARSET,
			0, 0, 0, 0,
			"Arial Bold"
		);
		
		

		SelectObject(hDC, hFont);
		//_itoa_s(9999, text, 16);
		DrawText(hDC, CurrentButton, -1, &rect, DT_CENTER | DT_VCENTER);
		/*DrawText(hDC, button1func, -1, &rectB1, DT_CENTER | DT_END_ELLIPSIS);
		DrawText(hDC, button2func, -1, &rectB2, DT_CENTER | DT_END_ELLIPSIS);
		DrawText(hDC, button3func, -1, &rectB3, DT_CENTER | DT_END_ELLIPSIS);*/
		EndPaint(hWnd, &ps);
		break;

		// keyboard support
	case WM_KEYDOWN:
		switch (wParam)
		{
		case VK_HOME:case VK_END:case VK_PRIOR:
		case VK_NEXT:case VK_LEFT:case VK_RIGHT:
		case VK_UP:case VK_DOWN:case VK_DELETE:
		case VK_SHIFT:case VK_SPACE:case VK_CONTROL:
		case VK_CAPITAL:case VK_MENU:case VK_TAB:
		case VK_BACK:case VK_RETURN:
			break;
		default:
			if (modifstart == false)
				if ((char)wParam == '1' || (char)wParam == '2' || (char)wParam == '3')
					CurrentButton[0] = (char)wParam;
			InvalidateRect(hWnd, NULL, TRUE);
			break;
		}break;

		/*case WM_KEYUP:
		switch (wParam)
		{
		case VK_HOME:case VK_END:case VK_PRIOR:
		case VK_NEXT:case VK_LEFT:case VK_RIGHT:
		case VK_UP:case VK_DOWN:case VK_DELETE:
		case VK_SHIFT:case VK_SPACE:case VK_CONTROL:
		case VK_CAPITAL:case VK_MENU:case VK_TAB:
		case VK_BACK:case VK_RETURN:
		break;
		default:
		text[0] = (char)wParam+1;
		InvalidateRect(hWnd, NULL, TRUE);
		break;
		}break;*/

	case WM_DESTROY:
		PostQuitMessage(NULL);
		break;
	default:
		return DefWindowProc(hWnd, uMsg, wParam, lParam);

	}
	return NULL;
}