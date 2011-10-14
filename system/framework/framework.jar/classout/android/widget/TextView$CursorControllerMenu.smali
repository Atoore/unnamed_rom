.class Landroid/widget/TextView$CursorControllerMenu;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorControllerMenu"
.end annotation


# static fields
.field static final DEBUG_CCM:Z


# instance fields
.field public mBtnClipBoard:Landroid/widget/LinearLayout;

.field public mBtnCopy:Landroid/widget/LinearLayout;

.field public mBtnCut:Landroid/widget/LinearLayout;

.field public mBtnPaste:Landroid/widget/LinearLayout;

.field public mBtnSearch:Landroid/widget/LinearLayout;

.field public mBtnSelect:Landroid/widget/LinearLayout;

.field public mBtnSelectAll:Landroid/widget/LinearLayout;

.field public mBtnShare:Landroid/widget/LinearLayout;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field private mControllerHeight:I

.field public mCurrentCountry:Ljava/lang/String;

.field private mCurrentMenuPosition:I

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field public mCursorControllerMenuArrowDownView:Landroid/view/View;

.field public mCursorControllerMenuArrowUpView:Landroid/view/View;

.field public mCursorControllerMenuView:Landroid/view/View;

.field public mCursorControllerParent:Landroid/widget/TextView;

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorControllerDragging:Z

.field private mLife:Z

.field private mMenuAnimation:Landroid/view/ViewGroup;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field private mSplitSelectAll:Landroid/widget/ImageView;

.field private mSplitShare:Landroid/widget/ImageView;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 10
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x3ea

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9542
    iput-object p1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9494
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9517
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mIsCursorControllerDragging:Z

    .line 9519
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    .line 9520
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9521
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9522
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9523
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9529
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 9533
    const/16 v0, 0x270f

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9543
    iput-object p2, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    .line 9544
    iput-object p3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    .line 9545
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    .line 9547
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 9549
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090014

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    .line 9550
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090015

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    .line 9551
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090016

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    .line 9553
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    .line 9554
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    .line 9555
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    .line 9556
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    .line 9557
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    .line 9558
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    .line 9559
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    .line 9560
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    .line 9562
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    .line 9563
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    .line 9564
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    .line 9565
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    .line 9566
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    .line 9567
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    .line 9568
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    .line 9581
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 9582
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    .line 9583
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    .line 9585
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9586
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9587
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9588
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9590
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9591
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9592
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9593
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9595
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9596
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9597
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9598
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9600
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9601
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9602
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9603
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9604
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9605
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9606
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9607
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9621
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x10202b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    .line 9624
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x10a004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    .line 9625
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/TextView$CursorControllerMenu$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$CursorControllerMenu$1;-><init>(Landroid/widget/TextView$CursorControllerMenu;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9634
    return-void
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .registers 6

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    .line 9912
    const/16 v0, 0x47

    .line 9914
    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9915
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42bfcccc

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9917
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9918
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9920
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9921
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9922
    return-void
.end method

.method public convertDipToPixel(F)I
    .registers 7
    .parameter "dip"

    .prologue
    .line 9812
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 9813
    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1a

    .line 9814
    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    .line 9817
    :cond_1a
    float-to-int v1, p1

    return v1
.end method

.method public getCurrentMenuPosition()I
    .registers 2

    .prologue
    .line 10240
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    return v0
.end method

.method public getCursorControllerHeight()I
    .registers 2

    .prologue
    .line 10220
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    return v0
.end method

.method public getLife()Z
    .registers 2

    .prologue
    .line 10232
    iget-boolean v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .registers 2

    .prologue
    .line 10204
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 10205
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10207
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 10208
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10210
    :cond_22
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 10211
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10213
    :cond_33
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 10224
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10225
    const/4 v0, 0x1

    .line 10227
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isThereAnyTextInClipboard()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 9899
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_29

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_29

    .line 9900
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 9901
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 9902
    const/4 v1, 0x1

    .line 9907
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_26
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_27
    move v1, v3

    .line 9904
    goto :goto_26

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_29
    move v1, v3

    .line 9907
    goto :goto_26
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const v7, 0x1020029

    .line 9722
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_f

    .line 9724
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020028

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9727
    :cond_f
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_1b

    .line 9729
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102001f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9732
    :cond_1b
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_2a

    .line 9734
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9735
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9738
    :cond_2a
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_39

    .line 9740
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020020

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9741
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9744
    :cond_39
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_48

    .line 9746
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9747
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9750
    :cond_48
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_7c

    .line 9752
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9754
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9755
    .local v3, selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9756
    .local v2, selEnd:I
    if-le v3, v2, :cond_60

    .line 9758
    move v4, v3

    .line 9759
    .local v4, tmp:I
    move v3, v2

    .line 9760
    move v2, v4

    .line 9762
    .end local v4           #tmp:I
    :cond_60
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9764
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9766
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V

    .line 9769
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_7c
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_d9

    .line 9771
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9773
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9774
    .restart local v3       #selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9775
    .restart local v2       #selEnd:I
    if-le v3, v2, :cond_94

    .line 9777
    move v4, v3

    .line 9778
    .restart local v4       #tmp:I
    move v3, v2

    .line 9779
    move v2, v4

    .line 9781
    .end local v4           #tmp:I
    :cond_94
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9783
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9785
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9786
    .local v1, intentShareText:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9787
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9789
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v6, 0x1040483

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 9791
    .local v0, intentChooser:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9793
    :try_start_d4
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d4 .. :try_end_d9} :catch_f3

    .line 9799
    .end local v0           #intentChooser:Landroid/content/Intent;
    .end local v1           #intentShareText:Landroid/content/Intent;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_d9
    :goto_d9
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_f2

    .line 9801
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9802
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020192

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9805
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_f2

    .line 9806
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 9809
    :cond_f2
    return-void

    .line 9794
    .restart local v0       #intentChooser:Landroid/content/Intent;
    .restart local v1       #intentShareText:Landroid/content/Intent;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :catch_f3
    move-exception v5

    goto :goto_d9
