#ifndef __DS3231_DRIVER_H__
#define __DS3231_DRIVER_H__

#include <zephyr/device.h>
#include <zephyr/drivers/sensor.h>
#include <zephyr/drivers/i2c.h>
struct ds3231_driver_api1
{
    void (*get_time)(const struct device *device_tree, unsigned char *data_receive);
    void (*set_time)(const struct device *device_tree, unsigned char *data_send);
    // void (*turn_on)(const struct device *dev);
    // void (*turn_off)(const struct device *dev);
};
struct sample_ds3231_driver_config
{
    const struct device *i2c;
    uint32_t address;
};

__syscall void get_time(const struct device *device_tree, unsigned char *data_receive);
static inline void z_impl_get_time(const struct device *device_tree, unsigned char *data_receive)
{
    const struct ds3231_driver_api1 *api = device_tree->api;
    api->get_time(device_tree, data_receive);
}

__syscall void set_time(const struct device *device_tree, unsigned char *data_send);
static inline void z_impl_set_time(const struct device *device_tree, unsigned char *data_send)
{
    const struct ds3231_driver_api1 *api = device_tree->api;
    // void)set_time_trong_filec(device_tree,data_send);
    api->set_time(device_tree, data_send);
}

#include <syscalls/ds3231.h>
#endif