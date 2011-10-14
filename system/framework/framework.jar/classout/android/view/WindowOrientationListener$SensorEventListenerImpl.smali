.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SensorEventListenerImpl"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ACCELERATING_LOWPASS_ALPHA:F = 0.0f

.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_LOWPASS_ALPHA:F = 0.0f

.field private static final DEFAULT_TIME_CONSTANT_MS:I = 0x64

.field private static final INTERNAL_TO_SURFACE_ROTATION:[I = null

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MAX_TILT:I = 0x41

.field private static final MAX_TRANSITION_TILT:[I = null

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final PARTIAL_TILT:I = 0x32

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final ROTATE_TO:[[I = null

.field private static final ROTATE_TO_WITH_180:[[I = null

.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_180:I = 0x3

.field private static final ROTATION_270:I = 0x2

.field private static final ROTATION_90:I = 0x1

.field private static final SAMPLING_PERIOD_MS:I = 0xc8

.field private static final SURFACE_TO_INTERNAL_ROTATION:[I = null

.field private static final THRESHOLDS:[[[I = null

.field private static final THRESHOLDS_WITH_180:[[[I = null

#the value of this static final field might be set in the static constructor
.field private static final TILTED_LOWPASS_ALPHA:F = 0.0f

.field private static final TILTED_TIME_CONSTANT_MS:I = 0x1f4

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field private mAccelerationDistrust:I

.field private mAllow180Rotation:Z

.field private mCnt:I

.field private mOrientationAngle:F

.field private mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mRotation:I

.field private mTiltAngle:F

.field private mTiltDistrust:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 172
    new-array v0, v5, [I

    fill-array-data v0, :array_162

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->INTERNAL_TO_SURFACE_ROTATION:[I

    .line 177
    new-array v0, v5, [I

    fill-array-data v0, :array_16e

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_TO_INTERNAL_ROTATION:[I

    .line 187
    new-array v0, v5, [[[I

    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_17a

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_182

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_18a

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_192

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_19a

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1a2

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_1aa

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_1b2

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1ba

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_1c2

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_1ca

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_1d2

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_1da

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    .line 197
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1e2

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_1ea

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_1f4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1fe

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    .line 205
    new-array v0, v5, [[[I

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_20c

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_214

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_21c

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_224

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_22c

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_234

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_23c

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_244

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_24c

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_254

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_25c

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_264

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_26c

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_274

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_27c

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS_WITH_180:[[[I

    .line 212
    new-array v0, v5, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_284

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_28e

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_29a

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2a6

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO_WITH_180:[[I

    .line 226
    new-array v0, v5, [I

    fill-array-data v0, :array_2b2

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    .line 267
    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->DEFAULT_LOWPASS_ALPHA:F

    .line 269
    const/16 v0, 0x1f4

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILTED_LOWPASS_ALPHA:F

    .line 271
    const/16 v0, 0x7d0

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    return-void

    .line 172
    nop

    :array_162
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 177
    :array_16e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 187
    :array_17a
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    :array_182
    .array-data 0x4
        0xb4t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_18a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_192
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_19a
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_1a2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1aa
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b2
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_1ba
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1c2
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ca
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d2
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_1da
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    .line 197
    :array_1e2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ea
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1fe
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 205
    :array_20c
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_214
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_21c
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_224
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_22c
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_234
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_23c
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_244
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_24c
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_254
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_25c
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_264
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_26c
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data

    :array_274
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_27c
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    .line 212
    :array_284
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_28e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_29a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 226
    :array_2b2
    .array-data 0x4
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .registers 4
    .parameter "orientationListener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-boolean v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAllow180Rotation:Z

    .line 277
    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 278
    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    .line 279
    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    .line 286
    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    .line 287
    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    .line 289
    const/4 v0, 0x5

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCnt:I

    .line 292
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 293
    return-void
.end method

.method private calculateNewRotation(FF)V
    .registers 11
    .parameter "orientation"
    .parameter "tiltAngle"

    .prologue
    const-string v7, "WindowOrientationListener"

    .line 313
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAllow180Rotation:Z

    .line 314
    .local v0, allow180Rotation:Z
    if-eqz v0, :cond_2b

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS_WITH_180:[[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    move-object v4, v5

    .line 316
    .local v4, thresholdRanges:[[I
    :goto_d
    const/4 v3, -0x1

    .line 317
    .local v3, row:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v5, v4

    if-ge v1, v5, :cond_27

    .line 318
    aget-object v5, v4, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_33

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_33

    .line 319
    move v3, v1

    .line 323
    :cond_27
    const/4 v5, -0x1

    if-ne v3, v5, :cond_36

    .line 337
    :goto_2a
    return-void

    .line 314
    .end local v1           #i:I
    .end local v3           #row:I
    .end local v4           #thresholdRanges:[[I
    :cond_2b
    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    move-object v4, v5

    goto :goto_d

    .line 317
    .restart local v1       #i:I
    .restart local v3       #row:I
    .restart local v4       #thresholdRanges:[[I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 325
    :cond_36
    if-eqz v0, :cond_7c

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO_WITH_180:[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    move v2, v5

    .line 327
    .local v2, rotation:I
    :goto_41
    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    aget v5, v5, v2

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_86

    .line 329
    const-string v5, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tilted too far flat to go to this rotation :: rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max tilt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  tiltAngle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 325
    .end local v2           #rotation:I
    :cond_7c
    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    move v2, v5

    goto :goto_41

    .line 334
    .restart local v2       #rotation:I
    :cond_86
    const-string v5, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gives new rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 336
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget-object v6, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->INTERNAL_TO_SURFACE_ROTATION:[I

    iget v7, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/WindowOrientationListener;->onOrientationChanged(I)V

    goto/16 :goto_2a
.end method

.method private checkFullyTilted(F)V
    .registers 5
    .parameter "absoluteTilt"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 428
    const/high16 v0, 0x4282

    cmpl-float v0, p1, v0

    if-lez v0, :cond_24

    .line 429
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    if-nez v0, :cond_16

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    .line 437
    :goto_f
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-ge v0, v2, :cond_15

    .line 438
    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    .line 443
    :cond_15
    :goto_15
    return-void

    .line 431
    :cond_16
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    if-ne v0, v1, :cond_1f

    .line 432
    const/high16 v0, 0x42b4

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    goto :goto_f

    .line 434
    :cond_1f
    const/high16 v0, 0x4387

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    goto :goto_f

    .line 440
    :cond_24
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-lez v0, :cond_15

    .line 441
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    goto :goto_15
.end method

.method private static computeLowpassAlpha(I)F
    .registers 3
    .parameter "timeConstantMs"

    .prologue
    .line 296
    const/high16 v0, 0x4348

    add-int/lit16 v1, p0, 0xc8

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private computeNewOrientation(FF)F
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 452
    neg-float v1, p1

    float-to-double v1, v1

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    neg-double v1, v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float v0, v1, v2

    .line 454
    .local v0, orientationAngle:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_16

    .line 455
    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    .line 457
    :cond_16
    return v0
.end method

.method private filterOrientation(FF)V
    .registers 8
    .parameter "absoluteTilt"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x43b4

    .line 464
    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->DEFAULT_LOWPASS_ALPHA:F

    .line 465
    .local v0, alpha:F
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-le v2, v3, :cond_2a

    .line 467
    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    .line 475
    :cond_b
    :goto_b
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    sub-float v1, p2, v2

    .line 476
    .local v1, deltaOrientation:F
    const/high16 v2, 0x4334

    cmpl-float v2, v1, v2

    if-lez v2, :cond_37

    .line 477
    sub-float/2addr p2, v4

    .line 481
    :cond_16
    :goto_16
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    invoke-direct {p0, p2, v2, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v2

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    .line 483
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3f

    .line 484
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    .line 488
    :cond_29
    :goto_29
    return-void

    .line 468
    .end local v1           #deltaOrientation:F
    :cond_2a
    const/high16 v2, 0x4248

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_34

    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-ne v2, v3, :cond_b

    .line 470
    :cond_34
    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILTED_LOWPASS_ALPHA:F

    goto :goto_b

    .line 478
    .restart local v1       #deltaOrientation:F
    :cond_37
    const/high16 v2, -0x3ccc

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    .line 479
    add-float/2addr p2, v4

    goto :goto_16

    .line 485
    :cond_3f
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_29

    .line 486
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    add-float/2addr v2, v4

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    goto :goto_29
.end method

.method private handleAccelerationDistrust(F)V
    .registers 4
    .parameter "deviation"

    .prologue
    .line 404
    const/high16 v0, 0x3fc0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    .line 405
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 406
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    .line 411
    :cond_11
    :goto_11
    return-void

    .line 408
    :cond_12
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-lez v0, :cond_11

    .line 409
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    goto :goto_11
.end method

.method private lowpassFilter(FFF)F
    .registers 6
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    .line 340
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .registers 5
    .parameter "z"
    .parameter "magnitude"

    .prologue
    .line 352
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 344
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method getCurrentRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 304
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-lez v0, :cond_a

    .line 306
    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_TO_INTERNAL_ROTATION:[I

    aget v0, v0, p1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 308
    :cond_a
    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->INTERNAL_TO_SURFACE_ROTATION:[I

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 492
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const-string v13, " ,  "

    .line 358
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v9, v12

    .line 359
    .local v6, x:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 360
    .local v7, y:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v8, v9, v10

    .line 361
    .local v8, z:F
    invoke-direct {p0, v6, v7, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v3

    .line 362
    .local v3, magnitude:F
    const v9, 0x411ce80a

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 364
    .local v2, deviation:F
    invoke-direct {p0, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->handleAccelerationDistrust(F)V

    .line 365
    const/high16 v9, 0x3fc0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_28

    .line 392
    :cond_27
    :goto_27
    return-void

    .line 370
    :cond_28
    const/high16 v1, 0x3f80

    .line 371
    .local v1, alpha:F
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-lez v9, :cond_30

    .line 372
    sget v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    .line 374
    :cond_30
    invoke-direct {p0, v8, v3}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .line 375
    .local v5, newTiltAngle:F
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    invoke-direct {p0, v5, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v9

    iput v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    .line 377
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 378
    .local v0, absoluteTilt:F
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->checkFullyTilted(F)V

    .line 379
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-gtz v9, :cond_27

    .line 383
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCnt:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_96

    .line 384
    const-string v9, "WindowOrientationListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "orientation = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Tilt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    float-to-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    float-to-int v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    float-to-int v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput v12, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCnt:I

    .line 387
    :cond_96
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCnt:I

    .line 389
    invoke-direct {p0, v6, v7}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeNewOrientation(FF)F

    move-result v4

    .line 390
    .local v4, newOrientationAngle:F
    invoke-direct {p0, v0, v4}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->filterOrientation(FF)V

    .line 391
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    invoke-direct {p0, v9, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->calculateNewRotation(FF)V

    goto/16 :goto_27
.end method

.method setAllow180Rotation(Z)V
    .registers 2
    .parameter "allowed"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAllow180Rotation:Z

    .line 301
    return-void
.end method
