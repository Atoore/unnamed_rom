.class Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SceneGraphRenderer"
.end annotation


# instance fields
.field private mFBO:I

.field private mGLObjects:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeRenderCache:I

.field private mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

.field private temp:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    .line 1144
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    .line 1146
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 1148
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1200()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    .line 1190
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    .line 1151
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    return-object v0
.end method


# virtual methods
.method public addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    return-void
.end method

.method clearRenderTarget()V
    .locals 4

    .prologue
    const v3, 0x8d40

    const/4 v2, 0x0

    .line 1208
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1209
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1210
    const v0, 0x8ce0

    const/16 v1, 0xde1

    invoke-static {v3, v0, v1, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1212
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1214
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1235
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1300(I)V

    .line 1236
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1237
    return-void
.end method

.method public onContextLost()V
    .locals 3

    .prologue
    .line 1221
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    .line 1222
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;

    .line 1223
    .local v1, obj:Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;->onContextLost()V

    goto :goto_0

    .line 1225
    .end local v1           #obj:Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 1228
    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 1230
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1300(I)V

    .line 1231
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1200()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    .line 1232
    return-void
.end method

.method preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .locals 4
    .parameter "graph"

    .prologue
    .line 1174
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 1175
    .local v1, p:Lcom/sec/android/app/twlauncher/ShaderProgram;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    goto :goto_0

    .line 1177
    .end local v1           #p:Lcom/sec/android/app/twlauncher/ShaderProgram;
    :cond_0
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 1178
    .local v2, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    goto :goto_1

    .line 1181
    .end local v2           #s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendSurfaces()V

    .line 1182
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendGeometries(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 1183
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendShaderPrograms(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 1184
    return-void
.end method

.method render(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;II)V
    .locals 2
    .parameter "graph"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1154
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1156
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 1159
    const/16 v0, 0x900

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 1160
    const v0, 0x8d40

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1161
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1163
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->doCleanup()V

    .line 1166
    return-void
.end method

.method renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .locals 1
    .parameter "graph"

    .prologue
    .line 1187
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->renderQuads(I)V

    .line 1188
    return-void
.end method

.method setRenderTarget(III)V
    .locals 5
    .parameter "textureId"
    .parameter "width"
    .parameter "height"

    .prologue
    const v3, 0x8d40

    const/4 v4, 0x0

    .line 1193
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1194
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1195
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    .line 1197
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1198
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v3, v1, v2, p1, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1200
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 1201
    .local v0, res:I
    const v1, 0x8cd5

    if-eq v0, v1, :cond_1

    .line 1202
    const-string v1, "GLCanvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer not complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_1
    invoke-static {v4, v4, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1205
    return-void
.end method
