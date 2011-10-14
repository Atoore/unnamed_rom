.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 1877
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1877
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1877
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter "mp"

    .prologue
    .line 2005
    if-eqz p1, :cond_8

    .line 2007
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 2008
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 2013
    :cond_8
    :goto_8
    return-void

    .line 2009
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 2010
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private persistRingerMode()V
    .registers 4

    .prologue
    .line 1910
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1911
    return-void
.end method

.method private persistVibrateSetting()V
    .registers 4

    .prologue
    .line 1914
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_on"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVibrateSetting:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1915
    return-void
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V
    .registers 7
    .parameter "streamState"
    .parameter "current"
    .parameter "lastAudible"

    .prologue
    .line 1899
    if-eqz p2, :cond_17

    .line 1900
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2700(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1903
    :cond_17
    if-eqz p3, :cond_2e

    .line 1904
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2800(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1907
    :cond_2e
    return-void
.end method

.method private playSilentModeSound()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2018
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    .line 2026
    :cond_14
    :goto_14
    return-void

    .line 2021
    :cond_15
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSilentModeOff:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2024
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Landroid/media/AudioService$AudioHandler;->playSoundEffect(II)V

    goto :goto_14
.end method

.method private playSoundEffect(II)V
    .registers 14
    .parameter "effectType"
    .parameter "volume"

    .prologue
    const-string v0, "AudioService"

    .line 1918
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1919
    :try_start_9
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1920
    monitor-exit v10

    .line 2002
    :goto_12
    return-void

    .line 1943
    :cond_13
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 1945
    packed-switch p1, :pswitch_data_114

    .line 1962
    :goto_20
    :pswitch_20
    const-string/jumbo v0, "situation=1;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1969
    .local v2, volFloat:F
    :goto_2b
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_6c

    .line 1970
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2001
    :cond_51
    :goto_51
    monitor-exit v10

    goto :goto_12

    .end local v2           #volFloat:F
    :catchall_53
    move-exception v0

    monitor-exit v10
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_53

    throw v0

    .line 1948
    :pswitch_56
    const v2, 0x3e19999a

    .line 1949
    .restart local v2       #volFloat:F
    goto :goto_2b

    .line 1951
    .end local v2           #volFloat:F
    :pswitch_5a
    const v2, 0x3ee66666

    .line 1952
    .restart local v2       #volFloat:F
    goto :goto_2b

    .line 1957
    .end local v2           #volFloat:F
    :pswitch_5e
    const/high16 v2, 0x3f00

    .line 1958
    .restart local v2       #volFloat:F
    goto :goto_2b

    .line 1960
    .end local v2           #volFloat:F
    :pswitch_61
    :try_start_61
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_20

    .line 1972
    .restart local v2       #volFloat:F
    :cond_6c
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_53

    .line 1973
    .local v9, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v9, :cond_51

    .line 1975
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/AudioService;->access$3300()[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1976
    .local v8, filePath:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1977
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1978
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 1979
    invoke-virtual {v9, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1980
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1985
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1991
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_bf
    .catchall {:try_start_73 .. :try_end_bf} :catchall_53
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_bf} :catch_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_bf} :catch_dc
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_bf} :catch_f8

    goto :goto_51

    .line 1992
    .end local v8           #filePath:Ljava/lang/String;
    :catch_c0
    move-exception v0

    move-object v7, v0

    .line 1993
    .local v7, ex:Ljava/io/IOException;
    :try_start_c2
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 1994
    .end local v7           #ex:Ljava/io/IOException;
    :catch_dc
    move-exception v0

    move-object v7, v0

    .line 1995
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 1996
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_f8
    move-exception v0

    move-object v7, v0

    .line 1997
    .local v7, ex:Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_c2 .. :try_end_112} :catchall_53

    goto/16 :goto_51

    .line 1945
    :pswitch_data_114
    .packed-switch 0x5
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_20
        :pswitch_56
        :pswitch_56
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_5a
        :pswitch_61
    .end packed-switch
.end method

