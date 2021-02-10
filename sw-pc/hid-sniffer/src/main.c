#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "hidapi.h"

#define KEYBOARD_VENDOR_ID (0x0483u)
#define KEYBOARD_PRODUCT_ID (0x5750u)

void print_hid_info(struct hid_device_info *dev);

struct hid_device_info *find_keyboard(struct hid_device_info *devs);

int main(int argc, char* argv[])
{
	if (hid_init()) return -1;

	struct hid_device_info *devs = hid_enumerate(0x0, 0x0);

	struct hid_device_info *keyboard = find_keyboard(devs);

	if (keyboard) {
		print_hid_info(keyboard);
		printf("The mini-macro-keyboard was found!\n");
	}
	else {
		printf("The mini-macro-keyboard wasn't found! Please try again.\n");
	}

	hid_free_enumeration(devs);

#ifdef WIN32
	system("pause");
#endif

	return 0;
}

void print_hid_info(struct hid_device_info *dev) {
	printf("  VID: 0x%04hx", dev->vendor_id);
	printf("  PID: 0x%04hx\n", dev->product_id);
	printf("  serial_number: %ls", dev->serial_number);
	printf("  Manufacturer: %ls\n", dev->manufacturer_string);
}

struct hid_device_info *find_keyboard(struct hid_device_info *devs) {
	struct hid_device_info *cur_dev = devs;
	printf("Looking for device with VID: %04hx PID: %04hx...\n", KEYBOARD_VENDOR_ID, KEYBOARD_PRODUCT_ID);
	struct hid_device_info *keyboard = NULL;
	while (cur_dev) {
		printf("Device found:\n");
		if (cur_dev->vendor_id == KEYBOARD_VENDOR_ID && cur_dev->product_id == KEYBOARD_PRODUCT_ID) {
			keyboard = cur_dev;
		}
		cur_dev = cur_dev->next;
	}

	return keyboard;
}