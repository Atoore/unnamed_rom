.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final EUR_VOL_CODE:[Ljava/lang/String; = null

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x9

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0xa

.field public static final MUSIC_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0xa

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final ACTION_THEME_PACKAGE_CHANGED:Ljava/lang/String;

.field private final DEBUG_THEME:Z

.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_KOR:[I

.field private final STREAM_VOLUME_ALIAS_ORG:[I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDockAddress:Ljava/lang/String;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field private mIsEarProtectLimitOn:Z

.field private mIsRinging:Z

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMonoMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateSetting:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TW_Touch.ogg"

    aput-object v1, v0, v3

    const-string v1, "TW_Unlock_Glass.ogg"

    aput-object v1, v0, v4

    const-string v1, "TW_Unlock_Puzzle.ogg"

    aput-object v1, v0, v5

    const-string v1, "TW_Low_Battery.ogg"

    aput-object v1, v0, v6

    const-string v1, "TW_Battery_caution.ogg"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Charger_Connection.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Insert.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TW_Call_Disconnect.ogg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TW_SIP.ogg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TW_Silent_mode_off.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 353
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ATL"

    aput-object v1, v0, v3

    const-string v1, "ATO"

    aput-object v1, v0, v4

    const-string v1, "AUT"

    aput-object v1, v0, v5

    const-string v1, "BGL"

    aput-object v1, v0, v6

    const-string v1, "COS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DBT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DRE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EDC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FOP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HUI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ITV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MAX"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MOB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NEE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "OMN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "OPT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ORG"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PHN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ROM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SER"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SIM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SSA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SUN"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SWC"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TCL"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TIM"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "TMN"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "TPH"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "TRA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TUR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "VGR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "VIA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "VOD"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "WIN"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "XEC"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "XEE"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "XEF"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "XEG"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "XEH"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "XEN"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "XEO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "XET"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "XEU"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "XEZ"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "XFA"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "XSK"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->EUR_VOL_CODE:[Ljava/lang/String;

    .line 2605
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 2607
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 364
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 93
    iput-boolean v6, p0, Landroid/media/AudioService;->DEBUG_THEME:Z

    .line 94
    const-string/jumbo v2, "samsung.theme_package_changed"

    iput-object v2, p0, Landroid/media/AudioService;->ACTION_THEME_PACKAGE_CHANGED:Ljava/lang/String;

    .line 142
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 146
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 171
    const/16 v2, 0x12

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_202

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_20a

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_212

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_21a

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_222

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_22a

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_232

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_23a

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_242

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_24a

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_252

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v5, [I

    fill-array-data v4, :array_25a

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v5, [I

    fill-array-data v4, :array_262

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v5, [I

    fill-array-data v4, :array_26a

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v5, [I

    fill-array-data v4, :array_272

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_27a

    aput-object v3, v2, v7

    const/16 v3, 0x10

    new-array v4, v5, [I

    fill-array-data v4, :array_282

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v5, [I

    fill-array-data v4, :array_28a

    aput-object v4, v2, v3

    iput-object v2, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 196
    new-array v2, v7, [I

    fill-array-data v2, :array_292

    iput-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 218
    new-array v2, v7, [I

    fill-array-data v2, :array_2b4

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_ORG:[I

    .line 237
    new-array v2, v7, [I

    fill-array-data v2, :array_2d6

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_KOR:[I

    .line 256
    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_ORG:[I

    check-cast v2, [I

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 259
    new-instance v2, Landroid/media/AudioService$1;

    invoke-direct {v2, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 315
    new-instance v2, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v2, p0, v9}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v2, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v2, p0, v9}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 325
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 352
    iput-boolean v8, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    .line 1390
    new-instance v2, Landroid/media/AudioService$2;

    invoke-direct {v2, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 2609
    new-instance v2, Landroid/media/AudioService$3;

    invoke-direct {v2, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2686
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 2981
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 3062
    new-instance v2, Landroid/media/AudioService$4;

    invoke-direct {v2, p0}, Landroid/media/AudioService$4;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 369
    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    iget-object v4, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v6

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 373
    new-instance v2, Landroid/view/VolumePanel;

    invoke-direct {v2, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 374
    new-instance v2, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v2, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 375
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 376
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 377
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 378
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 380
    const/4 v2, -0x2

    iput v2, p0, Landroid/media/AudioService;->mMode:I

    .line 381
    invoke-virtual {p0, v6, v9}, Landroid/media/AudioService;->setMode(ILandroid/os/IBinder;)V

    .line 382
    iput-boolean v8, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 386
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 387
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 389
    iput-boolean v6, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 391
    iget v2, p0, Landroid/media/AudioService;->mMonoMode:I

    invoke-direct {p0, v2}, Landroid/media/AudioService;->setMonoMode(I)V

    .line 393
    iget-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 394
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 396
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 397
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v2, p1, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v2, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 413
    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 424
    iget-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 429
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 432
    iget-object v2, p0, Landroid/media/AudioService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "samsung.theme_package_changed"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    return-void

    .line 171
    nop

    :array_202
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_20a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_212
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_21a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_222
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_22a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_232
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_23a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_242
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_24a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_252
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_25a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_262
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_26a
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_272
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_27a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_282
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_28a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 196
    :array_292
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 218
    :array_2b4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 237
    :array_2d6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    return p1
.end method

.method static synthetic access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 89
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/AudioService;III)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$3300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    return v0
.end method

.method static synthetic access$3700(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic access$4202(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic access$4300(Landroid/media/AudioService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic access$4400(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$4602(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$4702(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$4800(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    return-void
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    return v0
.end method

.method static synthetic access$5302(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    return p1
.end method

.method static synthetic access$5400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->EUR_VOL_CODE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    return-void
.end method

.method static synthetic access$5600()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$5702(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$5800()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/media/AudioService;->updateTheme()V

    return-void
.end method

.method private broadcastRingerMode()V
    .registers 6

    .prologue
    .line 1596
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1598
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1601
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1602
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1603
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .parameter "vibrateType"

    .prologue
    .line 1607
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1609
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1610
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1611
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1613
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 3

    .prologue
    .line 2767
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2768
    const/4 v0, 0x0

    .line 2770
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 2220
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 2221
    return-void
.end method

.method private checkForRingerModeChange(II)Z
    .registers 9
    .parameter "oldIndex"
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1434
    const/4 v0, 0x1

    .line 1435
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1437
    .local v1, newRingerMode:I
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 1439
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1f

    add-int/lit8 v2, p1, 0x5

    div-int/lit8 v2, v2, 0xa

    if-ne v2, v4, :cond_1f

    .line 1442
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2a

    move v1, v4

    .line 1446
    :cond_1f
    :goto_1f
    iput-boolean v5, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 1458
    :goto_21
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v2, :cond_29

    .line 1459
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1466
    const/4 v0, 0x0

    .line 1469
    :cond_29
    return v0

    :cond_2a
    move v1, v5

    .line 1442
    goto :goto_1f

    .line 1448
    :cond_2c
    if-ne p2, v4, :cond_32

    .line 1450
    const/4 v1, 0x2

    .line 1451
    iput-boolean v4, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_21

    .line 1454
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 437
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 438
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 439
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 440
    return-void
.end method

.method private createStreamStates()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 457
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 458
    .local v2, numStreamTypes:I
    new-array v3, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 460
    .local v3, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v2, :cond_30

    .line 462
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    const/16 v5, 0xc

    if-ne v4, v5, :cond_20

    .line 463
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    const-string v5, "VOLUME_HPH_MUSIC"

    invoke-direct {v4, p0, v5, v0, v7}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    .line 460
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 465
    :cond_20
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-direct {v4, p0, v5, v0, v7}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    goto :goto_1d

    .line 471
    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-ge v0, v2, :cond_71

    .line 472
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_6e

    .line 473
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 474
    .local v1, index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 475
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 476
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 477
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 471
    .end local v1           #index:I
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 480
    :cond_71
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2693
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2695
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2696
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2697
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2698
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 2701
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4b

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 2702
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2988
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2990
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2991
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2992
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2993
    .local v0, fse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     receiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 2995
    .end local v0           #fse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 2996
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 1545
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 1546
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :cond_1f
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 1551
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 1552
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_20
    return-void
.end method

.method private getActiveStreamType(I)I
    .registers 9
    .parameter "suggestedStreamType"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string v6, "AudioService"

    .line 1557
    const/4 v1, 0x0

    .line 1559
    .local v1, isOffhook:Z
    :try_start_5
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1560
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_1e

    move-result v1

    .line 1565
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    :goto_16
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v5, :cond_28

    .line 1567
    const/4 v3, 0x6

    .line 1590
    :goto_1d
    return v3

    .line 1561
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 1562
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v3, "Couldn\'t connect to phone service"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1568
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_28
    if-nez v1, :cond_30

    invoke-static {v4}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_30
    move v3, v4

    .line 1570
    goto :goto_1d

    .line 1571
    :cond_32
    invoke-static {v5}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v5

    .line 1573
    goto :goto_1d

    .line 1575
    :cond_3a
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4b

    .line 1576
    const-string v3, "AudioService"

    const-string v3, "getActiveStreamType: Forcing STREAM_FM_RADIO..."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/16 v3, 0xa

    goto :goto_1d

    .line 1580
    :cond_4b
    invoke-virtual {p0}, Landroid/media/AudioService;->isFMPlayerActive()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1585
    :cond_51
    const/high16 v3, -0x8000

    if-ne p1, v3, :cond_57

    .line 1587
    const/4 v3, 0x2

    goto :goto_1d

    :cond_57
    move v3, p1

    .line 1590
    goto :goto_1d
.end method

.method private static getMsg(II)I
    .registers 4
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 1617
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .registers 2
    .parameter "msg"

    .prologue
    .line 1621
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 874
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 877
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 879
    return p0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 2224
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private hphToSpk(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1487
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isHphStreams(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1488
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    .line 1489
    const/4 v0, 0x3

    .line 1496
    :goto_b
    return v0

    .line 1490
    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_13

    .line 1491
    const/16 v0, 0xa

    goto :goto_b

    .line 1492
    :cond_13
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1a

    .line 1493
    const/16 v0, 0x9

    goto :goto_b

    :cond_1a
    move v0, p1

    .line 1496
    goto :goto_b
.end method

.method private isHphStreams(I)Z
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1513
    const/16 v0, 0xc

    if-eq p1, v0, :cond_c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c

    const/16 v0, 0xe

    if-ne p1, v0, :cond_e

    .line 1516
    :cond_c
    const/4 v0, 0x1

    .line 1518
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isSeperatedStream(I)Z
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1473
    packed-switch p1, :pswitch_data_8

    .line 1482
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1480
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1473
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isSpkStreams(I)Z
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1522
    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa

    if-eq p1, v0, :cond_b

    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    .line 1525
    :cond_b
    const/4 v0, 0x1

    .line 1527
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isStreamMutedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1536
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    .line 2186
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2190
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 2210
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2212
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2215
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2217
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    const/16 v3, 0x80

    .line 2196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2198
    .local v0, noisyIntent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2199
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2201
    const/4 v1, 0x0

    invoke-static {v3, v1, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2204
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 5

    .prologue
    .line 2651
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_32

    .line 2652
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2654
    :try_start_1a
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33

    .line 2662
    :cond_32
    :goto_32
    return-void

    .line 2656
    :catch_33
    move-exception v1

    move-object v0, v1

    .line 2657
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method private pushMediaButtonReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "newReceiver"

    .prologue
    .line 3004
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3016
    :goto_18
    return-void

    .line 3007
    :cond_19
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3008
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3009
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3010
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3011
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3015
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_38
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    new-instance v3, Landroid/media/AudioService$RemoteControlStackEntry;

    invoke-direct {v3, p1}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method private readPersistedSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 483
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 485
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 487
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 489
    const-string/jumbo v1, "mono_audio_db"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMonoMode:I

    .line 496
    const-string/jumbo v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 501
    const-string/jumbo v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 505
    const-string/jumbo v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 508
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v4, :cond_48

    .line 509
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v5, v1, v2

    .line 514
    :cond_48
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 517
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 518
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 519
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .registers 8
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 2713
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2716
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2717
    if-eqz p2, :cond_22

    .line 2719
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2734
    :cond_22
    return-void

    .line 2724
    :cond_23
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2725
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2727
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2728
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 8
    .parameter "cb"

    .prologue
    .line 2742
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v3, 0x1

    move v1, v3

    .line 2744
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_1a
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2745
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2746
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2747
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2748
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 2742
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_54
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1a

    .line 2753
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_57
    if-eqz v1, :cond_5c

    .line 2756
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2758
    :cond_5c
    return-void
.end method

.method private removeMediaButtonReceiver(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "newReceiver"

    .prologue
    .line 3023
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3024
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3025
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3026
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3027
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3031
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1f
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 6
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 526
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 12
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1626
    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    move v0, p1

    .line 1628
    .local v0, msg:I
    :goto_4
    if-nez p3, :cond_18

    .line 1629
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1634
    :cond_9
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1636
    :goto_11
    return-void

    .line 1626
    .end local v0           #msg:I
    :cond_12
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v1

    move v0, v1

    goto :goto_4

    .line 1630
    .restart local v0       #msg:I
    :cond_18
    const/4 v1, 0x1

    if-ne p3, v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_11
.end method

.method private sendVolumeUpdate(III)V
    .registers 6
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"

    .prologue
    .line 665
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 666
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    return-void
.end method

.method private setMonoMode(I)V
    .registers 4
    .parameter "monoMode"

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 531
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .registers 13
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 797
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 803
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 804
    .local v8, numStreamTypes:I
    sub-int v9, v8, v2

    .local v9, streamType:I
    :goto_c
    if-ltz v9, :cond_4a

    .line 805
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 806
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v4, :cond_2e

    .line 808
    :cond_1e
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 809
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 804
    :cond_2e
    :goto_2e
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 812
    :cond_31
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_2e

    .line 814
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 815
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_2e

    .line 821
    :cond_4a
    if-eqz p2, :cond_57

    .line 822
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 825
    :cond_57
    return-void
.end method

.method private setStreamVolumeIndex(II)V
    .registers 4
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 522
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 523
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .registers 13
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 687
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 690
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 692
    if-eqz p2, :cond_1b

    .line 693
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 695
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 706
    :cond_1b
    :goto_1b
    return-void

    .line 699
    :cond_1c
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz p3, :cond_1b

    .line 702
    :cond_24
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_1b
.end method

.method private spkToHph(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isSpkStreams(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1501
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 1502
    const/16 v0, 0xc

    .line 1509
    :goto_b
    return v0

    .line 1503
    :cond_c
    const/16 v0, 0xa

    if-ne p1, v0, :cond_13

    .line 1504
    const/16 v0, 0xd

    goto :goto_b

    .line 1505
    :cond_13
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1a

    .line 1506
    const/16 v0, 0xe

    goto :goto_b

    :cond_1a
    move v0, p1

    .line 1509
    goto :goto_b
.end method

.method private updateTheme()V
    .registers 3

    .prologue
    .line 3074
    new-instance v0, Landroid/view/VolumePanel;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 3075
    return-void
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 444
    monitor-enter p0

    .line 445
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 448
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 449
    :catch_9
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 454
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 8
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v3, 0x1

    const-string v4, "AudioService"

    .line 2893
    const-string v1, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :try_start_1b
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1b .. :try_end_1e} :catch_27

    .line 2897
    const/4 v2, 0x1

    :try_start_1f
    invoke-direct {p0, p2, v2}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2898
    monitor-exit v1

    .line 2907
    :goto_23
    return v3

    .line 2898
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    :try_start_26
    throw v2
    :try_end_27
    .catch Ljava/util/ConcurrentModificationException; {:try_start_26 .. :try_end_27} :catch_27

    .line 2899
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 2903
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_23
.end method

.method public adjustStreamVolume(III)V
    .registers 16
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 557
    invoke-direct {p0, p2}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 558
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 562
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_60

    .line 563
    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 564
    const/16 p1, 0xa

    .line 578
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, p1

    aget-object v6, v0, v1

    .line 579
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_7a

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v11, v0

    .line 580
    .local v11, oldIndex:I
    :goto_29
    const/4 v8, 0x1

    .line 584
    .local v8, adjustVolume:Z
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_31

    const/4 v0, 0x2

    if-ne p1, v0, :cond_35

    .line 588
    :cond_31
    invoke-direct {p0, v11, p2}, Landroid/media/AudioService;->checkForRingerModeChange(II)Z

    move-result v8

    .line 593
    :cond_35
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_80

    .line 594
    if-eqz v8, :cond_4c

    .line 595
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(I)V

    .line 597
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 600
    :cond_4c
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .line 613
    .local v9, index:I
    :goto_50
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result p1

    .line 617
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 619
    invoke-direct {p0, p1, v11, v9}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 620
    return-void

    .line 566
    .end local v6           #streamState:Landroid/media/AudioService$VolumeStreamState;
    .end local v8           #adjustVolume:Z
    .end local v9           #index:I
    .end local v11           #oldIndex:I
    :cond_5d
    const/16 p1, 0xd

    goto :goto_16

    .line 569
    :cond_60
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 570
    const-string v0, "audioParam;curDevice"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, isMusicHPH:Ljava/lang/String;
    const-string v0, "HPH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 572
    invoke-direct {p0, p1}, Landroid/media/AudioService;->spkToHph(I)I

    move-result p1

    goto :goto_16

    .line 579
    .end local v10           #isMusicHPH:Ljava/lang/String;
    .restart local v6       #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_7a
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v11, v0

    goto :goto_29

    .line 602
    .restart local v8       #adjustVolume:Z
    .restart local v11       #oldIndex:I
    :cond_80
    if-eqz v8, :cond_96

    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 605
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 608
    :cond_96
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .restart local v9       #index:I
    goto :goto_50
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 6
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 545
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 548
    .local v0, streamType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_d

    .line 549
    and-int/lit8 p3, p3, -0x5

    .line 552
    :cond_d
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 553
    return-void
.end method

.method public adjustVolume(II)V
    .registers 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 539
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 540
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .parameter "method"

    .prologue
    .line 1639
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1641
    const/4 v1, 0x1

    .line 1647
    :goto_b
    return v1

    .line 1643
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public clearAllScoClients()V
    .registers 6

    .prologue
    .line 1382
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1383
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1384
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1b

    .line 1385
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$ScoClient;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1387
    :cond_1b
    monitor-exit v3

    .line 1388
    return-void

    .line 1387
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3056
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 3057
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 3058
    return-void
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 990
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .registers 2

    .prologue
    .line 761
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;
    .registers 8
    .parameter "cb"

    .prologue
    .line 1367
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1369
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1370
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_20

    .line 1371
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 1372
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_1d

    .line 1373
    monitor-exit v4

    move-object v1, v0

    .line 1377
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Ljava/lang/Object;
    :goto_1c
    return-object v1

    .line 1370
    .end local v1           #client:Ljava/lang/Object;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1375
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    :cond_20
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 1376
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    monitor-exit v4

    move-object v1, v0

    .restart local v1       #client:Ljava/lang/Object;
    goto :goto_1c

    .line 1378
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .end local v1           #client:Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v5
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 755
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 756
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 731
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 734
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_41

    .line 735
    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 736
    const/16 p1, 0xa

    .line 749
    :cond_13
    :goto_13
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1

    .line 738
    :cond_3e
    const/16 p1, 0xd

    goto :goto_13

    .line 740
    :cond_41
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 741
    const-string v1, "audioParam;curDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v1, "HPH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 744
    invoke-direct {p0, p1}, Landroid/media/AudioService;->spkToHph(I)I

    move-result p1

    goto :goto_13
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .parameter "vibrateType"

    .prologue
    .line 849
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 1238
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1239
    const/4 v0, 0x1

    .line 1241
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEarProtectLimitOn()Z
    .registers 2

    .prologue
    .line 1212
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    if-eqz v0, :cond_6

    .line 1213
    const/4 v0, 0x1

    .line 1215
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFMPlayerActive()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1173
    :try_start_1
    const-string v2, "FMPlayer"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v1

    .line 1175
    .local v1, fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    if-nez v1, :cond_16

    .line 1176
    const-string v2, "AudioService"

    const-string v3, "isFMPlayerActive: couldn\'t get Fmplayer reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1181
    .end local v1           #fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    :goto_15
    return v2

    .line 1179
    .restart local v1       #fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    :cond_16
    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v2

    goto :goto_15

    .line 1180
    .end local v1           #fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    :catch_1b
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move v2, v4

    .line 1181
    goto :goto_15
.end method

.method public isRadioSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1201
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 1204
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1158
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 1161
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1540
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result p1

    .line 1541
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move v0, v2

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1531
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result p1

    .line 1532
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move v0, v2

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadSoundEffects()Z
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1011
    iget-object v5, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1012
    :try_start_6
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v6, :cond_d

    .line 1013
    monitor-exit v5

    move v5, v11

    .line 1053
    :goto_c
    return v5

    .line 1015
    :cond_d
    new-instance v6, Landroid/media/SoundPool;

    const/16 v7, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1016
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v6, :cond_1f

    .line 1017
    monitor-exit v5

    move v5, v10

    goto :goto_c

    .line 1025
    :cond_1f
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    new-array v3, v6, [I

    .line 1026
    .local v3, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_25
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_30

    .line 1027
    const/4 v6, -0x1

    aput v6, v3, v1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1034
    :cond_30
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_31
    const/16 v6, 0x12

    if-ge v0, v6, :cond_b8

    .line 1036
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-nez v6, :cond_41

    .line 1034
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1039
    :cond_41
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aget v6, v3, v6

    if-ne v6, v12, :cond_a7

    .line 1040
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    .line 1042
    .local v4, sampleId:I
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 1043
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v4, v3, v6

    .line 1044
    if-gtz v4, :cond_3e

    .line 1045
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Soundpool could not load file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1051
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #poolId:[I
    .end local v4           #sampleId:I
    :catchall_a4
    move-exception v6

    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_6 .. :try_end_a6} :catchall_a4

    throw v6

    .line 1048
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v3       #poolId:[I
    :cond_a7
    :try_start_a7
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget v8, v3, v8

    aput v8, v6, v7

    goto :goto_3e

    .line 1051
    :cond_b8
    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_a7 .. :try_end_b9} :catchall_a4

    move v5, v11

    .line 1053
    goto/16 :goto_c
.end method

.method public pauseAnotherPlay()V
    .registers 5

    .prologue
    const-string v3, "AudioService"

    .line 2798
    const-string v1, "AudioService"

    const-string/jumbo v1, "pauseAnotherPlay() is called"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iloen.melon.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2802
    .local v0, melonIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2803
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2804
    const-string v1, "AudioService"

    const-string v1, "ask Melon to pause"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    return-void
.end method

.method public playSoundEffect(I)V
    .registers 10
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 995
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 997
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1001
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1002
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1004
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "eventReceiver"

    .prologue
    .line 3036
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonEventReceiver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 3039
    :try_start_1b
    invoke-direct {p0, p1}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 3040
    monitor-exit v0

    .line 3041
    return-void

    .line 3040
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v1
.end method

.method public reloadAudioSettings()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1088
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1091
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1092
    .local v3, numStreamTypes:I
    const/4 v7, 0x0

    .local v7, streamType:I
    :goto_9
    if-ge v7, v3, :cond_cc

    .line 1093
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v8, v7

    .line 1096
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    const/16 v9, 0xc

    if-ne v8, v9, :cond_a6

    .line 1097
    const-string v4, "VOLUME_HPH_MUSIC"

    .line 1102
    .local v4, settingName:Ljava/lang/String;
    :goto_19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_last_audible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .local v2, lastAudibleSettingName:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    invoke-static {v8, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1106
    .local v1, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_b0

    .line 1107
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1111
    :goto_46
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1113
    add-int/lit8 v8, v1, 0x5

    div-int/lit8 v1, v8, 0xa

    .line 1114
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_b3

    move v9, v1

    :goto_56
    invoke-static {v8, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1117
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_b8

    .line 1118
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1122
    :goto_6a
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1125
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-eqz v8, :cond_bb

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v8

    if-nez v8, :cond_bb

    .line 1126
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1127
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_86
    if-ge v0, v5, :cond_bb

    .line 1128
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v9, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v8, v9}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1302(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1129
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v8, v10}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 1099
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #settingName:Ljava/lang/String;
    .end local v5           #size:I
    :cond_a6
    sget-object v8, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    aget-object v4, v8, v9

    .restart local v4       #settingName:Ljava/lang/String;
    goto/16 :goto_19

    .line 1109
    .restart local v1       #index:I
    .restart local v2       #lastAudibleSettingName:Ljava/lang/String;
    :cond_b0
    mul-int/lit8 v1, v1, 0xa

    goto :goto_46

    .line 1114
    :cond_b3
    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    goto :goto_56

    .line 1120
    :cond_b8
    mul-int/lit8 v1, v1, 0xa

    goto :goto_6a

    .line 1133
    :cond_bb
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-nez v8, :cond_c8

    .line 1134
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1092
    :cond_c8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 1139
    .end local v1           #index:I
    .end local v2           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #settingName:Ljava/lang/String;
    .end local v6           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_cc
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v8

    invoke-direct {p0, v8, v10}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1140
    return-void
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 15
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"

    .prologue
    .line 2811
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    if-eqz p3, :cond_28

    invoke-interface {p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_31

    .line 2818
    :cond_28
    const-string v0, "AudioService"

    const-string v1, " AudioFocus  DOA client for requestAudioFocus(), exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    const/4 v0, 0x0

    .line 2888
    :goto_30
    return v0

    .line 2822
    :cond_31
    sget-object v7, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2823
    :try_start_34
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2824
    const-string v0, "AudioService"

    const-string v1, "AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const/4 v0, 0x0

    monitor-exit v7

    goto :goto_30

    .line 2865
    :catchall_44
    move-exception v0

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_44

    throw v0

    .line 2828
    :cond_47
    :try_start_47
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2831
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    if-ne v0, p2, :cond_6e

    .line 2840
    const/4 v0, 0x1

    monitor-exit v7

    goto :goto_30

    .line 2844
    :cond_6e
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2848
    :cond_73
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_85
    .catchall {:try_start_47 .. :try_end_85} :catchall_44

    if-eqz v0, :cond_a0

    .line 2850
    :try_start_87
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v2, p2, -0x1

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_87 .. :try_end_a0} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_a0} :catch_c9

    .line 2860
    :cond_a0
    :goto_a0
    const/4 v0, 0x0

    :try_start_a1
    invoke-direct {p0, p5, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2863
    iget-object v8, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v0, Landroid/media/AudioService$FocusStackEntry;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService$FocusStackEntry;-><init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    monitor-exit v7
    :try_end_b5
    .catchall {:try_start_a1 .. :try_end_b5} :catchall_44

    .line 2870
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 2872
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    invoke-direct {v7, p0, p3}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2874
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v0, 0x0

    :try_start_c3
    invoke-interface {p3, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c6} :catch_e7

    .line 2888
    .end local v7           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    :cond_c6
    :goto_c6
    const/4 v0, 0x1

    goto/16 :goto_30

    .line 2853
    :catch_c9
    move-exception v0

    move-object v8, v0

    .line 2854
    .local v8, e:Landroid/os/RemoteException;
    :try_start_cb
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failure to signal loss of focus due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_cb .. :try_end_e6} :catchall_44

    goto :goto_a0

    .line 2875
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    :catch_e7
    move-exception v8

    .line 2877
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method

.method public setBluetoothA2dpForceOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1413
    const-string/jumbo v0, "setBluetoothA2dpForceOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1423
    :goto_c
    return-void

    .line 1416
    :cond_d
    if-eqz p1, :cond_15

    .line 1417
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1418
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    goto :goto_c

    .line 1420
    :cond_15
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1421
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    goto :goto_c
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1222
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1234
    :goto_c
    return-void

    .line 1225
    :cond_d
    if-eqz p1, :cond_18

    .line 1226
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1227
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1228
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_c

    .line 1230
    :cond_18
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1231
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1232
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_c
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .registers 15
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v8, -0x1

    .line 930
    const-string/jumbo v7, "setMode()"

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 986
    :cond_a
    :goto_a
    return-void

    .line 934
    :cond_b
    if-lt p1, v8, :cond_a

    const/4 v7, 0x6

    if-ge p1, v7, :cond_a

    .line 938
    iget-object v7, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 939
    if-ne p1, v8, :cond_17

    .line 940
    :try_start_15
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 942
    :cond_17
    iget v8, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v8, :cond_60

    .line 943
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v8

    if-nez v8, :cond_60

    .line 944
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 946
    iget-object v8, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_7d

    .line 947
    const/4 v2, 0x0

    .line 948
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :try_start_27
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 949
    .local v5, iter:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 950
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 951
    .local v1, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v9, p2, :cond_2d

    .line 952
    move-object v2, v1

    .line 954
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_a1

    move-object v3, v2

    .line 958
    .end local v1           #h:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .local v3, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :goto_44
    if-nez v3, :cond_a7

    .line 959
    :try_start_46
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-direct {v2, p0, p2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_a4

    .line 961
    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    if-eqz p2, :cond_51

    .line 964
    const/4 v9, 0x0

    :try_start_4e
    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_80

    .line 973
    :cond_51
    :goto_51
    :try_start_51
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 974
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 975
    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_a1

    .line 977
    if-eqz p1, :cond_60

    .line 978
    :try_start_5d
    invoke-virtual {p0}, Landroid/media/AudioService;->clearAllScoClients()V

    .line 982
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v5           #iter:Ljava/util/Iterator;
    :cond_60
    const/high16 v8, -0x8000

    invoke-direct {p0, v8}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v6

    .line 983
    .local v6, streamType:I
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    .line 984
    .local v4, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v4, v9, v10}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 985
    monitor-exit v7

    goto :goto_a

    .end local v4           #index:I
    .end local v6           #streamType:I
    :catchall_7d
    move-exception v8

    monitor-exit v7
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_7d

    throw v8

    .line 965
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v5       #iter:Ljava/util/Iterator;
    :catch_80
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    :try_start_81
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setMode() could not link to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " binder death"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 975
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #iter:Ljava/util/Iterator;
    :catchall_a1
    move-exception v9

    :goto_a2
    monitor-exit v8
    :try_end_a3
    .catchall {:try_start_81 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v9
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_7d

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v5       #iter:Ljava/util/Iterator;
    :catchall_a4
    move-exception v9

    move-object v2, v3

    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_a2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_a7
    move-object v2, v3

    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_51

    :cond_a9
    move-object v3, v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_44
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1188
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1198
    :goto_c
    return-void

    .line 1191
    :cond_d
    if-eqz p1, :cond_15

    .line 1192
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1193
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_c

    .line 1195
    :cond_15
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1196
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_c
.end method

.method public setRingerMode(I)V
    .registers 11
    .parameter "ringerMode"

    .prologue
    const/4 v2, 0x1

    const-string v0, "AudioService"

    .line 766
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 767
    :try_start_6
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v0, :cond_14

    .line 768
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 771
    packed-switch p1, :pswitch_data_66

    .line 791
    :goto_11
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 793
    :cond_14
    monitor-exit v8

    .line 794
    return-void

    .line 773
    :pswitch_16
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_11

    .line 793
    :catchall_21
    move-exception v0

    monitor-exit v8
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0

    .line 777
    :pswitch_24
    :try_start_24
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 779
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_11

    .line 782
    :pswitch_3c
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    if-ne v0, v2, :cond_57

    .line 784
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 785
    :cond_57
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_21

    goto :goto_11

    .line 771
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_16
        :pswitch_24
        :pswitch_3c
    .end packed-switch
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1144
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1154
    :goto_b
    return-void

    .line 1147
    :cond_c
    if-eqz p1, :cond_14

    .line 1148
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1149
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_b

    .line 1151
    :cond_14
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1152
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_b
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 6
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 719
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 720
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isSeperatedStream(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 721
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 722
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    invoke-direct {p0, p1}, Landroid/media/AudioService;->spkToHph(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 727
    :cond_22
    :goto_22
    return-void

    .line 724
    :cond_23
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_22
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 7
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 710
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 711
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, v0}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result v2

    if-ne v1, v2, :cond_19

    .line 710
    :cond_16
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 713
    :cond_19
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_16

    .line 715
    :cond_21
    return-void
.end method

.method public setStreamVolume(III)V
    .registers 10
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 628
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_54

    .line 629
    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 630
    const/16 p1, 0xa

    .line 644
    :cond_13
    :goto_13
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, p1

    aget-object v2, v3, v4

    .line 646
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_6e

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move v1, v3

    .line 648
    .local v1, oldIndex:I
    :goto_26
    mul-int/lit8 v3, p2, 0xa

    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, p1

    invoke-direct {p0, v3, p1, v4}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 649
    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, p2, v4, v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 651
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_74

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move p2, v3

    .line 655
    :goto_44
    invoke-direct {p0, p1}, Landroid/media/AudioService;->hphToSpk(I)I

    move-result p1

    .line 659
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 661
    invoke-direct {p0, p1, v1, p2}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 662
    return-void

    .line 632
    .end local v1           #oldIndex:I
    .end local v2           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_51
    const/16 p1, 0xd

    goto :goto_13

    .line 634
    :cond_54
    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 635
    const-string v3, "audioParam;curDevice"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v3, "HPH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 638
    invoke-direct {p0, p1}, Landroid/media/AudioService;->spkToHph(I)I

    move-result p1

    goto :goto_13

    .line 646
    .end local v0           #isMusicHPH:Ljava/lang/String;
    .restart local v2       #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_6e
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move v1, v3

    goto :goto_26

    .line 651
    .restart local v1       #oldIndex:I
    :cond_74
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move p2, v3

    goto :goto_44
.end method

.method public setVibrateSetting(II)V
    .registers 11
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 855
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 858
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 862
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 864
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .parameter "vibrateType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 830
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    move v0, v1

    .line 843
    :goto_a
    return v0

    .line 833
    :pswitch_b
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_a

    :cond_11
    move v0, v1

    goto :goto_a

    .line 836
    :pswitch_13
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v2, :cond_19

    move v0, v2

    goto :goto_a

    :cond_19
    move v0, v1

    goto :goto_a

    :pswitch_1b
    move v0, v1

    .line 840
    goto :goto_a

    .line 830
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1247
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1252
    :goto_9
    return-void

    .line 1250
    :cond_a
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1251
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_9
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1256
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1261
    :goto_9
    return-void

    .line 1259
    :cond_a
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1260
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_9
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    .line 1062
    iget-object v3, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1063
    :try_start_3
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v4, :cond_9

    .line 1064
    monitor-exit v3

    .line 1083
    :goto_8
    return-void

    .line 1066
    :cond_9
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [I

    .line 1067
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_f
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1a

    .line 1068
    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1071
    :cond_1a
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_1b
    const/16 v4, 0x12

    if-ge v0, v4, :cond_58

    .line 1072
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2b

    .line 1071
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1075
    :cond_2b
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    aget v4, v2, v4

    if-nez v4, :cond_28

    .line 1076
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1077
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 1078
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    aput v5, v2, v4

    goto :goto_28

    .line 1082
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v4

    .line 1081
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_58
    const/4 v4, 0x0

    :try_start_59
    iput-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1082
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    goto :goto_8
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 4
    .parameter "clientId"

    .prologue
    .line 2912
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2913
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2914
    monitor-exit v0

    .line 2915
    return-void

    .line 2914
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "eventReceiver"

    .prologue
    .line 3045
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   unregisterMediaButtonEventReceiver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 3048
    :try_start_1b
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 3049
    monitor-exit v0

    .line 3050
    return-void

    .line 3049
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v1
.end method
