.class public Lcom/android/mms/ui/SweepHandler;
.super Ljava/lang/Object;
.source "SweepHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# instance fields
.field private currentIndex:I

.field private isCallable:Z

.field private mCallBg:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mConversationList:Lcom/android/mms/ui/ConversationList;

.field private mDensityScale:F

.field private mLastDrawRcHeight:I

.field private mLastDrawRcWidth:I

.field private mMsgBg:Landroid/graphics/drawable/Drawable;

.field private mMsgIcon:Landroid/graphics/drawable/Drawable;

.field private mMsgText:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWrongCallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ConversationList;)V
    .locals 2
    .parameter "context"
    .parameter "conversationList"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    .line 90
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 92
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 133
    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 36
    iput-object p1, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->initResources()V

    .line 39
    return-void
.end method

.method private adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .parameter "d"
    .parameter "height"
    .parameter "wPadding"

    .prologue
    const/4 v2, 0x0

    const-string v1, "SweepHandler"

    .line 95
    const-string v0, "SweepHandler"

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "SweepHandler"

    const-string v0, "adjustDrawableBound"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    return-void
.end method

.method private drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9
    .parameter "canvas"
    .parameter "msgText"
    .parameter "opacity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 260
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 264
    .local v1, ss:I
    const/high16 v5, 0x41c8

    .line 265
    .local v5, textSizeDp:F
    iget v6, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float v4, v5, v6

    .line 267
    .local v4, textSize:F
    new-instance v3, Landroid/graphics/Paint;

    const/16 v6, 0x101

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 270
    .local v3, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "opa = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 274
    .local v2, textColor:I
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v0, v6

    .line 275
    .local v0, shadowColor:I
    shl-int/lit8 v6, v2, 0x18

    const v7, 0xffffff

    add-int v2, v6, v7

    .line 276
    shl-int/lit8 v6, v0, 0x18

    add-int/lit8 v0, v6, 0x0

    .line 277
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "textcolor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_2
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 280
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shadowColor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_3
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    const/high16 v6, 0x4040

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 284
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 286
    const/high16 v6, 0x4040

    div-float v6, v5, v6

    iget v7, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, p5

    invoke-virtual {p1, p2, p4, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 289
    return-void
.end method

.method private getCallBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getCallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initResources()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    .line 86
    return-void
.end method

.method private setupDrawablesBound(II)V
    .locals 4
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    const-string v2, "SweepHandler"

    .line 108
    const-string v1, "SweepHandler"

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "SweepHandler"

    const-string v1, "setupDrawablesBound"

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    const/high16 v1, 0x40e0

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 112
    .local v0, wPadding:I
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p2, v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 118
    return-void
.end method


# virtual methods
.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 123
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationList;->isConversationIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 125
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 128
    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "ctx"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rc"
    .parameter "canvas"

    .prologue
    .line 143
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v3, 0x32

    invoke-direct {v14, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    .local v14, sb:Ljava/lang/StringBuffer;
    const-string v3, "onDrawSweepActionBar(), itemIndex:"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "sweepProgress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", sweepState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 147
    const-string v3, "SweepHandler"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v13, 0x0

    .line 155
    .local v13, needBoundUpdate:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    move v3, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 156
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 157
    const/4 v13, 0x1

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    move v3, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 162
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 163
    const/4 v13, 0x1

    .line 166
    :cond_1
    if-eqz v13, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SweepHandler;->setupDrawablesBound(II)V

    .line 171
    :cond_2
    const v10, 0x3f4ccccd

    .line 174
    .local v10, INITIAL_OPACITY:F
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    move v3, v0

    move v0, v3

    move/from16 v1, p2

    if-eq v0, v1, :cond_4

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->getNumber(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 176
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 179
    :cond_4
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-nez v3, :cond_5

    .line 180
    const-string v3, "SweepHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepDraw start :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_5
    const/high16 v3, 0x3f80

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_6

    const/high16 v3, -0x4080

    cmpl-float v3, p3, v3

    if-nez v3, :cond_7

    .line 183
    :cond_6
    const-string v3, "SweepHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepDraw done :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_7
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_b

    .line 190
    move/from16 v12, p3

    .line 193
    .local v12, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 194
    .local v15, ss:I
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x434c

    const v5, 0x424bffff

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    neg-float v3, v12

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 202
    const v11, 0x3e4ccccd

    .line 203
    .local v11, MSG_TXT_FADE_IN_PROGRESS:F
    const/high16 v3, 0x3fa0

    const v4, 0x3e4ccccd

    sub-float v4, v12, v4

    mul-float v6, v3, v4

    .line 205
    .local v6, opacity:F
    float-to-double v3, v6

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v3, v3, v7

    if-gez v3, :cond_a

    .line 206
    const/4 v6, 0x0

    .line 211
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    .end local v11           #MSG_TXT_FADE_IN_PROGRESS:F
    :goto_2
    return-void

    .line 175
    .end local v6           #opacity:F
    .end local v12           #drawProgress:F
    .end local v15           #ss:I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v6       #opacity:F
    .restart local v11       #MSG_TXT_FADE_IN_PROGRESS:F
    .restart local v12       #drawProgress:F
    .restart local v15       #ss:I
    :cond_a
    float-to-double v3, v6

    const-wide v7, 0x3fe999999999999aL

    cmpl-double v3, v3, v7

    if-lez v3, :cond_8

    .line 208
    const/high16 v6, 0x3f80

    goto :goto_1

    .line 222
    .end local v6           #opacity:F
    .end local v11           #MSG_TXT_FADE_IN_PROGRESS:F
    .end local v12           #drawProgress:F
    .end local v15           #ss:I
    :cond_b
    const/high16 v3, -0x4080

    mul-float v12, v3, p3

    .line 224
    .restart local v12       #drawProgress:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-lez v3, :cond_c

    .line 225
    const/high16 v12, 0x3f80

    .line 230
    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 231
    .restart local v15       #ss:I
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x434c

    const v5, 0x424bffff

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float v4, v12, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    move-object/from16 v0, p6

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 239
    const v9, 0x3e4ccccd

    .line 240
    .local v9, CALL_TXT_FADE_IN_PROGRESS:F
    const/high16 v3, 0x3fa0

    const v4, 0x3e4ccccd

    sub-float v4, v12, v4

    mul-float v6, v3, v4

    .line 242
    .restart local v6       #opacity:F
    float-to-double v3, v6

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v3, v3, v7

    if-gez v3, :cond_e

    .line 243
    const/4 v6, 0x0

    .line 247
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    move v3, v0

    if-eqz v3, :cond_f

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 253
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 244
    :cond_e
    float-to-double v3, v6

    const-wide v7, 0x3fe999999999999aL

    cmpl-double v3, v3, v7

    if-lez v3, :cond_d

    .line 245
    const/high16 v6, 0x3f80

    goto :goto_3

    .line 250
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto :goto_4
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 4
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    const/4 v2, 0x1

    const-string v3, "SweepHandler"

    .line 292
    const-string v0, "SweepHandler"

    invoke-static {v3, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "SweepHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShouldDrawSelector(), itemIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sweepState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