.method private setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 12
    .parameter "streamState"

    .prologue
    const/4 v1, 0x1

    .line 1882
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v2, v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 1885
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1886
    .local v8, numStreamTypes:I
    sub-int v9, v8, v1

    .local v9, streamType:I
    :goto_14
    if-ltz v9, :cond_3e

    .line 1887
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_3b

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_3b

    .line 1889
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v9, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 1886
    :cond_3b
    add-int/lit8 v9, v9, -0x1

    goto :goto_14

    .line 1894
    :cond_3e
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v7, 0xbb8

    move v4, v1

    move v5, v1

    move-object v6, p1

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1896
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24
    .parameter "msg"

    .prologue
    .line 2031
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    #calls: Landroid/media/AudioService;->getMsgBase(I)I
    invoke-static {v4}, Landroid/media/AudioService;->access$3700(I)I

    move-result v12

    .line 2033
    .local v12, baseMsgWhat:I
    packed-switch v12, :pswitch_data_18c

    .line 2132
    .end local p0
    .end local p1
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 2036
    .restart local p0
    .restart local p1
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/media/AudioService$VolumeStreamState;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService$AudioHandler;->setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_c

    .line 2040
    .restart local p1
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    :goto_30
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V

    goto :goto_c

    :cond_39
    const/4 v5, 0x0

    goto :goto_28

    :cond_3b
    const/4 v6, 0x0

    goto :goto_30

    .line 2044
    :pswitch_3d
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistRingerMode()V

    goto :goto_c

    .line 2048
    :pswitch_41
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistVibrateSetting()V

    goto :goto_c

    .line 2053
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2054
    const-string v4, "AudioService"

    const-string v5, "Media server died."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v4}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v11}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_c

    .line 2062
    :pswitch_70
    const-string v4, "AudioService"

    const-string v5, "Media server started."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string/jumbo v4, "restarting=true"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 2070
    .local v19, set:Ljava/util/Set;
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2071
    .end local p1
    .local v15, i:Ljava/util/Iterator;
    :goto_8e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 2072
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 2073
    .local v13, device:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move v0, v4

    move v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_8e

    .line 2079
    .end local v13           #device:Ljava/util/Map$Entry;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v4}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 2082
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2083
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2086
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v18

    .line 2087
    .local v18, numStreamTypes:I
    const/4 v4, 0x1

    sub-int v21, v18, v4

    .local v21, streamType:I
    :goto_e0
    if-ltz v21, :cond_11a

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v20, v4, v21

    .line 2090
    .local v20, streamState:Landroid/media/AudioService$VolumeStreamState;
    const/4 v4, 0x0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v20 .. v20}, Landroid/media/AudioService$VolumeStreamState;->access$4000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    move/from16 v0, v21

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 2091
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v20 .. v20}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-nez v4, :cond_117

    .line 2092
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v20 .. v20}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v16

    .line 2096
    .local v16, index:I
    :goto_107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v21

    move/from16 v2, v16

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 2087
    add-int/lit8 v21, v21, -0x1

    goto :goto_e0

    .line 2094
    .end local v16           #index:I
    :cond_117
    const/16 v16, 0x0

    .restart local v16       #index:I
    goto :goto_107

    .line 2100
    .end local v16           #index:I
    .end local v20           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    const/4 v6, 0x0

    #calls: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;IZ)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mMonoMode:I
    invoke-static {v5}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)I

    move-result v5

    #calls: Landroid/media/AudioService;->setMonoMode(I)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;I)V

    .line 2106
    const-string/jumbo v4, "restarting=false"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2110
    .end local v15           #i:Ljava/util/Iterator;
    .end local v18           #numStreamTypes:I
    .end local v19           #set:Ljava/util/Set;
    .end local v21           #streamType:I
    .restart local p1
    :pswitch_145
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->playSoundEffect(II)V

    goto/16 :goto_c

    .line 2115
    :pswitch_158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2119
    .restart local p0
    :pswitch_16d
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->playSilentModeSound()V

    goto/16 :goto_c

    .line 2124
    :pswitch_172
    :try_start_172
    new-instance v17, Landroid/os/Vibrator;

    invoke-direct/range {v17 .. v17}, Landroid/os/Vibrator;-><init>()V

    .line 2125
    .local v17, mVibrator:Landroid/os/Vibrator;
    const/16 v4, 0xb

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateCall(I)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17f} :catch_181

    goto/16 :goto_c

    .line 2126
    .end local v17           #mVibrator:Landroid/os/Vibrator;
    :catch_181
    move-exception v4

    move-object v14, v4

    .line 2127
    .local v14, e:Ljava/lang/Exception;
    const-string v4, "AudioService"

    const-string v5, "Vibrator error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2033
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_19
        :pswitch_c
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_70
        :pswitch_145
        :pswitch_158
        :pswitch_16d
        :pswitch_172
    .end packed-switch
.end method
