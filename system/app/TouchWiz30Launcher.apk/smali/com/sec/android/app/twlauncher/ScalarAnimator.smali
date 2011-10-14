.class public Lcom/sec/android/app/twlauncher/ScalarAnimator;
.super Ljava/lang/Object;
.source "ScalarAnimator.java"


# instance fields
.field private mCurrent:F

.field private mDefaultDuration:J

.field private mDelta:F

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseDuration:F

.field private mIsRunning:Z

.field private mStart:F

.field private mStartTime:J

.field private mStop:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 17
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 18
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 20
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 36
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .parameter "defaultDuration"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 17
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 18
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 20
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 46
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 47
    return-void
.end method

.method public constructor <init>(JF)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "initialStart"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 17
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 18
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 20
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 71
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 72
    iput p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 73
    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 17
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 18
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 20
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 87
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 88
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 17
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 18
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 20
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    move-result v0

    return v0
.end method

.method public abort(F)Z
    .locals 3
    .parameter "stop"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    .line 138
    .local v0, aborted:Z
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 139
    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 140
    return v0
.end method

.method public extend(FJ)V
    .locals 4
    .parameter "stop"
    .parameter "extendDuration"

    .prologue
    const-wide/16 v2, 0x0

    .line 160
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-nez v0, :cond_2

    .line 162
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 165
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 166
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 167
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 168
    :cond_3
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    goto :goto_0

    .line 170
    :cond_4
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInverseDuration:F

    goto :goto_0
.end method

.method public get()F
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v0

    return v0
.end method

.method public get(J)F
    .locals 7
    .parameter "currentTime"

    .prologue
    const-wide/16 v5, 0x0

    .line 202
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 205
    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStartTime:J

    sub-long v0, p1, v3

    .line 206
    .local v0, elapsedTime:J
    cmp-long v3, v0, v5

    if-gtz v3, :cond_0

    .line 207
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStartTime:J

    .line 208
    const-wide/16 v0, 0x0

    .line 209
    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 213
    :cond_0
    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 214
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 215
    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    .line 229
    .end local v0           #elapsedTime:J
    :cond_1
    :goto_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    return v3

    .line 217
    .restart local v0       #elapsedTime:J
    :cond_2
    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    .line 219
    long-to-float v3, v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    .line 222
    .local v2, factor:F
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 224
    :cond_3
    iget v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    iget v4, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    goto :goto_0
.end method

.method public getRemaining()F
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    return v0
.end method

.method public setDefaultDuration(J)V
    .locals 0
    .parameter "defaultDuration"

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    .line 342
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 353
    return-void
.end method

.method public start(FF)V
    .locals 2
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 296
    return-void
.end method

.method public start(FFJ)V
    .locals 4
    .parameter "start"
    .parameter "stop"
    .parameter "duration"

    .prologue
    const-wide/16 v2, 0x0

    .line 317
    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iput p1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    .line 318
    iput p2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    .line 319
    iput-wide p3, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 320
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    .line 321
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 322
    :cond_0
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    .line 327
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    .line 328
    return-void

    .line 324
    :cond_1
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mInverseDuration:F

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStartTime:J

    goto :goto_0
.end method

.method public to(F)V
    .locals 3
    .parameter "stop"

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 368
    :cond_1
    return-void
.end method

.method public to(FJ)V
    .locals 1
    .parameter "stop"
    .parameter "duration"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 388
    :cond_1
    return-void
.end method
