.class public Lcom/sec/android/app/twlauncher/LauncherDragInfo;
.super Ljava/lang/Object;
.source "LauncherDragInfo.java"


# instance fields
.field private mDelayRemovingFromSourceWhenDrop:Z

.field private mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

.field private mIsLauncherAppWidgetInfo:Z

.field private mRunForDelayedRemoving:Ljava/lang/Runnable;

.field private mRunForDelayedRemovingReverted:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 2
    .parameter "draggingItemInfo"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    .line 15
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemoving:Ljava/lang/Runnable;

    .line 17
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemovingReverted:Ljava/lang/Runnable;

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "draggingItemInfo should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;Z)V
    .locals 2
    .parameter "draggingItemInfo"
    .parameter "isLauncherAppWidgetInfo"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    .line 15
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemoving:Ljava/lang/Runnable;

    .line 17
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemovingReverted:Ljava/lang/Runnable;

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "draggingItemInfo should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 40
    iput-boolean p2, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mIsLauncherAppWidgetInfo:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    return-object v0
.end method

.method public isLauncherAppWidgetInfo()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mIsLauncherAppWidgetInfo:Z

    return v0
.end method

.method public setDelayRemovingFromSourceWhenDrop(Z)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    .line 65
    return-void
.end method

.method public shouldDelayRemovingFromSourceWhenDrop()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    return v0
.end method
