.class public Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
.super Landroid/view/View;
.source "GLFastScrollIndexView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;,
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;,
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;
    }
.end annotation


# instance fields
.field private mAllowWiggle:Z

.field private mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mAlphaAnimDuration:I

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mCellHeight:F

.field private mCurrentIndex:I

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mFirstCharPreMatches:Z

.field private mIndexStr:Ljava/lang/String;

.field private mNormalAlpha:F

.field private mOverflowGrpSepChar:C

.field private mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

.field private mPressDelay:I

.field private mSelTextColor:I

.field private mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mTextColor:I

.field private mTextMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextUppercase:Z

.field private mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

.field private mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

.field private mTouchAlpha:F

.field private mUnpressDelay:I

.field private mWorkingStr:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    .line 44
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 45
    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    .line 46
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    .line 50
    new-instance v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    .line 51
    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/high16 v5, -0x4080

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    .line 39
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    .line 40
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 41
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    .line 42
    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/16 v5, 0xc8

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v5, 0x1f4

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    .line 44
    new-instance v5, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 45
    const/16 v5, 0x2e

    iput-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    .line 46
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    .line 47
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    .line 50
    new-instance v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    .line 51
    new-instance v5, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 52
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 63
    sget-object v5, Lcom/sec/android/app/twlauncher/R$styleable;->GLFastScrollIndexView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v5, 0x8

    const/16 v6, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    .line 66
    const/16 v5, 0x9

    const/16 v6, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    .line 67
    const/16 v5, 0xa

    const/16 v6, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    .line 68
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    .line 69
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    .line 70
    const/high16 v5, -0x4080

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    .line 72
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    .line 73
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    .line 75
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, temp:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    .line 79
    :cond_0
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextColor:I

    .line 81
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSelTextColor:I

    .line 82
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, typeFace:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 84
    const-string v3, "default"

    .line 86
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 87
    .local v4, typeFaceStyle:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 89
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x3

    const/high16 v7, 0x4120

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 91
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 93
    new-array v1, v9, [C

    .line 94
    .local v1, ch:[C
    iget-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    aput-char v5, v1, v8

    .line 95
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    array-length v6, v1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v8, v6, v7}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 96
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method private compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z
    .locals 7
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aDrawBounds"
    .parameter "aTouchPt"
    .parameter "aAllowWiggle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCharsWouldFit(F)I

    move-result v2

    .line 340
    .local v2, charsWouldFit:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    if-eqz p5, :cond_0

    .line 344
    add-int/lit8 v2, v2, -0x1

    .line 346
    :cond_0
    if-ge v2, v6, :cond_1

    move v4, v5

    .line 368
    :goto_0
    return v4

    .line 349
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 350
    invoke-direct {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 351
    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v0

    .line 354
    .local v0, cellHt:F
    const/high16 v4, 0x4000

    div-float v1, v0, v4

    .line 358
    .local v1, cellHtHalf:F
    iget v4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v1

    iput v4, p4, Landroid/graphics/PointF;->y:F

    .line 359
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-direct {p0, v4, v2, p3, p4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 360
    goto :goto_0

    .line 363
    :cond_3
    invoke-direct {p0, p3, p4, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 364
    .local v3, touchIndex:I
    if-eqz p5, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v4, v5, :cond_4

    .line 365
    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->top:F

    .line 366
    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->bottom:F

    :cond_4
    move v4, v6

    .line 368
    goto :goto_0
.end method

.method private computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 14
    .parameter "aLength"
    .parameter "aCapacity"
    .parameter "aBounds"
    .parameter "aTouchPt"

    .prologue
    .line 292
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingRight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 293
    .local v8, padding:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getHeight()I

    move-result v10

    int-to-float v6, v10

    .line 294
    .local v6, ht:F
    iget v10, v8, Landroid/graphics/RectF;->top:F

    iget v11, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v11

    sub-float v2, v6, v10

    .line 295
    .local v2, availHt:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v3

    .line 296
    .local v3, cellHt:F
    int-to-float v10, p1

    mul-float v5, v10, v3

    .line 297
    .local v5, fitHt:F
    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    add-float v7, v10, v11

    .line 299
    .local v7, padHt:F
    iget v10, v8, Landroid/graphics/RectF;->left:F

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 302
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    iget v11, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 303
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 304
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v10, v0

    add-float/2addr v10, v7

    add-float/2addr v10, v5

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 322
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 307
    :cond_0
    iget v10, v8, Landroid/graphics/RectF;->top:F

    add-float v9, v10, v2

    .line 308
    .local v9, unpaddedBottom:F
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    cmpl-float v10, v10, v9

    if-lez v10, :cond_1

    .line 309
    move v0, v6

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 310
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v10, v0

    add-float v11, v5, v7

    sub-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 313
    :cond_1
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCharsWouldFit(F)I

    move-result v4

    .line 314
    .local v4, charsWouldFitFromY:I
    if-gt p1, v4, :cond_2

    .line 315
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    iget v11, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 316
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v10, v0

    add-float/2addr v10, v7

    add-float/2addr v10, v5

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 319
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    int-to-float v11, v4

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    iget v11, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 320
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v10, v0

    add-float v11, v5, v7

    sub-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method private computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z
    .locals 11
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aCapacity"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 226
    move v6, p3

    .line 227
    .local v6, numWouldFit:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v6, :cond_0

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v10

    .line 263
    :goto_0
    return v8

    .line 231
    :cond_0
    const/4 v4, 0x3

    .line 232
    .local v4, minNeeded:I
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v8, :cond_1

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 235
    :cond_1
    if-ge v6, v4, :cond_2

    move v8, v9

    .line 236
    goto :goto_0

    .line 238
    :cond_2
    const/4 v7, 0x0

    .local v7, startIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 239
    .local v3, len:I
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v8, :cond_3

    .line 240
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v7, v7, 0x1

    .line 242
    add-int/lit8 v6, v6, -0x1

    .line 244
    :cond_3
    int-to-float v8, v6

    const/high16 v9, 0x4040

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 245
    .local v5, numPossibleGrps:I
    sub-int v8, v3, v7

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-int v0, v8

    .line 250
    .local v0, charsPerGrp:I
    const/4 v8, 0x2

    sub-int v1, v5, v8

    .local v1, i:I
    move v2, v7

    .local v2, index:I
    :goto_1
    if-ltz v1, :cond_4

    .line 251
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    iget-char v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    sub-int v8, v0, v10

    add-int/2addr v2, v8

    .line 254
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 250
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 260
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    iget-char v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    sub-int v8, v3, v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v10

    .line 263
    goto :goto_0
.end method

.method private getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I
    .locals 7
    .parameter "aBounds"
    .parameter "aPt"
    .parameter "aWorkingStr"

    .prologue
    const/4 v6, 0x1

    .line 275
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 276
    .local v1, len:I
    if-ge v1, v6, :cond_0

    .line 277
    const/4 v4, -0x1

    .line 288
    :goto_0
    return v4

    .line 279
    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 280
    .local v3, top:F
    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v3

    .line 281
    .local v2, relY:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v4

    div-float v4, v2, v4

    float-to-int v0, v4

    .line 282
    .local v0, index:I
    if-gez v0, :cond_1

    .line 283
    const/4 v4, 0x0

    goto :goto_0

    .line 285
    :cond_1
    if-lt v0, v1, :cond_2

    .line 286
    sub-int v4, v1, v6

    goto :goto_0

    :cond_2
    move v4, v0

    .line 288
    goto :goto_0
.end method

.method private getCharsWouldFit(F)I
    .locals 5
    .parameter "aYOffset"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 327
    .local v0, availHt:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v1

    .line 328
    .local v1, cellHt:F
    div-float v3, v0, v1

    float-to-int v2, v3

    .line 329
    .local v2, charsWouldFit:I
    return v2
.end method

.method private setReloadRequired()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 501
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 503
    :cond_0
    return-void
.end method


# virtual methods
.method public Contains(Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "aPt"

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 173
    .local v0, bounds:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public clearCurrentChar()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 158
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 384
    const/4 v6, 0x0

    .line 385
    .local v6, mustRedraw:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 388
    const/4 v6, 0x1

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 398
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 399
    return v6

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    goto :goto_0

    .line 393
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 182
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 184
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v5

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    .local v14, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 218
    :cond_1
    return-void

    .line 194
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v11

    .local v11, cellHt:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object v2, v0

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v16, v2, v3

    .line 195
    .local v16, txtHt:F
    sub-float v2, v11, v16

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 196
    .local v10, bottomGap:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .line 197
    .local v13, len:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getWidth()I

    move-result v2

    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    move v0, v2

    int-to-float v0, v0

    move/from16 v17, v0

    .line 198
    .local v17, width:F
    new-instance v15, Landroid/graphics/PointF;

    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v3, v17, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-direct {v15, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 199
    .local v15, pos:Landroid/graphics/PointF;
    const/4 v2, 0x1

    new-array v3, v2, [C

    .line 200
    .local v3, ch:[C
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v13, :cond_1

    .line 201
    iget v2, v15, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v11

    iput v2, v15, Landroid/graphics/PointF;->y:F

    .line 202
    iget v2, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v10

    sub-float v7, v2, v4

    .line 203
    .local v7, drawY:F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    move-object v4, v0

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    aput-char v4, v3, v2

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    move v2, v0

    if-eqz v2, :cond_3

    .line 205
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-char v4, v3, v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v3, v2

    .line 207
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    move v2, v0

    if-ne v12, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSelTextColor:I

    move v4, v0

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 212
    :goto_1
    const/4 v2, 0x0

    aget-char v2, v3, v2

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    move v4, v0

    if-ne v2, v4, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 214
    .local v9, bndsHt:I
    int-to-float v2, v9

    sub-float/2addr v7, v2

    .line 216
    .end local v9           #bndsHt:I
    :cond_4
    const/4 v4, 0x0

    array-length v5, v3

    iget v6, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object v8, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 200
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 210
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextColor:I

    move v4, v0

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1
.end method

.method public feedPt(Landroid/graphics/PointF;)I
    .locals 5
    .parameter "aPt"

    .prologue
    const/4 v4, 0x3

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-direct {p0, v2, p1, v3}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 137
    .local v1, charIndex:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 138
    const/4 v2, 0x4

    .line 152
    :goto_0
    return v2

    .line 140
    :cond_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-ne v1, v2, :cond_1

    move v2, v4

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 144
    .local v0, ch:C
    iget-char v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v0, v2, :cond_2

    move v2, v4

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 149
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v2, :cond_3

    .line 150
    const/4 v2, 0x2

    goto :goto_0

    .line 152
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCellHeight()F
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    .line 132
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    goto :goto_0
.end method

.method public getCurrentChar()Ljava/lang/Character;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    move-object v1, v3

    .line 168
    :goto_0
    return-object v1

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 165
    .local v0, ch:C
    iget-char v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v0, v1, :cond_2

    move-object v1, v3

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method

.method public getMidYForCurrentChar()F
    .locals 3

    .prologue
    .line 267
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 268
    const/high16 v1, -0x4080

    .line 271
    :goto_0
    return v1

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v0

    .line 271
    .local v0, cellHt:F
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    .line 486
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    .line 496
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    .line 491
    return-void
.end method

.method public isPreMatching()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 373
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 377
    if-eqz p1, :cond_0

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->updateBounds(Landroid/graphics/PointF;)Z

    .line 380
    :cond_0
    return-void
.end method

.method public pressDelayed()Z
    .locals 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, res:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->abort()Z

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->postToQueue(I)V

    .line 466
    const/4 v0, 0x1

    .line 468
    :cond_0
    return v0
.end method

.method public setAllowWiggle(Z)V
    .locals 0
    .parameter "aWiggle"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    .line 126
    return-void
.end method

.method public setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "aStr"
    .parameter "aPt"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->updateBounds(Landroid/graphics/PointF;)Z

    .line 103
    return-void
.end method

.method public setPressedImmediate(Z)V
    .locals 2
    .parameter "aPressed"

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, mustRedraw:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    .line 477
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressed(Z)V

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 481
    :cond_0
    return-void

    .line 476
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unPressDelayed()Z
    .locals 3

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, res:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->abort()Z

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->postToQueue(I)V

    .line 456
    const/4 v0, 0x1

    .line 458
    :cond_0
    return v0
.end method

.method public updateBounds(Landroid/graphics/PointF;)Z
    .locals 7
    .parameter "aPt"

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v6

    .line 121
    :goto_0
    return v0

    .line 111
    :cond_0
    if-nez p1, :cond_1

    .line 112
    new-instance p1, Landroid/graphics/PointF;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 114
    .restart local p1
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 115
    .local v3, drawBounds:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v6

    .line 121
    goto :goto_0
.end method
