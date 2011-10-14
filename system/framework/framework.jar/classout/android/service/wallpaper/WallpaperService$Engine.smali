.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mDestroyed:Z

.field mDrawingAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputHandler:Landroid/view/InputHandler;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mReportedVisible:Z

.field mScreenOn:Z

.field mSession:Landroid/view/IWindowSession;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 122
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 132
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    .line 147
    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 148
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 152
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    .line 154
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 223
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputHandler:Landroid/view/InputHandler;

    .line 237
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 464
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 466
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 470
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    .line 472
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 474
    return-void

    .line 468
    .end local v0           #msg:Landroid/os/Message;
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_c

    .line 470
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_1f

    throw v2
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 7
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x0

    const-string v4, "WallpaperService"

    .line 648
    const-string v1, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v1, :cond_31

    .line 650
    const-string v1, "WallpaperService"

    const-string v1, "Destroyed"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_30
    return-void

    .line 654
    :cond_31
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 655
    #getter for: Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 656
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 657
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 658
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 660
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 662
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 664
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 665
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    :try_start_6b
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/service/wallpaper/WallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_72} :catch_7d

    .line 677
    :goto_72
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 679
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 680
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_30

    .line 671
    :catch_7d
    move-exception v1

    goto :goto_72
.end method

.method detach()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string v2, "WallpaperService"

    .line 802
    const-string v0, "WallpaperService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_33

    .line 804
    const-string v0, "WallpaperService"

    const-string v0, "Destroyed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_32
    :goto_32
    return-void

    .line 808
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 810
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_3f

    .line 811
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 813
    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 816
    :cond_3f
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 819
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 822
    :try_start_45
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4c} :catch_96

    .line 829
    :goto_4c
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_32

    .line 834
    :try_start_50
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_6f

    .line 835
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 837
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 838
    const-string v0, "WallpaperService"

    const-string v1, "Input Channel is initialized(unregister)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_6f
    :goto_6f
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_76} :catch_94

    .line 849
    :goto_76
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 850
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 854
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_32

    .line 855
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    goto :goto_32

    .line 842
    :cond_8c
    :try_start_8c
    const-string v0, "WallpaperService"

    const-string v1, "Input Channel is uninitialized(unregister)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_93} :catch_94

    goto :goto_6f

    .line 847
    :catch_94
    move-exception v0

    goto :goto_76

    .line 824
    :catch_96
    move-exception v0

    goto :goto_4c
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10
    .parameter "cmd"

    .prologue
    .line 765
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_25

    .line 766
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v7

    .line 771
    .local v7, result:Landroid/os/Bundle;
    :goto_15
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_24

    .line 774
    :try_start_19
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_27

    .line 778
    :cond_24
    :goto_24
    return-void

    .line 769
    .end local v7           #result:Landroid/os/Bundle;
    :cond_25
    const/4 v7, 0x0

    .restart local v7       #result:Landroid/os/Bundle;
    goto :goto_15

    .line 775
    :catch_27
    move-exception v0

    goto :goto_24
.end method

.method doDesiredSizeChanged(II)V
    .registers 4
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 684
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_12

    .line 687
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 688
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 689
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 690
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged()V

    .line 692
    :cond_12
    return-void
.end method

.method doOffsetsChanged()V
    .registers 14

    .prologue
    const/high16 v12, 0x3f00

    const/4 v11, 0x0

    .line 725
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_8

    .line 761
    :cond_7
    :goto_7
    return-void

    .line 734
    :cond_8
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_b
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 736
    .local v1, xOffset:F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 737
    .local v2, yOffset:F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 738
    .local v3, xOffsetStep:F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 739
    .local v4, yOffsetStep:F
    iget-boolean v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 740
    .local v9, sync:Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 741
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 742
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_54

    .line 744
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_44

    .line 747
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int v8, v0, v10

    .line 748
    .local v8, availw:I
    if-lez v8, :cond_57

    int-to-float v0, v8

    mul-float/2addr v0, v1

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    move v5, v0

    .line 749
    .local v5, xPixels:I
    :goto_30
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v7, v0, v10

    .line 750
    .local v7, availh:I
    if-lez v7, :cond_59

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v0, v0

    move v6, v0

    .local v6, yPixels:I
    :goto_40
    move-object v0, p0

    .line 751
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 754
    .end local v5           #xPixels:I
    .end local v6           #yPixels:I
    .end local v7           #availh:I
    .end local v8           #availw:I
    :cond_44
    if-eqz v9, :cond_7

    .line 757
    :try_start_46
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v10}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_52

    goto :goto_7

    .line 758
    :catch_52
    move-exception v0

    goto :goto_7

    .line 742
    .end local v1           #xOffset:F
    .end local v2           #yOffset:F
    .end local v3           #xOffsetStep:F
    .end local v4           #yOffsetStep:F
    .end local v9           #sync:Z
    :catchall_54
    move-exception v10

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v10

    .restart local v1       #xOffset:F
    .restart local v2       #yOffset:F
    .restart local v3       #xOffsetStep:F
    .restart local v4       #yOffsetStep:F
    .restart local v8       #availw:I
    .restart local v9       #sync:Z
    :cond_57
    move v5, v11

    .line 748
    goto :goto_30

    .restart local v5       #xPixels:I
    .restart local v7       #availh:I
    :cond_59
    move v6, v11

    .line 750
    goto :goto_40
