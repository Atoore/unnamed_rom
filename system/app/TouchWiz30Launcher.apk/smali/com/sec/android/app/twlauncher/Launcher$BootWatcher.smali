.class Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BootWatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;J)V
    .locals 1
    .parameter "launcher"
    .parameter "delay"

    .prologue
    .line 7828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7826
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->handler:Landroid/os/Handler;

    .line 7829
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 7830
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7831
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7834
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 7835
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5100(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7836
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getGLSurfaceViewGroup()Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    .line 7837
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7838
    invoke-static {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$5102(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 7840
    :cond_0
    return-void
.end method
