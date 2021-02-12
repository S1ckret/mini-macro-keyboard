#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "hidapi.h"

#define KEYBOARD_VENDOR_ID (0x0483u)
#define KEYBOARD_PRODUCT_ID (0x5750u)

void print_hid_info(struct hid_device_info *dev);
void print_report_content(unsigned char *report, unsigned report_size);

struct hid_device_info *find_keyboard(struct hid_device_info *devs);

int main(int argc, char* argv[])
{
	if (hid_init()) return -1;
	printf("HID API has been inited...\n");

	hid_device *keyboard = hid_open(KEYBOARD_VENDOR_ID, KEYBOARD_PRODUCT_ID, NULL);
	if (!keyboard) {
		printf("The mini-macro-keyboard wasn't found! Please try again.\n");
	}
	printf("The mini-macro-keyboard was found!\n");
	unsigned char report_out[8] = {2, 69, 0, 0, 0, 0, 0, 0};
	printf("Trying to send output report...\n");
	print_report_content(report_out, 2);
	hid_write(keyboard, report_out, 2);

	printf("Trying to get intput report...\n");
	unsigned char report_in[8] = {0};
	hid_read_timeout(keyboard, report_in, 2, 2000);
	print_report_content(report_in, 2);

	hid_close(keyboard);

	return 0;
}

void print_hid_info(struct hid_device_info *dev) {
	printf("  VID: 0x%04hx", dev->vendor_id);
	printf("  PID: 0x%04hx\n", dev->product_id);
	printf("  serial_number: %ls", dev->serial_number);
	printf("  Manufacturer: %ls\n", dev->manufacturer_string);
}

void print_report_content(unsigned char *report, unsigned report_size) {
	printf("Report content: [");
	printf("%03d", report[0]);
	for (unsigned i = 1U; i < report_size; ++i) {
		printf(", %03d", report[i]);
	}
	printf("]\n");
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