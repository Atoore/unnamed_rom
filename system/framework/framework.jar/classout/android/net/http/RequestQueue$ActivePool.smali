.class Landroid/net/http/RequestQueue$ActivePool;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestQueue$ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivePool"
.end annotation


# instance fields
.field private mConnectionCount:I

.field mIdleCache:Landroid/net/http/IdleCache;

.field mThreads:[Landroid/net/http/ConnectionThread;

.field private mTotalConnection:I

.field private mTotalRequest:I

.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue;I)V
    .registers 7
    .parameter
    .parameter "connectionCount"

    .prologue
    .line 90
    iput-object p1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Landroid/net/http/IdleCache;

    invoke-direct {v1}, Landroid/net/http/IdleCache;-><init>()V

    iput-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    .line 92
    iput p2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    .line 93
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    new-array v1, v1, [Landroid/net/http/ConnectionThread;

    iput-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_29

    .line 96
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    new-instance v2, Landroid/net/http/ConnectionThread;

    #getter for: Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/RequestQueue;->access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0, p1}, Landroid/net/http/ConnectionThread;-><init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    aput-object v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 99
    :cond_29
    return-void
.end method

.method static synthetic access$408(Landroid/net/http/RequestQueue$ActivePool;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    return v0
.end method


# virtual methods
.method disablePersistence()V
    .registers 4

    .prologue
    .line 160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v1, v2, :cond_14

    .line 161
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 162
    .local v0, connection:Landroid/net/http/Connection;
    if-eqz v0, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/http/Connection;->setCanPersist(Z)V

    .line 160
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    .end local v0           #connection:Landroid/net/http/Connection;
    :cond_14
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {v2}, Landroid/net/http/IdleCache;->clear()V

    .line 165
    return-void
.end method

.method public getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .registers 7
    .parameter "context"
    .parameter "host"

    .prologue
    .line 184
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #calls: Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    invoke-static {v1, p2}, Landroid/net/http/RequestQueue;->access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object p2

    .line 185
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {v1, p2}, Landroid/net/http/IdleCache;->getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v0

    .line 186
    .local v0, con:Landroid/net/http/Connection;
    if-nez v0, :cond_26

    .line 187
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    .line 188
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #getter for: Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/http/RequestQueue;->access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #getter for: Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    invoke-static {v2}, Landroid/net/http/RequestQueue;->access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    move-result-object v2

    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v1, p2, v2, v3}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v0

    .line 191
    :cond_26
    return-object v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    #getter for: Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    invoke-static {v0}, Landroid/net/http/RequestQueue;->access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method getThread(Lorg/apache/http/HttpHost;)Landroid/net/http/ConnectionThread;
    .registers 7
    .parameter "host"

    .prologue
    .line 171
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    monitor-enter v3

    .line 172
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    :try_start_4
    iget-object v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    array-length v4, v4

    if-ge v2, v4, :cond_1f

    .line 173
    iget-object v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v4, v2

    .line 174
    .local v1, ct:Landroid/net/http/ConnectionThread;
    iget-object v0, v1, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 175
    .local v0, connection:Landroid/net/http/Connection;
    if-eqz v0, :cond_1c

    iget-object v4, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 176
    monitor-exit v3

    move-object v3, v1

    .line 180
    .end local v0           #connection:Landroid/net/http/Connection;
    .end local v1           #ct:Landroid/net/http/ConnectionThread;
    :goto_1b
    return-object v3

    .line 172
    .restart local v0       #connection:Landroid/net/http/Connection;
    .restart local v1       #ct:Landroid/net/http/ConnectionThread;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 179
    .end local v0           #connection:Landroid/net/http/Connection;
    .end local v1           #ct:Landroid/net/http/ConnectionThread;
    :cond_1f
    monitor-exit v3

    .line 180
    const/4 v3, 0x0

    goto :goto_1b

    .line 179
    :catchall_22
    move-exception v4

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v4
.end method

.method logState()V
    .registers 5

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, dump:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v1, v2, :cond_27

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 148
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public recycleConnection(Landroid/net/http/Connection;)Z
    .registers 4
    .parameter "connection"

    .prologue
    .line 194
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {p1}, Landroid/net/http/Connection;->getHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/http/IdleCache;->cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z

    move-result v0

    return v0
.end method

.method shutdown()V
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_f

    .line 109
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->requestStop()V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_f
    return-void
.end method

.method startConnectionThread()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public startTiming()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v2, :cond_15

    .line 121
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v2, v0

    .line 122
    .local v1, rt:Landroid/net/http/ConnectionThread;
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 123
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 125
    .end local v1           #rt:Landroid/net/http/ConnectionThread;
    :cond_15
    iput v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    .line 126
    iput v4, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    .line 127
    return-void
.end method

.method startup()V
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_f

    .line 103
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->start()V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_f
    return-void
.end method

.method public stopTiming()V
    .registers 8

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, totalTime:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v3, :cond_1e

    .line 132
    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v3, v0

    .line 133
    .local v1, rt:Landroid/net/http/ConnectionThread;
    iget-wide v3, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    .line 134
    int-to-long v3, v2

    iget-wide v5, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    add-long/2addr v3, v5

    long-to-int v2, v3

    .line 136
    :cond_17
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    .end local v1           #rt:Landroid/net/http/ConnectionThread;
    :cond_1e
    const-string v3, "Http"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http thread used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requests and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new connections"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
