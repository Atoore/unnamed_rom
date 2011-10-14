.class public Lcom/android/mms/transaction/MessagingNotificationAlert;
.super Landroid/app/Service;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field private alertOnCallMode:I

.field private drivingMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private isOnCall:Z

.field private mServiceStartId:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private speechInfoText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 256
    new-instance v0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotificationAlert$1;-><init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->speakNewMessageInfo()V

    return-void
.end method

.method private makeTone()V
    .locals 9

    .prologue
    .line 204
    const/4 v5, 0x0

    .line 209
    .local v5, toneType:I
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 211
    .local v0, audioManager:Landroid/media/AudioManager;
    const/16 v5, 0x16

    .line 212
    const/16 v6, 0x50

    .line 213
    .local v6, toneVolume:I
    const/16 v4, 0x1388

    .line 214
    .local v4, toneLengthMillis:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 217
    .local v2, ringerMode:I
    const/4 v3, 0x0

    .line 218
    .local v3, stream:I
    :try_start_0
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v3, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    .line 220
    if-eqz v2, :cond_0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 222
    iget-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v7, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 223
    add-int/lit8 v7, v4, 0x14

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 232
    return-void

    .line 225
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 226
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 227
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 228
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeTts()V
    .locals 3

    .prologue
    .line 248
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v1, "New Message TTS"

    const-string v2, "########## TTS create failed !!!!! ##########"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v6, "streamType"

    const-string v9, "New Message TTS"

    .line 283
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v1, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 286
    .local v3, onCall:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 288
    .local v4, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 294
    .end local v4           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-eqz v3, :cond_1

    .line 295
    const-string v5, "streamType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_1
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, nRet:I
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v5, v6, v8, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v2

    .line 305
    const-string v5, "New Message TTS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InfoText"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v5, "utteranceId"

    const-string v6, "New message tts ended"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v2

    .line 310
    const-string v5, "New Message TTS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSilence     ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v2           #nRet:I
    :cond_0
    return-void

    .line 289
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 291
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 292
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_1
    const-string v5, "streamType"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public isVlingoAvailable()Z
    .locals 10

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 329
    .local v5, mPm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 330
    .local v3, isInstalled:Z
    const/4 v2, 0x0

    .line 331
    .local v2, isAccepted:Z
    const/4 v6, 0x0

    .line 334
    .local v6, result:Z
    const/16 v7, 0x2000

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 336
    .local v4, mInstalledPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 337
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    const-string v7, "com.vlingo.client.samsung"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 338
    const/4 v3, 0x1

    .line 368
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v7, "isVlingoAvailable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInstalled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isAccepted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    move v6, v7

    .line 373
    :goto_1
    return v3

    .line 341
    .restart local v0       #a:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 370
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v7, 0x0

    move v6, v7

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 83
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 86
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall:Z

    .line 87
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 172
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 175
    :cond_2
    const-string v0, "New Message TTS"

    const-string v1, "########## Destroy called !!!!! ##########"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    .line 103
    iput p2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->isVlingoAvailable()Z

    move-result v0

    .line 109
    .local v0, isVlingoAvailable:Z
    :try_start_0
    const-string v1, "TTS_INFO"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->speechInfoText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->isOnCall:Z

    if-eqz v1, :cond_3

    .line 133
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    if-ne v1, v3, :cond_0

    .line 155
    :goto_1
    return-void

    .line 135
    :cond_0
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->alertOnCallMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 136
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    if-ne v1, v3, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTone()V

    goto :goto_1

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    goto :goto_1

    .line 144
    :cond_2
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_1

    .line 148
    :cond_3
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->drivingMode:I

    if-ne v1, v3, :cond_4

    if-nez v0, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->makeTts()V

    goto :goto_1

    .line 152
    :cond_4
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 322
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopSelf(I)V

    .line 323
    return-void
.end method
