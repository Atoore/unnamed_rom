.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglCreateSurfaceFailCnt:I

.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 6
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1122
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    .line 1123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1124
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1125
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1126
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1127
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1128
    iput-object p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 1129
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1130
    return-void
.end method

.method static synthetic access$1102(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1121
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1171
    new-instance v14, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    invoke-direct {v14, v15}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Landroid/opengl/GLSurfaceView;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1172
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1173
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1175
    const/4 v7, 0x0

    .line 1176
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1177
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1178
    .local v4, createEglSurface:Z
    const/4 v9, 0x0

    .line 1179
    .local v9, lostEglContext:Z
    const/4 v10, 0x0

    .line 1180
    .local v10, sizeChanged:Z
    const/4 v13, 0x0

    .line 1181
    .local v13, wantRenderNotification:Z
    const/4 v5, 0x0

    .line 1182
    .local v5, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1183
    .local v2, askedToReleaseEglContext:Z
    const/4 v12, 0x0

    .line 1184
    .local v12, w:I
    const/4 v8, 0x0

    .line 1185
    .local v8, h:I
    const/4 v6, 0x0

    .line 1188
    .local v6, event:Ljava/lang/Runnable;
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_28f

    .line 1190
    :goto_2b
    :try_start_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move v15, v0

    if-eqz v15, :cond_40

    .line 1191
    monitor-exit v14
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28c

    .line 1418
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1419
    :try_start_38
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1420
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1421
    monitor-exit v14
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_47c

    .line 1191
    return-void

    .line 1194
    :cond_40
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_62

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/Runnable;

    move-object v6, v0

    .line 1345
    :goto_5a
    monitor-exit v14
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_28c

    .line 1347
    if-eqz v6, :cond_2df

    .line 1348
    :try_start_5d
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_28f

    .line 1349
    const/4 v6, 0x0

    .line 1350
    goto :goto_26

    .line 1200
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_af

    .line 1201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move v15, v0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1202
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1204
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mPaused is now "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_af
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move v15, v0

    if-eqz v15, :cond_e0

    .line 1211
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "releasing EGL context because asked to tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1214
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1215
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1216
    const/4 v2, 0x1

    .line 1220
    :cond_e0
    if-eqz v9, :cond_e9

    .line 1221
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1222
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1223
    const/4 v9, 0x0

    .line 1227
    :cond_e9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-eqz v15, :cond_170

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move v15, v0

    if-eqz v15, :cond_170

    .line 1229
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "releasing EGL surface because paused tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1232
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v15

    if-eqz v15, :cond_141

    .line 1233
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1235
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "releasing EGL context because paused tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_141
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v15

    if-eqz v15, :cond_170

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1241
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "terminating EGL because paused tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_170
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move v15, v0

    if-nez v15, :cond_1b2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move v15, v0

    if-nez v15, :cond_1b2

    .line 1249
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "noticed surfaceView surface lost tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-eqz v15, :cond_1a5

    .line 1252
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1254
    :cond_1a5
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1255
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1259
    :cond_1b2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move v15, v0

    if-eqz v15, :cond_1ea

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move v15, v0

    if-eqz v15, :cond_1ea

    .line 1261
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "noticed surfaceView surface acquired tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1264
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1267
    :cond_1ea
    if-eqz v5, :cond_218

    .line 1269
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "sending render notification tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v13, 0x0

    .line 1272
    const/4 v5, 0x0

    .line 1273
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1274
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1278
    :cond_218
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v15

    if-eqz v15, :cond_2d6

    .line 1281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move v15, v0

    if-nez v15, :cond_228

    .line 1282
    if-eqz v2, :cond_29d

    .line 1283
    const/4 v2, 0x0

    .line 1298
    :cond_228
    :goto_228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move v15, v0

    if-eqz v15, :cond_23e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-nez v15, :cond_23e

    .line 1299
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1300
    const/4 v4, 0x1

    .line 1301
    const/4 v10, 0x1

    .line 1304
    :cond_23e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-eqz v15, :cond_2d6

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    #getter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v15}, Landroid/opengl/GLSurfaceView;->access$900(Landroid/opengl/GLSurfaceView;)Z

    move-result v15

    if-eqz v15, :cond_2cf

    .line 1306
    const/4 v10, 0x1

    .line 1307
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v12, v0

    .line 1308
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v8, v0

    .line 1309
    const/4 v13, 0x1

    .line 1311
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "noticing that we want render notification tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static/range {v15 .. v16}, Landroid/opengl/GLSurfaceView;->access$902(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1325
    :goto_283
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_5a

    .line 1345
    :catchall_28c
    move-exception v15

    monitor-exit v14
    :try_end_28e
    .catchall {:try_start_62 .. :try_end_28e} :catchall_28c

    :try_start_28e
    throw v15
    :try_end_28f
    .catchall {:try_start_28e .. :try_end_28f} :catchall_28f

    .line 1418
    :catchall_28f
    move-exception v14

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1419
    :try_start_295
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1420
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1421
    monitor-exit v15
    :try_end_29c
    .catchall {:try_start_295 .. :try_end_29c} :catchall_479

    .line 1418
    throw v14

    .line 1284
    :cond_29d
    :try_start_29d
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    :try_end_2a7
    .catchall {:try_start_29d .. :try_end_2a7} :catchall_28c

    move-result v15

    if-eqz v15, :cond_228

    .line 1286
    :try_start_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_2b2
    .catchall {:try_start_2aa .. :try_end_2b2} :catchall_28c
    .catch Ljava/lang/RuntimeException; {:try_start_2aa .. :try_end_2b2} :catch_2c2

    .line 1291
    const/4 v15, 0x1

    :try_start_2b3
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1292
    const/4 v3, 0x1

    .line 1294
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_228

    .line 1287
    :catch_2c2
    move-exception v15

    move-object v11, v15

    .line 1288
    .local v11, t:Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1289
    throw v11

    .line 1323
    .end local v11           #t:Ljava/lang/RuntimeException;
    :cond_2cf
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_283

    .line 1343
    :cond_2d6
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_2dd
    .catchall {:try_start_2b3 .. :try_end_2dd} :catchall_28c

    goto/16 :goto_2b

    .line 1353
    :cond_2df
    if-eqz v4, :cond_33a

    .line 1355
    :try_start_2e1
    const-string v14, "GLThread"

    const-string v15, "egl createSurface"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0

    .line 1358
    if-nez v7, :cond_32c

    .line 1361
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t create a surface "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    goto/16 :goto_26

    .line 1366
    :cond_32c
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1367
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1368
    const/4 v4, 0x0

    .line 1371
    :cond_33a
    if-eqz v3, :cond_354

    .line 1373
    const-string v14, "GLThread"

    const-string/jumbo v15, "onSurfaceCreated"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v15, v0

    iget-object v15, v15, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v14, v7, v15}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1376
    const/4 v3, 0x0

    .line 1379
    :cond_354
    if-eqz v10, :cond_388

    .line 1381
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onSurfaceChanged("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object v14, v0

    invoke-interface {v14, v7, v12, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1384
    const/4 v10, 0x0

    .line 1387
    :cond_388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move v14, v0

    if-nez v14, :cond_3a2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Surface;->isValid()Z

    move-result v14

    if-nez v14, :cond_3e6

    .line 1388
    :cond_3a2
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[onDrawFrame] mRequestPaused = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,surface.valid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->isValid()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1395
    :cond_3e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object v14, v0

    invoke-interface {v14, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1397
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move v14, v0

    if-nez v14, :cond_408

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Surface;->isValid()Z

    move-result v14

    if-nez v14, :cond_44c

    .line 1398
    :cond_408
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[egl.swap] mRequestPaused = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,surface.valid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->isValid()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1402
    :cond_44c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()Z

    move-result v14

    if-nez v14, :cond_474

    .line 1404
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "egl context lost tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_473
    .catchall {:try_start_2e1 .. :try_end_473} :catchall_28f

    .line 1406
    const/4 v9, 0x1

    .line 1409
    :cond_474
    if-eqz v13, :cond_26

    .line 1410
    const/4 v5, 0x1

    goto/16 :goto_26

    .line 1421
    :catchall_479
    move-exception v14

    :try_start_47a
    monitor-exit v15
    :try_end_47b
    .catchall {:try_start_47a .. :try_end_47b} :catchall_479

    throw v14

    :catchall_47c
    move-exception v15

    :try_start_47d
    monitor-exit v14
    :try_end_47e
    .catchall {:try_start_47d .. :try_end_47e} :catchall_47c

    throw v15
.end method

.method private readyToDraw()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1440
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1b

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1b

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_19

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1b

    :cond_19
    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private stopEglContextLocked()V
    .registers 2

    .prologue
    .line 1164
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1165
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1167
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1169
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1155
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1157
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .prologue
    .line 1426
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getRenderMode()I
    .registers 3

    .prologue
    .line 1457
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1458
    :try_start_5
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1459
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onPause()V
    .registers 7

    .prologue
    .line 1511
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1513
    :try_start_5
    const-string v2, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1516
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1517
    :goto_2c
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_51

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_51

    .line 1519
    const-string v2, "Main thread"

    const-string/jumbo v3, "onPause waiting for mPaused."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_4e

    .line 1522
    :try_start_3c
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4e
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_2c

    .line 1523
    :catch_44
    move-exception v2

    move-object v0, v2

    .line 1524
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2c

    .line 1527
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v2

    :cond_51
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    .line 1528
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 1531
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1533
    :try_start_5
    const-string v2, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1536
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1537
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1538
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1539
    :goto_32
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_5b

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v2, :cond_5b

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v2, :cond_5b

    .line 1541
    const-string v2, "Main thread"

    const-string/jumbo v3, "onResume waiting for !mPaused."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_58

    .line 1544
    :try_start_46
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_58
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4d} :catch_4e

    goto :goto_32

    .line 1545
    :catch_4e
    move-exception v2

    move-object v0, v2

    .line 1546
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_32

    .line 1549
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw v2

    :cond_5b
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_58

    .line 1550
    return-void
.end method

.method public onWindowResize(II)V
    .registers 9
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1553
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1554
    :try_start_5
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1555
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1556
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    #setter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v2, v3}, Landroid/opengl/GLSurfaceView;->access$902(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1557
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1558
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1559
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1563
    :goto_1c
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_74

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_74

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v2, :cond_74

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v2

    if-eqz v2, :cond_74

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1565
    const-string v2, "Main thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_71

    .line 1568
    :try_start_5f
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_71
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_66} :catch_67

    goto :goto_1c

    .line 1569
    :catch_67
    move-exception v2

    move-object v0, v2

    .line 1570
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1c

    .line 1573
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v2

    :cond_74
    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_71

    .line 1574
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 1602
    if-nez p1, :cond_b

    .line 1603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1605
    :cond_b
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1606
    :try_start_10
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1608
    monitor-exit v0

    .line 1609
    return-void

    .line 1608
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public requestExitAndWait()V
    .registers 4

    .prologue
    .line 1579
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1580
    const/4 v2, 0x1

    :try_start_6
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1581
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1582
    :goto_f
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_25

    if-nez v2, :cond_28

    .line 1584
    :try_start_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_25
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1585
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 1586
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1589
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw v2

    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 1590
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .prologue
    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1594
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1595
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1463
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1464
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1465
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1466
    monitor-exit v0

    .line 1467
    return-void

    .line 1466
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public run()V
    .registers 5

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1136
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :try_start_37
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_4b

    .line 1144
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    :goto_3e
    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1146
    return-void

    .line 1144
    :catchall_42
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v0

    .line 1141
    :catch_4b
    move-exception v0

    .line 1144
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    goto :goto_3e
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "renderMode"

    .prologue
    .line 1447
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_e

    .line 1448
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1451
    :try_start_13
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1452
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1453
    monitor-exit v0

    .line 1454
    return-void

    .line 1453
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public stopRender()V
    .registers 3

    .prologue
    .line 1470
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1471
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1472
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1473
    monitor-exit v0

    .line 1474
    return-void

    .line 1473
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public surfaceCreated()V
    .registers 4

    .prologue
    .line 1477
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1481
    const/4 v2, 0x1

    :try_start_6
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1482
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1483
    :goto_f
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v2, :cond_2c

    .line 1485
    :try_start_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1486
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 1487
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1490
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v2

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 1491
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 4

    .prologue
    .line 1494
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1498
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1499
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1500
    :goto_f
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v2, :cond_2c

    .line 1502
    :try_start_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1503
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 1504
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1507
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v2

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 1508
    return-void
.end method
