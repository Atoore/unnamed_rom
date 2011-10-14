.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$TwBounceController;,
        Landroid/widget/AbsListView$BounceRunnable;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$TwFlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BOUNCE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MAX_NUM_POINTERS:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Landroid/widget/AbsListView$TwBounceController;

.field protected mBounceEnabled:Z

.field protected mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerDownY:[F

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 652
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 207
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 222
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 232
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 238
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 243
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 248
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 253
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 258
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 268
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 315
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 346
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 384
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 404
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 425
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 428
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 431
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 473
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 492
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 502
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 550
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 622
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 628
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2247
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_64

    iput-object v1, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 653
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 655
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 656
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 657
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 658
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 659
    return-void

    .line 2247
    nop

    :array_64
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 662
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 663
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 666
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 232
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 238
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 243
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 248
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 253
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 258
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 263
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 268
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 315
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 346
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 384
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 404
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 406
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 425
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 428
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 431
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 473
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 492
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 502
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 550
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 622
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 628
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2247
    const/4 v9, 0x6

    new-array v9, v9, [F

    fill-array-data v9, :array_d0

    iput-object v9, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 667
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 669
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 672
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 673
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_75

    .line 674
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 677
    :cond_75
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 680
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 681
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 683
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 684
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 686
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 687
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 689
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 691
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 693
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 695
    .local v1, color:I
    const-string v9, "SGH-I777"

    const-string v10, "SC-02C"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cc

    .line 696
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 701
    :goto_b5
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 702
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 704
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 705
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 707
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 708
    return-void

    .line 698
    .end local v3           #enableFastScroll:Z
    .end local v5           #smoothScrollbar:Z
    :cond_cc
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    goto :goto_b5

    .line 2247
    :array_d0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 1127
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 4916
    if-nez p1, :cond_8

    const/4 v4, 0x1

    .line 4934
    :goto_7
    return v4

    .line 4917
    :cond_8
    const/4 v2, 0x1

    .line 4919
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4920
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_6b

    .line 4921
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4922
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 4923
    const/4 v2, 0x0

    .line 4924
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    :cond_3f
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_68

    .line 4928
    const/4 v2, 0x0

    .line 4929
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v3           #view:Landroid/view/View;
    :cond_6b
    move v4, v2

    .line 4934
    goto :goto_7
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 3875
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 3876
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3891
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3892
    return-void
.end method

.method private contentFits()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 750
    .local v0, childCount:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v1, :cond_c

    move v1, v3

    .line 754
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_26

    sub-int v1, v0, v4

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    if-gt v1, v2, :cond_26

    move v1, v4

    goto :goto_b

    :cond_26
    move v1, v3

    goto :goto_b
.end method

.method private createScrollingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3867
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_11

    .line 3868
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3869
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3870
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 3872
    :cond_11
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 10
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4662
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_5a

    .line 4663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4664
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4665
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4667
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090070

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 4672
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4674
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4675
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4676
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4677
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4678
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4679
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4680
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4681
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4682
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4683
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 4684
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4685
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4687
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_5a
    if-eqz p1, :cond_65

    .line 4688
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030071

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4692
    :goto_64
    return-void

    .line 4690
    :cond_65
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030072

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_64
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 4438
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 4439
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4441
    :cond_9
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 1678
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1679
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1680
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1681
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1683
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_1c
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .prologue
    .line 4938
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_e

    .line 4939
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 4940
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 4942
    :cond_e
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 4484
    sparse-switch p2, :sswitch_data_78

    .line 4510
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4486
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 4487
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4488
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4489
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4513
    .local v1, dY:I
    :goto_23
    sub-int v2, v0, v4

    .line 4514
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4515
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 4492
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2d
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4493
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 4494
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4495
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4496
    .restart local v1       #dY:I
    goto :goto_23

    .line 4498
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 4499
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4500
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4501
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4502
    .restart local v1       #dY:I
    goto :goto_23

    .line 4504
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_5f
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4505
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 4506
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4507
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4508
    .restart local v1       #dY:I
    goto :goto_23

    .line 4484
    :sswitch_data_78
    .sparse-switch
        0x11 -> :sswitch_46
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_b
        0x82 -> :sswitch_2d
    .end sparse-switch
.end method

.method private initAbsListView()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 712
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 713
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 714
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 715
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 716
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 718
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 719
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 720
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 721
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 722
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 723
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 725
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 726
    new-instance v1, Landroid/widget/AbsListView$TwBounceController;

    invoke-direct {v1, p0, p0}, Landroid/widget/AbsListView$TwBounceController;-><init>(Landroid/widget/AbsListView;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    .line 727
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$TwBounceController;->getBounceRunnable(I)Landroid/widget/AbsListView$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    .line 729
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 3128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 3130
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3131
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_3a

    .line 3135
    if-nez v2, :cond_3b

    const/4 v3, 0x1

    move v0, v3

    .line 3136
    .local v0, newPointerIndex:I
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3137
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3138
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3139
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3140
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_36

    .line 3141
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3150
    :cond_36
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3152
    .end local v0           #newPointerIndex:I
    :cond_3a
    return-void

    :cond_3b
    move v0, v5

    .line 3135
    goto :goto_17
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2013
    const/4 v6, 0x0

    .line 2015
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_f

    .line 2016
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2019
    :cond_f
    if-nez v6, :cond_1b

    .line 2020
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2021
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2023
    :cond_1b
    if-eqz v6, :cond_21

    .line 2024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 2026
    :cond_21
    return v6
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4457
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4458
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 4459
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 4462
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 4463
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 4464
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4469
    :goto_35
    return-void

    .line 4467
    :cond_36
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1606
    return-void
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 4448
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 4449
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4450
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 4452
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 4454
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .registers 10
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2186
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2187
    .local v0, distance:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eqz v4, :cond_3f

    move v3, v7

    .line 2188
    .local v3, overscroll:Z
    :goto_b
    if-nez v3, :cond_11

    iget v4, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v4, :cond_43

    .line 2189
    :cond_11
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2190
    if-eqz v3, :cond_41

    const/4 v4, 0x5

    :goto_17
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2191
    iput p1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2192
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2196
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_26

    .line 2197
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2199
    :cond_26
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2200
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2201
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_37

    .line 2202
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2204
    :cond_37
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2207
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v7

    .line 2211
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_3e
    return v4

    .end local v3           #overscroll:Z
    :cond_3f
    move v3, v6

    .line 2187
    goto :goto_b

    .line 2190
    .restart local v3       #overscroll:Z
    :cond_41
    const/4 v4, 0x3

    goto :goto_17

    :cond_43
    move v4, v6

    .line 2211
    goto :goto_3e
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 931
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 933
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3159
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 3160
    .local v2, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3161
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3163
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 3174
    :cond_a
    return-void

    .line 3167
    :cond_b
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 3168
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3169
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3172
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3167
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 4772
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4734
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 4653
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 4793
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 4698
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    .line 4699
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4700
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4701
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4702
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4705
    :cond_1d
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1204
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1205
    .local v1, count:I
    if-lez v1, :cond_6f

    .line 1206
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_6d

    .line 1207
    mul-int/lit8 v2, v1, 0x64

    .line 1209
    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1210
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1211
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1212
    .local v3, height:I
    if-lez v3, :cond_20

    .line 1213
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1216
    :cond_20
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1217
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1218
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1219
    if-lez v3, :cond_3a

    .line 1220
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1228
    :cond_3a
    move v5, v2

    .line 1231
    .local v5, retVal:I
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v8, :cond_6b

    .line 1232
    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v8, v8, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_66

    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_66

    .line 1235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v9, v9, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1237
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1240
    .end local v4           #ratio:F
    :cond_66
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1248
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_6a
    return v8

    .restart local v0       #bottom:I
    .restart local v2       #extent:I
    .restart local v3       #height:I
    .restart local v5       #retVal:I
    .restart local v6       #top:I
    .restart local v7       #view:Landroid/view/View;
    :cond_6b
    move v8, v5

    .line 1243
    goto :goto_6a

    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_6d
    move v8, v10

    .line 1245
    goto :goto_6a

    :cond_6f
    move v8, v9

    .line 1248
    goto :goto_6a
.end method

.method protected computeVerticalScrollOffset()I
    .registers 19

    .prologue
    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    .line 1254
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 1255
    .local v2, childCount:I
    if-ltz v5, :cond_b0

    if-lez v2, :cond_b0

    .line 1260
    const/4 v9, 0x0

    .line 1261
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_8c

    .line 1262
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1263
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1264
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1265
    .local v6, height:I
    if-lez v6, :cond_56

    .line 1268
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v15, v0

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x42c8

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1272
    :cond_56
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v14, v0

    if-eqz v14, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v14, v0

    iget v14, v14, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_8a

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v14, v0

    iget v10, v14, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 1274
    .local v10, savedBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1275
    .local v11, shrinkedScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v14, v0

    const/4 v15, 0x0

    iput v15, v14, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1277
    .local v8, normalScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v14, v0

    iput v10, v14, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 1279
    sub-int v4, v8, v11

    .line 1281
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedBounceExtent:F
    .end local v11           #shrinkedScrollExtent:I
    :cond_8a
    move v14, v9

    .line 1302
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_8b
    return v14

    .line 1291
    .restart local v9       #retVal:I
    :cond_8c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v3, v0

    .line 1292
    .local v3, count:I
    if-nez v5, :cond_a5

    .line 1293
    const/4 v7, 0x0

    .line 1299
    .local v7, index:I
    :goto_94
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_8b

    .line 1294
    .end local v7           #index:I
    :cond_a5
    add-int v14, v5, v2

    if-ne v14, v3, :cond_ab

    .line 1295
    move v7, v3

    .restart local v7       #index:I
    goto :goto_94

    .line 1297
    .end local v7           #index:I
    :cond_ab
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_94

    .line 1302
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_b0
    const/4 v14, 0x0

    goto :goto_8b
.end method

.method protected computeVerticalScrollRange()I
    .registers 4

    .prologue
    .line 1308
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_28

    .line 1309
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1310
    .local v0, result:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_27

    .line 1312
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1317
    :cond_27
    :goto_27
    return v0

    .line 1315
    .end local v0           #result:I
    :cond_28
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_27
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1925
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 1610
    const/4 v2, 0x0

    .line 1611
    .local v2, saveCount:I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_51

    const/4 v5, 0x1

    move v0, v5

    .line 1612
    .local v0, clipToPadding:Z
    :goto_b
    if-eqz v0, :cond_36

    .line 1613
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1614
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1615
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1616
    .local v4, scrollY:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1619
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1622
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_36
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1623
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_3d

    .line 1624
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1627
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1629
    if-eqz v1, :cond_45

    .line 1630
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1633
    :cond_45
    if-eqz v0, :cond_50

    .line 1634
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1635
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1637
    :cond_50
    return-void

    .line 1611
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_51
    const/4 v5, 0x0

    move v0, v5

    goto :goto_b
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 2091
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 3005
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3006
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v4, :cond_81

    .line 3007
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3008
    .local v2, scrollY:I
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_43

    .line 3009
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3010
    .local v1, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .line 3012
    .local v3, width:I
    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3013
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3014
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3015
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3017
    :cond_40
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3019
    .end local v1           #restoreCount:I
    .end local v3           #width:I
    :cond_43
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_81

    .line 3020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3021
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .line 3022
    .restart local v3       #width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 3024
    .local v0, height:I
    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3026
    const/high16 v4, 0x4334

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3027
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3028
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 3029
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3031
    :cond_7e
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3034
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    .end local v3           #width:I
    :cond_81
    iget-object v4, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v4, :cond_99

    .line 3035
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3036
    .restart local v2       #scrollY:I
    if-eqz v2, :cond_9a

    .line 3038
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3039
    .restart local v1       #restoreCount:I
    int-to-float v4, v2

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3040
    iget-object v4, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v4, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3041
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3046
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    :cond_99
    :goto_99
    return-void

    .line 3043
    .restart local v2       #scrollY:I
    :cond_9a
    iget-object v4, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v4, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_99
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1784
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 1785
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1786
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1788
    :cond_10
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 4172
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4173
    .local v0, childCount:I
    if-nez v0, :cond_8

    .line 4178
    :goto_7
    return v2

    .line 4177
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4178
    .local v1, motionRow:I
    if-eq v1, v2, :cond_10

    move v2, v1

    goto :goto_7

    :cond_10
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_7
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 4783
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 4788
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1352
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1353
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1354
    .local v2, fadeEdge:F
    if-nez v1, :cond_d

    move v5, v2

    .line 1374
    :goto_c
    return v5

    .line 1357
    :cond_d
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_19

    .line 1358
    const/high16 v5, 0x3f80

    goto :goto_c

    .line 1367
    :cond_19
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_3e

    .line 1368
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1372
    .local v0, bottom:I
    :goto_27
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 1373
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1374
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_49

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_c

    .line 1370
    .end local v0           #bottom:I
    .end local v3           #fadeLength:F
    .end local v4           #height:I
    :cond_3e
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .restart local v0       #bottom:I
    goto :goto_27

    .restart local v3       #fadeLength:F
    .restart local v4       #height:I
    :cond_49
    move v5, v2

    .line 1374
    goto :goto_c
.end method

.method public getCacheColorHint()I
    .registers 2

    .prologue
    .line 4849
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 919
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 922
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 923
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 928
    :goto_12
    return-void

    .line 926
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 4114
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 4104
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1476
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 1477
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1479
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1732
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 4822
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1164
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 1165
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1167
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1322
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1323
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1324
    .local v1, fadeEdge:F
    if-nez v0, :cond_d

    move v4, v1

    .line 1346
    :goto_c
    return v4

    .line 1327
    :cond_d
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_14

    .line 1328
    const/high16 v4, 0x3f80

    goto :goto_c

    .line 1336
    :cond_14
    const/4 v3, 0x0

    .line 1337
    .local v3, top:I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v4, :cond_27

    .line 1338
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1339
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-lt v3, v4, :cond_2f

    .line 1340
    const/4 v4, 0x0

    goto :goto_c

    .line 1342
    :cond_27
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1345
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1346
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_40

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_c

    :cond_40
    move v4, v1

    goto :goto_c
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 4817
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4303
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4304
    .local v0, count:I
    if-lez v0, :cond_9e

    .line 4311
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v3, :cond_2b

    .line 4313
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4315
    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_22

    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_26

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-lt v3, v4, :cond_26

    .line 4318
    :cond_22
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4414
    :cond_25
    :goto_25
    return-void

    .line 4322
    :cond_26
    iget v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v3, :pswitch_data_ba

    .line 4370
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 4372
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 4375
    .local v1, newPos:I
    if-lt v1, v0, :cond_39

    .line 4376
    sub-int v1, v0, v5

    .line 4378
    :cond_39
    if-gez v1, :cond_3c

    .line 4379
    const/4 v1, 0x0

    .line 4383
    :cond_3c
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4385
    .local v2, selectablePos:I
    if-ltz v2, :cond_90

    .line 4386
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 4324
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_46
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 4329
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4330
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_25

    .line 4336
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 4337
    .restart local v1       #newPos:I
    if-ltz v1, :cond_2b

    .line 4339
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4340
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_2b

    .line 4342
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 4344
    iget-wide v3, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7c

    .line 4347
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4355
    :goto_78
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 4351
    :cond_7c
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_78

    .line 4363
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_7f
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4364
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_25

    .line 4390
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_90
    invoke-virtual {p0, v1, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4391
    if-ltz v2, :cond_9e

    .line 4392
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 4399
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9a
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_25

    .line 4407
    :cond_9e
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b8

    const/4 v3, 0x3

    :goto_a3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4408
    iput v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4409
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 4410
    iput v8, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 4411
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 4412
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4413
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_25

    :cond_b8
    move v3, v5

    .line 4407
    goto :goto_a3

    .line 4322
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_46
        :pswitch_7f
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 4711
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 4128
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2a

    .line 4129
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 4130
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4132
    :cond_e
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1c

    .line 4133
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4135
    :cond_1c
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4136
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 4137
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 4138
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4140
    :cond_2a
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 4185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4186
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 4187
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4188
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4189
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 5

    .prologue
    .line 847
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_11

    .line 848
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 850
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_22

    .line 851
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 853
    :cond_22
    return-void
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 4520
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 866
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 943
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 913
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method keyPressed()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1740
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1775
    :cond_d
    :goto_d
    return-void

    .line 1744
    :cond_e
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1745
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1746
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_20
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1749
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1751
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3c

    .line 1752
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1753
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1755
    :cond_3c
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1757
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 1758
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1759
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_58

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_58

    .line 1760
    if-eqz v1, :cond_7a

    .line 1761
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1767
    :cond_58
    :goto_58
    if-eqz v1, :cond_d

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_d

    .line 1768
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6a

    .line 1769
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 1771
    :cond_6a
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1772
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 1764
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_7a
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_58
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 1437
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 1544
    aput-boolean v3, p2, v3

    .line 1547
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1550
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_29

    .line 1556
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1563
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_22

    .line 1564
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1565
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_21

    .line 1566
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1587
    :cond_21
    :goto_21
    return-object v0

    .line 1573
    :cond_22
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_21

    .line 1577
    .end local v0           #child:Landroid/view/View;
    :cond_29
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1578
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_21

    .line 1579
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_21
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1831
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1833
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1834
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1b

    .line 1835
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1836
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1b

    .line 1837
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1840
    :cond_1b
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 12
    .parameter "consistency"

    .prologue
    .line 4885
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4887
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_42

    const/4 v7, 0x1

    move v1, v7

    .line 4889
    .local v1, checkLayout:Z
    :goto_a
    if-eqz v1, :cond_68

    .line 4891
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$3900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4892
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4893
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v2, :cond_45

    .line 4894
    aget-object v7, v0, v3

    if-eqz v7, :cond_3f

    .line 4895
    const/4 v4, 0x0

    .line 4896
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4893
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 4887
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_42
    const/4 v7, 0x0

    move v1, v7

    goto :goto_a

    .line 4903
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_45
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4904
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_52

    const/4 v4, 0x0

    .line 4905
    :cond_52
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 4906
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 4907
    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_68

    .line 4908
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_65

    const/4 v4, 0x0

    .line 4907
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 4912
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_68
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1793
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_a

    .line 1795
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1821
    :goto_9
    return-object v4

    .line 1801
    :cond_a
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1806
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1807
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1808
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_19
    if-ltz v2, :cond_20

    .line 1809
    aget v4, v3, v2

    if-ne v4, v1, :cond_2c

    .line 1810
    move v0, v2

    .line 1816
    :cond_20
    if-ltz v0, :cond_2a

    .line 1817
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    move-object v4, v3

    .line 1821
    goto :goto_9

    .line 1808
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_19
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 4598
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4602
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4603
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_23

    .line 4604
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4605
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4639
    :cond_23
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4641
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4642
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4644
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1844
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1847
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1850
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 1852
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1853
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_22

    .line 1854
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1855
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_22

    .line 1856
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1857
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1860
    :cond_22
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .parameter "hint"

    .prologue
    .line 4418
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 4419
    sparse-switch p1, :sswitch_data_34

    .line 4431
    :cond_6
    :goto_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 4432
    return-void

    .line 4421
    :sswitch_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4422
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_6

    .line 4426
    :sswitch_1d
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4427
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_6

    .line 4431
    :cond_31
    const/4 v0, 0x0

    goto :goto_a

    .line 4419
    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x4 -> :sswitch_d
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 4775
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 4776
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4777
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 4779
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1172
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1173
    if-eqz p1, :cond_12

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1174
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1176
    :cond_12
    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 4715
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4717
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1d

    .line 4718
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4727
    :cond_1d
    :goto_1d
    return-void

    .line 4722
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4723
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_1d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3050
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3053
    .local v0, action:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v8, :cond_16

    .line 3054
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v8, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3055
    .local v1, intercepted:Z
    if-eqz v1, :cond_16

    move v8, v10

    .line 3124
    .end local v1           #intercepted:Z
    :goto_15
    return v8

    .line 3060
    :cond_16
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_90

    :cond_1b
    :goto_1b
    :pswitch_1b
    move v8, v9

    .line 3124
    goto :goto_15

    .line 3062
    :pswitch_1d
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3063
    .local v4, touchMode:I
    const/4 v8, 0x6

    if-eq v4, v8, :cond_25

    const/4 v8, 0x5

    if-ne v4, v8, :cond_29

    .line 3064
    :cond_25
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v8, v10

    .line 3065
    goto :goto_15

    .line 3068
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 3069
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 3070
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3072
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 3073
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_5a

    if-ltz v2, :cond_5a

    .line 3076
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3077
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3078
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3079
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3080
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3081
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3082
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3084
    .end local v5           #v:Landroid/view/View;
    :cond_5a
    const/high16 v8, -0x8000

    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3085
    if-ne v4, v12, :cond_1b

    move v8, v10

    .line 3086
    goto :goto_15

    .line 3092
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_62
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_a2

    goto :goto_1b

    .line 3094
    :pswitch_68
    iget v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3100
    .local v3, pointerIndex:I
    if-gez v3, :cond_72

    move v8, v10

    goto :goto_15

    .line 3102
    :cond_72
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 3103
    .restart local v7       #y:I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    move v8, v10

    .line 3104
    goto :goto_15

    .line 3112
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_83
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3113
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3114
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1b

    .line 3119
    :pswitch_8b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1b

    .line 3060
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_83
        :pswitch_62
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_8b
    .end packed-switch

    .line 3092
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_68
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2059
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2064
    sparse-switch p1, :sswitch_data_4a

    .line 2084
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_9
    return v1

    .line 2067
    :sswitch_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v5

    .line 2068
    goto :goto_9

    .line 2070
    :cond_12
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2074
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2075
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_45

    .line 2076
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2077
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2079
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    move v1, v5

    .line 2080
    goto :goto_9

    .line 2064
    :sswitch_data_4a
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1397
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1398
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1399
    if-eqz p1, :cond_1e

    .line 1400
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1401
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 1402
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1404
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 1407
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1408
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1410
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 1411
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1381
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    .line 1382
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 1384
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1385
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1386
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1387
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1388
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1389
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 6
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 2991
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 2993
    if-eqz p4, :cond_d

    .line 2995
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 2996
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2999
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 3000
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1097
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    move-object v1, v0

    .line 1099
    .local v1, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1100
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1102
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1104
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_36

    .line 1105
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1106
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1107
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1108
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1109
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1121
    :cond_2d
    :goto_2d
    iget-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1124
    return-void

    .line 1110
    :cond_36
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2d

    .line 1111
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1113
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1114
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1115
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1116
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1117
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1118
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_2d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 16

    .prologue
    const-wide/16 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1039
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1041
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    .line 1043
    .local v6, superState:Landroid/os/Parcelable;
    new-instance v5, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v5, v6}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1045
    .local v5, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_51

    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v9, :cond_51

    move v2, v12

    .line 1046
    .local v2, haveChildren:Z
    :goto_1b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v3

    .line 1047
    .local v3, selectedId:J
    iput-wide v3, v5, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1048
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1050
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-ltz v9, :cond_53

    .line 1052
    iget v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1053
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1054
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1081
    :goto_39
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1082
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v9, :cond_50

    .line 1083
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1084
    .local v7, textFilter:Landroid/widget/EditText;
    if-eqz v7, :cond_50

    .line 1085
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1086
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_50

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1092
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v7           #textFilter:Landroid/widget/EditText;
    :cond_50
    return-object v5

    .end local v2           #haveChildren:Z
    .end local v3           #selectedId:J
    :cond_51
    move v2, v11

    .line 1045
    goto :goto_1b

    .line 1056
    .restart local v2       #haveChildren:Z
    .restart local v3       #selectedId:J
    :cond_53
    if-eqz v2, :cond_78

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_78

    .line 1066
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1067
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1068
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1069
    .local v1, firstPos:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v1, v9, :cond_6d

    .line 1070
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v1, v9, v12

    .line 1072
    :cond_6d
    iput v1, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1073
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_39

    .line 1075
    .end local v1           #firstPos:I
    .end local v8           #v:Landroid/view/View;
    :cond_78
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1076
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1077
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->position:I

    goto :goto_39
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1641
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1643
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1646
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    .line 1647
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 1649
    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4742
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 4743
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4744
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4745
    .local v2, showing:Z
    if-nez v2, :cond_32

    if-lez v1, :cond_32

    .line 4747
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4748
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4754
    :cond_1e
    :goto_1e
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_31

    .line 4755
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4757
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3d

    .line 4758
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4765
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_31
    return-void

    .line 4749
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_32
    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    .line 4751
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4752
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1e

    .line 4760
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 63
    .parameter "ev"

    .prologue
    .line 2251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2254
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    const/4 v4, 0x1

    .line 2985
    :goto_13
    return v4

    .line 2254
    :cond_14
    const/4 v4, 0x0

    goto :goto_13

    .line 2257
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    if-eqz v4, :cond_2d

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    .line 2259
    .local v36, intercepted:Z
    if-eqz v36, :cond_2d

    .line 2260
    const/4 v4, 0x1

    goto :goto_13

    .line 2264
    .end local v36           #intercepted:Z
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 2269
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-nez v4, :cond_41

    .line 2270
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2272
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2278
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_8d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8d

    .line 2283
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/widget/AbsListView$BounceRunnable;->start(F)V

    .line 2286
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8d

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2294
    :cond_8d
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    packed-switch v4, :pswitch_data_b3c

    .line 2985
    :cond_95
    :goto_95
    :pswitch_95
    const/4 v4, 0x1

    goto/16 :goto_13

    .line 2296
    :pswitch_98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b4e

    .line 2310
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2311
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v59, v0

    .line 2312
    .local v59, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2318
    .local v60, y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    const/4 v5, 0x5

    if-ge v4, v5, :cond_d5

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v5, v0

    move/from16 v0, v60

    int-to-float v0, v0

    move v6, v0

    aput v6, v4, v5

    .line 2328
    :cond_d5
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2334
    .local v41, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_f6

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/AbsListView$BounceRunnable;->cancel()V

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 2339
    :cond_f6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_186

    .line 2344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_232

    .line 2345
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1f3

    if-ltz v41, :cond_1f3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1f3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1f3

    .line 2350
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_143

    .line 2353
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2355
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2432
    :cond_154
    :goto_154
    if-ltz v41, :cond_16d

    .line 2434
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2435
    .local v57, v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2437
    .end local v57           #v:Landroid/view/View;
    :cond_16d
    move/from16 v0, v59

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 2438
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2439
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2440
    const/high16 v4, -0x8000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2455
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :cond_186
    :goto_186
    :pswitch_186
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2456
    .local v54, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2458
    .local v53, pointerId:I
    if-ltz v54, :cond_95

    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_95

    if-ltz v53, :cond_95

    const/4 v4, 0x5

    move/from16 v0, v53

    move v1, v4

    if-ge v0, v1, :cond_95

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v53

    goto/16 :goto_95

    .line 2298
    .end local v53           #pointerId:I
    .end local v54           #pointerIndex:I
    :pswitch_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    if-eqz v4, :cond_1ca

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2302
    :cond_1ca
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2303
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2304
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2305
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto :goto_186

    .line 2357
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_1f3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_1fe

    if-gez v41, :cond_1fe

    .line 2361
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 2364
    :cond_1fe
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_154

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_215

    .line 2367
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2369
    :cond_215
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2370
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2371
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2372
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_154

    .line 2376
    :cond_232
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_278

    if-ltz v41, :cond_278

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_278

    .line 2380
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_265

    .line 2383
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2385
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_154

    .line 2387
    :cond_278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_283

    if-gez v41, :cond_283

    .line 2391
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 2394
    :cond_283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_154

    .line 2396
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2397
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2398
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2399
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2400
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_154

    .line 2467
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :pswitch_2ab
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v54

    .line 2473
    .restart local v54       #pointerIndex:I
    if-gez v54, :cond_2bc

    const/4 v4, 0x1

    goto/16 :goto_13

    .line 2474
    :cond_2bc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    move-object v4, v0

    if-eqz v4, :cond_2d2

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/AbsListView$BounceRunnable;->cancel()V

    .line 2478
    :cond_2d2
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2479
    .restart local v60       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move v4, v0

    sub-int v25, v60, v4

    .line 2480
    .local v25, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b54

    :pswitch_2ed
    goto/16 :goto_95

    .line 2486
    :pswitch_2ef
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    .line 2492
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_95

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_95

    .line 2493
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_95

    .line 2495
    move/from16 v56, v25

    .line 2496
    .local v56, tempY:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2497
    .local v20, childCount:I
    if-lez v20, :cond_95

    .line 2498
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    sub-int v32, v4, v5

    .line 2499
    .local v32, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v30

    .line 2500
    .local v30, firstTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v37

    .line 2501
    .local v37, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    .line 2502
    .local v39, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int v27, v4, v5

    .line 2504
    .local v27, end:I
    if-gez v56, :cond_3bc

    .line 2505
    const/4 v4, 0x1

    sub-int v4, v32, v4

    neg-int v4, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 2510
    :goto_35d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v29, v0

    .line 2512
    .local v29, firstPosition:I
    if-nez v29, :cond_38d

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move/from16 v0, v30

    move v1, v4

    if-lt v0, v1, :cond_38d

    if-ltz v25, :cond_38d

    .line 2514
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_3c7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_3c7

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 2521
    :cond_38d
    :goto_38d
    add-int v4, v29, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_95

    move/from16 v0, v37

    move/from16 v1, v27

    if-gt v0, v1, :cond_95

    if-gtz v25, :cond_95

    .line 2523
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_3d0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_3d0

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    goto/16 :goto_95

    .line 2507
    .end local v29           #firstPosition:I
    :cond_3bc
    const/4 v4, 0x1

    sub-int v4, v32, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v56

    goto :goto_35d

    .line 2517
    .restart local v29       #firstPosition:I
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    goto :goto_38d

    .line 2526
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    goto/16 :goto_95

    .line 2542
    .end local v20           #childCount:I
    .end local v27           #end:I
    .end local v29           #firstPosition:I
    .end local v30           #firstTop:I
    .end local v32           #height:I
    .end local v37           #lastBottom:I
    .end local v39           #listPadding:Landroid/graphics/Rect;
    .end local v56           #tempY:I
    :pswitch_3da
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_95

    .line 2546
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v4, v0

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-nez v4, :cond_400

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move v5, v0

    if-le v4, v5, :cond_400

    .line 2548
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2551
    :cond_400
    move/from16 v55, v25

    .line 2552
    .local v55, rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2553
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_4ef

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2556
    .local v34, incrementalDeltaY:I
    :goto_41b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    if-ltz v4, :cond_4f3

    .line 2557
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int v40, v4, v5

    .line 2564
    .local v40, motionIndex:I
    :goto_42e
    const/16 v43, 0x0

    .line 2565
    .local v43, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2566
    .local v42, motionView:Landroid/view/View;
    if-eqz v42, :cond_43e

    .line 2567
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v43

    .line 2571
    :cond_43e
    const/16 v18, 0x0

    .line 2572
    .local v18, atEdge:Z
    if-eqz v34, :cond_44c

    .line 2573
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 2577
    :cond_44c
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2578
    if-eqz v42, :cond_4e7

    .line 2581
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v44

    .line 2582
    .local v44, motionViewRealTop:I
    if-eqz v18, :cond_4de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-nez v4, :cond_4de

    .line 2585
    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    sub-int v5, v44, v43

    sub-int v6, v4, v5

    .line 2587
    .local v6, overscroll:I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v12, v0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2589
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_49c

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2594
    :cond_49c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2595
    .local v49, overscrollMode:I
    if-eqz v49, :cond_4ae

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_4de

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_4de

    .line 2598
    :cond_4ae
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2599
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2600
    if-lez v55, :cond_4fb

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4de

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2613
    .end local v49           #overscrollMode:I
    :cond_4de
    :goto_4de
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2614
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2616
    .end local v44           #motionViewRealTop:I
    :cond_4e7
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_95

    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    :cond_4ef
    move/from16 v34, v25

    .line 2553
    goto/16 :goto_41b

    .line 2561
    .restart local v34       #incrementalDeltaY:I
    :cond_4f3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    div-int/lit8 v40, v4, 0x2

    .restart local v40       #motionIndex:I
    goto/16 :goto_42e

    .line 2605
    .restart local v6       #overscroll:I
    .restart local v18       #atEdge:Z
    .restart local v42       #motionView:Landroid/view/View;
    .restart local v43       #motionViewPrevTop:I
    .restart local v44       #motionViewRealTop:I
    .restart local v49       #overscrollMode:I
    :cond_4fb
    if-gez v55, :cond_4de

    .line 2606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4de

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_4de

    .line 2621
    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    .end local v44           #motionViewRealTop:I
    .end local v49           #overscrollMode:I
    .end local v55           #rawDeltaY:I
    :pswitch_520
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_95

    .line 2622
    move/from16 v55, v25

    .line 2623
    .restart local v55       #rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2624
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_5e0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2626
    .restart local v34       #incrementalDeltaY:I
    :goto_545
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v48, v0

    .line 2627
    .local v48, oldScroll:I
    sub-int v47, v48, v34

    .line 2628
    .local v47, newScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-le v0, v1, :cond_5e4

    const/4 v4, 0x1

    move/from16 v46, v4

    .line 2630
    .local v46, newDirection:I
    :goto_55a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    if-nez v4, :cond_567

    .line 2631
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2634
    :cond_567
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    move v0, v4

    move/from16 v1, v46

    if-eq v0, v1, :cond_5e9

    .line 2636
    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v34, v0

    .line 2637
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 2640
    if-eqz v34, :cond_587

    .line 2641
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 2645
    :cond_587
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2646
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_5d2

    .line 2647
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2651
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v41

    .line 2653
    .restart local v41       #motionPosition:I
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2655
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2656
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2657
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2684
    .end local v41           #motionPosition:I
    .end local v42           #motionView:Landroid/view/View;
    :cond_5d2
    :goto_5d2
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2685
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_95

    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    :cond_5e0
    move/from16 v34, v25

    .line 2624
    goto/16 :goto_545

    .line 2628
    .restart local v34       #incrementalDeltaY:I
    .restart local v47       #newScroll:I
    .restart local v48       #oldScroll:I
    :cond_5e4
    const/4 v4, -0x1

    move/from16 v46, v4

    goto/16 :goto_55a

    .line 2660
    .restart local v46       #newDirection:I
    :cond_5e9
    const/4 v8, 0x0

    move/from16 v0, v34

    neg-int v0, v0

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v15, v0

    const/16 v16, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2662
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2663
    .restart local v49       #overscrollMode:I
    if-eqz v49, :cond_615

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_640

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_640

    .line 2666
    :cond_615
    if-lez v55, :cond_65e

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_63d

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2677
    :cond_63d
    :goto_63d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2679
    :cond_640
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_5d2

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5d2

    .line 2671
    :cond_65e
    if-gez v55, :cond_63d

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_63d

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_63d

    .line 2694
    .end local v25           #deltaY:I
    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    .end local v49           #overscrollMode:I
    .end local v54           #pointerIndex:I
    .end local v55           #rawDeltaY:I
    .end local v60           #y:I
    :pswitch_687
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b64

    .line 2833
    :goto_68f
    :pswitch_68f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_6ad

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2841
    :cond_6ad
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2843
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2844
    .local v31, handler:Landroid/os/Handler;
    if-eqz v31, :cond_6c1

    .line 2845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2848
    :cond_6c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_6d6

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2850
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2853
    :cond_6d6
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_95

    .line 2698
    .end local v31           #handler:Landroid/os/Handler;
    :pswitch_6de
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v41, v0

    .line 2699
    .restart local v41       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2700
    .local v19, child:Landroid/view/View;
    if-eqz v19, :cond_807

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_807

    .line 2701
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_708

    .line 2702
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2705
    :cond_708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object v4, v0

    if-nez v4, :cond_71e

    .line 2706
    new-instance v4, Landroid/widget/AbsListView$PerformClick;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 2709
    :cond_71e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v51, v0

    .line 2710
    .local v51, performClick:Landroid/widget/AbsListView$PerformClick;
    move-object/from16 v0, v19

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2711
    move/from16 v0, v41

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 2712
    invoke-virtual/range {v51 .. v51}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2714
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2716
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_748

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7eb

    .line 2717
    :cond_748
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2718
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_760

    .line 2719
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-nez v4, :cond_7dd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    :goto_75a
    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2722
    :cond_760
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_7e4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7e4

    .line 2724
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2725
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2726
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2727
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2728
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 2729
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-eqz v4, :cond_7c2

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 2732
    .local v24, d:Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_7c2

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move v4, v0

    if-eqz v4, :cond_7c2

    .line 2733
    check-cast v24, Landroid/graphics/drawable/TransitionDrawable;

    .end local v24           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2736
    :cond_7c2
    new-instance v4, Landroid/widget/AbsListView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2749
    :goto_7da
    const/4 v4, 0x1

    goto/16 :goto_13

    .line 2719
    :cond_7dd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    goto/16 :goto_75a

    .line 2747
    :cond_7e4
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_7da

    .line 2750
    .end local v31           #handler:Landroid/os/Handler;
    :cond_7eb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_807

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_807

    .line 2751
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2754
    .end local v51           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_807
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_68f

    .line 2757
    .end local v19           #child:Landroid/view/View;
    .end local v41           #motionPosition:I
    :pswitch_80f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2758
    .restart local v20       #childCount:I
    if-lez v20, :cond_925

    .line 2759
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v28

    .line 2760
    .local v28, firstChildTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v38

    .line 2761
    .local v38, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 2762
    .local v22, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v21, v4, v5

    .line 2763
    .local v21, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_87b

    move/from16 v0, v28

    move/from16 v1, v22

    if-lt v0, v1, :cond_87b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ge v4, v5, :cond_87b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-gt v0, v1, :cond_87b

    .line 2766
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2767
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_68f

    .line 2769
    :cond_87b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2770
    .local v58, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2777
    .local v35, initialVelocity:I
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_916

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_8be

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    sub-int v4, v22, v4

    move/from16 v0, v28

    move v1, v4

    if-eq v0, v1, :cond_916

    :cond_8be
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_8d8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    add-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-eq v0, v1, :cond_916

    .line 2782
    :cond_8d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_8f3

    .line 2787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_908

    .line 2788
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2793
    :cond_8f3
    :goto_8f3
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_68f

    .line 2790
    :cond_908
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_8f3

    .line 2797
    :cond_916
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2798
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_68f

    .line 2802
    .end local v21           #contentBottom:I
    .end local v22           #contentTop:I
    .end local v28           #firstChildTop:I
    .end local v35           #initialVelocity:I
    .end local v38           #lastChildBottom:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_925
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2803
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_68f

    .line 2808
    .end local v20           #childCount:I
    :pswitch_934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_94f

    .line 2813
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_994

    .line 2814
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2819
    :cond_94f
    :goto_94f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2820
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2821
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2823
    .restart local v35       #initialVelocity:I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2824
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_9a2

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_68f

    .line 2816
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_994
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_94f

    .line 2827
    .restart local v35       #initialVelocity:I
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_9a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_68f

    .line 2865
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_9ac
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b74

    .line 2886
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2887
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2888
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2889
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_9dc

    .line 2890
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2892
    :cond_9dc
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2894
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2895
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_9f0

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2899
    :cond_9f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_a05

    .line 2900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2901
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2905
    .end local v31           #handler:Landroid/os/Handler;
    .end local v42           #motionView:Landroid/view/View;
    :cond_a05
    :goto_a05
    :pswitch_a05
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_a1c

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2909
    :cond_a1c
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_95

    .line 2867
    :pswitch_a24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_a3f

    .line 2872
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_a48

    .line 2873
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2878
    :cond_a3f
    :goto_a3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_a05

    .line 2875
    :cond_a48
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_a3f

    .line 2918
    :pswitch_a56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2919
    .restart local v54       #pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2920
    .restart local v53       #pointerId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v52

    .line 2922
    .local v52, pointerCount:I
    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_acd

    .line 2923
    const/4 v4, 0x3

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_acd

    .line 2924
    const/16 v23, 0x0

    .line 2925
    .local v23, countActive:I
    const/16 v26, 0x0

    .line 2927
    .local v26, direction:I
    const/16 v33, 0x0

    .local v33, i:I
    :goto_a78
    const/4 v4, 0x3

    move/from16 v0, v33

    move v1, v4

    if-ge v0, v1, :cond_ab9

    .line 2928
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v50

    .line 2929
    .local v50, pId:I
    if-ltz v50, :cond_a8e

    const/4 v4, 0x5

    move/from16 v0, v50

    move v1, v4

    if-lt v0, v1, :cond_a91

    .line 2927
    :cond_a8e
    :goto_a8e
    add-int/lit8 v33, v33, 0x1

    goto :goto_a78

    .line 2933
    :cond_a91
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v5, v0

    aget v5, v5, v50

    sub-float v45, v4, v5

    .line 2937
    .local v45, move:F
    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ab3

    .line 2938
    const/4 v4, 0x0

    cmpl-float v4, v45, v4

    if-lez v4, :cond_ab6

    .line 2939
    add-int/lit8 v26, v26, 0x1

    .line 2944
    :cond_ab3
    :goto_ab3
    add-int/lit8 v23, v23, 0x1

    goto :goto_a8e

    .line 2941
    :cond_ab6
    add-int/lit8 v26, v26, -0x1

    goto :goto_ab3

    .line 2949
    .end local v45           #move:F
    .end local v50           #pId:I
    :cond_ab9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_acd

    .line 2950
    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_b1f

    .line 2951
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 2959
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    :cond_acd
    :goto_acd
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2960
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v59, v0

    .line 2961
    .restart local v59       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v60, v0

    .line 2962
    .restart local v60       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2963
    .restart local v41       #motionPosition:I
    if-ltz v41, :cond_b37

    .line 2965
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2966
    .restart local v57       #v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2967
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2969
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_95

    .line 2952
    .end local v41           #motionPosition:I
    .end local v57           #v:Landroid/view/View;
    .end local v59           #x:I
    .end local v60           #y:I
    .restart local v23       #countActive:I
    .restart local v26       #direction:I
    .restart local v33       #i:I
    :cond_b1f
    const/4 v4, -0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_acd

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_acd

    .line 2972
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_b37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_95

    .line 2294
    :pswitch_data_b3c
    .packed-switch 0x0
        :pswitch_98
        :pswitch_687
        :pswitch_2ab
        :pswitch_9ac
        :pswitch_95
        :pswitch_186
        :pswitch_a56
    .end packed-switch

    .line 2296
    :pswitch_data_b4e
    .packed-switch 0x6
        :pswitch_1b3
    .end packed-switch

    .line 2480
    :pswitch_data_b54
    .packed-switch 0x0
        :pswitch_2ef
        :pswitch_2ef
        :pswitch_2ef
        :pswitch_3da
        :pswitch_2ed
        :pswitch_520
    .end packed-switch

    .line 2694
    :pswitch_data_b64
    .packed-switch 0x0
        :pswitch_6de
        :pswitch_6de
        :pswitch_6de
        :pswitch_80f
        :pswitch_68f
        :pswitch_934
    .end packed-switch

    .line 2865
    :pswitch_data_b74
    .packed-switch 0x5
        :pswitch_a24
        :pswitch_a05
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .parameter "isInTouchMode"

    .prologue
    .line 2215
    if-eqz p1, :cond_15

    .line 2217
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2221
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 2224
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2240
    :cond_14
    :goto_14
    return-void

    .line 2227
    :cond_15
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2228
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 2229
    :cond_1d
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_26

    .line 2230
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2233
    :cond_26
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_14

    .line 2234
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2235
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2236
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_14
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1864
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 1866
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_37

    move v0, v3

    .line 1868
    .local v0, touchMode:I
    :goto_c
    if-nez p1, :cond_39

    .line 1869
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1870
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_2b

    .line 1871
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1874
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 1875
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_2b

    .line 1876
    iput v3, p0, Landroid/view/View;->mScrollY:I

    .line 1877
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 1878
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1882
    :cond_2b
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1884
    if-ne v0, v4, :cond_34

    .line 1886
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 1910
    :cond_34
    :goto_34
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 1911
    return-void

    .end local v0           #touchMode:I
    :cond_37
    move v0, v4

    .line 1866
    goto :goto_c

    .line 1889
    .restart local v0       #touchMode:I
    :cond_39
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v1, :cond_44

    .line 1891
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 1895
    :cond_44
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_34

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    .line 1897
    if-ne v0, v4, :cond_53

    .line 1899
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_34

    .line 1903
    :cond_53
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1904
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1905
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_34
.end method

.method public pointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2102
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2103
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 2104
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2105
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2108
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2109
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_14
    if-ltz v3, :cond_30

    .line 2110
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2111
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2d

    .line 2112
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2113
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2114
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2118
    .end local v0           #child:Landroid/view/View;
    :goto_2c
    return v4

    .line 2109
    .restart local v0       #child:Landroid/view/View;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 2118
    .end local v0           #child:Landroid/view/View;
    :cond_30
    const/4 v4, -0x1

    goto :goto_2c
.end method

.method public pointToRowId(II)J
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2131
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 2132
    .local v0, position:I
    if-ltz v0, :cond_d

    .line 2133
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2135
    :goto_c
    return-wide v1

    :cond_d
    const-wide/high16 v1, -0x8000

    goto :goto_c
.end method

.method positionSelector(Landroid/view/View;)V
    .registers 8
    .parameter "sel"

    .prologue
    .line 1591
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1592
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1593
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 1596
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1597
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_30

    .line 1598
    if-nez v0, :cond_31

    const/4 v2, 0x1

    :goto_2b
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1599
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 1601
    :cond_30
    return-void

    .line 1598
    :cond_31
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4860
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4861
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$3800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 4864
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_2e

    .line 4865
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4866
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 4868
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_2b

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 4869
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4870
    if-eqz v3, :cond_2b

    .line 4872
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4864
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4876
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_2e
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4877
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 4878
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 4

    .prologue
    .line 4148
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4149
    .local v0, position:I
    if-gez v0, :cond_6

    .line 4150
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4152
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4153
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4154
    return v0
.end method

.method reportScrollStateChange(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 3184
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 3185
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 3186
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 3187
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 3190
    :cond_f
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1180
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 1181
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1183
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 961
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 962
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 963
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 964
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 966
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1189
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1190
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1191
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1192
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1193
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1194
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1195
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1196
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1197
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1198
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1199
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1200
    return-void
.end method

.method resurrectSelection()Z
    .registers 21

    .prologue
    .line 4204
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 4206
    .local v4, childCount:I
    if-gtz v4, :cond_9

    .line 4207
    const/16 v18, 0x0

    .line 4298
    :goto_8
    return v18

    .line 4210
    :cond_9
    const/4 v14, 0x0

    .line 4212
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 4213
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 4214
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v8, v0

    .line 4215
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 4216
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 4218
    .local v7, down:Z
    if-lt v15, v8, :cond_cd

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_cd

    .line 4219
    move v13, v15

    .line 4221
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4222
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4223
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 4226
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_be

    .line 4227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 4283
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_66
    :goto_66
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4285
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4286
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4287
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 4288
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 4289
    if-lt v13, v8, :cond_143

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_143

    .line 4290
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4291
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 4292
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4296
    :goto_af
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4298
    if-ltz v13, :cond_146

    const/16 v18, 0x1

    goto/16 :goto_8

    .line 4228
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_be
    if-le v12, v5, :cond_66

    .line 4229
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_66

    .line 4233
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_cd
    if-ge v15, v8, :cond_fd

    .line 4235
    move v13, v8

    .line 4236
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_d1
    if-ge v9, v4, :cond_66

    .line 4237
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4238
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4240
    .local v16, top:I
    if-nez v9, :cond_ef

    .line 4242
    move/from16 v14, v16

    .line 4244
    if-gtz v8, :cond_e9

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_ef

    .line 4247
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 4250
    :cond_ef
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_fa

    .line 4252
    add-int v13, v8, v9

    .line 4253
    move/from16 v14, v16

    .line 4254
    goto/16 :goto_66

    .line 4236
    :cond_fa
    add-int/lit8 v9, v9, 0x1

    goto :goto_d1

    .line 4258
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v10, v0

    .line 4259
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 4260
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 4262
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_10d
    if-ltz v9, :cond_66

    .line 4263
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4264
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4265
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4267
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_138

    .line 4268
    move/from16 v14, v16

    .line 4269
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_132

    if-le v3, v5, :cond_138

    .line 4270
    :cond_132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 4274
    :cond_138
    if-gt v3, v5, :cond_140

    .line 4275
    add-int v13, v8, v9

    .line 4276
    move/from16 v14, v16

    .line 4277
    goto/16 :goto_66

    .line 4262
    :cond_140
    add-int/lit8 v9, v9, -0x1

    goto :goto_10d

    .line 4294
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_143
    const/4 v13, -0x1

    goto/16 :goto_af

    .line 4298
    :cond_146
    const/16 v18, 0x0

    goto/16 :goto_8
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4532
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    .line 4590
    :goto_9
    return v4

    .line 4536
    :cond_a
    const/4 v2, 0x0

    .line 4537
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4538
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_88

    .line 4567
    :goto_f
    if-eqz v3, :cond_2a

    .line 4568
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4570
    move-object v1, p3

    .line 4571
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 4572
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4575
    :cond_23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4576
    .local v0, action:I
    packed-switch v0, :pswitch_data_aa

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2a
    :goto_2a
    move v4, v2

    .line 4590
    goto :goto_9

    .line 4545
    :sswitch_2c
    const/4 v3, 0x0

    .line 4546
    goto :goto_f

    .line 4548
    :sswitch_2e
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_52

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 4549
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_54

    .line 4551
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 4552
    const/4 v2, 0x1

    .line 4559
    :cond_52
    :goto_52
    const/4 v3, 0x0

    .line 4560
    goto :goto_f

    .line 4553
    :cond_54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_52

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_52

    .line 4555
    const/4 v2, 0x1

    .line 4556
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 4563
    :sswitch_6f
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_f

    .line 4578
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_72
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4579
    goto :goto_2a

    .line 4582
    :pswitch_79
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4583
    goto :goto_2a

    .line 4586
    :pswitch_80
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2a

    .line 4538
    nop

    :sswitch_data_88
    .sparse-switch
        0x4 -> :sswitch_2e
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_2c
        0x15 -> :sswitch_2c
        0x16 -> :sswitch_2c
        0x17 -> :sswitch_2c
        0x3e -> :sswitch_6f
        0x42 -> :sswitch_2c
    .end sparse-switch

    .line 4576
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_72
        :pswitch_79
        :pswitch_80
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 4832
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1c

    .line 4833
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 4834
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4835
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 4836
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4835
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4838
    :cond_17
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4840
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1c
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .parameter "onTop"

    .prologue
    .line 1695
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1696
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 635
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_c

    .line 636
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 640
    :cond_c
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 642
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    if-eqz v0, :cond_17

    .line 643
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$TwBounceController;->setEnableBounce(Z)V

    .line 645
    :cond_17
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 767
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 768
    if-eqz p1, :cond_14

    .line 769
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_13

    .line 770
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 778
    :cond_13
    :goto_13
    return-void

    .line 773
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_13

    .line 774
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_13
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .parameter "filterText"

    .prologue
    .line 1139
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1140
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1143
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1145
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 1147
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 1148
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1149
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1153
    .end local v0           #f:Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1154
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1157
    :cond_39
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1420
    .local v0, changed:Z
    if-eqz v0, :cond_23

    .line 1424
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    move v1, v2

    .line 1425
    .local v1, visible:Z
    :goto_e
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1426
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 1430
    .end local v1           #visible:Z
    :cond_23
    return v0

    .line 1424
    :cond_24
    const/4 v2, 0x0

    move v1, v2

    goto :goto_e
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 839
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 840
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 841
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 738
    if-eq p1, v1, :cond_10

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    .line 740
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 741
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 742
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 743
    return-void

    .line 738
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 4956
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$3802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 4957
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1778
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 1779
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 1780
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 884
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 886
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 887
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .parameter "resID"

    .prologue
    .line 1706
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1707
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "sel"

    .prologue
    .line 1710
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 1711
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1712
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1714
    :cond_f
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1715
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1716
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1717
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 1718
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 1719
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 1720
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 1721
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1722
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1723
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 818
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 819
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .parameter "stackFromBottom"

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 955
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 956
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 958
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .parameter "textFilterEnabled"

    .prologue
    .line 900
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 901
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 4807
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 4808
    return-void
.end method

.method shouldShowSelector()Z
    .registers 2

    .prologue
    .line 1674
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .parameter "originalView"

    .prologue
    .line 2036
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2037
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2f

    .line 2038
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2039
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2041
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 2042
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2045
    :cond_19
    if-nez v6, :cond_2d

    .line 2046
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2049
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_2d
    move v0, v6

    .line 2054
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3854
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_1d

    .line 3855
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v0, :cond_15

    .line 3856
    new-instance v0, Landroid/widget/AbsListView$TwFlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3863
    :goto_f
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    .line 3864
    return-void

    .line 3858
    :cond_15
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_f

    .line 3861
    :cond_1d
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    goto :goto_f
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 3826
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 3827
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3829
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3830
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3842
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 3843
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3845
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 3846
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 1657
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 1662
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1660
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 1657
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 31
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3903
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3904
    .local v6, childCount:I
    if-nez v6, :cond_9

    .line 3905
    const/16 v25, 0x1

    .line 4094
    :goto_8
    return v25

    .line 3908
    :cond_9
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    .line 3909
    .local v12, firstTop:I
    const/16 v25, 0x1

    sub-int v25, v6, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 3911
    .local v18, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3914
    .local v19, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v21, v25, v12

    .line 3915
    .local v21, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 3916
    .local v10, end:I
    sub-int v22, v18, v10

    .line 3918
    .local v22, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v26, v0

    sub-int v15, v25, v26

    .line 3919
    .local v15, height:I
    if-gez p1, :cond_101

    .line 3920
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3925
    :goto_6a
    if-gez p2, :cond_10f

    .line 3926
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3931
    :goto_7d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .line 3934
    .local v11, firstPosition:I
    if-nez v11, :cond_11d

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v12, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 3939
    :goto_98
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12d

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 3945
    :goto_ba
    if-nez v11, :cond_150

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-lt v0, v1, :cond_150

    if-ltz p2, :cond_150

    .line 3950
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_13d

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 3952
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_fb

    .line 3953
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3961
    :cond_fb
    :goto_fb
    if-eqz p2, :cond_14c

    const/16 v25, 0x1

    goto/16 :goto_8

    .line 3922
    .end local v11           #firstPosition:I
    :cond_101
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_6a

    .line 3928
    :cond_10f
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_7d

    .line 3937
    .restart local v11       #firstPosition:I
    :cond_11d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_98

    .line 3942
    :cond_12d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_ba

    .line 3956
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    goto :goto_fb

    .line 3961
    :cond_14c
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3964
    :cond_150
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b0

    move/from16 v0, v18

    move v1, v10

    if-gt v0, v1, :cond_1b0

    if-gtz p2, :cond_1b0

    .line 3970
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_19d

    .line 3971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 3972
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_197

    .line 3973
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3981
    :cond_197
    :goto_197
    if-eqz p2, :cond_1ac

    const/16 v25, 0x1

    goto/16 :goto_8

    .line 3976
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    goto :goto_197

    .line 3981
    :cond_1ac
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3989
    :cond_1b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_24b

    .line 3990
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_20d

    .line 3991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 3992
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_209

    .line 3993
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3995
    :cond_209
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3997
    :cond_20d
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p2, v0

    .line 3998
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p1, v0

    .line 3999
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 4006
    :cond_24b
    if-gez p2, :cond_327

    const/16 v25, 0x1

    move/from16 v9, v25

    .line 4008
    .local v9, down:Z
    :goto_251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v17

    .line 4009
    .local v17, inTouchMode:Z
    if-eqz v17, :cond_25a

    .line 4010
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4013
    :cond_25a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 4014
    .local v14, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v26

    sub-int v13, v25, v26

    .line 4016
    .local v13, footerViewsStart:I
    const/16 v23, 0x0

    .line 4017
    .local v23, start:I
    const/4 v8, 0x0

    .line 4019
    .local v8, count:I
    if-eqz v9, :cond_34b

    .line 4020
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v25, p2

    .line 4021
    .local v24, top:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_279
    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_290

    .line 4022
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4023
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_32d

    .line 4062
    .end local v5           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v25, v0

    add-int v25, v25, p1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 4064
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4066
    if-lez v8, :cond_2b0

    .line 4067
    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 4069
    :cond_2b0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 4071
    if-eqz v9, :cond_2c7

    .line 4072
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4075
    :cond_2c7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4077
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4078
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_2d8

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_2de

    .line 4079
    :cond_2d8
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 4082
    :cond_2de
    if-nez v17, :cond_315

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_315

    .line 4083
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v7, v25, v26

    .line 4084
    .local v7, childIndex:I
    if-ltz v7, :cond_315

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v25

    move v0, v7

    move/from16 v1, v25

    if-ge v0, v1, :cond_315

    .line 4085
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 4089
    .end local v7           #childIndex:I
    :cond_315
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4091
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4092
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4094
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 4006
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v13           #footerViewsStart:I
    .end local v14           #headerViewsCount:I
    .end local v16           #i:I
    .end local v17           #inTouchMode:Z
    .end local v23           #start:I
    :cond_327
    const/16 v25, 0x0

    move/from16 v9, v25

    goto/16 :goto_251

    .line 4026
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v13       #footerViewsStart:I
    .restart local v14       #headerViewsCount:I
    .restart local v16       #i:I
    .restart local v17       #inTouchMode:Z
    .restart local v23       #start:I
    .restart local v24       #top:I
    :cond_32d
    add-int/lit8 v8, v8, 0x1

    .line 4027
    add-int v20, v11, v16

    .line 4028
    .local v20, position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_347

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_347

    .line 4029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4021
    :cond_347
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_279

    .line 4040
    .end local v5           #child:Landroid/view/View;
    .end local v16           #i:I
    .end local v20           #position:I
    .end local v24           #top:I
    :cond_34b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v4, v25, p2

    .line 4041
    .local v4, bottom:I
    const/16 v25, 0x1

    sub-int v16, v6, v25

    .restart local v16       #i:I
    :goto_35d
    if-ltz v16, :cond_290

    .line 4042
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4043
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move v1, v4

    if-le v0, v1, :cond_290

    .line 4046
    move/from16 v23, v16

    .line 4047
    add-int/lit8 v8, v8, 0x1

    .line 4048
    add-int v20, v11, v16

    .line 4049
    .restart local v20       #position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_38c

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_38c

    .line 4050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4041
    :cond_38c
    add-int/lit8 v16, v16, -0x1

    goto :goto_35d
.end method

.method updateScrollIndicators()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1440
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_2b

    .line 1443
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_5c

    move v1, v8

    .line 1446
    .local v1, canScrollUp:Z
    :goto_c
    if-nez v1, :cond_23

    .line 1447
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 1448
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1449
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5e

    move v1, v8

    .line 1453
    .end local v2           #child:Landroid/view/View;
    :cond_23
    :goto_23
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_60

    move v5, v7

    :goto_28
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    .end local v1           #canScrollUp:Z
    :cond_2b
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_5b

    .line 1458
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1461
    .local v3, count:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v5, :cond_62

    move v0, v8

    .line 1464
    .local v0, canScrollDown:Z
    :goto_3b
    if-nez v0, :cond_53

    if-lez v3, :cond_53

    .line 1465
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1466
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_64

    move v0, v8

    .line 1469
    .end local v2           #child:Landroid/view/View;
    :cond_53
    :goto_53
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_66

    move v5, v7

    :goto_58
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_5b
    return-void

    :cond_5c
    move v1, v7

    .line 1443
    goto :goto_c

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5e
    move v1, v7

    .line 1449
    goto :goto_23

    .end local v2           #child:Landroid/view/View;
    :cond_60
    move v5, v9

    .line 1453
    goto :goto_28

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_62
    move v0, v7

    .line 1461
    goto :goto_3b

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_64
    move v0, v7

    .line 1466
    goto :goto_53

    .end local v2           #child:Landroid/view/View;
    :cond_66
    move v5, v9

    .line 1469
    goto :goto_58
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "dr"

    .prologue
    .line 1826
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
