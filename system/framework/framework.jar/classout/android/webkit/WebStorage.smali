.class public final Landroid/webkit/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebStorage$Origin;,
        Landroid/webkit/WebStorage$QuotaUpdater;
    }
.end annotation


# static fields
.field private static final CALLBACK:Ljava/lang/String; = "callback"

.field static final DELETE_ALL:I = 0x3

.field static final DELETE_ORIGIN:I = 0x2

.field static final GET_ORIGINS:I = 0x4

.field static final GET_QUOTA_ORIGIN:I = 0x6

.field static final GET_USAGE_ORIGIN:I = 0x5

.field private static final ORIGIN:Ljava/lang/String; = "origin"

.field private static final ORIGINS:Ljava/lang/String; = "origins"

.field private static final QUOTA:Ljava/lang/String; = "quota"

.field static final RETURN_ORIGINS:I = 0x0

.field static final RETURN_QUOTA_ORIGIN:I = 0x2

.field static final RETURN_USAGE_ORIGIN:I = 0x1

.field static final SET_QUOTA_ORIGIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "webstorage"

.field static final UPDATE:I = 0x0

.field private static final USAGE:Ljava/lang/String; = "usage"

.field private static sWebStorage:Landroid/webkit/WebStorage;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOrigins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/WebStorage$Origin;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Landroid/webkit/WebStorage;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Landroid/webkit/WebStorage;->nativeDeleteOrigin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 33
    invoke-static {}, Landroid/webkit/WebStorage;->nativeDeleteAllData()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebStorage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/WebStorage;->postUIMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Landroid/webkit/WebStorage;
    .registers 1

    .prologue
    .line 374
    sget-object v0, Landroid/webkit/WebStorage;->sWebStorage:Landroid/webkit/WebStorage;

    if-nez v0, :cond_b

    .line 375
    new-instance v0, Landroid/webkit/WebStorage;

    invoke-direct {v0}, Landroid/webkit/WebStorage;-><init>()V

    sput-object v0, Landroid/webkit/WebStorage;->sWebStorage:Landroid/webkit/WebStorage;

    .line 377
    :cond_b
    sget-object v0, Landroid/webkit/WebStorage;->sWebStorage:Landroid/webkit/WebStorage;

    return-object v0
.end method

.method private static native nativeDeleteAllData()V
.end method

.method private static native nativeDeleteOrigin(Ljava/lang/String;)V
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method

.method private static native nativeGetQuotaForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeGetUsageForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeSetAppCacheMaximumSize(J)V
.end method

.method private static native nativeSetQuotaForOrigin(Ljava/lang/String;J)V
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 355
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 358
    :cond_a
    monitor-exit p0

    return-void

    .line 355
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUIMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 364
    iget-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 365
    iget-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    :cond_9
    return-void
.end method

.method private syncValues()V
    .registers 9

    .prologue
    .line 397
    invoke-static {}, Landroid/webkit/WebStorage;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v7

    .line 398
    .local v7, tmp:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    .line 399
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    .local v1, origin:Ljava/lang/String;
    new-instance v0, Landroid/webkit/WebStorage$Origin;

    invoke-static {v1}, Landroid/webkit/WebStorage;->nativeGetQuotaForOrigin(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Landroid/webkit/WebStorage;->nativeGetUsageForOrigin(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    .line 403
    .local v0, website:Landroid/webkit/WebStorage$Origin;
    iget-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 405
    .end local v0           #website:Landroid/webkit/WebStorage$Origin;
    .end local v1           #origin:Ljava/lang/String;
    :cond_2e
    return-void
.end method


# virtual methods
.method public declared-synchronized createHandler()V
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 151
    new-instance v0, Landroid/webkit/WebStorage$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebStorage$2;-><init>(Landroid/webkit/WebStorage;)V

    iput-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 217
    :cond_c
    monitor-exit p0

    return-void

    .line 150
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createUIHandler()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Landroid/webkit/WebStorage$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebStorage$1;-><init>(Landroid/webkit/WebStorage;)V

    iput-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    .line 143
    :cond_b
    return-void
.end method

.method public deleteAllData()V
    .registers 3

    .prologue
    .line 335
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 336
    invoke-static {}, Landroid/webkit/WebStorage;->nativeDeleteAllData()V

    .line 340
    :goto_13
    return-void

    .line 338
    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_13
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .registers 5
    .parameter "origin"

    .prologue
    .line 321
    if-eqz p1, :cond_15

    .line 322
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 323
    invoke-static {p1}, Landroid/webkit/WebStorage;->nativeDeleteOrigin(Ljava/lang/String;)V

    .line 329
    :cond_15
    :goto_15
    return-void

    .line 325
    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v2, Landroid/webkit/WebStorage$Origin;

    invoke-direct {v2, p1}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_15
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    if-eqz p1, :cond_1a

    .line 236
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 237
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 238
    iget-object v0, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 243
    :cond_1a
    :goto_1a
    return-void

    .line 240
    :cond_1b
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_1a
.end method

.method getOriginsSync()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/webkit/WebStorage$Origin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 251
    invoke-virtual {p0}, Landroid/webkit/WebStorage;->update()V

    .line 252
    iget-object v0, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 254
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 8
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 284
    if-nez p2, :cond_4

    .line 301
    :goto_3
    return-void

    .line 287
    :cond_4
    if-nez p1, :cond_a

    .line 288
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 291
    :cond_a
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 292
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 293
    iget-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebStorage$Origin;

    .line 294
    .local v1, website:Landroid/webkit/WebStorage$Origin;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 296
    .end local v1           #website:Landroid/webkit/WebStorage$Origin;
    :cond_32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v0, values:Ljava/util/HashMap;
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const/4 v2, 0x6

    invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_3
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 8
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 261
    if-nez p2, :cond_4

    .line 278
    :goto_3
    return-void

    .line 264
    :cond_4
    if-nez p1, :cond_a

    .line 265
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 268
    :cond_a
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 269
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 270
    iget-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebStorage$Origin;

    .line 271
    .local v1, website:Landroid/webkit/WebStorage$Origin;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 273
    .end local v1           #website:Landroid/webkit/WebStorage$Origin;
    :cond_32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v0, values:Ljava/util/HashMap;
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/4 v2, 0x5

    invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_3
.end method

.method public setAppCacheMaximumSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 348
    invoke-static {p1, p2}, Landroid/webkit/WebStorage;->nativeSetAppCacheMaximumSize(J)V

    .line 349
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .registers 7
    .parameter "origin"
    .parameter "quota"

    .prologue
    .line 307
    if-eqz p1, :cond_15

    .line 308
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 309
    invoke-static {p1, p2, p3}, Landroid/webkit/WebStorage;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    .line 315
    :cond_15
    :goto_15
    return-void

    .line 311
    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/webkit/WebStorage$Origin;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;J)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_15
.end method

.method public update()V
    .registers 3

    .prologue
    .line 385
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 386
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 390
    :goto_13
    return-void

    .line 388
    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_13
.end method
