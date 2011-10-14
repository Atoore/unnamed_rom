.class public Lcom/android/mms/ui/MmsPlayerController;
.super Landroid/widget/FrameLayout;
.source "MmsPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextPageButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mPrevPageButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRoot:Landroid/view/View;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 332
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 110
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 332
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-object p0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 332
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 104
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsPlayerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsPlayerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsPlayerController;)Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->doPrevPage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->doNextPage()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doNextPage()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->next()V

    .line 469
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    .line 489
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    .line 490
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private doPrevPage()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->prev()V

    .line 464
    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 186
    const v1, 0x7f080071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    .line 187
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 189
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    const v1, 0x7f080070

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    .line 194
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_1
    const v1, 0x7f080072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_2
    const v1, 0x7f080073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    .line 205
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 207
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    .line 210
    :cond_3
    const v1, 0x7f080075

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    .line 211
    const v1, 0x7f080074

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    const v2, -0xb810b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    .line 223
    return-void
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsPlayerController;->setFocusable(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsPlayerController;->setFocusableInTouchMode(Z)V

    .line 130
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->setDescendantFocusability(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->requestFocus()Z

    .line 132
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    .line 367
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z

    if-eqz v4, :cond_1

    .line 368
    :cond_0
    const/4 v4, 0x0

    .line 387
    :goto_0
    return v4

    .line 370
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .line 371
    .local v3, position:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 372
    .local v0, duration:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_2

    .line 373
    if-lez v0, :cond_2

    .line 375
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 376
    .local v1, pos:J
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 382
    .end local v1           #pos:J
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 383
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 385
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsPlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move v4, v3

    .line 387
    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 352
    div-int/lit16 v3, p1, 0x3e8

    .line 354
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 355
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 356
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 358
    .local v0, hours:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 359
    if-lez v0, :cond_0

    .line 360
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 362
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isStartAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0xbb8

    const/4 v4, 0x1

    .line 404
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 405
    .local v0, keyCode:I
    const-string v1, "Mms/MmsPlayerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent(),keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->doPauseResume()V

    .line 412
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 413
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    move v1, v4

    .line 437
    :goto_0
    return v1

    .line 417
    :cond_2
    const/16 v1, 0x56

    if-ne v0, v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    .line 420
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    :cond_3
    move v1, v4

    .line 422
    goto :goto_0

    .line 423
    :cond_4
    const/16 v1, 0x19

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-ne v0, v1, :cond_6

    .line 425
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 428
    :cond_6
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x52

    if-ne v0, v1, :cond_8

    .line 429
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    move v1, v4

    .line 431
    goto :goto_0

    .line 435
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 437
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNextPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPrevPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    const-string v1, "Mms/MmsPlayerController"

    const-string v2, "hide()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 178
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerController;->initControllerView(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->initControllerView(Landroid/view/View;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 392
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 398
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 158
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    .line 160
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->removeAllViews()V

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MmsPlayerController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->disableUnsupportedButtons()V

    .line 502
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 503
    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    .line 147
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    .line 148
    return-void
.end method

.method public setPageMoveButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 512
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 231
    return-void
.end method

.method public show(I)V
    .locals 10
    .parameter "timeout"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "Mms/MmsPlayerController"

    .line 258
    const-string v4, "Mms/MmsPlayerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show(),timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->setProgress()I

    .line 262
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->disableUnsupportedButtons()V

    .line 267
    new-array v0, v8, [I

    .line 268
    .local v0, anchorpos:[I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 270
    :try_start_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 271
    .local v3, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 272
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 273
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 275
    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 276
    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 277
    const/16 v4, 0x3e8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 278
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 279
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 280
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 281
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0           #anchorpos:[I
    .end local v3           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    .line 293
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 296
    .local v2, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 297
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    int-to-long v5, p1

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    :cond_2
    return-void

    .line 283
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #anchorpos:[I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 284
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    const-string v4, "Mms/MmsPlayerController"

    const-string v4, "catch BadTokenException - MmsPlayerController.show()"

    invoke-static {v9, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-boolean v7, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    goto :goto_0
.end method

.method public updateToPlayButton()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
