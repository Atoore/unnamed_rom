.class Landroid/service/wallpaper/WallpaperService$Engine$4;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    .line 249
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAppVisibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v1, :cond_34

    .line 253
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x271a

    if-eqz p1, :cond_35

    const/4 v3, 0x1

    :goto_29
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 257
    .end local v0           #msg:Landroid/os/Message;
    :cond_34
    return-void

    .line 253
    :cond_35
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 12
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 281
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_5
    new-instance v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 284
    .local v0, cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iput-object p1, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 285
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 286
    iput p3, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 287
    iput p4, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 288
    iput-object p5, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 289
    iput-boolean p6, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    .line 290
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x2729

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 291
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 293
    monitor-exit v2

    .line 294
    return-void

    .line 293
    .end local v0           #cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_2b
    move-exception v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    .line 262
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_5
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 265
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 266
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 267
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p4, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 268
    if-eqz p5, :cond_1c

    .line 269
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 271
    :cond_1c
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez v2, :cond_38

    .line 272
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 273
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2724

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 276
    .end local v0           #msg:Landroid/os/Message;
    :cond_38
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 241
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resized:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x272e

    if-eqz p5, :cond_38

    const/4 v3, 0x1

    :goto_2c
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 245
    return-void

    .line 242
    .end local v0           #msg:Landroid/os/Message;
    :cond_38
    const/4 v3, 0x0

    goto :goto_2c
.end method
