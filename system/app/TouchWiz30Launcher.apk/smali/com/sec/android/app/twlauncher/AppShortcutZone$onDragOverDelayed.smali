.class Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onDragOverDelayed"
.end annotation


# instance fields
.field private mDragInfo:Ljava/lang/Object;

.field private mSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mStart:J

.field private mX:I

.field private mXOffset:I

.field private mY:I

.field private mYOffset:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/AppShortcutZone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    return-void
.end method


# virtual methods
.method public getDelta()J
    .locals 4

    .prologue
    .line 1144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mStart:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$400(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mX:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mY:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mXOffset:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mYOffset:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mDragInfo:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_0
    const-string v0, "DebugDrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped DragOverDelayed at delta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->getDelta()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 1135
    iput p2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mX:I

    .line 1136
    iput p3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mY:I

    .line 1137
    iput p4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mXOffset:I

    .line 1138
    iput p5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mYOffset:I

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$402(Lcom/sec/android/app/twlauncher/AppShortcutZone;Z)Z

    .line 1140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->mStart:J

    .line 1141
    return-void
.end method
