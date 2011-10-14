.class public Lcom/sec/android/app/twlauncher/GLScrollBars;
.super Ljava/lang/Object;
.source "GLScrollBars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;
    }
.end annotation


# instance fields
.field private mColorBlue:F

.field private mColorGreen:F

.field private mColorRed:F

.field private mFadeDelay:I

.field private mFadeDuration:I

.field private mFadeStart:J

.field private mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mHorizontalSize:I

.field private mOpacity:F

.field private mPadding:I

.field private mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mVerticalSize:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "targetView"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    .line 21
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    .line 23
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    .line 24
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    .line 25
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    .line 27
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    .line 28
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    .line 29
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    .line 30
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    .line 343
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$1;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 346
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$2;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "targetView"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0xff

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    .line 21
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    .line 23
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    .line 24
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    .line 25
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    .line 27
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    .line 28
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    .line 29
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    .line 30
    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    .line 343
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$1;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 346
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$2;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    .line 39
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLScrollBars:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setHorizontalHeight(I)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setVerticalWidth(I)V

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setPadding(I)V

    .line 51
    const/4 v1, 0x3

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setColor(I)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private calculateOpacity()F
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, opacity:F
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 71
    const/high16 v3, 0x3f80

    .line 72
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 73
    .local v1, now:J
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 74
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 87
    .end local v1           #now:J
    :cond_0
    :goto_0
    return v3

    .line 75
    .restart local v1       #now:J
    :cond_1
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 76
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    sub-long v4, v1, v4

    long-to-int v0, v4

    .line 77
    .local v0, fadeTime:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    if-lt v0, v4, :cond_2

    .line 78
    const/4 v3, 0x0

    .line 79
    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    goto :goto_0

    .line 83
    :cond_2
    const/high16 v4, 0x3f80

    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, rc:Z
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    if-lez v1, :cond_1

    .line 61
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :cond_1
    return v0
.end method

