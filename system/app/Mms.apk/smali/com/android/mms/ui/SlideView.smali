.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$MovieView;
    }
.end annotation


# instance fields
.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private MMS_SUBJECT_HEIGHT:F

.field private VIDEO_WRAPPER_PADDING:F

.field private mAgifBitmap:Landroid/graphics/Bitmap;

.field private mAleadyPasued:Z

.field private mAleadyResumed:Z

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioViewHeight:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDiffTime:J

.field private mDispatchDrawCalled:Z

.field private mImageHeight:I

.field private mImageTop:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mImageWrapper:Landroid/widget/LinearLayout;

.field private mIsPrepared:Z

.field private mIsTextTop:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMediaViewPort:Landroid/widget/LinearLayout;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieHeight:I

.field private mMovieLeft:I

.field private mMoviePlay:Z

.field private mMovieStart:J

.field private mMovieTop:I

.field private mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

.field private mMovieWidth:I

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mPageInfoView:Landroid/view/View;

.field private mPause:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRecentPausedTime:J

.field private mResume:Z

.field private mScale:F

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mStartAgifImage:Z

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mSubject:Ljava/lang/String;

.field private mSubjectHeight:I

.field private mTextHeight:I

.field private mTextTop:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewPort:Landroid/widget/LinearLayout;

.field private mVideoHeight:I

.field private mVideoLeft:I

.field private mVideoTop:I

.field private mVideoView:Lcom/android/mms/ui/TestVideoView;

.field private mVideoWidth:I

.field private mVideoWrapper:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 71
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 148
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    .line 150
    const v0, 0x40533333

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    .line 187
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 211
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 217
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f00

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 71
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 148
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    .line 150
    const v0, 0x40533333

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    .line 187
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 211
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 217
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    .line 260
    iget v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    .line 261
    const/high16 v0, 0x41c0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    .line 262
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/SlideView;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/SlideView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->removeView(Landroid/view/View;)V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 458
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 409
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030020

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 410
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 411
    .local v3, height:I
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v7, 0x7f080087

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 414
    .local v0, audioName:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 415
    .local v1, extension:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 416
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 417
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    :cond_0
    const-string v6, "dm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    :cond_1
    const-string v6, "cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 425
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 428
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_4

    .line 430
    const v6, 0x7f08009e

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 431
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 440
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 444
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 735
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 743
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 609
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 610
    return-void
.end method

.method public pauseMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 823
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 824
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 825
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    if-eqz v2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 830
    .local v0, pauseTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 831
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 832
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 834
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 836
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    .line 837
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideView$MovieView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->pause()V

    .line 660
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 676
    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 677
    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 678
    iput v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 680
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 683
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 689
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 695
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    .line 696
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 700
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 706
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 707
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 711
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_5

    .line 712
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->stopMovie(Landroid/graphics/Bitmap;)V

    .line 715
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_6

    .line 716
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 718
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 722
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 727
    :cond_7
    return-void
.end method

.method public resetAgifState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 857
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 858
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 859
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 860
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 862
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 664
    if-lez p1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/TestVideoView;->seekTo(I)V

    .line 671
    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    .line 461
    if-nez p1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 471
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 472
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 474
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 477
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 478
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 479
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 480
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 481
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 482
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 489
    return-void

    .line 483
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 486
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 265
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 266
    if-eqz p3, :cond_2

    .line 267
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    :cond_0
    if-nez p2, :cond_1

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020108

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    return-void

    .line 269
    :cond_2
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setImageRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x1e0

    .line 294
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 295
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 296
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 299
    if-le p4, v1, :cond_1

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :cond_0
    return-void

    :cond_1
    move p4, v1

    .line 299
    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 365
    return-void
.end method

.method public setImageRegionForVideostop(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 306
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 307
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 308
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 311
    const/16 p4, 0x134

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_0
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 752
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 753
    if-eqz p3, :cond_2

    .line 754
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 759
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideView$MovieView;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 761
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 769
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 770
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    .line 771
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 772
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 773
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->resetAgifState()V

    .line 775
    :cond_1
    return-void

    .line 756
    :cond_2
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setMovieRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x1e0

    .line 779
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 780
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 781
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    .line 783
    if-le p4, v1, :cond_1

    .line 784
    :goto_0
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mMovieHeight:I

    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    :cond_0
    return-void

    :cond_1
    move p4, v1

    .line 783
    goto :goto_0
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 747
    return-void
.end method

.method public setPageNumber(II)V
    .locals 5
    .parameter "current"
    .parameter "total"

    .prologue
    .line 868
    const v3, 0x7f08009c

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    .line 869
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 870
    .local v0, pageNumber:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v4, 0x7f080084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 871
    .local v1, subject:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .local v2, textToSpannify:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 879
    return-void
.end method

.method public setSlideViewSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    const/4 v6, 0x0

    .line 492
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 493
    if-eqz p4, :cond_1

    .line 494
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    .line 500
    :goto_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 501
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 502
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    if-nez p3, :cond_0

    .line 505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 510
    :cond_0
    sget v0, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 515
    .local v0, density:F
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 516
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x206001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 518
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v2, "#00AEEF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 519
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-wide v2, 0x402a99999999999aL

    float-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x4040

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 520
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void

    .line 496
    .end local v0           #density:F
    :cond_1
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    goto/16 :goto_0
.end method

.method public setTextRegion(IIIIZ)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "hasaudio"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 527
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 528
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextTop:I

    .line 529
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int/2addr p4, v0

    .line 531
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    if-lez v0, :cond_3

    .line 532
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    .line 540
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 541
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int/2addr p4, v0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_2
    return-void

    .line 535
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    if-lez v0, :cond_0

    .line 536
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 373
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 374
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 376
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 377
    if-eqz p3, :cond_0

    .line 378
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 382
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v1, Lcom/android/mms/ui/TestVideoView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/TestVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, rPadding:I
    iget v1, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 394
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 404
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/TestVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 405
    return-void

    .line 380
    .end local v0           #rPadding:I
    :cond_0
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 549
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 550
    iput p2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    .line 551
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    .line 552
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mVideoWidth:I

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 555
    const/16 p4, 0x134

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 559
    :cond_0
    return-void
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 584
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 792
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 795
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 798
    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 799
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 800
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    .line 801
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_1

    .line 819
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-eqz v2, :cond_2

    .line 807
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 808
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 809
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 812
    .local v0, resumeTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 815
    .end local v0           #resumeTime:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v2, :cond_3

    .line 816
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideView$MovieView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 818
    :cond_3
    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMovieView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    const v1, 0x106000e

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TestVideoView;->setBackgroundColor(I)V

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->start()V

    .line 632
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 844
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 845
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    .line 847
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 850
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 851
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 852
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mMovieHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideView;->setImageRegion(IIII)V

    .line 854
    :cond_0
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->stopPlayback()V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 644
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 645
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 646
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 648
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWidth:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideView;->setImageRegionForVideostop(IIII)V

    .line 651
    :cond_0
    return-void
.end method
