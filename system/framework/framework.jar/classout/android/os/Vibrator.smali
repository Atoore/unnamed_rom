.class public Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    .line 31
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_5

    .line 141
    :goto_4
    return-void

    .line 137
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_4

    .line 138
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public getMaxMagnitude()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 116
    :try_start_1
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_e

    .line 117
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 124
    :goto_d
    return v0

    .line 120
    :cond_e
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->getMaxMagnitude()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_d

    .line 121
    :catch_15
    move-exception v0

    move v0, v2

    .line 124
    goto :goto_d
.end method

.method public resetMagnitude()V
    .registers 2

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->resetMagnitude()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 192
    :goto_5
    return-void

    .line 190
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMagnitude(I)V
    .registers 3
    .parameter "magnitude"

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->setMagnitude(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 185
    :goto_5
    return-void

    .line 183
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrate(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JI)V

    .line 42
    return-void
.end method

.method public vibrate(JI)V
    .registers 8
    .parameter "milliseconds"
    .parameter "magnitude"

    .prologue
    const-string v3, "Vibrator"

    .line 51
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_e

    .line 52
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_d
    return-void

    .line 56
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/os/IVibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    .line 57
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public vibrate([JI)V
    .registers 7
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    const-string v3, "Vibrator"

    .line 76
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_e

    .line 77
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_d
    return-void

    .line 83
    :cond_e
    array-length v1, p1

    if-ge p2, v1, :cond_23

    .line 85
    :try_start_11
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_d

    .line 86
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 90
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_23
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public vibrate([JII)V
    .registers 8
    .parameter "pattern"
    .parameter "repeat"
    .parameter "magnitude"

    .prologue
    const-string v3, "Vibrator"

    .line 96
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_e

    .line 97
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_d
    return-void

    .line 103
    :cond_e
    array-length v1, p1

    if-ge p2, v1, :cond_23

    .line 105
    :try_start_11
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/os/IVibratorService;->vibratePatternByMagnitude([JILandroid/os/IBinder;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_d

    .line 106
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_23
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public vibrateCall(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateCall(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 171
    :goto_5
    return-void

    .line 169
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrateImmVibe(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    .line 146
    return-void
.end method

.method public vibrateImmVibe(II)V
    .registers 4
    .parameter "type"
    .parameter "magnitude"

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibe(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 153
    :goto_5
    return-void

    .line 151
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrateImmVibe([B)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrateImmVibe([BI)V

    .line 157
    return-void
.end method

.method public vibrateImmVibe([BI)V
    .registers 4
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibePattern([BI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 164
    :goto_5
    return-void

    .line 162
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrateNotification(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateNotification(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 178
    :goto_5
    return-void

    .line 176
    :catch_6
    move-exception v0

    goto :goto_5
.end method
