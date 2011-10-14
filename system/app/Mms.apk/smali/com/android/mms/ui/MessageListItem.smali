.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static BUBBLE_DATE_SIZE_NORMAL:F

.field public static gListview:Lcom/android/mms/ui/MessageListView;


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioImageView:Landroid/widget/ImageView;

.field private mAudioTitle:Landroid/widget/TextView;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCursor:Landroid/database/Cursor;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field protected mLockView:Landroid/widget/ImageView;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsView:Landroid/view/View;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mScale:F

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mTextViewPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/high16 v0, 0x4180

    sput v0, Lcom/android/mms/ui/MessageListItem;->BUBBLE_DATE_SIZE_NORMAL:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 1273
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1281
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1287
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 1273
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1281
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1287
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mScale:F

    .line 197
    iget v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    iget v1, p0, Lcom/android/mms/ui/MessageListItem;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextViewPadding:I

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextViewPadding:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 443
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 445
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 458
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 459
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 461
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 463
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    .line 468
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v2, :cond_2

    .line 469
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :goto_0
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_3

    .line 474
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    :goto_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZ)V

    .line 481
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-nez v2, :cond_4

    .line 482
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 503
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 506
    return-void

    .line 471
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 484
    :cond_4
    const-string v2, "MmsThumbnailPresenter"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v3, p0, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    .line 486
    .local v1, presenter:Lcom/android/mms/ui/Presenter;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/Presenter;->present(Z)V

    .line 496
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 497
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_2
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 333
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 334
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v3, v3, 0x3ff

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, msgSizeText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v5, v7}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZ)V

    .line 345
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    .line 347
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    :goto_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v1

    .line 355
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 366
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 367
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 384
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 386
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 388
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 390
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 391
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 437
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 439
    return-void

    .line 352
    .end local v1           #state:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 357
    .restart local v1       #state:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 358
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f0200c0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 399
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x206009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 401
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 402
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 403
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x2

    .line 962
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 964
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    .line 966
    if-ne v1, v4, :cond_1

    .line 968
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x816

    if-lt v2, v3, :cond_0

    .line 981
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 997
    :goto_1
    :pswitch_0
    return-void

    .line 970
    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 971
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    goto :goto_0

    .line 976
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 977
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    goto :goto_0

    .line 983
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 986
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 991
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v1, "SGH-I777"

    .line 703
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 782
    :goto_0
    return-void

    .line 711
    :pswitch_0
    const-string v0, "SGH-I777"

    const-string v0, "SPH-D710"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I777"

    const-string v0, "SPH-D705"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v4, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 727
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 729
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 744
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 749
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 758
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto/16 :goto_0

    .line 752
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 516
    return-void

    .line 514
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideSipExplict()V
    .locals 3

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    .line 1160
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1163
    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1167
    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 568
    :cond_0
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 570
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    .line 573
    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 551
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 554
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 555
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 558
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    .line 559
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    .line 561
    :cond_0
    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1235
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1233
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1235
    goto :goto_0
.end method