.end method

.method doVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 696
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 697
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 699
    :cond_9
    return-void
.end method

.method public getDesiredMinimumHeight()I
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isDestoryed()Z
    .registers 2

    .prologue
    .line 798
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    return v0
.end method

.method public isPreview()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "surfaceHolder"

    .prologue
    .line 361
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onCreate Engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .registers 3
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 430
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 370
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onDestroy Engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 7
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 401
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 437
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceChanged[width]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[height]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 452
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 460
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 445
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 390
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 379
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method reportSurfaceDestroyed()V
    .registers 7

    .prologue
    .line 781
    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_28

    .line 782
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 783
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 784
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 785
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_23

    .line 786
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_17
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 787
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 786
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 792
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_23
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 794
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_28
    return-void
.end method

.method reportVisibility()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "WallpaperService"

    .line 702
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_73

    .line 703
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v1, :cond_71

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    if-eqz v1, :cond_71

    const/4 v1, 0x1

    move v0, v1

    .line 704
    .local v0, visible:Z
    :goto_11
    const-string v1, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v1, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v1, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mReportedVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v1, v0, :cond_70

    .line 708
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 711
    if-eqz v0, :cond_6d

    .line 715
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 717
    :cond_6d
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 722
    .end local v0           #visible:Z
    :cond_70
    :goto_70
    return-void

    :cond_71
    move v0, v3

    .line 703
    goto :goto_11

    .line 720
    :cond_73
    const-string v1, "WallpaperService"

    const-string/jumbo v1, "reportVisibility:Destoryed"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public setTouchEventsEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 348
    if-eqz p1, :cond_11

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_7
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 351
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_10

    .line 352
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 354
    :cond_10
    return-void

    .line 348
    :cond_11
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_7
.end method

