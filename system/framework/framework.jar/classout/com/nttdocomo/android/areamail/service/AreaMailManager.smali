.class public Lcom/nttdocomo/android/areamail/service/AreaMailManager;
.super Ljava/lang/Object;
.source "AreaMailManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "areamail.service"

.field public static final REQUEST_DISABLE_AREAMAIL:I = 0xb

.field public static final REQUEST_ENABLE_AREAMAIL:I = 0xa

.field public static final REQUEST_REGISTER_MESSAGE:I = 0xc

.field public static final REQUEST_UNREGISTER_MESSAGE:I = 0xd

.field public static final RING_TYPE_BUZZER:I = 0x0

.field public static final RING_TYPE_CBS:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableAreaMailService()V
    .registers 4

    .prologue
    .line 81
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 83
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_10

    .line 84
    :try_start_c
    invoke-interface {v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->disableAreaMailService()V

    .line 91
    :goto_f
    return-void

    .line 86
    :cond_10
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_f

    .line 88
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method public enableAreaMailService()V
    .registers 4

    .prologue
    .line 66
    :try_start_0
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 67
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_10

    .line 68
    invoke-interface {v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->enableAreaMailService()V

    .line 75
    .end local v0           #areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    :goto_f
    return-void

    .line 70
    .restart local v0       #areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    :cond_10
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_f

    .line 72
    .end local v0           #areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method public registerListener(Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 143
    if-nez p1, :cond_8

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 147
    :cond_8
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 149
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_1a

    .line 150
    :try_start_14
    iget-object v1, p1, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;->callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    invoke-interface {v0, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->registerNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 157
    :goto_19
    return-void

    .line 152
    :cond_1a
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_19

    .line 154
    :catch_22
    move-exception v1

    goto :goto_19
.end method

.method public registerListener(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_8

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 191
    :cond_8
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 193
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_1a

    .line 194
    :try_start_14
    iget-object v1, p1, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;->callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    invoke-interface {v0, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->registerSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 201
    :goto_19
    return-void

    .line 196
    :cond_1a
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_19

    .line 198
    :catch_22
    move-exception v1

    goto :goto_19
.end method

.method public registerMessageId(I)V
    .registers 5
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    if-gez p1, :cond_8

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_8
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 105
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_18

    .line 106
    :try_start_14
    invoke-interface {v0, p1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->registerMessageId(I)V

    .line 113
    :goto_17
    return-void

    .line 108
    :cond_18
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_17

    .line 110
    :catch_20
    move-exception v1

    goto :goto_17
.end method

.method public startNotificationByCount(II)V
    .registers 6
    .parameter "type"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    :cond_5
    if-gtz p2, :cond_d

    .line 235
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 238
    :cond_d
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 240
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_1d

    .line 241
    :try_start_19
    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->startNotificationByCount(II)V

    .line 248
    :goto_1c
    return-void

    .line 243
    :cond_1d
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_1c

    .line 245
    :catch_25
    move-exception v1

    goto :goto_1c
.end method

.method public startNotificationByTime(II)V
    .registers 6
    .parameter "type"
    .parameter "time"

    .prologue
    .line 258
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    :cond_5
    if-gtz p2, :cond_d

    .line 260
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 263
    :cond_d
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 265
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_1d

    .line 266
    :try_start_19
    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->startNotificationByCount(II)V

    .line 273
    :goto_1c
    return-void

    .line 268
    :cond_1d
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_1c

    .line 270
    :catch_25
    move-exception v1

    goto :goto_1c
.end method

.method public stopNotification()V
    .registers 4

    .prologue
    .line 280
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 282
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_10

    .line 283
    :try_start_c
    invoke-interface {v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->stopNotification()V

    .line 290
    :goto_f
    return-void

    .line 285
    :cond_10
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_f

    .line 287
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method public unregisterListener(Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_8

    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 169
    :cond_8
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 171
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_1a

    .line 172
    :try_start_14
    iget-object v1, p1, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;->callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    invoke-interface {v0, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->unregisterNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 179
    :goto_19
    return-void

    .line 174
    :cond_1a
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_19

    .line 176
    :catch_22
    move-exception v1

    goto :goto_19
.end method

.method public unregisterListener(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_8

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 213
    :cond_8
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 215
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_1a

    .line 216
    :try_start_14
    iget-object v1, p1, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;->callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    invoke-interface {v0, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->unregisterSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 223
    :goto_19
    return-void

    .line 218
    :cond_1a
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_19

    .line 220
    :catch_22
    move-exception v1

    goto :goto_19
.end method

.method public unregisterMessageId(I)V
    .registers 5
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    if-gez p1, :cond_8

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 125
    :cond_8
    const-string v1, "areamail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    move-result-object v0

    .line 127
    .local v0, areaMail:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    if-eqz v0, :cond_18

    .line 128
    :try_start_14
    invoke-interface {v0, p1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;->unregisterMessageId(I)V

    .line 135
    :goto_17
    return-void

    .line 130
    :cond_18
    const-string v1, "areamail.service"

    const-string v2, "AreaMailService has not been set in System yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_17

    .line 132
    :catch_20
    move-exception v1

    goto :goto_17
.end method
