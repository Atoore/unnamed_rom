.class public Lcom/android/mms/ui/HDMessageListItem;
.super Lcom/android/mms/ui/MessageListItem;
.source "HDMessageListItem.java"


# instance fields
.field private mDateSeperator:Landroid/widget/TextView;

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 49
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 62
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 70
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 71
    const v2, 0x7f08004d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/HDMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 72
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    const v3, 0x7f08005b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 76
    .local v1, visibleView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 87
    .local v0, invisibleView:Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    const v2, 0x7f08005c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 91
    const v2, 0x7f08005a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 98
    return-void

    .line 66
    .end local v0           #invisibleView:Landroid/view/View;
    .end local v1           #visibleView:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v2, :cond_5

    .line 79
    const v2, 0x7f080054

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/HDMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/HDMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 84
    .restart local v1       #visibleView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .restart local v0       #invisibleView:Landroid/view/View;
    goto :goto_1
.end method

.method protected findDateAndIconsView()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/HDMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/HDMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    .line 55
    return-void
.end method
