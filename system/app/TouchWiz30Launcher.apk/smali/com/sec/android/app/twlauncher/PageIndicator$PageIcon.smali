.class public Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageIcon"
.end annotation


# instance fields
.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 733
    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z
    .locals 12
    .parameter "canvas"
    .parameter "pageNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/high16 v5, 0x3f80

    const/4 v4, 0x2

    .line 736
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-ne v0, v11, :cond_0

    .line 737
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationStartTime:J

    .line 738
    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 740
    :cond_0
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    aget v8, v0, v1

    .line 742
    .local v8, value:F
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-ne v0, v4, :cond_1

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationStartTime:J

    sub-long v6, v0, v2

    .line 744
    .local v6, duration:J
    const-wide/16 v0, 0xc8

    cmp-long v0, v6, v0

    if-ltz v0, :cond_4

    .line 745
    iput v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 750
    .end local v6           #duration:J
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v5, v8

    mul-float/2addr v0, v1

    div-float/2addr v0, v9

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v5, v8

    mul-float/2addr v1, v2

    div-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 753
    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 755
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-eq v0, v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    aget v0, v0, v4

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_3

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$600(Lcom/sec/android/app/twlauncher/PageIndicator;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$700(Lcom/sec/android/app/twlauncher/PageIndicator;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$800(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    .line 762
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 764
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-eqz v0, :cond_5

    move v0, v11

    :goto_1
    return v0

    .line 747
    .restart local v6       #duration:J
    :cond_4
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationFrom:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationTo:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationFrom:F

    sub-float/2addr v1, v2

    long-to-float v2, v6

    const/high16 v3, 0x4348

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float v8, v0, v1

    goto :goto_0

    .end local v6           #duration:J
    :cond_5
    move v0, v10

    .line 764
    goto :goto_1
.end method

.method public setDrawState(I)V
    .locals 2
    .parameter "drawState"

    .prologue
    .line 768
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    if-eq p1, v0, :cond_0

    .line 769
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 770
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationTo:F

    .line 771
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationFrom:F

    .line 772
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    .line 774
    :cond_0
    return-void
.end method
