.class public Lcom/android/internal/policy/impl/UnlockTextToSpeech;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;,
        Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static IsTtsInitiated:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UnlockTextToSpeech"

.field private static _instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private TtsmissedEvent:Ljava/lang/String;

.field private Ttstime:Ljava/lang/String;

.field private Ttsweather:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field mDefaultCountry:Ljava/lang/String;

.field mDefaultLanguage:Ljava/lang/String;

.field mDefaultLocVariant:Ljava/lang/String;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 56
    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 53
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    .line 59
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttsweather:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLanguage:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultCountry:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLocVariant:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    .line 80
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->doSpeak()V

    .line 82
    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    return p0
.end method

.method public static declared-synchronized destroy()V
    .registers 3

    .prologue
    .line 295
    const-class v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_21

    .line 296
    const-string v1, "UnlockTextToSpeech"

    const-string v2, "destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 299
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 300
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    .line 301
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 302
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 304
    :cond_21
    monitor-exit v0

    return-void

    .line 295
    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/UnlockTextToSpeech;
    .registers 3
    .parameter "context"

    .prologue
    .line 105
    const-class v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    if-eqz v1, :cond_c

    .line 106
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V

    .line 108
    :cond_c
    new-instance v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 109
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 105
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private phoneIsInUse()Z
    .registers 6

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 118
    .local v2, phoneInUse:Z
    :try_start_1
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 120
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_19

    move-result v3

    if-nez v3, :cond_16

    const/4 v3, 0x1

    move v2, v3

    .line 128
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_15
    :goto_15
    return v2

    .line 120
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    const/4 v3, 0x0

    move v2, v3

    goto :goto_15

    .line 122
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "UnlockTextToSpeech"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public static declared-synchronized stopTts()V
    .registers 2

    .prologue
    .line 288
    const-class v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_a

    .line 290
    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 292
    :cond_a
    monitor-exit v0

    return-void

    .line 288
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public doSpeak()V
    .registers 19

    .prologue
    .line 134
    const-string v13, "UnlockTextToSpeech"

    const-string v14, "Getting into speak TTS"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v13, :cond_f1

    sget-boolean v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    if-eqz v13, :cond_f1

    .line 144
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v14, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLanguage:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v6

    .line 146
    .local v6, languageResult:I
    if-gez v6, :cond_34

    .line 147
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 151
    :cond_34
    const-string v13, "UnlockTextToSpeech"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TTS locale:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v15}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v13}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v13

    if-nez v13, :cond_f1

    .line 154
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v10, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "streamType"

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v13, "utteranceId"

    const-string v14, "Unlock screen tts ended"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 163
    .local v4, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 165
    const/16 v13, 0xb

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 166
    .local v5, hourInt:I
    const/16 v13, 0xc

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 167
    .local v9, minInt:I
    const/16 v13, 0x9

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 206
    .local v3, am_pm:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    .line 208
    .local v7, mAM_PM_Check01:Z
    if-nez v7, :cond_11c

    .line 209
    const/16 v13, 0xc

    if-le v5, v13, :cond_f2

    .line 210
    add-int/lit8 v5, v5, -0xc

    .line 214
    :cond_9f
    :goto_9f
    if-nez v3, :cond_f7

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404dc

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 230
    :goto_c5
    const-string v13, "UnlockTextToSpeech"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TTS Time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 237
    .local v8, mNM:Landroid/app/NotificationManager;
    if-nez v8, :cond_162

    .line 285
    .end local v3           #am_pm:I
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v5           #hourInt:I
    .end local v6           #languageResult:I
    .end local v7           #mAM_PM_Check01:Z
    .end local v8           #mNM:Landroid/app/NotificationManager;
    .end local v9           #minInt:I
    .end local v10           #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f1
    :goto_f1
    return-void

    .line 211
    .restart local v3       #am_pm:I
    .restart local v4       #cal:Ljava/util/Calendar;
    .restart local v5       #hourInt:I
    .restart local v6       #languageResult:I
    .restart local v7       #mAM_PM_Check01:Z
    .restart local v9       #minInt:I
    .restart local v10       #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f2
    if-nez v5, :cond_9f

    .line 212
    const/16 v5, 0xc

    goto :goto_9f

    .line 218
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404dd

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    goto :goto_c5

    .line 222
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404dd

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, TtstimePm:Ljava/lang/String;
    const-string v13, "UnlockTextToSpeech"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[24-hour format] TTS Time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v13, "PM"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    goto/16 :goto_c5

    .line 240
    .end local v2           #TtstimePm:Ljava/lang/String;
    .restart local v8       #mNM:Landroid/app/NotificationManager;
    :cond_162
    const/4 v11, 0x0

    .line 241
    .local v11, nCallCount:I
    const/4 v12, 0x0

    .line 243
    .local v12, nMsgCount:I
    const-string v13, "com.android.phone"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 244
    const-string v13, "com.android.mms"

    const/16 v14, 0x7b

    invoke-virtual {v8, v13, v14}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object v13, v0

    if-eqz v13, :cond_18b

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object v13, v0

    iget v11, v13, Landroid/app/NotificationInfo;->missedCount:I

    .line 248
    :cond_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object v13, v0

    if-eqz v13, :cond_199

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object v13, v0

    iget v12, v13, Landroid/app/NotificationInfo;->missedCount:I

    .line 251
    :cond_199
    if-lez v11, :cond_202

    if-lez v12, :cond_202

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404e2

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 254
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 278
    :goto_1e8
    if-gtz v11, :cond_1ec

    if-lez v12, :cond_1f6

    .line 280
    :cond_1ec
    const-string v13, "UnlockTextToSpeech"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1f6
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_f1

    .line 256
    :cond_202
    const/4 v13, 0x1

    if-le v11, v13, :cond_249

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404e0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 259
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1e8

    .line 261
    :cond_249
    const/4 v13, 0x1

    if-le v12, v13, :cond_291

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404e1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 264
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_1e8

    .line 266
    :cond_291
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2ce

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404de

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 268
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_1e8

    .line 270
    :cond_2ce
    const/4 v13, 0x1

    if-ne v12, v13, :cond_30b

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10404df

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 273
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_1e8

    .line 276
    :cond_30b
    sget-object v13, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_1e8
.end method
