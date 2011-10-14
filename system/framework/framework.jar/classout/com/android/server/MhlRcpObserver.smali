.class public Lcom/android/server/MhlRcpObserver;
.super Landroid/os/Binder;
.source "MhlRcpObserver.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final MHL_RCP_KEYCODE_0:I = 0x20

.field public static final MHL_RCP_KEYCODE_1:I = 0x21

.field public static final MHL_RCP_KEYCODE_2:I = 0x22

.field public static final MHL_RCP_KEYCODE_3:I = 0x23

.field public static final MHL_RCP_KEYCODE_4:I = 0x24

.field public static final MHL_RCP_KEYCODE_5:I = 0x25

.field public static final MHL_RCP_KEYCODE_6:I = 0x26

.field public static final MHL_RCP_KEYCODE_7:I = 0x27

.field public static final MHL_RCP_KEYCODE_8:I = 0x28

.field public static final MHL_RCP_KEYCODE_9:I = 0x29

.field public static final MHL_RCP_KEYCODE_ANGLE:I = 0x50

.field public static final MHL_RCP_KEYCODE_BACKWARD:I = 0x4c

.field public static final MHL_RCP_KEYCODE_CHANNEL_DOWN:I = 0x31

.field public static final MHL_RCP_KEYCODE_CHANNEL_UP:I = 0x30

.field public static final MHL_RCP_KEYCODE_CLEAR:I = 0x2c

.field public static final MHL_RCP_KEYCODE_CONTENTS_MENU:I = 0xb

.field public static final MHL_RCP_KEYCODE_DOT:I = 0x2a

.field public static final MHL_RCP_KEYCODE_DOWN:I = 0x2

.field public static final MHL_RCP_KEYCODE_EJECT:I = 0x4a

.field public static final MHL_RCP_KEYCODE_ENTER:I = 0x2b

.field public static final MHL_RCP_KEYCODE_EXIT:I = 0xd

.field public static final MHL_RCP_KEYCODE_F1:I = 0x71

.field public static final MHL_RCP_KEYCODE_F2:I = 0x72

.field public static final MHL_RCP_KEYCODE_F3:I = 0x73

.field public static final MHL_RCP_KEYCODE_F4:I = 0x74

.field public static final MHL_RCP_KEYCODE_F5:I = 0x75

.field public static final MHL_RCP_KEYCODE_FAST_FORWARD:I = 0x49

.field public static final MHL_RCP_KEYCODE_FAVORITE_MENU:I = 0xc

.field public static final MHL_RCP_KEYCODE_FORWARD:I = 0x4b

.field public static final MHL_RCP_KEYCODE_HELP:I = 0x36

.field public static final MHL_RCP_KEYCODE_INPUT_SELECT:I = 0x34

.field public static final MHL_RCP_KEYCODE_INVALID:I = 0xff

.field public static final MHL_RCP_KEYCODE_LEFT:I = 0x3

.field public static final MHL_RCP_KEYCODE_LEFT_DOWN:I = 0x8

.field public static final MHL_RCP_KEYCODE_LEFT_UP:I = 0x7

.field public static final MHL_RCP_KEYCODE_MUTE:I = 0x43

.field public static final MHL_RCP_KEYCODE_MUTE_FUNCTION:I = 0x65

.field public static final MHL_RCP_KEYCODE_PAGE_DOWN:I = 0x38

.field public static final MHL_RCP_KEYCODE_PAGE_UP:I = 0x37

.field public static final MHL_RCP_KEYCODE_PAUSE:I = 0x46

.field public static final MHL_RCP_KEYCODE_PAUSE_PLAY_FUNCTION:I = 0x61

.field public static final MHL_RCP_KEYCODE_PAUSE_RECORD_FUNCTION:I = 0x63

.field public static final MHL_RCP_KEYCODE_PLAY:I = 0x44

.field public static final MHL_RCP_KEYCODE_PLAY_FUNCTION:I = 0x60

.field public static final MHL_RCP_KEYCODE_PREVIOUS_CHANEL:I = 0x32

.field public static final MHL_RCP_KEYCODE_RECORD:I = 0x47

.field public static final MHL_RCP_KEYCODE_RECORD_FUNCTION:I = 0x62

.field public static final MHL_RCP_KEYCODE_RESTORE_VOLUME_FUNCTION:I = 0x66

.field public static final MHL_RCP_KEYCODE_REWIND:I = 0x48

.field public static final MHL_RCP_KEYCODE_RIGHT:I = 0x4

.field public static final MHL_RCP_KEYCODE_RIGHT_DOWN:I = 0x6

.field public static final MHL_RCP_KEYCODE_RIGHT_UP:I = 0x5

