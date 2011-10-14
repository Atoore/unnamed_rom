.class public Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.super Ljava/lang/Object;
.source "GLCanvas.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geometry"
.end annotation


# instance fields
.field private mComponentCount:I

.field private mCount:I

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mIndexVBO:I

.field private mUploadNeeded:Z

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexVBO:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I

    .line 938
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    .line 940
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    .line 907
    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 905
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 905
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 905
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 905
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I

    return v0
.end method


# virtual methods
.method public onContextLost()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 979
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    .line 980
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    .line 982
    return-void
.end method

.method public put([F[SI)V
    .locals 3
    .parameter "verticies"
    .parameter "indexes"
    .parameter "componentCount"

    .prologue
    const/4 v2, 0x0

    .line 914
    iput p3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I

    .line 915
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 916
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 917
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 918
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 920
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 921
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 922
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 925
    array-length v1, p2

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mCount:I

    .line 927
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    .line 928
    return-void
.end method

.method uploadIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 8
    .parameter "renderer"

    .prologue
    const v7, 0x88e4

    const/4 v6, 0x2

    const v5, 0x8893

    const v4, 0x8892

    const/4 v3, 0x0

    .line 945
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    if-eqz v1, :cond_1

    .line 946
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 947
    new-array v0, v6, [I

    .line 948
    .local v0, temp:[I
    invoke-static {v6, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 949
    aget v1, v0, v3

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    .line 950
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    .line 951
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    .line 954
    .end local v0           #temp:[I
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 955
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 957
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 959
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 960
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v5, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 962
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 965
    :cond_1
    return-void
.end method