.method private setBodyTextViewColor(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1240
    if-eqz p1, :cond_0

    .line 1241
    const v0, -0xafafb0

    .line 1243
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1244
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1245
    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1249
    const/16 v0, 0x8

    .line 1251
    if-eqz p2, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1259
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1263
    :cond_0
    if-eqz p2, :cond_3

    .line 1264
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1270
    :goto_1
    return-void

    .line 1253
    :cond_1
    if-eqz p3, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1255
    const/4 v0, 0x0

    goto :goto_0

    .line 1257
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1265
    :cond_3
    if-eqz p3, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 1268
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private startViewer()V
    .locals 11

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x1

    const-string v5, "SGH-I777"

    const-string v8, "thread_id"

    const-string v7, "msgId"

    .line 1107
    .line 1108
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    .line 1109
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 1111
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    .line 1113
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1114
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1115
    const-string v5, "msgId"

    invoke-virtual {v4, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1116
    const-string v0, "thread_id"

    invoke-virtual {v4, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1140
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v10, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1149
    :cond_1
    return-void

    .line 1120
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v4, v10, :cond_0

    .line 1122
    const-string v4, "SGH-I777"

    const-string v4, "SPH-D710"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SGH-I777"

    const-string v4, "SPH-D705"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1123
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v4, v9, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V

    goto/16 :goto_0

    .line 1127
    :cond_4
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1128
    const-string v5, "msgId"

    invoke-virtual {v4, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1129
    const-string v0, "thread_id"

    invoke-virtual {v4, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1133
    :cond_5
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1134
    const-string v5, "msgId"

    invoke-virtual {v4, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1135
    const-string v0, "thread_id"

    invoke-virtual {v4, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1136
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/high16 v4, 0x4160

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 239
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 249
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :goto_2
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v0, :pswitch_data_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSize(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 300
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 303
    :goto_4
    return-void

    :cond_0
    move v1, v2

    .line 242
    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_4

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x415547ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v1, 0x419547ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessageListItem;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 292
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessageListItem;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 296
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4228

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessageListItem;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected findDateAndIconsView()V
    .locals 1

    .prologue
    .line 208
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    .line 210
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 211
    return-void
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/CharSequence;
    .locals 23
    .parameter "body"
    .parameter "subject"
    .parameter "highlight"
    .parameter "boxId"

    .prologue
    .line 578
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object v14, v0

    .line 579
    .local v14, smileyStart:[I
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object v13, v0

    .line 581
    .local v13, smileyEnd:[I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 586
    .local v5, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v12

    .line 587
    .local v12, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x1

    move/from16 v8, v18

    .line 588
    .local v8, hasSubject:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 589
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09001f

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p2, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 591
    .local v17, subjectString:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 594
    .end local v17           #subjectString:Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 595
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object v14, v0

    .line 596
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object v13, v0

    .line 597
    if-eqz v8, :cond_1

    .line 598
    const-string v18, " - "

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 602
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xa0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xa0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 625
    :cond_3
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 627
    invoke-virtual {v12}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v14

    .line 628
    invoke-virtual {v12}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v13

    .line 633
    :cond_4
    :goto_1
    if-eqz p3, :cond_d

    .line 634
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 635
    .local v11, m:Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .line 636
    .local v10, isSmileyhighlight:Z
    :cond_5
    :goto_2
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 637
    const/4 v10, 0x0

    .line 639
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 640
    aget v18, v14, v9

    if-nez v18, :cond_9

    aget v18, v13, v9

    if-nez v18, :cond_9

    .line 648
    :cond_6
    if-nez v10, :cond_5

    .line 649
    new-instance v18, Landroid/text/style/StyleSpan;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v20

    const/16 v21, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 587
    .end local v8           #hasSubject:Z
    .end local v9           #i:I
    .end local v10           #isSmileyhighlight:Z
    .end local v11           #m:Ljava/util/regex/Matcher;
    :cond_7
    const/16 v18, 0x0

    move/from16 v8, v18

    goto/16 :goto_0

    .line 605
    .restart local v8       #hasSubject:Z
    :cond_8
    const/16 v18, 0x0

    const/16 v19, 0xa0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 606
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 609
    invoke-virtual {v12}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v14

    .line 610
    invoke-virtual {v12}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v13

    .line 612
    const-string v18, "\n"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 613
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f090174

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 614
    .local v16, strMore:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 615
    .local v15, startMore:I
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int v7, v15, v18

    .line 617
    .local v7, endMore:I
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x206000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 620
    .local v6, color:I
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v18

    move v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v15

    move v3, v7

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 622
    new-instance v18, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct/range {v18 .. v19}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v19, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v15

    move v3, v7

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 644
    .end local v6           #color:I
    .end local v7           #endMore:I
    .end local v15           #startMore:I
    .end local v16           #strMore:Ljava/lang/CharSequence;
    .restart local v9       #i:I
    .restart local v10       #isSmileyhighlight:Z
    .restart local v11       #m:Ljava/util/regex/Matcher;
    :cond_9
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    aget v19, v14, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    aget v19, v13, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    :cond_a
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    aget v19, v14, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    aget v19, v13, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 646
    :cond_b
    const/4 v10, 0x1

    .line 639
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 652
    .end local v9           #i:I
    .end local v10           #isSmileyhighlight:Z
    .end local v11           #m:Ljava/util/regex/Matcher;
    :cond_d
    return-object v5
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public isAlignLeft()Z
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 322
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 217
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    .line 219
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    .line 220
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 221
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    .line 224
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 233
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->findDateAndIconsView()V

    .line 234
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 8

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 804
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->performClick()Z

    .line 805
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/ComposeMessage;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    check-cast v6, Lcom/android/mms/ui/MessageListItem;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/ComposeMessage;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v3

    .line 829
    .local v3, spans:[Landroid/text/style/URLSpan;
    array-length v5, v3

    if-nez v5, :cond_3

    .line 830
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-nez v5, :cond_2

    .line 835
    const-string v5, "Mms/MessageListItem"

    const-string v6, "******SMS Click********"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    .line 850
    :cond_3
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v4

    .line 851
    .local v4, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-nez v5, :cond_4

    .line 855
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListItem$3;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v6, 0x1090011

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;ILjava/util/List;)V

    .line 911
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 913
    .local v1, b:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/util/ArrayList;)V

    .line 932
    .local v2, click:Landroid/content/DialogInterface$OnClickListener;
    const v5, 0x7f0900ef

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 933
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 934
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 936
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 942
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 853
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #click:Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090181

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1227
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 1092
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    :cond_1
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1076
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1081
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 528
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1
    .parameter "visible"
    .parameter "checked"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 950
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 537
    if-nez p2, :cond_0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020108

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 544
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/MessageListItem"

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

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 1008
    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter "pListview"

    .prologue
    .line 204
    sput-object p1, Lcom/android/mms/ui/MessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    .line 205
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 1087
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 317
    return-void
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 1155
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 1016
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020109

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1031
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 1102
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 1047
    return-void
.end method
