.class public Lcom/sec/android/app/twlauncher/GLAnim;
.super Ljava/lang/Object;
.source "GLAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;
    }
.end annotation


# instance fields
.field private mDebug:Z

.field private mDelta:Landroid/graphics/PointF;

.field private mDst:Landroid/graphics/PointF;

.field private mDuration:I

.field private mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

.field private mProgress:F

.field private mSrc:Landroid/graphics/PointF;

.field private mStart:Landroid/graphics/PointF;

.field private mStartTime:J

.field private mState:I

.field private mTransView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDebug:Z

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDebug:Z

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 54
    return-void
.end method


# virtual methods
.method drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 12
    .parameter "aCanvas"

    .prologue
    const/high16 v11, 0x3f80

    .line 97
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 99
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStartTime:J

    .line 100
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 101
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_1

    .line 102
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 104
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    if-eqz v7, :cond_2

    .line 105
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-interface {v7, p0}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V

    .line 108
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mTransView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 109
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mTransView:Landroid/view/View;

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->getTransRef(Landroid/view/View;)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v3

    .line 110
    .local v3, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 112
    .local v4, transRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/TransRef;->getAbsRefRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 113
    .local v2, origRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 115
    .local v0, delta:Landroid/graphics/Point;
    iget v7, v2, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 123
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 124
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->y:F

    iget v9, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 126
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 135
    .end local v0           #delta:Landroid/graphics/Point;
    .end local v2           #origRect:Landroid/graphics/Rect;
    .end local v3           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    .end local v4           #transRect:Landroid/graphics/Rect;
    :cond_3
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStartTime:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDuration:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    .line 136
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    cmpl-float v7, v7, v11

    if-ltz v7, :cond_4

    .line 137
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 138
    iput v11, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    .line 139
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    .line 143
    .local v1, normalized:F
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v1

    add-float v5, v7, v8

    .line 144
    .local v5, valueX:F
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v1

    add-float v6, v7, v8

    .line 146
    .local v6, valueY:F
    invoke-virtual {p1, v5, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 147
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v7, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 148
    neg-float v7, v5

    neg-float v8, v6

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 149
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDebug:Z

    if-eqz v7, :cond_0

    .line 150
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    if-nez v7, :cond_5

    .line 151
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    goto/16 :goto_0

    .line 141
    .end local v1           #normalized:F
    .end local v5           #valueX:F
    .end local v6           #valueY:F
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1       #normalized:F
    goto :goto_1

    .line 153
    .restart local v5       #valueX:F
    .restart local v6       #valueY:F
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 154
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v7, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 155
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    neg-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    neg-float v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto/16 :goto_0

    .line 161
    .end local v1           #normalized:F
    .end local v5           #valueX:F
    .end local v6           #valueY:F
    :pswitch_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    if-eqz v7, :cond_6

    .line 162
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-interface {v7, p0}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    .line 164
    :cond_6
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDst()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    return v0
.end method

.method public setDst(Landroid/graphics/PointF;)V
    .locals 4
    .parameter "aPt"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 94
    return-void
.end method

.method public setLstnr(Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V
    .locals 0
    .parameter "aLstnr"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    .line 58
    return-void
.end method

.method public setParams(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 1
    .parameter "aView"
    .parameter "aGLDrawHndlr"
    .parameter "aTransView"
    .parameter "aSrc"
    .parameter "aDst"
    .parameter "aDuration"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mView:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    invoke-virtual {v0, p4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 69
    invoke-virtual {p0, p5}, Lcom/sec/android/app/twlauncher/GLAnim;->setDst(Landroid/graphics/PointF;)V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 71
    iput p6, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDuration:I

    .line 72
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mTransView:Landroid/view/View;

    .line 73
    return-void
.end method
