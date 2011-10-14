.class Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field private mIsQueued:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/DragLayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 1
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    .line 1080
    return-void
.end method


# virtual methods
.method public isQueued()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    .line 1084
    .local v0, ds:Lcom/sec/android/app/twlauncher/DragScroller;
    if-eqz v0, :cond_0

    .line 1085
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->clearPendingDragScroll()V

    .line 1086
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v1, :cond_1

    .line 1087
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollLeft()V

    .line 1091
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    .line 1093
    :cond_0
    return-void

    .line 1089
    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1118
    iput p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    .line 1119
    return-void
.end method

.method public setIsQueued(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 1096
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    if-eq p1, v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    .line 1100
    .local v0, ds:Lcom/sec/android/app/twlauncher/DragScroller;
    if-eqz v0, :cond_0

    .line 1101
    if-nez p1, :cond_1

    .line 1102
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->clearPendingDragScroll()V

    .line 1110
    .end local v0           #ds:Lcom/sec/android/app/twlauncher/DragScroller;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    .line 1111
    return-void

    .line 1103
    .restart local v0       #ds:Lcom/sec/android/app/twlauncher/DragScroller;
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v1, :cond_2

    .line 1104
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DragScroller;->setPendingDragScroll(I)V

    goto :goto_0

    .line 1106
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DragScroller;->setPendingDragScroll(I)V

    goto :goto_0
.end method
