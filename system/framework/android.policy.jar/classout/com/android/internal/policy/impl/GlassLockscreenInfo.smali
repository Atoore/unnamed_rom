.class public Lcom/android/internal/policy/impl/GlassLockscreenInfo;
.super Landroid/widget/RelativeLayout;
.source "GlassLockscreenInfo.java"


# static fields
.field public static final ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

.field public static final ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

.field public static final DAEMON_TURN_OFF:I = 0x0

.field public static final DAEMON_TURN_ON:I = 0x1

.field private static final DEBUG:Z = true

.field public static final KEY_AUTO_REFRESH_INTERVAL:Ljava/lang/String; = "aw_daemon_service_key_autorefresh_interval"

.field public static final KEY_CITY_NAME:Ljava/lang/String; = "CITY_NAME"

.field public static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field public static final KEY_DAEMON_ON_OFF:Ljava/lang/String; = "aw_daemon_service_key_service_status"

.field public static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_icon_num"

.field public static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field public static final KEY_UPDATED_TIME:Ljava/lang/String; = "aw_daemon_service_key_updated_time"

.field private static final MSG_BOOT_COMPLETED:I = 0x140

.field private static final MSG_WEATHER_SETTING_CHANGED:I = 0x12c

.field private static final MSG_WEATHER_UPDATED:I = 0x136

.field private static final TAG:Ljava/lang/String; = "GlassLockscreenInfo"

.field public static final TEMP_SCALE_CENTIGRADE:I = 0x1

.field public static final TEMP_SCALE_FAHRENHEIT:I


# instance fields
.field private mBatteryLevel:I

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mChargingLayout:Landroid/widget/RelativeLayout;

.field private mCharingText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutPosition:I

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mSpace_01:Landroid/widget/LinearLayout;

.field private mSpace_02:Landroid/widget/LinearLayout;