.end method

.method public setCursorControllerHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 10216
    iput p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    .line 10217
    return-void
.end method

.method public setLife(Z)V
    .registers 2
    .parameter "life"

    .prologue
    .line 10236
    iput-boolean p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 10237
    return-void
.end method

.method public showCursorControllerMenu()V
    .registers 25

    .prologue
    .line 9927
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->updateButtonVisibility()V

    .line 9928
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->calcMenuWidthHeight()V

    .line 9930
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v21, v0

    if-nez v21, :cond_12

    .line 9931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 10062
    :goto_11
    return-void

    .line 9935
    :cond_12
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 9938
    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .line 9939
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 9941
    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9944
    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    if-nez v21, :cond_7f

    .line 9946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9949
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9952
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 9953
    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .line 9956
    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9959
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .line 9963
    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9964
    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .line 9965
    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .line 9967
    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .line 9968
    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .line 9969
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .line 9970
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .line 9972
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 9975
    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 9976
    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9977
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .line 9982
    .local v5, activityPadding:I
    const/16 v21, 0x64

    move v0, v5

    move/from16 v1, v21

    if-le v0, v1, :cond_245

    .line 9983
    const/4 v5, 0x6

    .line 9987
    :cond_245
    if-nez v5, :cond_324

    .line 9989
    if-gtz v12, :cond_2fe

    .line 9990
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 10012
    :cond_255
    :goto_255
    if-gtz v12, :cond_263

    .line 10013
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 10016
    :cond_263
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_394

    .line 10018
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    .line 10020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_299

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_299

    .line 10021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10024
    :cond_299
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    .line 10026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_35e

    .line 10027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10033
    :goto_2c1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    .line 10034
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_379

    .line 10035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10060
    :goto_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_11

    .line 9991
    :cond_2fe
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_255

    .line 9992
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_31c

    .line 9993
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_255

    .line 9995
    :cond_31c
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_255

    .line 10000
    :cond_324
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_33b

    .line 10001
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_255

    .line 10003
    :cond_33b
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_354

    .line 10004
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_255

    .line 10006
    :cond_354
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_255

    .line 10029
    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2c1

    .line 10037
    :cond_379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2ed

    .line 10040
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3b1

    .line 10041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10044
    :cond_3b1
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    .line 10046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3f7

    .line 10047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10052
    :goto_3d9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_411

    .line 10053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_2ed

    .line 10049
    :cond_3f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3d9

    .line 10055
    :cond_411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2ed