.method public drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z
    .locals 11
    .parameter "canvas"
    .parameter "horizontalRange"
    .parameter "horizontalOffset"
    .parameter "horizontalExtent"

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, redraw:Z
    if-lez p4, :cond_2

    if-ge p4, p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->calculateOpacity()F

    move-result v2

    .local v2, opacity:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    .line 111
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    sub-int v6, v7, v8

    .line 112
    .local v6, y:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 113
    .local v4, size:I
    int-to-float v7, v4

    int-to-float v8, p4

    mul-float/2addr v7, v8

    int-to-float v8, p2

    div-float v0, v7, v8

    .line 114
    .local v0, length:F
    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 117
    .local v5, x:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    mul-int/lit8 v1, v7, 0x2

    .line 118
    .local v1, minLength:I
    int-to-float v7, v1

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    .line 119
    int-to-float v0, v1

    .line 122
    :cond_0
    add-float v7, v5, v0

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 123
    int-to-float v7, v4

    sub-float v5, v7, v0

    .line 125
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 126
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 127
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    mul-float/2addr v10, v2

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 128
    int-to-float v7, v6

    add-float v8, v5, v0

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    invoke-virtual {p1, v5, v7, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 129
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 130
    const/4 v3, 0x1

    .line 132
    .end local v0           #length:F
    .end local v1           #minLength:I
    .end local v2           #opacity:F
    .end local v4           #size:I
    .end local v5           #x:F
    .end local v6           #y:I
    :cond_2
    return v3
.end method

.method public drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z
    .locals 11
    .parameter "canvas"
    .parameter "verticalRange"
    .parameter "verticalOffset"
    .parameter "verticalExtent"

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, redraw:Z
    if-lez p4, :cond_2

    if-ge p4, p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->calculateOpacity()F

    move-result v2

    .local v2, opacity:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    .line 156
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    sub-int v5, v7, v8

    .line 157
    .local v5, x:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 158
    .local v4, size:I
    int-to-float v7, v4

    int-to-float v8, p4

    mul-float/2addr v7, v8

    int-to-float v8, p2

    div-float v0, v7, v8

    .line 159
    .local v0, length:F
    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 162
    .local v6, y:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    mul-int/lit8 v1, v7, 0x2

    .line 163
    .local v1, minLength:I
    int-to-float v7, v1

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    .line 164
    int-to-float v0, v1

    .line 167
    :cond_0
    add-float v7, v6, v0

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 168
    int-to-float v7, v4

    sub-float v6, v7, v0

    .line 170
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 171
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 172
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    mul-float/2addr v10, v2

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 173
    int-to-float v7, v5

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    add-float v9, v6, v0

    invoke-virtual {p1, v7, v6, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 174
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 175
    const/4 v3, 0x1

    .line 177
    .end local v0           #length:F
    .end local v1           #minLength:I
    .end local v2           #opacity:F
    .end local v4           #size:I
    .end local v5           #x:I
    .end local v6           #y:F
    :cond_2
    return v3
.end method

.method public isHorizontalScrollBarDrawing()Z
    .locals 4

    .prologue
    .line 186
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarDrawing()Z
    .locals 4

    .prologue
    .line 195
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 205
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    .line 206
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    .line 207
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    .line 208
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    .line 209
    return-void
.end method

.method public setHorizontalHeight(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 218
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    .line 219
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 229
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    .line 230
    return-void
.end method

.method public setVerticalWidth(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 239
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    .line 240
    return-void
.end method

.method public startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z
    .locals 21
    .parameter "canvas"
    .parameter "fadingEdgeStrength"
    .parameter "paddingOffset"

    .prologue
    .line 264
    const/4 v12, 0x0

    .line 266
    .local v12, edgesRequired:Z
    const/4 v5, 0x0

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x2

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x3

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 269
    :cond_0
    const/4 v12, 0x1

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v16

    .line 271
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v19

    .line 273
    .local v19, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, p3, v6

    add-int v18, v5, v6

    .line 274
    .local v18, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, p3, v6

    add-int v11, v5, v6

    .line 276
    .local v11, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    const/4 v6, 0x0

    aget v6, p3, v6

    add-int/2addr v5, v6

    add-int v16, v16, v5

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    aget v6, p3, v6

    add-int/2addr v5, v6

    add-int v19, v19, v5

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v20

    .line 281
    .local v20, vFadeLength:I
    add-int v5, v19, v20

    sub-int v6, v11, v20

    if-le v5, v6, :cond_1

    .line 282
    sub-int v5, v11, v19

    div-int/lit8 v20, v5, 0x2

    .line 284
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v14

    .line 285
    .local v14, hFadeLength:I
    add-int v5, v16, v14

    sub-int v6, v18, v14

    if-le v5, v6, :cond_2

    .line 286
    sub-int v5, v18, v16

    div-int/lit8 v14, v5, 0x2

    .line 288
    :cond_2
    new-instance v17, Landroid/graphics/RectF;

    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v11

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 289
    .local v17, outRect:Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/RectF;

    add-int v5, v16, v14

    int-to-float v5, v5

    add-int v6, v19, v20

    int-to-float v6, v6

    sub-int v7, v18, v14

    int-to-float v7, v7

    sub-int v8, v11, v20

    int-to-float v8, v8

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 292
    .local v15, inRect:Landroid/graphics/RectF;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v17

    .line 293
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    .line 295
    const/4 v5, 0x1

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_3

    const/4 v5, 0x3

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 297
    const-string v5, "strength"

    const/4 v6, 0x3

    aget v6, p2, v6

    const/4 v7, 0x1

    aget v7, p2, v7

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 299
    .local v13, h:F
    const-string v6, "edges"

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    sub-float v7, v13, v5

    iget v5, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v13, v5

    iget v5, v15, Landroid/graphics/RectF;->top:F

    sub-float v9, v13, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    sub-float v10, v13, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FFFF)V

    .line 315
    .end local v11           #bottom:I
    .end local v13           #h:F
    .end local v14           #hFadeLength:I
    .end local v15           #inRect:Landroid/graphics/RectF;
    .end local v16           #left:I
    .end local v17           #outRect:Landroid/graphics/RectF;
    .end local v18           #right:I
    .end local v19           #top:I
    .end local v20           #vFadeLength:I
    :cond_4
    :goto_0
    return v12

    .line 301
    .restart local v11       #bottom:I
    .restart local v14       #hFadeLength:I
    .restart local v15       #inRect:Landroid/graphics/RectF;
    .restart local v16       #left:I
    .restart local v17       #outRect:Landroid/graphics/RectF;
    .restart local v18       #right:I
    .restart local v19       #top:I
    .restart local v20       #vFadeLength:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 302
    const-string v5, "strength"

    const/4 v6, 0x0

    aget v6, p2, v6

    const/4 v7, 0x2

    aget v7, p2, v7

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    .line 303
    const-string v6, "edges"

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    iget v8, v15, Landroid/graphics/RectF;->left:F

    iget v9, v15, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FFFF)V

    goto :goto_0
.end method
