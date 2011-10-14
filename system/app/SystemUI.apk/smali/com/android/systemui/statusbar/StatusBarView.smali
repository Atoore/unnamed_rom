.class public Lcom/android/systemui/statusbar/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# instance fields
.field mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

.field mDate:Landroid/view/View;

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field mStatusBarLayout:Landroid/view/ViewGroup;

.field private mStatusBarMarqueeDirection:I

.field private mStatusBarMarqueeRange:I

.field mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeDirection:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeRange:I

    .line 57
    return-void
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 6
    .parameter "g"
    .parameter "w"
    .parameter "offset"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 136
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 138
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    .line 139
    .local v2, l:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    .line 140
    .local v3, r:I
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    move v5, v3

    .line 144
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :goto_1
    return v5

    .line 136
    .restart local v2       #l:I
    .restart local v3       #r:I
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, offset:I
    :goto_0
    if-eq p1, p0, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 125
    .local v2, p:Landroid/view/ViewParent;
    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 126
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a child of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2           #p:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method


# virtual methods
.method public marqueeStatusBar()V
    .locals 5

    .prologue
    .line 168
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeRange:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeRange:I

    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeRange:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeDirection:I

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeDirection:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeDirection:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->invalidate()V

    .line 184
    return-void

    .line 172
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeRange:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarMarqueeDirection:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onBarViewAttached()V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 63
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 64
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusBarLayout:Landroid/view/ViewGroup;

    .line 72
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 94
    .local v3, oldDateRight:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 96
    .local v1, newDateRight:I
    if-gez v1, :cond_0

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    .line 98
    .local v2, offset:I
    if-ge v3, v2, :cond_2

    .line 99
    move v1, v3

    .line 107
    .end local v2           #offset:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    .line 108
    .local v0, max:I
    if-le v1, v0, :cond_1

    .line 109
    move v1, v0

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    .line 113
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 114
    return-void

    .line 101
    .end local v0           #max:I
    .restart local v2       #offset:I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 102
    if-gez v1, :cond_0

    .line 103
    move v1, p4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 84
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
