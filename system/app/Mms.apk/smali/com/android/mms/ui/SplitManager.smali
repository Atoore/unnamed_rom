.class public Lcom/android/mms/ui/SplitManager;
.super Ljava/lang/Object;
.source "SplitManager.java"


# instance fields
.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

.field private mCount:I

.field private mDensity:F

.field private mEndX:I

.field private mIsAnimationEnable:Z

.field private mLeftView:Landroid/view/View;

.field private mMaxX:I

.field private mMinX:I

.field private mOffset:I

.field private mOnAnimate:Z

.field private mRightView:Landroid/view/View;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarMargin:I

.field private mSplitBarWidth:I

.field private mSplitMode:I

.field private mStartX:I

.field private mUseSplitMode:Z

.field private mWidth:I

.field private mX:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V
    .locals 3
    .parameter "leftView"
    .parameter "rightView"
    .parameter "splitBar"
    .parameter "conversationComposer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 28
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 29
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 42
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 45
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 54
    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 55
    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 57
    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    .line 59
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 65
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/16 v1, 0x140

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 69
    const v1, 0x42853333

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    .line 70
    const/high16 v1, 0x43c8

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    .line 72
    const/high16 v1, 0x4080

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarWidth:I

    .line 73
    const/high16 v1, 0x4180

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SplitManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SplitManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$828(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    return v0
.end method

.method private animationLayout()Z
    .locals 4

    .prologue
    .line 190
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    .line 191
    const/4 v2, 0x0

    .line 221
    :goto_0
    return v2

    .line 193
    :cond_0
    new-instance v1, Lcom/android/mms/ui/SplitManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SplitManager$1;-><init>(Lcom/android/mms/ui/SplitManager;)V

    .line 219
    .local v1, runExpand:Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 220
    .local v0, handler:Landroid/os/Handler;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public UpdateSplitPosition(I)Z
    .locals 3
    .parameter "x"

    .prologue
    const/4 v2, 0x0

    .line 107
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    if-ge p1, v0, :cond_1

    .line 108
    iget p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarWidth:I

    .line 112
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    if-le p1, v0, :cond_0

    move v0, v2

    .line 110
    goto :goto_0

    .line 115
    :cond_2
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v0

    goto :goto_0
.end method

.method public getAnimationEnable()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return v0
.end method

.method public getSplitMode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    return v0
.end method

.method public refreshLayouts()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 186
    :goto_0
    return v2

    .line 152
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 154
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 156
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 161
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    move v0, v2

    .line 162
    .local v0, leftViewWidth:I
    :goto_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 164
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->ShowSipOnComposeMessage()V

    goto :goto_1

    .line 161
    .end local v0           #leftViewWidth:I
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    move v0, v2

    goto :goto_2

    .line 171
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 173
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 175
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    add-int/2addr v2, v3

    neg-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 180
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 82
    return-void
.end method

.method public setSplitMode(IZ)Z
    .locals 4
    .parameter "splitMode"
    .parameter "withAnimation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 143
    :goto_0
    return v0

    .line 123
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 124
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    if-nez v0, :cond_2

    .line 125
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-eqz v0, :cond_3

    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    iput-boolean v3, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 132
    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne v0, v3, :cond_5

    .line 136
    const/16 v0, -0x28

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    .line 137
    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    .line 138
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    .line 143
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    neg-int v0, v0

    goto :goto_1

    .line 140
    :cond_5
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    goto :goto_2
.end method

.method public setUseSplitMode(Z)V
    .locals 3
    .parameter "useSplitMode"

    .prologue
    const/4 v2, -0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 78
    return-void
.end method
