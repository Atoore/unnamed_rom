.class Lcom/android/internal/telephony/Am$MyActivityController$1;
.super Ljava/lang/Thread;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/Am$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/Am$MyActivityController;

.field final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Am$MyActivityController;Ljava/io/InputStreamReader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->this$1:Lcom/android/internal/telephony/Am$MyActivityController;

    iput-object p2, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 562
    new-instance v2, Ljava/io/BufferedReader;

    iget-object v4, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 564
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 566
    .local v0, count:I
    :goto_8
    iget-object v4, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->this$1:Lcom/android/internal/telephony/Am$MyActivityController;

    monitor-enter v4

    .line 567
    :try_start_b
    iget-object v5, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->this$1:Lcom/android/internal/telephony/Am$MyActivityController;

    iget-object v5, v5, Lcom/android/internal/telephony/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-nez v5, :cond_13

    .line 568
    monitor-exit v4

    .line 583
    :cond_12
    :goto_12
    return-void

    .line 570
    :cond_13
    const/4 v5, 0x2

    if-ne v0, v5, :cond_20

    .line 571
    iget-object v5, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->this$1:Lcom/android/internal/telephony/Am$MyActivityController;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/Am$MyActivityController;->mGotGdbPrint:Z

    .line 572
    iget-object v5, p0, Lcom/android/internal/telephony/Am$MyActivityController$1;->this$1:Lcom/android/internal/telephony/Am$MyActivityController;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 574
    :cond_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_42

    .line 576
    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 580
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GDB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3f} :catch_45

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 574
    .end local v3           #line:Ljava/lang/String;
    :catchall_42
    move-exception v5

    :try_start_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v5

    .line 582
    :catch_45
    move-exception v4

    move-object v1, v4

    .line 583
    .local v1, e:Ljava/io/IOException;
    goto :goto_12
.end method
