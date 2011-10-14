.class Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectFinalizeQueue"
.end annotation


# instance fields
.field private mTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method declared-synchronized doCleanup()V
    .locals 6

    .prologue
    .line 1120
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1121
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1122
    .local v2, textures:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1123
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1124
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1125
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .end local v1           #i:I
    .end local v2           #textures:[I
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1127
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1132
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring exception while cleaning up textures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTextures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1120
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized queueTexture(I)V
    .locals 2
    .parameter "textureId"

    .prologue
    .line 1112
    monitor-enter p0

    if-lez p1, :cond_0

    .line 1113
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :cond_0
    monitor-exit p0

    return-void

    .line 1112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
