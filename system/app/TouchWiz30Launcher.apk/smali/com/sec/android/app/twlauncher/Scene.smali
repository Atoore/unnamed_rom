.class public abstract Lcom/sec/android/app/twlauncher/Scene;
.super Landroid/view/ViewGroup;
.source "Scene.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/hardware/motion/MRListener;


# static fields
.field private static mIsMotionEngineEnabled:Z


# instance fields
.field protected final ENABLE_DVFS_ONSCROLL:Z

.field protected SNAP_VELOCITY:I

.field private mAccumulatedDelta:D

.field private mAngularVelocityY:F

.field protected mContinuousScrollDuration:I

.field protected mCurrentScreen:I

.field protected mDiscardTouchEvents:Z

.field protected mDownAbsX:F

.field protected mDownAbsY:F

.field mDragCell:I

.field protected mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mDragRect:Landroid/graphics/Rect;

.field protected mDragStartX:I

.field protected mDragStartY:I

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mDropCell:I

.field protected mEnablePageIndicatorShowHide:Z

.field protected mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mFirstLayout:Z

.field private mGyro:Landroid/hardware/Sensor;

.field protected mHideIndicator:Ljava/lang/Runnable;

.field protected mIsSceneShrunk:Z

.field protected mIsSingleTap:Z

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field protected mLocked:Z

.field protected mMaximumVelocity:I

.field private mMotionListenerRegistered:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mMovePinchStart:I

.field protected mMultiTouchUsed:Z

.field protected mNextScreen:I

.field protected mOpenFlag:Z

.field protected mOverrideTouchEvent:Z

.field protected mPageBackgroundPaddingBottom:I

.field protected mPageBackgroundPaddingLeft:I

.field protected mPageBackgroundPaddingRight:I

.field protected mPageBackgroundPaddingTop:I

.field protected mPageBorderPaddingBottom:I

.field protected mPageBorderPaddingLeft:I

.field protected mPageBorderPaddingRight:I

.field protected mPageBorderPaddingTop:I

.field protected mPageGap:I

.field protected mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorStartOffset:I

.field protected mPageIndicatorTop:I

.field protected mPanningBasis:D

.field protected mPanningStopDelta:D

.field protected mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mPendingDragScrollPage:I

