.class public Lcom/sec/android/app/twlauncher/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/PageIndicator$1;,
        Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;,
        Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;
    }
.end annotation


# static fields
.field private static mRate:[F


# instance fields
.field private mBarRatioLeft:F

.field private mBarRatioRight:F

.field private mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

.field private mCurrentPage:I

.field private mDrawing:Z

.field private mEnableShowHide:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mHandler:Landroid/os/Handler;

.field private mIconNumberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mIconTextPaint:Landroid/graphics/Paint;

.field private mIsHiding:Z

.field private mIsLongPressPending:Z

.field private mLeft:I

.field private mLeftPage:I

.field private mMaxIcons:I

.field private mNoMediumIcon:Z

.field private mPaddingH:I

.field private mPaddingV:I

.field private mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

.field private mPageWidth:I

.field private mPanelNumberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mPanelTextPaint:Landroid/graphics/Paint;

.field private mParent:Lcom/sec/android/app/twlauncher/Scene;

.field private mSeekBarMode:Z

.field private mSeekBarPanelOffset:I

.field private mShow:Z

.field private mThumbCurrent:I

.field private mThumbStart:I

.field private mThumbStartOffset:I

.field private mThumbWidth:I

.field private mTop:I

.field private mTotalPages:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIIIZLcom/sec/android/app/twlauncher/Scene;)V
    .locals 6
    .parameter "r"
    .parameter "fastScrollPanelOffset"
    .parameter "maxPageIcons"
    .parameter "iconTop"
    .parameter "iconPaddingH"
    .parameter "iconPaddingV"
    .parameter "noMediumIcon"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelNumberCache:Ljava/util/HashMap;

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    .line 126
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    .line 139
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    .line 200
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    .line 204
    iput p3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    .line 205
    iput p4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    .line 206
    iput p5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    .line 208
    iput p6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    .line 210
    iput-boolean p7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mNoMediumIcon:Z

    .line 211
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarPanelOffset:I

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0036

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0037

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 226
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    .line 227
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    .line 228
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    .line 229
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 231
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f02003f

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 233
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f0200d1

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 235
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f0200d0

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 238
    const v1, 0x7f0200cf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    .line 241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    new-instance v2, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    aput-object v2, v1, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    .line 245
    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    .line 247
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    .line 248
    new-instance v1, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/PageIndicator$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    .line 250
    iput-object p8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;

    .line 251
    return-void

    .line 200
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x85t 0xebt 0x51t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/PageIndicator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/twlauncher/PageIndicator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;

    return-object v0
.end method

