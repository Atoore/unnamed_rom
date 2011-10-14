.class public abstract Lcom/sec/android/app/twlauncher/QuickView;
.super Landroid/widget/FrameLayout;
.source "QuickView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickView$Animate;
    }
.end annotation


# instance fields
.field protected mAddDrawable:Landroid/graphics/drawable/Drawable;

.field protected mAnimationDuration:I

.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field protected mChildRects:[Landroid/graphics/Rect;

.field protected mCurrentPage:I

.field protected mCurrentRects:[Landroid/graphics/Rect;

.field protected mDeleteIndex:I

.field protected mDeleteView:Landroid/view/View;

.field protected mDraggingIndex:I

.field protected mDraggingView:Landroid/view/View;

.field protected mEnabledChildAnimation:Z

.field protected mFinishRects:[Landroid/graphics/Rect;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field protected mMovePinchStart:I

.field protected mMultiTouchUsed:Z

.field protected mOriginDragIndex:I

.field protected mPinchIndex:I

.field protected mPinchOutIndex:I

.field protected mPinchOutProcess:Z

.field protected mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field protected mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field protected mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field protected mScreenRect:Landroid/graphics/Rect;

.field protected mStartRects:[Landroid/graphics/Rect;

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTouchState:I

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 77
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 97
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    .line 136
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 140
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public drawCloseAnimation()V
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 209
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    .line 211
    :cond_0
    return-void
.end method

.method protected drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 13
    .parameter "canvas"
    .parameter "surface"
    .parameter "drawable"
    .parameter "bounds"
    .parameter "drawPos"
    .parameter "alpha"
    .parameter "color"

    .prologue
    .line 172
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    sub-int v12, v2, v3

    .line 173
    .local v12, w:I
    new-instance v11, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getHeight()I

    move-result v3

    invoke-direct {v11, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 174
    .local v11, max:Landroid/graphics/Point;
    const/4 v2, 0x1

    if-lt v12, v2, :cond_0

    iget v2, v11, Landroid/graphics/Point;->x:I

    if-le v12, v2, :cond_1

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 198
    :goto_0
    return-object v2

    .line 177
    :cond_1
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    sub-int v10, v2, v3

    .line 178
    .local v10, h:I
    const/4 v2, 0x1

    if-lt v10, v2, :cond_2

    iget v2, v11, Landroid/graphics/Point;->y:I

    if-le v10, v2, :cond_3

    .line 179
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 182
    if-nez p2, :cond_4

    .line 183
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 184
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 185
    .local v8, bmp:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    .local v9, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    new-instance p2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .end local p2
    invoke-direct {p2, v8}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .restart local p2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 190
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #c:Landroid/graphics/Canvas;
    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-ltz v2, :cond_5

    .line 191
    move-object v0, p1

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 193
    :cond_5
    if-eqz p7, :cond_6

    .line 194
    const/4 v2, 0x0

    aget v2, p7, v2

    const/4 v3, 0x1

    aget v3, p7, v3

    const/4 v4, 0x2

    aget v4, p7, v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 196
    :cond_6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    int-to-float v4, v2

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    int-to-float v5, v2

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    int-to-float v6, v2

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    int-to-float v7, v2

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 197
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object v2, p2

    .line 198
    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 203
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    .line 204
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    return v0
.end method

.method isOpened()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 163
    return-void
.end method
