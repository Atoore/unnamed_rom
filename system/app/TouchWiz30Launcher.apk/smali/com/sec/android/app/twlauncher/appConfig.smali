.class public Lcom/sec/android/app/twlauncher/appConfig;
.super Ljava/lang/Object;
.source "appConfig.java"


# static fields
.field private static final instance:Lcom/sec/android/app/twlauncher/appConfig;


# instance fields
.field private prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/sec/android/app/twlauncher/appConfig;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/appConfig;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/appConfig;->instance:Lcom/sec/android/app/twlauncher/appConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-string v5, "ro.product.model"

    const-string v4, "lcdtest"

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    .line 16
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    .line 18
    const-string v2, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, product:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v3, "MODEL"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    const-string v2, "lcdtest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODEL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v2, "I9103"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "I927"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    :cond_0
    const-string v2, "lcdtest"

    const-string v2, "I9103 setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9103()V

    .line 55
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v2, "I9101"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "I9100G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    :cond_2
    const-string v2, "lcdtest"

    const-string v2, "I9101 setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9101()V

    goto :goto_0

    .line 28
    :cond_3
    const-string v2, "E110S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    const-string v2, "lcdtest"

    const-string v2, "E110S setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupE110S()V

    goto :goto_0

    .line 31
    :cond_4
    const-string v2, "I9100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    const-string v2, "lcdtest"

    const-string v2, "I9100 setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9100()V

    goto :goto_0

    .line 34
    :cond_5
    const-string v2, "SC02C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    const-string v2, "lcdtest"

    const-string v2, "SC02C setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9100()V

    goto :goto_0

    .line 38
    :cond_6
    const-string v2, "lcdtest"

    const-string v2, "Default setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v2, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, product_unknown:Ljava/lang/String;
    const-string v2, "lcdtest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown MODEL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v2, "SHV-E110S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    const-string v2, "lcdtest"

    const-string v2, "This is SHV-E110S."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupE110S()V

    goto/16 :goto_0

    .line 48
    :cond_7
    const-string v2, "SGH-I727"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SGH-T989"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 49
    :cond_8
    const-string v2, "lcdtest"

    const-string v2, "This is SGH-I727 or SGH-T989."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9100()V

    goto/16 :goto_0

    .line 52
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/appConfig;->setupI9101()V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/twlauncher/appConfig;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/sec/android/app/twlauncher/appConfig;->instance:Lcom/sec/android/app/twlauncher/appConfig;

    return-object v0
.end method

.method private setupE110S()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private setupI9100()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private setupI9101()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/class/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private setupI9103()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/appConfig;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
