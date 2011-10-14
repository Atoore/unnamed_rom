.class public Lcom/nemustech/tiffany/widget/TFAnimateEngine;
.super Ljava/lang/Object;
.source "TFAnimateEngine.java"


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    return-void
.end method


# virtual methods
.method public getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;
    .locals 8
    .parameter "srcRects"
    .parameter "destRects"
    .parameter "optionalOutRects"
    .parameter "progress"

    .prologue
    const/4 v6, 0x0

    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v4, v6

    .line 104
    :goto_0
    return-object v4

    .line 69
    :cond_1
    array-length v4, p1

    array-length v5, p2

    if-eq v4, v5, :cond_2

    move-object v4, v6

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    const/high16 v4, 0x3f80

    invoke-static {v4, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 73
    const/4 v4, 0x0

    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 76
    array-length v0, p1

    .line 77
    .local v0, count:I
    if-eqz p3, :cond_3

    array-length v4, p3

    if-eq v4, v0, :cond_5

    .line 78
    :cond_3
    new-array v3, v0, [Landroid/graphics/Rect;

    .line 83
    .local v3, retRects:[Landroid/graphics/Rect;
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 85
    .local v2, interpolateValue:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 86
    aget-object v4, v3, v1

    if-nez v4, :cond_4

    .line 87
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v1

    .line 88
    :cond_4
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 90
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 92
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 94
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    .end local v1           #i:I
    .end local v2           #interpolateValue:F
    .end local v3           #retRects:[Landroid/graphics/Rect;
    :cond_5
    move-object v3, p3

    .restart local v3       #retRects:[Landroid/graphics/Rect;
    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #interpolateValue:F
    :cond_6
    move-object v4, v3

    .line 104
    goto/16 :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    sget-object p1, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    return-void
.end method
