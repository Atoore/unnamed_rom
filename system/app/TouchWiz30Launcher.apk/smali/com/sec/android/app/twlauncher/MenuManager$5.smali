.class Lcom/sec/android/app/twlauncher/MenuManager$5;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3303
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "aView"

    .prologue
    const/4 v4, 0x0

    .line 3305
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    .line 3307
    .local v2, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 3328
    :goto_0
    return v3

    .line 3310
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 3311
    goto :goto_0

    .line 3314
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-boolean v3, v3, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    if-eqz v3, :cond_2

    move v3, v4

    .line 3315
    goto :goto_0

    .line 3319
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->showMotionDialog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3320
    const/4 v3, 0x1

    goto :goto_0

    .line 3327
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$900(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 3328
    .local v1, p:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v3, v4, v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_0
.end method