.method updateSurface(ZZZ)V
    .registers 37
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 478
    const-string v5, "WallpaperService"

    const-string v6, "Ignoring updateSurface: destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_e
    :goto_e
    return-void

    .line 482
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v27

    .line 483
    .local v27, myWidth:I
    if-gtz v27, :cond_1c

    const/16 v27, -0x1

    .line 484
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v26

    .line 485
    .local v26, myHeight:I
    if-gtz v26, :cond_29

    const/16 v26, -0x1

    .line 487
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    move v5, v0

    if-nez v5, :cond_25d

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 488
    .local v20, creating:Z
    :goto_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    move v5, v0

    if-nez v5, :cond_262

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 489
    .local v30, surfaceCreating:Z
    :goto_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v6

    if-eq v5, v6, :cond_267

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 490
    .local v22, formatChanged:Z
    :goto_50
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-ne v0, v1, :cond_64

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v26

    if-eq v0, v1, :cond_26c

    :cond_64
    const/4 v5, 0x1

    move/from16 v29, v5

    .line 491
    .local v29, sizeChanged:Z
    :goto_67
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v6

    if-eq v5, v6, :cond_271

    const/4 v5, 0x1

    move/from16 v31, v5

    .line 492
    .local v31, typeChanged:Z
    :goto_7a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move v6, v0

    if-eq v5, v6, :cond_276

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 493
    .local v21, flagsChanged:Z
    :goto_89
    if-nez p1, :cond_99

    if-nez v20, :cond_99

    if-nez v30, :cond_99

    if-nez v22, :cond_99

    if-nez v29, :cond_99

    if-nez v31, :cond_99

    if-nez v21, :cond_99

    if-eqz p3, :cond_e

    .line 500
    :cond_99
    :try_start_99
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 501
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move/from16 v0, v27

    move-object v1, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move/from16 v0, v26

    move-object v1, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x200

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    move-object v6, v0

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    move v5, v0

    if-nez v5, :cond_1b9

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    move-object v6, v0

    iget v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const v6, 0x1030079

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 528
    new-instance v5, Landroid/view/InputChannel;

    invoke-direct {v5}, Landroid/view/InputChannel;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    .line 531
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uninitialized"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27b

    .line 535
    const-string v5, "WallpaperService"

    const-string v6, "Input Channel is initialized(register)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputHandler:Landroid/view/InputHandler;

    move-object v6, v0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    .line 546
    :cond_1b9
    :goto_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 547
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-interface/range {v5 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v28

    .line 557
    .local v28, relayoutResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v32

    .line 558
    .local v32, w:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v32

    if-eq v0, v1, :cond_223

    .line 559
    const/16 v29, 0x1

    .line 560
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 562
    :cond_223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    .line 563
    .local v23, h:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v23

    if-eq v0, v1, :cond_23e

    .line 564
    const/16 v29, 0x1

    .line 565
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 568
    :cond_23e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_284

    .line 571
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    goto/16 :goto_e

    .line 639
    .end local v23           #h:I
    .end local v28           #relayoutResult:I
    .end local v32           #w:I
    :catch_25a
    move-exception v5

    goto/16 :goto_e

    .line 487
    .end local v20           #creating:Z
    .end local v21           #flagsChanged:Z
    .end local v22           #formatChanged:Z
    .end local v29           #sizeChanged:Z
    .end local v30           #surfaceCreating:Z
    .end local v31           #typeChanged:Z
    :cond_25d
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_33

    .line 488
    .restart local v20       #creating:Z
    :cond_262
    const/4 v5, 0x0

    move/from16 v30, v5

    goto/16 :goto_3d

    .line 489
    .restart local v30       #surfaceCreating:Z
    :cond_267
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_50

    .line 490
    .restart local v22       #formatChanged:Z
    :cond_26c
    const/4 v5, 0x0

    move/from16 v29, v5

    goto/16 :goto_67

    .line 491
    .restart local v29       #sizeChanged:Z
    :cond_271
    const/4 v5, 0x0

    move/from16 v31, v5

    goto/16 :goto_7a

    .line 492
    .restart local v31       #typeChanged:Z
    :cond_276
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_89

    .line 541
    .restart local v21       #flagsChanged:Z
    :cond_27b
    const-string v5, "WallpaperService"

    const-string v6, "Input Channel is uninitialized(register)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_282
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_282} :catch_25a

    goto/16 :goto_1b9

    .line 577
    .restart local v23       #h:I
    .restart local v28       #relayoutResult:I
    .restart local v32       #w:I
    :cond_284
    :try_start_284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 579
    if-eqz v30, :cond_2c9

    .line 580
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 585
    .local v19, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_2c9

    .line 586
    move-object/from16 v17, v19

    .local v17, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_2b3
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c9

    aget-object v18, v17, v24

    .line 587
    .local v18, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 586
    add-int/lit8 v24, v24, 0x1

    goto :goto_2b3

    .line 592
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :cond_2c9
    if-nez v20, :cond_2cf

    and-int/lit8 v5, v28, 0x2

    if-eqz v5, :cond_335

    :cond_2cf
    const/4 v5, 0x1

    :goto_2d0
    or-int p3, p3, v5

    .line 595
    if-nez p2, :cond_2dc

    if-nez v20, :cond_2dc

    if-nez v30, :cond_2dc

    if-nez v22, :cond_2dc

    if-eqz v29, :cond_337

    .line 608
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move v8, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 611
    .restart local v19       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_337

    .line 612
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_30d
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_337

    aget-object v18, v17, v24

    .line 613
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move v8, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 612
    add-int/lit8 v24, v24, 0x1

    goto :goto_30d

    .line 592
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :cond_335
    const/4 v5, 0x0

    goto :goto_2d0

    .line 619
    :cond_337
    if-eqz p3, :cond_394

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 622
    .restart local v19       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_394

    .line 623
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_358
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_394

    aget-object v18, v17, v24

    .line 624
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/SurfaceHolder$Callback2;

    move v5, v0

    if-eqz v5, :cond_374

    .line 625
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_374
    .catchall {:try_start_284 .. :try_end_374} :catchall_377

    .line 623
    :cond_374
    add-int/lit8 v24, v24, 0x1

    goto :goto_358

    .line 633
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v24           #i$:I
    .end local v25           #len$:I
    :catchall_377
    move-exception v5

    const/4 v6, 0x0

    :try_start_379
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 634
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 635
    if-eqz p3, :cond_393

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 633
    :cond_393
    throw v5

    :cond_394
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 634
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 635
    if-eqz p3, :cond_e

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3af
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_3af} :catch_25a

    goto/16 :goto_e
.end method
