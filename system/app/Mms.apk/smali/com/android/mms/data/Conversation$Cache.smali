.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 991
    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    .line 1001
    return-void
.end method

.method static dumpCache()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 7
    .parameter "threadId"

    .prologue
    const-string v6, "Mms/Conversation.Cache"

    .line 1008
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 1009
    :try_start_0
    const-string v3, "Mms/Conversation.Cache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(long),threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    .line 1016
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1017
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 1018
    const-string v3, "Mms/Conversation.Cache"

    const-string v4, "get(long),cache hit!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    monitor-exit v2

    move-object v2, v0

    .line 1025
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :goto_0
    return-object v2

    .line 1022
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    const-string v2, "Mms/Conversation.Cache"

    const-string v2, "get(long),cache not hit!"

    invoke-static {v6, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/4 v2, 0x0

    goto :goto_0

    .line 1022
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 6
    .parameter "list"

    .prologue
    const-string v5, "Mms/Conversation.Cache"

    .line 1033
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 1034
    :try_start_0
    const-string v3, "Mms/Conversation.Cache"

    const-string v4, "get(ContactList)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1041
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1042
    const-string v3, "Mms/Conversation.Cache"

    const-string v4, "get(ContactList),cache hit!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    monitor-exit v2

    move-object v2, v0

    .line 1049
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :goto_0
    return-object v2

    .line 1046
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    const-string v2, "Mms/Conversation.Cache"

    const-string v2, "get(list),cache not hit!"

    invoke-static {v5, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const/4 v2, 0x0

    goto :goto_0

    .line 1046
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 994
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v2, "Mms/Conversation.Cache"

    const-string v3, "keepOnly()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 1114
    :try_start_0
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1115
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Conversation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1117
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1121
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Conversation;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Conversation;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    .line 1124
    return-void
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 1058
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v0

    .line 1061
    :try_start_0
    const-string v1, "Mms/Conversation.Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put(Conversation),c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/mms/data/Conversation;->access$900(Lcom/android/mms/data/Conversation;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1067
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1068
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    return-void
.end method

.method static remove(J)V
    .locals 6
    .parameter "threadId"

    .prologue
    const-string v5, "Mms/Conversation.Cache"

    .line 1072
    const-string v2, "Mms/Conversation.Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove(long),threadid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    .line 1079
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 1080
    :try_start_0
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 1081
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 1082
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1083
    const-string v3, "Mms/Conversation.Cache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove(long),removed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    monitor-exit v2

    .line 1091
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :goto_0
    return-void

    .line 1087
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    const-string v2, "Mms/Conversation.Cache"

    const-string v2, "remove(long),not removed"

    invoke-static {v5, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
