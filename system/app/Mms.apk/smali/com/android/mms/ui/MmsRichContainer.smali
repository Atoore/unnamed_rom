.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# instance fields
.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mTextColor:I

.field mTextTop:Ljava/lang/Boolean;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 179
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    .line 911
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 921
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 959
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 984
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 179
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    .line 911
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 921
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 959
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 984
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 310
    const v1, 0x7f08007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 311
    .local v0, audioView:Landroid/widget/LinearLayout;
    return-object v0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 304
    const v1, 0x7f080078

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 305
    .local v0, MediaView:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 316
    const v1, 0x7f080080

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 317
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .locals 7
    .parameter "index"
    .parameter "addWatcher"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1053
    const/4 v1, 0x0

    .line 1058
    .local v1, mView:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1060
    const v4, 0x7f080077

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1061
    .local v2, topEditText:Landroid/widget/EditText;
    const v4, 0x7f08007c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1063
    .local v0, bottomEditText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1064
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1069
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1070
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1071
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1072
    move-object v3, v2

    .line 1079
    .local v3, visibleEditText:Landroid/widget/EditText;
    :goto_1
    if-eqz p2, :cond_1

    .line 1080
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1084
    :cond_1
    const/high16 v4, -0x8000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1087
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1089
    return-object v3

    .line 1065
    .end local v3           #visibleEditText:Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1066
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 1074
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1075
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1076
    move-object v3, v0

    .restart local v3       #visibleEditText:Landroid/widget/EditText;
    goto :goto_1
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .locals 6
    .parameter "page"
    .parameter "checkFirstText"

    .prologue
    const/4 v5, 0x1

    .line 1012
    const/4 v1, 0x0

    .line 1014
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1017
    if-eqz p2, :cond_0

    .line 1018
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1019
    .local v3, textLength:I
    if-lez v3, :cond_0

    move v4, v5

    .line 1036
    .end local v3           #textLength:I
    :goto_0
    return v4

    .line 1024
    :cond_0
    const v4, 0x7f080078

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1026
    .local v2, mediaVisibility:I
    if-nez v2, :cond_1

    move v4, v5

    .line 1027
    goto :goto_0

    .line 1030
    :cond_1
    const v4, 0x7f08007d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1032
    .local v0, audioVisibility:I
    if-nez v0, :cond_2

    move v4, v5

    .line 1033
    goto :goto_0

    .line 1036
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetLayoutAttr()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 871
    const/4 v6, 0x0

    .line 872
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v5

    .line 875
    .local v5, pageNumber:I
    move v2, v5

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 876
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 875
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 879
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 881
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 882
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 883
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 884
    .local v4, pageDivider:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 886
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 887
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 888
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 889
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 892
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 893
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 896
    :cond_2
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 897
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 900
    :cond_3
    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 901
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 904
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 905
    const/high16 v7, 0x3f80

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 906
    invoke-virtual {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 908
    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .locals 6
    .parameter "slide"
    .parameter "index"

    .prologue
    const/16 v4, 0x8

    const-string v5, ""

    .line 844
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 845
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 846
    .local v2, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 847
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 848
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 851
    .end local v2           #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_1

    .line 852
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 853
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 860
    .local v1, editText:Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 863
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 864
    return-void
.end method

.method private setAddAnimation()V
    .locals 4

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1098
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1100
    .local v0, addAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1101
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1104
    .end local v0           #addAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setDeleteAnimation(II)V
    .locals 4
    .parameter "slideIndex"
    .parameter "type"

    .prologue
    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1108
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1109
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1110
    .local v0, deleteAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1112
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1131
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1134
    .end local v0           #deleteAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setWeight(Landroid/view/View;F)V
    .locals 3
    .parameter "childAt"
    .parameter "weight"

    .prologue
    .line 817
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    .line 818
    .local v1, l:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 820
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 821
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    return-void
.end method


# virtual methods
.method public addPage(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/16 v8, 0x8

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 125
    .local v4, mView:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 129
    .local v2, mEditField:Landroid/widget/EditText;
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 130
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 132
    const/high16 v6, -0x8000

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 133
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 136
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    const v6, 0x7f080079

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 139
    .local v3, mMediaView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    const v6, 0x7f08007d

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 142
    .local v1, mAudioInfo:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/mms/ui/MmsRichContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 168
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 170
    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, ""

    .line 777
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 778
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    .line 779
    .local v5, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v5, :cond_2

    .line 780
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 781
    .local v2, mTempIndex:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 782
    .local v4, slideCount:I
    const/4 v3, 0x0

    .line 784
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 785
    invoke-virtual {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 786
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 788
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 790
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    .line 791
    .local v7, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 792
    .local v6, string:Ljava/lang/String;
    invoke-direct {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 793
    .local v1, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {p0, v1, v6, v0}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 794
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 784
    .end local v1           #mTempEdit:Landroid/widget/EditText;
    .end local v6           #string:Ljava/lang/String;
    .end local v7           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_1
    sub-int v8, v4, v11

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 800
    invoke-virtual {p0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 802
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 803
    const-string v8, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 814
    .end local v0           #i:I
    .end local v2           #mTempIndex:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #slideCount:I
    .end local v5           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_2
    :goto_1
    return-void

    .line 806
    .restart local v0       #i:I
    .restart local v2       #mTempIndex:I
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v4       #slideCount:I
    .restart local v5       #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_3
    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v8, :cond_4

    .line 807
    const-string v8, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 809
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_1
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 2
    .parameter "mView"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const v1, 0x7f080077

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 298
    .local v0, mEdit:Landroid/widget/EditText;
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 299
    return-object v0

    .line 294
    .end local v0           #mEdit:Landroid/widget/EditText;
    :cond_0
    const v1, 0x7f08007c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #mEdit:Landroid/widget/EditText;
    goto :goto_0
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 279
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, mFocusedChild:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 286
    .local v0, mEdit:Landroid/widget/EditText;
    return-object v0

    .line 281
    .end local v0           #mEdit:Landroid/widget/EditText;
    .end local v1           #mFocusedChild:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .restart local v1       #mFocusedChild:Landroid/view/View;
    goto :goto_0
.end method

.method public getFocusedSlideIndex()I
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 322
    .local v0, count:I
    sget v2, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v0, v2, :cond_0

    .line 323
    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    .line 325
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 330
    :goto_1
    return v2

    .line 325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMMSLayout()Z
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 202
    .local v0, mString:Landroid/text/Editable;
    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 840
    .local v0, totalPage:I
    return v0
.end method

.method public hasContents(Z)Z
    .locals 2
    .parameter "checkFirstText"

    .prologue
    const/4 v1, 0x1

    .line 1003
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 1005
    .local v0, cnt:I
    if-le v0, v1, :cond_0

    .line 1008
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public initContainer()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    .line 109
    .local v0, textFieldColor:I
    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 114
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 105
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, newIndex:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 155
    sub-int v0, p1, v2

    .line 156
    if-gez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 173
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 177
    :cond_0
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .locals 4
    .parameter "audioFileName"
    .parameter "index"

    .prologue
    const/4 v3, 0x7

    .line 633
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 634
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    const v2, 0x7f08007f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 635
    .local v1, fileName:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 641
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 643
    return-void
.end method

.method public setFocusEditText()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 235
    return-void
.end method

.method public setFocusEditText(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int p1, v1, v2

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 229
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 230
    return-void
.end method

.method public setFocusEditText(IZ)V
    .locals 3
    .parameter "index"
    .parameter "setLastPos"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int p1, v1, v2

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 213
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 214
    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method public setHint()V
    .locals 3

    .prologue
    .line 244
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, mFocusedChild:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 247
    .local v0, mEdit:Landroid/widget/EditText;
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 248
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "hint"

    .prologue
    .line 253
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, mFocusedChild:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 256
    .local v0, mEdit:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setHintRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 238
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    .line 239
    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "img"
    .parameter "index"

    .prologue
    const/4 v8, 0x5

    .line 576
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 577
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    const v5, 0x7f080079

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 578
    .local v2, imageView:Landroid/widget/ImageView;
    const v5, 0x7f08007a

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 579
    .local v4, playButton:Landroid/widget/ImageView;
    const v5, 0x7f08007b

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, dummyView:Landroid/view/View;
    if-nez p1, :cond_0

    .line 583
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020108

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 590
    :cond_0
    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 592
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 593
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    :cond_1
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 596
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 598
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 599
    return-void

    .line 586
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 587
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "Mms/MmsRichContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "mView"

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 262
    .local v1, childCount:I
    const/4 v4, 0x2

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 263
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 264
    .local v2, childView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 265
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 266
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 267
    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    check-cast v2, Landroid/widget/EditText;

    .end local v2           #childView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 272
    :cond_0
    return-void

    .line 262
    .restart local v2       #childView:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public setMMSLayout(Z)V
    .locals 2
    .parameter "textTop"

    .prologue
    .line 1044
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 1046
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 1094
    return-void
.end method

.method public setPageDivider(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    .line 826
    .local v2, total:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 827
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    const v3, 0x7f080081

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 828
    .local v1, pageInfo:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 831
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_0

    .line 832
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .parameter "editorActionListener"

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1041
    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2
    .parameter "editText"
    .parameter "text"
    .parameter "index"

    .prologue
    .line 646
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 647
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 649
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 1137
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1138
    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .locals 11
    .parameter "videoUri"
    .parameter "index"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 602
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 603
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    const v6, 0x7f080079

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 604
    .local v5, videoView:Landroid/widget/ImageView;
    const v6, 0x7f08007a

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 605
    .local v4, playButton:Landroid/widget/ImageView;
    const v6, 0x7f08007b

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, dummyView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020109

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 618
    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 620
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 621
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :cond_1
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 626
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 628
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 629
    return-void

    .line 614
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 615
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .locals 18
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 653
    const-string v15, "Mms/MmsRichContainer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update(),type="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz p1, :cond_6

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v12

    .line 658
    .local v12, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v12, :cond_6

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v9

    .line 660
    .local v9, mTempIndex:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 661
    .local v11, slideCount:I
    const/4 v10, 0x0

    .line 663
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v15

    if-ge v15, v11, :cond_0

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_0

    .line 667
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v15

    if-le v15, v11, :cond_1

    .line 668
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 671
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v11, :cond_2

    .line 673
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 675
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v7, v15, :cond_7

    .line 676
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 709
    :cond_2
    const/4 v15, 0x1

    sub-int v15, v11, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 711
    const/16 v15, 0xc

    move/from16 v0, p2

    move v1, v15

    if-eq v0, v1, :cond_3

    const/16 v15, 0x10

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_d

    .line 712
    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 723
    :cond_4
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 724
    const-string v15, ""

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 734
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    move v15, v0

    const/16 v16, -0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 735
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    move v15, v0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 736
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 738
    :cond_5
    const/16 v15, 0xc

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    .line 774
    .end local v7           #i:I
    .end local v9           #mTempIndex:I
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    .end local v11           #slideCount:I
    .end local v12           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_6
    :goto_5
    return-void

    .line 679
    .restart local v7       #i:I
    .restart local v9       #mTempIndex:I
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v11       #slideCount:I
    .restart local v12       #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_7
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 680
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 681
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    .line 683
    :cond_8
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 684
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    .line 686
    :cond_9
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 687
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    .line 690
    :cond_a
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v8

    .line 692
    .local v8, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 693
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v14

    .line 694
    .local v14, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v14}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    .line 695
    .local v13, string:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 696
    new-instance v15, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v16, 0x8

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 704
    .end local v13           #string:Ljava/lang/String;
    .end local v14           #text:Lcom/android/mms/model/TextModel;
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    .line 706
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 671
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 698
    .restart local v13       #string:Ljava/lang/String;
    .restart local v14       #text:Lcom/android/mms/model/TextModel;
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_6

    .line 701
    .end local v13           #string:Ljava/lang/String;
    .end local v14           #text:Lcom/android/mms/model/TextModel;
    :cond_c
    const-string v15, ""

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_6

    .line 713
    .end local v8           #mTempEdit:Landroid/widget/EditText;
    :cond_d
    const/16 v15, 0xe

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_f

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_3

    .line 717
    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_3

    .line 719
    :cond_f
    const/16 v15, 0xd

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_4

    .line 720
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    .line 727
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    move v15, v0

    if-nez v15, :cond_11

    .line 728
    const-string v15, ""

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 730
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_4

    .line 741
    .end local v7           #i:I
    .end local v9           #mTempIndex:I
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    .end local v11           #slideCount:I
    .end local v12           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_12
    const/16 v15, 0xd

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_13

    .line 743
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 744
    .local v6, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v4

    .line 745
    .local v4, firstEditText:Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, firstText:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 750
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 751
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5

    .line 753
    .end local v4           #firstEditText:Landroid/widget/EditText;
    .end local v5           #firstText:Ljava/lang/String;
    .end local v6           #firstView:Landroid/view/View;
    :cond_13
    const/16 v15, 0xf

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_14

    .line 754
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5

    .line 756
    :cond_14
    const/16 v15, 0xc

    move/from16 v0, p2

    move v1, v15

    if-eq v0, v1, :cond_15

    const/16 v15, 0x10

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_6

    .line 759
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 760
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 761
    .restart local v6       #firstView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v4

    .line 762
    .restart local v4       #firstEditText:Landroid/widget/EditText;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 763
    .local v14, text:Ljava/lang/CharSequence;
    if-eqz v14, :cond_16

    .line 764
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_17

    .line 765
    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 771
    :cond_16
    :goto_7
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 767
    :cond_17
    const-string v15, ""

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_7
.end method
