.class public Landroid/view/ViewGroup$LayoutParams;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field public height:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field

.field public layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

.field public width:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3588
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3569
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3570
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3571
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 3549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3550
    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3551
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 3554
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3555
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 3578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3579
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3580
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3581
    return-void
.end method

.method protected static sizeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "size"

    .prologue
    .line 3625
    const/4 v0, -0x2

    if-ne p0, v0, :cond_7

    .line 3626
    const-string/jumbo v0, "wrap-content"

    .line 3631
    :goto_6
    return-object v0

    .line 3628
    :cond_7
    const/4 v0, -0x1

    if-ne p0, v0, :cond_e

    .line 3629
    const-string/jumbo v0, "match-parent"

    goto :goto_6

    .line 3631
    :cond_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "output"

    .prologue
    .line 3612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 5
    .parameter "a"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    .line 3598
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3599
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3600
    return-void
.end method
