#include "ds3231.h"
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/logging/log.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/sys/printk.h>

LOG_MODULE_REGISTER(i2c1, LOG_LEVEL_DBG);
static const struct device* i2c = DEVICE_DT_GET(DT_NODELABEL(i2c1));
uint8_t valueBCD[6];

int bcdToDec(uint8_t val)
{
	return (int)((val / 16 * 10) + (val % 16));
}
int main()
{

	unsigned char datas[6], data_re[6];
	memset(datas, 0, sizeof(datas));
	memset(data_re, 0, sizeof(data_re));
	printk("n3\n");
	datas[0] = 0x00;
	datas[1] = 0x20;
	datas[2] = 0x20;
	datas[3] = 0x00;
	datas[4] = 0x01;
	datas[5] = 0x01;
	set_time(i2c, &datas[0]);
	printk("n4\n");
	k_msleep(1000);

	while (1)
	{
		k_msleep(200);
		printk("n1\n");
		get_time(i2c, &data_re[0]);
		printk("n2\n");
		for (int i = 0; i < 6; i++)
		{
			valueBCD[i] = bcdToDec(data_re[i]);
		}
	}
	return 0;
}
