.class Lcom/sec/android/app/twlauncher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 3457
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3459
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3460
    .local v0, nextScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$300(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 3461
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$400(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3462
    add-int/lit8 v0, v0, 0x1

    .line 3463
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$410(Lcom/sec/android/app/twlauncher/Workspace;)I

    .line 3477
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    .line 3478
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    .line 3479
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3483
    :goto_1
    return-void

    .line 3464
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$400(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-gez v1, :cond_1

    .line 3465
    add-int/lit8 v0, v0, -0x1

    .line 3466
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$408(Lcom/sec/android/app/twlauncher/Workspace;)I

    goto :goto_0

    .line 3468
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iput v3, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 3469
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 3470
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_1

    .line 3474
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3481
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_1
.end method
