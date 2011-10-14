.class Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;
.super Ljava/lang/Object;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation


# instance fields
.field mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

.field mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

.field private mSurfaceCreated:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mSurfaceCreated:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mSurfaceCreated:Z

    return v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 240
    monitor-enter p0

    const/16 v1, 0xc11

    :try_start_0
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 242
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 243
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    move-result-object v0

    .line 245
    .local v0, graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$002(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z

    .line 247
    sget-object v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->render(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;II)V

    .line 249
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$100(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    .end local v0           #graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 250
    .restart local v0       #graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :cond_1
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$000(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 252
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3f30a3d7

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 255
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 281
    monitor-enter p0

    const/4 v1, -0x8

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->onContextLost()V

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->access$200(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 286
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    new-instance v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->postInvalidate()V

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mSurfaceCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 281
    .end local v0           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .locals 1
    .parameter "graph"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->recycle()V

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