.field public static final MHL_RCP_KEYCODE_ROOT_MENU:I = 0x9

.field public static final MHL_RCP_KEYCODE_SELECT:I = 0x0

.field public static final MHL_RCP_KEYCODE_SELECT_MEDIA_FUNCTION:I = 0x68

.field public static final MHL_RCP_KEYCODE_SETUP_MENU:I = 0xa

.field public static final MHL_RCP_KEYCODE_SHOW_INFORMATION:I = 0x35

.field public static final MHL_RCP_KEYCODE_SOUND_SELECT:I = 0x33

.field public static final MHL_RCP_KEYCODE_STOP:I = 0x45

.field public static final MHL_RCP_KEYCODE_STOP_FUNCTION:I = 0x64

.field public static final MHL_RCP_KEYCODE_SUBPICTURE:I = 0x51

.field public static final MHL_RCP_KEYCODE_TUNE_FUNCTION:I = 0x67

.field public static final MHL_RCP_KEYCODE_UP:I = 0x1

.field public static final MHL_RCP_KEYCODE_VENDOR_SPECIFIC:I = 0x7e

.field public static final MHL_RCP_KEYCODE_VOLUME_DOWN:I = 0x42

.field public static final MHL_RCP_KEYCODE_VOLUME_UP:I = 0x41

.field private static final MSG_MHL_RCP_EVENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MhlRcpObserver"


# instance fields
.field private IsMediakey:Z

