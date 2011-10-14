.class public Lcom/android/internal/widget/PenGestureView;
.super Landroid/view/View;
.source "PenGestureView.java"


# static fields
.field private static final DEBUG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x3c

.field private static final PEN_GESTURE_THRESHOLD:I = 0x190

.field private static final PEN_LONGPRESS_ALLOW_RANGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PenGesture"

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mBootCompleted:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mDoubleTapSlopSquare:I

.field mHandler:Landroid/os/Handler;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsDoubleTapping:Z

.field private mLongPressIntent:Landroid/content/Intent;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mPressed:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mTheshold:Z

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/PenGestureView;->LONGPRESS_TIMEOUT:I

    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/PenGestureView;->TAP_TIMEOUT:I

    .line 40
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/PenGestureView;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    iput v3, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    .line 52
    iput v3, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mPressed:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 99
    new-instance v2, Lcom/android/internal/widget/PenGestureView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$3;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 112
    new-instance v2, Lcom/android/internal/widget/PenGestureView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$4;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 68
    new-instance v2, Lcom/android/internal/widget/PenGestureView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$1;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 80
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v0

    .line 81
    .local v0, doubleTapSlop:I
    mul-int v2, v0, v0

    iput v2, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapSlopSquare:I

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/android/internal/widget/PenGestureView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PenGestureView$2;-><init>(Lcom/android/internal/widget/PenGestureView;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PenGestureView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/widget/PenGestureView;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/PenGestureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mPressed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PenGestureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleBootCompleted()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    .line 256
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v9, 0x0

    const-string v10, "PenGesture"

    .line 234
    iget-boolean v5, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    if-nez v5, :cond_25

    .line 235
    const-string v5, "PenGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConsideredDoubleTap() : mAlwaysInBiggerTapRegion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    move v5, v9

    .line 251
    :goto_24
    return v5

    .line 239
    :cond_25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 240
    .local v2, doubleTabTime:J
    sget v5, Lcom/android/internal/widget/PenGestureView;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_52

    .line 241
    const-string v5, "PenGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConsideredDoubleTap() : DoubleTab Time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-boolean v9, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    move v5, v9

    .line 243
    goto :goto_24

    .line 246
    :cond_52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v5, v6

    .line 247
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v1, v5, v6

    .line 248
    .local v1, deltaY:I
    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int v4, v5, v6

    .line 249
    .local v4, result:I
    const-string v5, "PenGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConsideredDoubleTap() : Result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deltaX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deltaY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v5, p0, Lcom/android/internal/widget/PenGestureView;->mDoubleTapSlopSquare:I

    if-ge v4, v5, :cond_a2

    const/4 v5, 0x1

    goto :goto_24

    :cond_a2
    move v5, v9

    goto :goto_24
.end method


# virtual methods
.method public addPenEvent(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter "event"

    .prologue
    .line 132
    const-string v8, "PenGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    .line 135
    .local v5, metastate:I
    and-int/lit16 v8, v5, 0x200

    if-eqz v8, :cond_19f

    and-int/lit16 v8, v5, 0x800

    if-eqz v8, :cond_19f

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 137
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 138
    .local v7, y:F
    const/4 v3, 0x0

    .line 139
    .local v3, diffX:I
    const/4 v4, 0x0

    .line 140
    .local v4, diffY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_1b0

    .line 222
    .end local v3           #diffX:I
    .end local v4           #diffY:I
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_35
    :goto_35
    return-void

    .line 142
    .restart local v3       #diffX:I
    .restart local v4       #diffY:I
    .restart local v6       #x:F
    .restart local v7       #y:F
    :pswitch_36
    iput v6, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    .line 143
    iput v7, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    .line 144
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mPressed:Z

    .line 145
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    .line 147
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_7d

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_7d

    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v9, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v8, v9, p1}, Lcom/android/internal/widget/PenGestureView;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 150
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    .line 151
    const-string v8, "PenGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addPenEvent(MotionEvent.ACTION_DOWN) : mIsDoubleTapping = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", post(mPenDoubleTap)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_35

    .line 154
    :cond_7d
    const-string v8, "PenGesture"

    const-string v9, "addPenEvent(MotionEvent.ACTION_DOWN) : postDelayed(mPenLongPress)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_99

    .line 158
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 160
    :cond_99
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 161
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    goto :goto_35

    .line 167
    :pswitch_a3
    iget-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    if-eqz v8, :cond_c9

    .line 168
    const-string v8, "PenGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addPenEvent(MotionEvent.ACTION_MOVE) : mIsDoubleTapping is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Ignore Move event."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 171
    :cond_c9
    iget v8, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    sub-float v8, v6, v8

    float-to-int v3, v8

    .line 172
    iget v8, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    sub-float v8, v7, v8

    float-to-int v4, v8

    .line 173
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 174
    .local v0, absX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 176
    .local v1, absY:I
    const/16 v8, 0xa

    if-gt v0, v8, :cond_e3

    const/16 v8, 0xa

    if-le v1, v8, :cond_f5

    .line 177
    :cond_e3
    const-string v8, "PenGesture"

    const-string/jumbo v9, "onTouchEvent(ACTION_MOVE) : RemoveCallbacks(mPenLongPress)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mAlwaysInBiggerTapRegion:Z

    .line 182
    :cond_f5
    const-string v8, "PenGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent(ACTION_MOVE) : diffX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", diffY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", absX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", absY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-ltz v3, :cond_130

    if-gez v4, :cond_35

    .line 184
    :cond_130
    const/16 v8, 0x3c

    if-ge v1, v8, :cond_151

    if-le v0, v1, :cond_151

    .line 185
    const/16 v8, 0x190

    if-lt v0, v8, :cond_35

    iget-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    if-nez v8, :cond_35

    .line 186
    const-string v8, "PenGesture"

    const-string/jumbo v9, "onTouchEvent() : Threshold is reched!!! Back key"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    .line 188
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto/16 :goto_35

    .line 190
    :cond_151
    const/16 v8, 0x3c

    if-ge v0, v8, :cond_35

    if-ge v0, v1, :cond_35

    .line 191
    const/16 v8, 0x190

    if-lt v1, v8, :cond_35

    iget-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    if-nez v8, :cond_35

    .line 192
    const-string v8, "PenGesture"

    const-string/jumbo v9, "onTouchEvent() : Threshold is reched!!! Menu Key"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    .line 194
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    const/16 v9, 0x52

    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto/16 :goto_35

    .line 201
    .end local v0           #absX:I
    .end local v1           #absY:I
    :pswitch_173
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    const-string v8, "PenGesture"

    const-string/jumbo v9, "onTouchEvent(ACTION_UP or ACTION_CANCEL) : RemoveCallbacks(mPenLongPress)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mTheshold:Z

    .line 205
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/widget/PenGestureView;->mX:F

    .line 206
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/widget/PenGestureView;->mY:F

    .line 208
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 209
    .local v2, currentUpEvent:Landroid/view/MotionEvent;
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v8, :cond_198

    .line 210
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 213
    :cond_198
    iput-object v2, p0, Lcom/android/internal/widget/PenGestureView;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 214
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/widget/PenGestureView;->mIsDoubleTapping:Z

    goto/16 :goto_35

    .line 219
    .end local v2           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v3           #diffX:I
    .end local v4           #diffY:I
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_19f
    iget-object v8, p0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    const-string v8, "PenGesture"

    const-string/jumbo v9, "onTouchEvent() : RemoveCallbacks(mPenLongPress)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 140
    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_36
        :pswitch_173
        :pswitch_a3
        :pswitch_173
    .end packed-switch
.end method

.method public isBootCompleted()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/internal/widget/PenGestureView;->mBootCompleted:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PenGestureView;->addPenEvent(Landroid/view/MotionEvent;)V

    .line 228
    const/4 v0, 0x1

    return v0
.end method
