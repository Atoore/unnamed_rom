.class Lcom/sec/android/app/twlauncher/MenuManager$7;
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
    .line 4388
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    .line 4392
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->mIsEnd:Z

    if-eqz v2, :cond_0

    .line 4403
    :goto_0
    return-void

    .line 4394
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 4396
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4397
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 4398
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4397
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4401
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4402
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->mIsEnd:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 4407
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 4410
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 4411
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4412
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->mIsEnd:Z

    .line 4413
    return-void
.end method
