.class Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


# static fields
.field public static final MetaChanged:I = 0x2

.field public static final PlayComplete:I = 0x4

.field public static final PlayStateChanged:I = 0x1

.field public static final PlayerExit:I = 0x6

.field public static final PlayerStarted:I = 0x5

.field public static final QueueChanged:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AVRCP:MediaPlayerManager"


# instance fields
.field private mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

.field private mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

.field private mRegBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    .line 44
    return-void
.end method


# virtual methods
.method protected final bindAll()V
    .registers 6

    .prologue
    const-string v4, "AVRCP:MediaPlayerManager"

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 67
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 68
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_b

    .line 69
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->bindService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 70
    const-string v2, "AVRCP:MediaPlayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binding on playback service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 74
    :cond_4f
    const-string v2, "AVRCP:MediaPlayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on playback service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 80
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :cond_7f
    return-void
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 82
    iput-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 83
    iput-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 84
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .local v1, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 88
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    const-string v3, "AVRCP:MediaPlayerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MediaPlayerMaanger::clear(): on playback service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; player: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->unbind(Landroid/content/Context;)V

    goto :goto_1a

    .line 92
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :cond_5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 93
    return-void
.end method

.method protected final findBinderByPackageName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    .registers 5
    .parameter "PackageName"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 47
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    .line 49
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected final findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    .registers 5
    .parameter "PlayerName"

    .prologue
    .line 52
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 53
    :cond_8
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 57
    :goto_a
    return-object v2

    .line 54
    :cond_b
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 55
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v0

    .line 56
    goto :goto_a

    .line 57
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :cond_29
    const/4 v2, 0x0

    goto :goto_a
.end method

.method protected final findBinderByServiceName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    .registers 5
    .parameter "ServiceName"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 61
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    .line 63
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrentPlayer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    move-result-object v0

    .line 138
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    move-result-object v0

    goto :goto_b

    .line 136
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultPlayer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    if-eqz v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    .registers 4
    .parameter "PlayerName"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .line 131
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    if-eqz v0, :cond_d

    .line 132
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 133
    :goto_b
    monitor-exit p0

    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 130
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlayers()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 121
    .local v2, size:I
    if-lez v2, :cond_22

    .line 122
    new-array v1, v2, [Ljava/lang/String;

    .line 123
    .local v1, players:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v2, :cond_1f

    .line 124
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_24

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    move-object v3, v1

    .line 127
    .end local v0           #i:I
    .end local v1           #players:[Ljava/lang/String;
    :goto_20
    monitor-exit p0

    return-object v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_20

    .line 120
    .end local v2           #size:I
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public init(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 112
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroidBinder;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroidBinder;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->registerMediaPlayer(Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;Z)Z

    .line 116
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->bindAll()V

    .line 117
    return v1
.end method

.method public isPlayerLaunched(Ljava/lang/String;)Z
    .registers 3
    .parameter "PlayerName"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public launchPlayer(Ljava/lang/String;I)V
    .registers 7
    .parameter "PlayerName"
    .parameter "msWait"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    monitor-enter p0

    .line 164
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .line 165
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    .line 166
    if-eqz v0, :cond_16

    .line 167
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->launch(Landroid/content/Context;)V

    .line 168
    monitor-enter v0

    .line 169
    if-lez p2, :cond_15

    .line 171
    int-to-long v2, p2

    :try_start_12
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_25
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_1a

    .line 177
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_25

    .line 179
    :cond_16
    return-void

    .line 165
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2

    .line 172
    :catch_1a
    move-exception v1

    .line 173
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_1b
    const-string v2, "AVRCP:MediaPlayerManager"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 177
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_25
    move-exception v2

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v2
.end method

.method public declared-synchronized onPlayerBindFail(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V
    .registers 4
    .parameter "player"

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    .line 196
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_1f

    .line 197
    :try_start_3
    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1c

    .line 200
    if-eqz v0, :cond_1a

    .line 201
    :try_start_15
    monitor-enter v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_1f

    .line 202
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 203
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_22

    .line 205
    :cond_1a
    monitor-exit p0

    return-void

    .line 199
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 195
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 203
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1f
.end method

.method public onPlayerBinded(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V
    .registers 6
    .parameter "player"

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    monitor-enter p0

    .line 183
    :try_start_2
    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .line 184
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1f

    .line 185
    if-eqz v0, :cond_12

    .line 186
    monitor-enter v0

    .line 187
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 188
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_22

    .line 190
    :cond_12
    monitor-enter p0

    .line 191
    :try_start_13
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V

    .line 192
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_25

    .line 193
    return-void

    .line 184
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 188
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1

    .line 192
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public declared-synchronized onPlayerUnbinded(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V
    .registers 6
    .parameter "player"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .line 209
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->bindService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 210
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 213
    :cond_22
    monitor-exit p0

    return-void

    .line 207
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStateChanged(Lcom/broadcom/bt/service/avrcp/MediaPlayer;I)V
    .registers 5
    .parameter "player"
    .parameter "type"

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerMediaPlayer(Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;Z)Z
    .registers 7
    .parameter "binder"
    .parameter "DefaultPlayer"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 97
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    const-string v2, "AVRCP:MediaPlayerManager"

    const-string/jumbo v3, "registerMediaPlayer is in if"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x0

    .line 104
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :goto_29
    return v2

    .line 101
    :cond_2a
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    if-eqz p2, :cond_33

    .line 103
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .line 104
    :cond_33
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public declared-synchronized setCurrentPlayer(Ljava/lang/String;)Z
    .registers 4
    .parameter "PlayerName"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .line 147
    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    if-eqz v0, :cond_c

    .line 148
    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    .line 149
    const/4 v1, 0x1

    .line 151
    :goto_a
    monitor-exit p0

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_a

    .line 146
    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
