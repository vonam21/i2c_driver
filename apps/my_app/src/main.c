#include "ds3231.h"
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/logging/log.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/sys/printk.h>
LOG_MODULE_REGISTER(i2c1, LOG_LEVEL_DBG);
// #define led DT_NODELABEL(green_led_1)
// static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(led, gpios);
static const struct device *i2c = DEVICE_DT_GET(DT_NODELABEL(i2c1));

uint8_t valueBCD[6];
int bcdToDec(uint8_t val)
{
  return (int)( (val/16*10) + (val%16) );
}
int main()
{
    unsigned char datas[6],data_re[6];
    
    memset(datas,0,sizeof(datas));
    memset(data_re,0,sizeof(data_re));
    // int ret;
    // if (!gpio_is_ready_dt(&led))
    // {
    //     return 0;
    // }

    printk("n3\n");
    set_time(i2c,datas);
    printk("n4\n");
    k_msleep(1000);
    // ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
    // if (ret < 0)
    // {
    //     return 0;
    // }
    while (1)
    {
        // gpio_pin_toggle_dt(&led);
        k_msleep(200);
        printk("n1\n");
        get_time(i2c,data_re);
        printk("n2\n");
        for(int i=0; i < 6 ; i++)
        {
            valueBCD[i] = bcdToDec(data_re[i]);
        }
        
    }
    return 0;
}