.field private final mContext:Landroid/content/Context;

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    iput-boolean v3, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 148
    new-instance v1, Lcom/android/server/MhlRcpObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/MhlRcpObserver$1;-><init>(Lcom/android/server/MhlRcpObserver;)V

    iput-object v1, p0, Lcom/android/server/MhlRcpObserver;->mUEventObserver:Landroid/os/UEventObserver;

    .line 140
    iput-object p1, p0, Lcom/android/server/MhlRcpObserver;->mContext:Landroid/content/Context;

    .line 141
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 142
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MhlRcpObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MhlRcpObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    iget-object v1, p0, Lcom/android/server/MhlRcpObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/server/MhlRcpObserver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "SUBSYSTEM=video4linux"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private SendClickEvent()V
    .registers 12

    .prologue
    const-string/jumbo v0, "window"

    const-string v10, "MhlRcpObserver"

    .line 411
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDCLICKEVENT: START"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 416
    .local v2, eventTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 418
    .local v9, event:Landroid/view/MotionEvent;
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 424
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_46} :catch_4e

    .line 431
    .end local v2           #eventTime:J
    .end local v9           #event:Landroid/view/MotionEvent;
    :goto_46
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDCLICKEVENT: END"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 427
    :catch_4e
    move-exception v0

    move-object v8, v0

    .line 428
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "Input"

    const-string v1, "DeadOjbectException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private SendKeyEvent(I)V
    .registers 5
    .parameter "event"

    .prologue
    const-string v2, "MhlRcpObserver"

    .line 382
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDKEYEVENT: START"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/MhlRcpObserver$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/MhlRcpObserver$2;-><init>(Lcom/android/server/MhlRcpObserver;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 406
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDKEYEVENT: END"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MhlRcpObserver;Landroid/os/UEventObserver$UEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/MhlRcpObserver;->update(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method private declared-synchronized update(Landroid/os/UEventObserver$UEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const-string v5, "UPDATE: This event not supported -> event = "

    const-string v5, " Send key event = "

    const-string v5, "UPDATE: Recive MHL_RCP event = "

    const-string v5, "MhlRcpObserver"

    .line 163
    monitor-enter p0

    :try_start_9
    const-string v5, "MHL_RCP"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, keyCodeStr:Ljava/lang/String;
    const-string v5, "MhlRcpObserver"

    const-string v6, "UPDATE: START "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-nez v3, :cond_21

    .line 168
    const-string v5, "MhlRcpObserver"

    const-string v6, "This is not MHL_RCP event"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_62

    .line 378
    :goto_1f
    monitor-exit p0

    return-void

    .line 172
    :cond_21
    :try_start_21
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_62

    .line 175
    const/16 v5, 0x10

    :try_start_3b
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_65

    move-result v2

    .line 181
    .local v2, keyCodeMhlRcpInt:I
    :goto_3f
    packed-switch v2, :pswitch_data_41c

    .line 373
    :pswitch_42
    :try_start_42
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: The event not supported in this code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_5a
    const-string v5, "MhlRcpObserver"

    const-string v6, "UPDATE: END "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_62

    goto :goto_1f

    .line 163
    .end local v2           #keyCodeMhlRcpInt:I
    .end local v3           #keyCodeStr:Ljava/lang/String;
    :catchall_62
    move-exception v5

    monitor-exit p0

    throw v5

    .line 177
    .restart local v3       #keyCodeStr:Ljava/lang/String;
    :catch_65
    move-exception v4

    .line 178
    .local v4, t:Ljava/lang/Throwable;
    const/16 v2, 0xff

    .restart local v2       #keyCodeMhlRcpInt:I
    goto :goto_3f

    .line 184
    .end local v4           #t:Ljava/lang/Throwable;
    :pswitch_69
    :try_start_69
    invoke-direct {p0}, Lcom/android/server/MhlRcpObserver;->SendClickEvent()V

    .line 185
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 189
    :pswitch_85
    const/16 v1, 0x13

    .line 190
    .local v1, keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 191
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 195
    .end local v1           #keyCodeInt:I
    :pswitch_ad
    const/16 v1, 0x14

    .line 196
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 197
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 201
    .end local v1           #keyCodeInt:I
    :pswitch_d5
    const/16 v1, 0x15

    .line 202
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 203
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 207
    .end local v1           #keyCodeInt:I
    :pswitch_fe
    const/16 v1, 0x16

    .line 208
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 209
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 216
    .end local v1           #keyCodeInt:I
    :pswitch_127
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 220
    :pswitch_141
    const/4 v1, 0x3

    .line 221
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 222
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 226
    .end local v1           #keyCodeInt:I
    :pswitch_169
    const/16 v1, 0x52

    .line 227
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 228
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 233
    .end local v1           #keyCodeInt:I
    :pswitch_192
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 237
    :pswitch_1ac
    const/4 v1, 0x4

    .line 238
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 239
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v1, 0x6f

    .line 242
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 243
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 257
    .end local v1           #keyCodeInt:I
    :pswitch_1fb
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 261
    :pswitch_215
    const/16 v1, 0x42

    .line 262
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 263
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 267
    .end local v1           #keyCodeInt:I
    :pswitch_23e
    const/16 v1, 0x1c

    .line 268
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 269
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 282
    .end local v1           #keyCodeInt:I
    :pswitch_267
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 286
    :pswitch_281
    const/16 v1, 0x18

    .line 287
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 288
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 292
    .end local v1           #keyCodeInt:I
    :pswitch_2aa
    const/16 v1, 0x19

    .line 293
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 294
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 299
    .end local v1           #keyCodeInt:I
    :pswitch_2d3
    const/16 v1, 0x5b

    .line 300
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 301
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 308
    .end local v1           #keyCodeInt:I
    :pswitch_2fc
    const/16 v1, 0x55

    .line 309
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 310
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 311
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 316
    .end local v1           #keyCodeInt:I
    :pswitch_328
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, i:Landroid/content/Intent;
    const-string v5, "command"

    const-string/jumbo v6, "pause"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v5, "MHL_MEDIA_KEY"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const-string v5, "from"

    const-string v6, "MHL"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v5, p0, Lcom/android/server/MhlRcpObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 329
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_363
    const/16 v1, 0x56

    .line 330
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 331
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 332
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 336
    .end local v1           #keyCodeInt:I
    :pswitch_38f
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 340
    :pswitch_3a9
    const/16 v1, 0x59

    .line 341
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 342
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 343
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 347
    .end local v1           #keyCodeInt:I
    :pswitch_3d5
    const/16 v1, 0x5a

    .line 348
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 349
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 350
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 369
    .end local v1           #keyCodeInt:I
    :pswitch_401
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_419
    .catchall {:try_start_69 .. :try_end_419} :catchall_62

    goto/16 :goto_5a

    .line 181
    nop

    :pswitch_data_41c
    .packed-switch 0x0
        :pswitch_69
        :pswitch_85
        :pswitch_ad
        :pswitch_d5
        :pswitch_fe
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_141
        :pswitch_169
        :pswitch_192
        :pswitch_192
        :pswitch_1ac
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_267
        :pswitch_215
        :pswitch_23e
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_267
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_281
        :pswitch_2aa
        :pswitch_2d3
        :pswitch_2fc
        :pswitch_363
        :pswitch_328
        :pswitch_38f
        :pswitch_3a9
        :pswitch_3d5
        :pswitch_401
        :pswitch_401
        :pswitch_401
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_401
        :pswitch_401
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_2fc
        :pswitch_2fc
        :pswitch_401
        :pswitch_401
        :pswitch_363
        :pswitch_2d3
        :pswitch_401
        :pswitch_401
        :pswitch_401
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_401
        :pswitch_401
        :pswitch_401
        :pswitch_401
        :pswitch_401
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_401
    .end packed-switch
.end method
