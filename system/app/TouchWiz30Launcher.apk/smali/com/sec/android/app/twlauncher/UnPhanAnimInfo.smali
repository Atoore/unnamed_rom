.class public Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;
.super Ljava/lang/Object;
.source "UnPhanAnimInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;
    }
.end annotation


# instance fields
.field private mFirstDraw:Z

.field private mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

.field private mUnPhanAnim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLAnim;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mUnPhanAnim:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mFirstDraw:Z

    .line 28
    return-void
.end method


# virtual methods
.method public addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .locals 7
    .parameter "aView"
    .parameter "aGLDrawHndlr"
    .parameter "aTransView"
    .parameter "aLstnr"
    .parameter "aSrc"
    .parameter "aDst"
    .parameter "aDuration"

    .prologue
    .line 37
    new-instance v0, Lcom/sec/android/app/twlauncher/GLAnim;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/GLAnim;-><init>(Landroid/view/animation/Interpolator;)V

    .local v0, anim:Lcom/sec/android/app/twlauncher/GLAnim;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/GLAnim;->setParams(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 39
    invoke-virtual {v0, p4}, Lcom/sec/android/app/twlauncher/GLAnim;->setLstnr(Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mUnPhanAnim:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 7
    .parameter "aCanvas"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 74
    :goto_0
    return v4

    .line 51
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mFirstDraw:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    if-eqz v4, :cond_1

    .line 52
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    invoke-interface {v4, p0}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;)V

    .line 53
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mFirstDraw:Z

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 57
    .local v1, count:I
    const/4 v3, 0x0

    .line 58
    .local v3, progress:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mUnPhanAnim:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 59
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mUnPhanAnim:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLAnim;

    .line 60
    .local v0, anim:Lcom/sec/android/app/twlauncher/GLAnim;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 61
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->getState()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 62
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->removeAnim(Lcom/sec/android/app/twlauncher/GLAnim;)Z

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    invoke-interface {v4, p0}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;)V

    .line 58
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->getProgress()F

    move-result v4

    add-float/2addr v3, v4

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 71
    .end local v0           #anim:Lcom/sec/android/app/twlauncher/GLAnim;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    if-eqz v4, :cond_5

    .line 72
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    invoke-interface {v4, p0, v3}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;->onAnimProgress(Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;F)V

    :cond_5
    move v4, v6

    .line 74
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mUnPhanAnim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAnim(Lcom/sec/android/app/twlauncher/GLAnim;)Z
    .locals 1
    .parameter "aAnim"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mUnPhanAnim:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)V
    .locals 1
    .parameter "aLstnr"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mLstnr:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->mFirstDraw:Z

    .line 33
    return-void
.end method