.method static synthetic access$400()[F
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/PageIndicator;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/PageIndicator;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    return-void
.end method

.method private disableIconStates()V
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method private drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    .locals 9
    .parameter "glcanvas"
    .parameter "number"
    .parameter
    .parameter "defaultSurface"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/GLCanvas;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;>;"
    const/4 v8, 0x0

    .line 409
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 411
    .local v3, surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    if-nez v3, :cond_1

    .line 412
    move-object v2, p5

    .line 413
    .local v2, p:Landroid/graphics/Paint;
    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v4

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    .local v1, c:Landroid/graphics/Canvas;
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v4, :cond_0

    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    :cond_0
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .end local v3           #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    .restart local v3       #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #p:Landroid/graphics/Paint;
    :cond_1
    invoke-virtual {p1, v3, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 429
    return-void
.end method

.method private enableIconStates()V
    .locals 3

    .prologue
    .line 432
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_3

    .line 433
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-eq v1, v2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    .line 432
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mNoMediumIcon:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    goto :goto_1

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    goto :goto_1

    .line 440
    :cond_3
    return-void
.end method

.method private enterSeekBarMode()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/high16 v10, 0x40f0

    const/4 v9, 0x0

    .line 512
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->disableIconStates()V

    .line 513
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 514
    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    mul-int v0, v6, v7

    .line 515
    .local v0, barPixelsLeft:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sub-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int v1, v6, v7

    .line 516
    .local v1, barPixelsRight:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    .line 517
    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    .line 519
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    .line 520
    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    .line 528
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    if-eq v6, v7, :cond_1

    .line 529
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 531
    .local v4, height:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 532
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 533
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 534
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    const/16 v6, 0x4c

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 536
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 537
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v7, v7

    int-to-float v8, v4

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v10, v10, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 539
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    const v6, 0x3e4ccccd

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 541
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 542
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v7, v7

    int-to-float v8, v4

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v10, v10, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 544
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-nez v6, :cond_2

    .line 545
    new-instance v6, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v6, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 550
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #height:I
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 547
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #height:I
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local p0
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public centerCurrentPage(I)V
    .locals 4
    .parameter "currentPage"

    .prologue
    const/4 v3, 0x0

    .line 299
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 300
    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 301
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 302
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lez v2, :cond_2

    .line 303
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-gez v2, :cond_3

    .line 304
    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 310
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    .line 311
    .local v1, pageCount:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-le v2, v3, :cond_1

    .line 312
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    .line 313
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    div-int/lit8 v0, v2, 0x2

    .line 314
    .local v0, half:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-le v2, v0, :cond_1

    .line 315
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 316
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lt v2, v3, :cond_1

    .line 317
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    .line 320
    .end local v0           #half:I
    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    .line 321
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    .line 322
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v2, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    .line 325
    .end local v1           #pageCount:I
    :cond_2
    return-void

    .line 305
    :cond_3
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lt v2, v3, :cond_0

    .line 307
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    goto :goto_0
.end method

.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z
    .locals 18
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 334
    const/16 v16, 0x0

    .line 335
    .local v16, redraw:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    move v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    move v3, v0

    if-lez v3, :cond_1

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move v3, v0

    add-int p2, p2, v3

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 339
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    move v3, v0

    if-eqz v3, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v14

    .line 343
    .local v14, iconSurfaceHeight:I
    move/from16 v0, p2

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 387
    .end local v14           #iconSurfaceHeight:I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    move v6, v0

    add-int/2addr v6, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    move v7, v0

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    move v8, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v3, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    move v3, v0

    add-int v10, p2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    move v8, v0

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v8

    add-int v11, v3, v8

    move-object/from16 v3, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(IIIIIIII)V

    .line 393
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 394
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 395
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    .line 398
    :cond_1
    return v16

    .line 353
    .restart local v14       #iconSurfaceHeight:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v12

    .line 354
    .local v12, height:I
    sub-int v3, v14, v12

    div-int/lit8 v17, v3, 0x2

    .line 356
    .local v17, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v4, v0

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    move v3, v0

    int-to-float v7, v3

    add-int v3, v17, v12

    int-to-float v8, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v12

    .line 361
    sub-int v3, v14, v12

    div-int/lit8 v17, v3, 0x2

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    move v3, v0

    int-to-float v5, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    move v7, v0

    add-int/2addr v3, v7

    int-to-float v7, v3

    add-int v3, v17, v12

    int-to-float v8, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarPanelOffset:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    move v3, v0

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelNumberCache:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 377
    .end local v12           #height:I
    .end local v14           #iconSurfaceHeight:I
    .end local v17           #y:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    move v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    move v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 380
    .local v15, pageCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v15, :cond_0

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    move-object v3, v0

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    move v4, v0

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v3

    or-int v16, v16, v3

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    move v3, v0

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 380
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method public enableShowHide(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eq v0, p1, :cond_0

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    .line 450
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    if-nez v0, :cond_0

    .line 451
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    goto :goto_0
.end method

.method public enterSeekBarMode(IIZ)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "alwaysSeekBar"

    .prologue
    .line 480
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .line 492
    .local v0, page:I
    if-nez p3, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    .line 493
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    if-nez v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    .line 502
    .end local v0           #page:I
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    return v1

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto :goto_0
.end method

.method public exitSeekBarMode()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    .line 557
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    .line 559
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    return v0
.end method

.method getTouchPage(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 571
    const/4 v0, -0x1

    .line 572
    .local v0, page:I
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .line 578
    :cond_0
    return v0
.end method

.method public getTouchScrollOffset(IIZ)I
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "ignoreIfTouchIsInBounds"

    .prologue
    .line 582
    const/4 v1, -0x1

    .line 583
    .local v1, offset:I
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v4, :cond_3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 587
    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v3, p1, v4

    .line 588
    .local v3, xOffset:I
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v4, :cond_6

    .line 590
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 591
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    if-ge v4, v5, :cond_4

    .line 592
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    if-gez v4, :cond_1

    .line 593
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 594
    :cond_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 607
    :cond_2
    :goto_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 618
    .end local v3           #xOffset:I
    :cond_3
    :goto_1
    return v1

    .line 599
    .restart local v3       #xOffset:I
    :cond_4
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_5

    .line 600
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 601
    :cond_5
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 603
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v0, v4, v5

    .line 604
    .local v0, maxOffset:I
    if-le v1, v0, :cond_2

    .line 605
    move v1, v0

    goto :goto_0

    .line 614
    .end local v0           #maxOffset:I
    :cond_6
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int v5, v3, v5

    add-int v2, v4, v5

    .line 615
    .local v2, page:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v1, v2, v4

    goto :goto_1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->disableIconStates()V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 626
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    .line 627
    return-void
.end method

.method public inSeekBarMode()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    return v0
.end method

.method public isInPageIndicator(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 651
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetFastScrollTimer()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    .line 281
    return-void
.end method

.method public setLayout(II)V
    .locals 0
    .parameter "pageCount"
    .parameter "pageWidth"

    .prologue
    .line 679
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    .line 681
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    .line 683
    return-void
.end method

.method public setPageScrollOffset(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 688
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v1, :cond_0

    .line 689
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    if-ge p1, v1, :cond_2

    .line 690
    if-lez p1, :cond_1

    .line 691
    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 709
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 713
    :cond_0
    return-void

    .line 693
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 694
    const/4 p1, 0x0

    goto :goto_0

    .line 700
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v0, v1, v2

    .line 701
    .local v0, maxOffset:I
    if-ge p1, v0, :cond_3

    .line 702
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    goto :goto_0

    .line 705
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    .line 706
    move p1, v0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 716
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-nez v0, :cond_1

    .line 717
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 718
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    .line 719
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    .line 721
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    .line 722
    return-void
.end method