.end method

.method public updateButtonVisibility()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "clipboardEx"

    .line 9821
    iput v3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9823
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9824
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9825
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9826
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9827
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9828
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9829
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9830
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9832
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9833
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9834
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9835
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9836
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9837
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9838
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9840
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getIsInTextSelectionMode()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 9841
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9842
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9843
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9844
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9846
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 9847
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9848
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9849
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9852
    :cond_8f
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 9853
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-eqz v1, :cond_b3

    .line 9854
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9855
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9856
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9896
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_b3
    :goto_b3
    return-void

    .line 9860
    :cond_b4
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 9861
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 9862
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9863
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9866
    :cond_cf
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 9867
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9868
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9869
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9872
    :cond_e7
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 9873
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9874
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9875
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9878
    :cond_ff
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 9879
    .restart local v0       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-eqz v1, :cond_b3

    .line 9880
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9881
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9882
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto :goto_b3

    .line 9884
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_124
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 9885
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v2}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)I

    move-result v2

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;I)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 9886
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9887
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9888
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9889
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9890
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9891
    iget v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto/16 :goto_b3
.end method

.method public updateCurrentMenuPosition()V
    .registers 2

    .prologue
    .line 10244
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 10245
    return-void
.end method

.method public updateCursorControllerMenu()V
    .registers 25

    .prologue
    .line 10067
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 10068
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 10195
    :goto_b
    return-void

    .line 10072
    :cond_c
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 10075
    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .line 10076
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 10078
    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 10081
    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    if-nez v21, :cond_79

    .line 10083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 10086
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 10088
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 10089
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 10090
    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 10091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .line 10093
    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 10094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 10096
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 10097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 10099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .line 10100
    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 10101
    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .line 10102
    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .line 10104
    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .line 10105
    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .line 10106
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .line 10107
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .line 10109
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 10112
    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 10113
    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 10114
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .line 10119
    .local v5, activityPadding:I
    const/16 v21, 0x64

    move v0, v5

    move/from16 v1, v21

    if-le v0, v1, :cond_23f

    .line 10120
    const/4 v5, 0x6

    .line 10124
    :cond_23f
    if-nez v5, :cond_30f

    .line 10126
    if-gtz v12, :cond_2e9

    .line 10127
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 10149
    :cond_24f
    :goto_24f
    if-gtz v12, :cond_25d

    .line 10150
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 10153
    :cond_25d
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_37f

    .line 10155
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    .line 10157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_293

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_293

    .line 10158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10161
    :cond_293
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    .line 10163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_349

    .line 10164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10170
    :goto_2bb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    .line 10171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_364

    .line 10172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_b

    .line 10128
    :cond_2e9
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_24f

    .line 10129
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_307

    .line 10130
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_24f

    .line 10132
    :cond_307
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_24f

    .line 10137
    :cond_30f
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_326

    .line 10138
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_24f

    .line 10140
    :cond_326
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_33f

    .line 10141
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_24f

    .line 10143
    :cond_33f
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_24f

    .line 10166
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2bb

    .line 10174
    :cond_364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_b

    .line 10177
    :cond_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_39c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_39c

    .line 10178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10181
    :cond_39c
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    .line 10183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3e2

    .line 10184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10189
    :goto_3c4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3fc

    .line 10190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_b

    .line 10186
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3c4

    .line 10192
    :cond_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_b
.end method
