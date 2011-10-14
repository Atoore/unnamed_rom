.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "t"
    .parameter "e"

    .prologue
    const/16 v4, 0xa

    const-string v1, "AndroidRuntime"

    .line 112
    :try_start_4
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 113
    const-string v1, "AndroidRuntime"

    const-string/jumbo v2, "uncaughtException : Already handling crash ... So return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_12} :catch_8b

    .line 144
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 145
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 147
    :goto_1c
    return-void

    .line 116
    :cond_1d
    const/4 v1, 0x1

    :try_start_1e
    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 118
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6e

    .line 119
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const-string v1, "-k -z -d -o /data/log/dumpstate_sys_error"

    invoke-static {v1}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_48} :catch_8b

    .line 124
    const-wide/16 v1, 0x2710

    :try_start_4a
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_a0
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_ac
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_8b

    .line 127
    :goto_4d
    :try_start_4d
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_53

    .line 134
    :cond_53
    :goto_53
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v3, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_63} :catch_8b

    .line 144
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 145
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_1c

    .line 130
    :cond_6e
    :try_start_6e
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_6e .. :try_end_8a} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_8a} :catch_8b

    goto :goto_53

    .line 136
    :catch_8b
    move-exception v1

    move-object v0, v1

    .line 138
    .local v0, t2:Ljava/lang/Throwable;
    :try_start_8d
    const-string v1, "AndroidRuntime"

    const-string v2, "Error reporting crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_a0
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_94} :catch_ae

    .line 144
    :goto_94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 145
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1c

    .line 144
    .end local v0           #t2:Ljava/lang/Throwable;
    :catchall_a0
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 145
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v1

    .line 125
    :catch_ac
    move-exception v1

    goto :goto_4d

    .line 139
    .restart local v0       #t2:Ljava/lang/Throwable;
    :catch_ae
    move-exception v1

    goto :goto_94
.end method
