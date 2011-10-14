.class Lcom/sec/android/app/twlauncher/MenuManager$8;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsEnd:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4430
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 4434
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    if-eqz v0, :cond_0

    .line 4441
    :goto_0
    return-void

    .line 4436
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 4437
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 4438
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4439
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 4440
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1802(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 4445
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 4448
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 4449
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4450
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    .line 4451
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1802(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 4452
    return-void
.end method
