.class final Lcom/android/internal/app/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "unused"

    .prologue
    .line 182
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v1}, Lcom/android/internal/app/ShutdownThread;->access$402(Z)Z

    .line 184
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method
