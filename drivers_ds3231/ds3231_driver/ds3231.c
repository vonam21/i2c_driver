#include "ds3231.h"

#define DT_DRV_COMPAT zephyr_ds3231_ver1

static int ds3231_driver_init(const struct device *device_tree)
{
    int ret;
    const struct sample_ds3231_driver_config *config = (struct sample_ds3231_driver_config *)device_tree->config;
    if (!device_is_ready(config->i2c))
    {
        printk("I2C is not ready!\n\r");
    }
    // uint8_t pa[6] = {0x12,0x00,0x00,0x11,0x00,0x00};
    // const struct ds3231_driver_api1 *api = device_tree->api;
    // api->set_time(device_tree,pa);
    // return 0;
}

static void get_time_trong_filec(const struct device *device_tree, unsigned char *data_receive)
{

    const struct sample_ds3231_driver_config *config = (struct sample_ds3231_driver_config *)device_tree->config;
    if (i2c_burst_read(device_tree, config->address, (uint16_t)0x00, data_receive, 6))
    {
        printk("Fail to read\n");
    }
}

static void set_time_trong_filec(const struct device *device_tree, unsigned char *data_send)
{
    const struct sample_ds3231_driver_config *config = (struct sample_ds3231_driver_config *)device_tree->config;
    // if (!device_is_ready(device_tree)) {
    //     printk("I2C is not ready!\n\r");
    // }
    uint8_t pa[6] = {0x12, 0x00, 0x00, 0x11, 0x00, 0x00};
    if (i2c_burst_write(device_tree, config->address, (uint16_t)0x00, data_send, 6))
    {
        printk("Fail to read\n");
    }
}

static const struct ds3231_driver_api1 sample_ds3231_driver_api = {
    .get_time = get_time_trong_filec,
    .set_time = set_time_trong_filec,
};

#define INIT_FUNNY_DRIVER(i)                                               \
    struct sample_ds3231_driver_config sample_ds3231_driver_config_##i = { \
        .address = DT_INST_PROP(i, address),                               \
        .i2c = DEVICE_DT_GET(DT_INST_PARENT(i)),                           \
    };                                                                     \
                                                                           \
    DEVICE_DT_INST_DEFINE(i, ds3231_driver_init, NULL,                     \
                          NULL,                                            \
                          &sample_ds3231_driver_config_##i, POST_KERNEL,   \
                          99, &sample_ds3231_driver_api);

DT_INST_FOREACH_STATUS_OKAY(INIT_FUNNY_DRIVER)





