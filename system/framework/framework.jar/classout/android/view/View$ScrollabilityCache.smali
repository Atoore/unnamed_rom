.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final FADING:I = 0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field private final mOpaque:[F

.field private final mTransparent:[F

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .registers 11
    .parameter "configuration"
    .parameter "host"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 9684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9665
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 9667
    new-array v0, v3, [F

    const/high16 v2, 0x437f

    aput v2, v0, v6

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->mOpaque:[F

    .line 9668
    new-array v0, v3, [F

    aput v1, v0, v6

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->mTransparent:[F

    .line 9680
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9685
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 9686
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 9687
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 9688
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 9690
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 9691
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 9694
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 9696
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9697
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9698
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 9699
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 9716
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 9717
    .local v4, now:J
    iget-wide v6, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_25

    .line 9722
    long-to-int v3, v4

    .line 9723
    .local v3, nextFrame:I
    const/4 v0, 0x0

    .line 9725
    .local v0, framesCount:I
    iget-object v2, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 9728
    .local v2, interpolator:Landroid/graphics/Interpolator;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #framesCount:I
    .local v1, framesCount:I
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->mOpaque:[F

    invoke-virtual {v2, v0, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 9731
    iget v6, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v3, v6

    .line 9732
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->mTransparent:[F

    invoke-virtual {v2, v1, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 9734
    const/4 v6, 0x2

    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9737
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 9739
    .end local v1           #framesCount:I
    .end local v2           #interpolator:Landroid/graphics/Interpolator;
    .end local v3           #nextFrame:I
    :cond_25
    return-void
.end method

.method public setFadeColor(I)V
    .registers 10
    .parameter "color"

    .prologue
    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 9702
    if-eqz p1, :cond_2d

    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_2d

    .line 9703
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 9704
    or-int/2addr p1, v2

    .line 9706
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    or-int v5, p1, v2

    const v2, 0xffffff

    and-int v6, p1, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 9709
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9711
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9713
    :cond_2d
    return-void
.end method