.field protected mPoint:[I

.field protected mScaledRect:Landroid/graphics/RectF;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mSensorMgr:Landroid/hardware/SensorManager;

.field private mSensorsRegistered:Z

.field protected mSnapToScreenDuration:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchedPageIndicatorIndex:I

.field protected mTransPaint:Landroid/graphics/Paint;

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mZoomPageGap:I

.field protected mZoomScaleMain:F

.field protected mZoomScaleSide:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, -0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->ENABLE_DVFS_ONSCROLL:Z

    .line 55
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 57
    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    .line 65
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    .line 73
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 86
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 96
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 104
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 120
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 124
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    .line 125
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSceneShrunk:Z

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPoint:[I

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragRect:Landroid/graphics/Rect;

    .line 135
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOverrideTouchEvent:Z

    .line 138
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 141
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 143
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTransPaint:Landroid/graphics/Paint;

    .line 158
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 160
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    .line 162
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    .line 164
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    .line 166
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorStartOffset:I

    .line 176
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 178
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    .line 180
    const-wide/high16 v1, 0x404e

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    .line 182
    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    .line 184
    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    .line 191
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 193
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 295
    new-instance v1, Lcom/sec/android/app/twlauncher/Scene$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Scene$1;-><init>(Lcom/sec/android/app/twlauncher/Scene;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 219
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Scene:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Scene;->init(Landroid/content/res/TypedArray;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->ENABLE_DVFS_ONSCROLL:Z

    .line 55
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 57
    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    .line 65
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    .line 73
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 86
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 96
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 104
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 120
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 124
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    .line 125
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mIsSceneShrunk:Z

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPoint:[I

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragRect:Landroid/graphics/Rect;

    .line 135
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mOverrideTouchEvent:Z

    .line 138
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 141
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 143
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTransPaint:Landroid/graphics/Paint;

    .line 158
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 160
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    .line 162
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    .line 164
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorStartOffset:I

    .line 176
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 178
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    .line 180
    const-wide/high16 v1, 0x404e

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    .line 182
    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    .line 184
    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    .line 191
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 193
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 295
    new-instance v1, Lcom/sec/android/app/twlauncher/Scene$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Scene$1;-><init>(Lcom/sec/android/app/twlauncher/Scene;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 226
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Scene:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Scene;->init(Landroid/content/res/TypedArray;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTransPaint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 231
    return-void
.end method

.method private getMotionSensor()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 698
    const-string v0, "MotionEngine"

    const-string v1, "Cannot get Motion Sensor Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    return-void
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 4
    .parameter "a"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 235
    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    .line 243
    sput-boolean v3, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    .line 244
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Scene;->getMotionSensor()V

    .line 247
    :cond_0
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingLeft:I

    .line 249
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingTop:I

    .line 251
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingRight:I

    .line 253
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingBottom:I

    .line 256
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingLeft:I

    .line 258
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingTop:I

    .line 260
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingRight:I

    .line 262
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingBottom:I

    .line 265
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    .line 267
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    .line 270
    const/16 v0, 0x8

    const/high16 v1, 0x3f40

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    .line 271
    const/16 v0, 0x9

    const/high16 v1, 0x3f00

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    .line 272
    return-void
.end method


# virtual methods
.method protected clearFastScrollFactor()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(FJ)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->exitSeekBarMode()V

    .line 293
    :cond_0
    return-void
.end method

.method public clearPendingDragScroll()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 473
    return-void
.end method

.method protected disableRollNavigation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 679
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorsRegistered:Z

    .line 684
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 686
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    .line 688
    :cond_1
    return-void
.end method

.method protected drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 12
    .parameter "canvas"
    .parameter "factor"

    .prologue
    const/high16 v2, 0x3f00

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v11

    .line 334
    .local v11, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getHeight()I

    move-result v6

    .line 335
    .local v6, h:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingLeft:I

    .line 336
    .local v8, pl:I
    iget v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingTop:I

    .line 337
    .local v10, pt:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingRight:I

    .line 338
    .local v9, pr:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingBottom:I

    .line 357
    .local v7, pb:I
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 359
    const-string v0, "highlightSurface"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 360
    const-string v0, "highlightXMA"

    invoke-virtual {p1, v0, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    .line 361
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Launcher;->mPageBackground:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    neg-int v0, v8

    int-to-float v2, v0

    neg-int v0, v10

    int-to-float v3, v0

    add-int v0, v11, v9

    int-to-float v4, v0

    add-int v0, v6, v7

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 363
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 364
    return-void
.end method

.method protected drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 1
    .parameter "canvas"
    .parameter "factor"

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Scene;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;FI)V

    .line 369
    return-void
.end method

.method protected drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;FI)V
    .locals 18
    .parameter "canvas"
    .parameter "factor"
    .parameter "delta"

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/Launcher;->mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 373
    .local v2, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 374
    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v17

    .line 376
    .local v17, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Scene;->getHeight()I

    move-result v12

    .line 377
    .local v12, h:I
    const/4 v13, 0x6

    .line 379
    .local v13, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingLeft:I

    move v1, v0

    neg-int v14, v1

    .line 380
    .local v14, l:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingTop:I

    move v1, v0

    neg-int v1, v1

    add-int v16, v1, p3

    .line 381
    .local v16, t:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingRight:I

    move v1, v0

    add-int v15, v17, v1

    .line 382
    .local v15, r:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBorderPaddingBottom:I

    move v1, v0

    add-int/2addr v1, v12

    sub-int v11, v1, p3

    .line 386
    .local v11, b:I
    add-int/lit8 v1, v14, 0x6

    int-to-float v3, v1

    const/4 v1, 0x6

    sub-int v1, v16, v1

    int-to-float v4, v1

    const/4 v1, 0x6

    sub-int v1, v15, v1

    int-to-float v5, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/4 v8, 0x0

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 388
    add-int/lit8 v1, v14, 0x6

    int-to-float v3, v1

    const/4 v1, 0x6

    sub-int v1, v11, v1

    int-to-float v4, v1

    const/4 v1, 0x6

    sub-int v1, v15, v1

    int-to-float v5, v1

    add-int/lit8 v1, v11, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 390
    const/4 v1, 0x6

    sub-int v1, v14, v1

    int-to-float v3, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v4, v1

    add-int/lit8 v1, v14, 0x6

    int-to-float v5, v1

    const/4 v1, 0x6

    sub-int v1, v11, v1

    int-to-float v6, v1

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 392
    const/4 v1, 0x6

    sub-int v1, v15, v1

    int-to-float v3, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v4, v1

    add-int/lit8 v1, v15, 0x6

    int-to-float v5, v1

    const/4 v1, 0x6

    sub-int v1, v11, v1

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 395
    const/4 v1, 0x6

    sub-int v1, v14, v1

    int-to-float v3, v1

    const/4 v1, 0x6

    sub-int v1, v16, v1

    int-to-float v4, v1

    add-int/lit8 v1, v14, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 397
    const/4 v1, 0x6

    sub-int v1, v15, v1

    int-to-float v3, v1

    const/4 v1, 0x6

    sub-int v1, v16, v1

    int-to-float v4, v1

    add-int/lit8 v1, v15, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v16, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f00

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 399
    const/4 v1, 0x6

    sub-int v1, v14, v1

    int-to-float v3, v1

    const/4 v1, 0x6

    sub-int v1, v11, v1

    int-to-float v4, v1

    add-int/lit8 v1, v14, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, 0x6

    int-to-float v6, v1

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 401
    const/4 v1, 0x6

    sub-int v1, v15, v1

    int-to-float v3, v1

    const/4 v1, 0x6

    sub-int v1, v11, v1

    int-to-float v4, v1

    add-int/lit8 v1, v15, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v11, 0x6

    int-to-float v6, v1

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 404
    return-void
.end method

.method protected enableRollNavigation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "MotionEngine"

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 660
    :cond_0
    const-string v0, "MotionEngine"

    const-string v0, "motion setting is turned off"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Scene;->mIsMotionEngineEnabled:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    if-nez v0, :cond_1

    .line 665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 667
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mMotionListenerRegistered:Z

    .line 668
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning_sensitivity"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x28

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    .line 672
    const-string v0, "MotionEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRollNavigation : mPanningBasis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentScaledRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    return v0
.end method

.method protected getCylinderAnimationFactor()F
    .locals 4

    .prologue
    .line 587
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    .line 588
    .local v1, scrollF:F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 589
    .local v0, dragF:F
    const/high16 v2, 0x3f80

    add-float v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method protected getFastScrollFactor()F
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchPage(II)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenCount()I
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected getTopMostScaledRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getTopMostScene()Lcom/sec/android/app/twlauncher/Scene;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getTopMostScene()Lcom/sec/android/app/twlauncher/Scene;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    goto :goto_0
.end method

.method protected isCylinderAnimating()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 630
    return-void
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 13
    .parameter "motionEvent"

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "MotionEngine"

    .line 704
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 706
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v2

    .line 707
    .local v2, dx:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v3

    .line 708
    .local v3, dy:I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    if-lez v2, :cond_1

    move v6, v8

    :goto_1
    int-to-double v6, v6

    mul-double v0, v4, v6

    .line 710
    .local v0, delta:D
    const-string v4, "MotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMotionListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " acc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    cmpl-double v4, v4, v10

    if-lez v4, :cond_3

    .line 714
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    cmpl-double v6, v0, v10

    if-lez v6, :cond_2

    move v6, v12

    :goto_2
    int-to-double v6, v6

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    goto :goto_0

    .end local v0           #delta:D
    :cond_1
    move v6, v12

    .line 708
    goto :goto_1

    .restart local v0       #delta:D
    :cond_2
    move v6, v8

    .line 714
    goto :goto_2

    .line 718
    :cond_3
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    .line 720
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v4, :cond_5

    .line 722
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 723
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 724
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 726
    :cond_4
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    .line 727
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    sub-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(I)V

    .line 729
    const-string v4, "MotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMotionListener : panning left from page"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 731
    :cond_5
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v8

    if-ge v4, v5, :cond_0

    .line 734
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 735
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 736
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 738
    :cond_6
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mAccumulatedDelta:D

    .line 739
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(I)V

    .line 741
    const-string v4, "MotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMotionListener : panning right from page"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const-string v5, "Scene"

    .line 633
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mGyro:Landroid/hardware/Sensor;

    if-eq v1, v2, :cond_1

    .line 634
    const-string v1, "Scene"

    const-string v1, "Unexpected sensor in onSensorChanged callback"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccc

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    .line 638
    const-string v1, "Scene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Angular Velocity (y) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getTopMostScene()Lcom/sec/android/app/twlauncher/Scene;

    move-result-object v0

    .line 640
    .local v0, top:Lcom/sec/android/app/twlauncher/Scene;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 641
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Scene;->panRight()V

    goto :goto_0

    .line 642
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mAngularVelocityY:F

    const/high16 v2, -0x3ee0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Scene;->panLeft()V

    goto :goto_0
.end method

.method protected panLeft()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 512
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->getRemaining()F

    move-result v0

    const/high16 v1, -0x3dc0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 517
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    sub-int v1, v0, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->extend(FJ)V

    goto :goto_0
.end method

.method protected panRight()V
    .locals 5

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 535
    .local v0, screenMax:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ge v1, v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->getRemaining()F

    move-result v1

    const/high16 v2, 0x4240

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 540
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->extend(FJ)V

    goto :goto_0
.end method

.method protected panStart(I)V
    .locals 5
    .parameter "nextScreen"

    .prologue
    .line 482
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setDefaultDuration(J)V

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, focusedChild:Landroid/view/View;
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Scene;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 490
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 492
    :cond_1
    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->getWidth()I

    move-result v2

    mul-int v1, p1, v2

    .line 496
    .local v1, newX:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FF)V

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->invalidate()V

    .line 499
    .end local v0           #focusedChild:Landroid/view/View;
    .end local v1           #newX:I
    :cond_2
    return-void
.end method

.method public requestFrame()V
    .locals 0

    .prologue
    .line 407
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 414
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 415
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 416
    .local v0, oldX:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    .line 417
    .local v1, oldY:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 418
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    .line 419
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sec/android/app/twlauncher/Scene;->onScrollChanged(IIII)V

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Scene;->requestFrame()V

    .line 424
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 450
    return-void
.end method

.method protected setFastScrollFactor()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFastScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 282
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 277
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLightingEffectShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 278
    return-void
.end method

.method public setPageOnDragOver(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 548
    return-void
.end method

.method public setPendingDragScroll(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 467
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 469
    return-void
.end method

.method public snapToScreen(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    .line 454
    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;I)V
    .locals 1
    .parameter "interpolator"
    .parameter "whichScreen"

    .prologue
    .line 457
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Scene;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    .line 458
    return-void
.end method

.method protected abstract snapToScreen(Landroid/view/animation/Interpolator;II)V
.end method