.field private mTemperatureUnit:Landroid/graphics/drawable/Drawable;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDaemonState:I

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/RelativeLayout;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .registers 12
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    .line 68
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    .line 70
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherCity:Landroid/widget/TextView;

    .line 71
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    .line 72
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherIcon:Landroid/widget/ImageView;

    .line 73
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    .line 80
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBootCompleted:Z

    .line 81
    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mShowingBatteryInfo:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mPluggedIn:Z

    .line 86
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    .line 87
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    iput v6, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    .line 99
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 102
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v5, :cond_3b

    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_df

    .line 103
    :cond_3b
    const v2, 0x109007e

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    :goto_41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_position"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    .line 110
    const v2, 0x102028b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 111
    const v2, 0x1020290

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    const v2, 0x1020292

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    .line 116
    const v2, 0x1020293

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    .line 117
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherCity:Landroid/widget/TextView;

    .line 121
    const v2, 0x102028d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    .line 122
    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherIcon:Landroid/widget/ImageView;

    .line 123
    const v2, 0x1020291

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    .line 125
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;-><init>(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;-><init>(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->init()V

    .line 170
    return-void

    .line 105
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_df
    const v2, 0x109007d

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_41
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockscreenInfo;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelChangeWeatherSetting(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelUpdateWeather()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findDrawableId(I)I
    .registers 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 367
    packed-switch p1, :pswitch_data_38

    .line 429
    :goto_4
    :pswitch_4
    return v0

    .line 374
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 378
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 380
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 385
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 387
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 391
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 394
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 396
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 399
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 402
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 406
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 410
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 412
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 414
    :pswitch_25
    const/16 v0, 0xe

    goto :goto_4

    .line 416
    :pswitch_28
    const/16 v0, 0xf

    goto :goto_4

    .line 418
    :pswitch_2b
    const/16 v0, 0x10

    goto :goto_4

    .line 420
    :pswitch_2e
    const/16 v0, 0x11

    goto :goto_4

    .line 425
    :pswitch_31
    const/16 v0, 0x12

    goto :goto_4

    .line 427
    :pswitch_34
    const/16 v0, 0x13

    goto :goto_4

    .line 367
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_4
        :pswitch_4
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method

.method private handelChangeWeatherSetting(I)V
    .registers 2
    .parameter "daemonState"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    .line 174
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setGlassLockInfoTempLayout(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateChargingInfo()V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setWeatherInfoVisivility(I)V

    .line 177
    return-void
.end method

.method private handelUpdateWeather()V
    .registers 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateWeatherInfo()V

    .line 181
    return-void
.end method

.method private handleBootCompleted()V
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBootCompleted:Z

    .line 186
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 189
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .registers 6

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mShowingBatteryInfo:Z

    if-nez v0, :cond_8

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    .line 364
    :goto_7
    return-void

    .line 350
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1d

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 355
    :cond_1d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mPluggedIn:Z

    if-eqz v0, :cond_4f

    .line 356
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_35

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    goto :goto_7

    .line 359
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    goto :goto_7

    .line 362
    :cond_4f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    goto :goto_7
.end method

.method private setGlassLockInfoTempLayout(I)V
    .registers 7
    .parameter "daemonState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 213
    packed-switch p1, :pswitch_data_90

    .line 252
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "setGlassLockInfoTemLayotu() Daemon state is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    :goto_19
    return-void

    .line 215
    :pswitch_1a
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v3, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 218
    :cond_2d
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v3, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 221
    :cond_40
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v4, :cond_53

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_53

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 232
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 237
    :pswitch_5e
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v3, :cond_71

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_71

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 240
    :cond_71
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v4, :cond_84

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_84

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 247
    :cond_84
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 213
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_5e
    .end packed-switch
.end method

.method private setWeatherIcon(I)V
    .registers 6
    .parameter "iconNum"

    .prologue
    .line 316
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    .line 328
    .local v1, unlock_weather_drawables:[I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findDrawableId(I)I

    move-result v0

    .line 329
    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    return-void

    .line 316
    nop

    :array_14
    .array-data 0x4
        0xf0t 0x3t 0x8t 0x1t
        0xf1t 0x3t 0x8t 0x1t
        0xf2t 0x3t 0x8t 0x1t
        0xf3t 0x3t 0x8t 0x1t
        0xf4t 0x3t 0x8t 0x1t
        0xf5t 0x3t 0x8t 0x1t
        0xf6t 0x3t 0x8t 0x1t
        0xf7t 0x3t 0x8t 0x1t
        0xf8t 0x3t 0x8t 0x1t
        0xf9t 0x3t 0x8t 0x1t
        0xfat 0x3t 0x8t 0x1t
        0xfbt 0x3t 0x8t 0x1t
        0xfbt 0x3t 0x8t 0x1t
        0xfct 0x3t 0x8t 0x1t
        0xfdt 0x3t 0x8t 0x1t
        0xfet 0x3t 0x8t 0x1t
        0xfft 0x3t 0x8t 0x1t
        0x0t 0x4t 0x8t 0x1t
        0x1t 0x4t 0x8t 0x1t
        0x2t 0x4t 0x8t 0x1t
        0x3t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private setWeatherInfoVisivility(I)V
    .registers 4
    .parameter "daemonState"

    .prologue
    const/16 v1, 0x8

    .line 260
    packed-switch p1, :pswitch_data_1c

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    :goto_a
    return-void

    .line 262
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 265
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateWeatherInfo()V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 260
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method private updateCharingStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 277
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "mCharging is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_13
    :goto_13
    return-void

    .line 280
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method

.method private updateWeatherView(FIILjava/lang/String;)V
    .registers 9
    .parameter "currentTemp"
    .parameter "tempScale"
    .parameter "iconNum"
    .parameter "cityName"

    .prologue
    const v2, 0x10803ea

    const/4 v3, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2e

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 308
    :goto_1a
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, text_currentTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 311
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setWeatherIcon(I)V

    .line 313
    return-void

    .line 303
    .end local v0           #text_currentTemp:Ljava/lang/String;
    :cond_2e
    if-nez p2, :cond_42

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_1a

    .line 306
    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_1a
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 200
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 205
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateChargingInfo()V

    .line 208
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setWeatherInfoVisivility(I)V

    .line 209
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setGlassLockInfoTempLayout(I)V

    .line 210
    return-void
.end method

.method public updateChargingInfo()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mShowingBatteryInfo:Z

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mPluggedIn:Z

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->refreshBatteryStringAndIcon()V

    .line 340
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateCharingStatus()V

    .line 342
    return-void
.end method

.method public updateWeatherInfo()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CITY_NAME"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, cityName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_updated_time"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, updateDate:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_current_temp"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 291
    .local v1, currentTemp:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_temp_scale"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, tempScale:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_icon_num"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 294
    .local v2, iconNum:I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateWeatherView(FIILjava/lang/String;)V

    .line 296
    return-void
.end method
