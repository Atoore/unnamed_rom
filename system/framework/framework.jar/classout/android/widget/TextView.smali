.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$2;,
        Landroid/widget/TextView$CursorControllerMenu;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$CommitSelectionReceiver;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$IClipboardDataPasteEventImpl;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final END_HANDLE_VISIBLE:I = 0x2

.field static final ERROR:I = 0x270f

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HIDE_CURSOR_CONTROLLERS:I = 0x16

.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_CLIP_BOARD:I = 0x1020192

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field static final INSERT_HANDLE_ONLY:I = 0x1

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MONOSPACE:I = 0x3

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static PRIORITY:I = 0x0

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field static final START_HANDLE_VISIBLE:I = 0x0

.field public static final STOP_TEXT_SELECTION_MODE:I = 0xb

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x4000

.field private static mContextMenu:Landroid/view/ContextMenu;

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mByPassInputType:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mContextMenuTitleId:I

.field private mContextMenuTriggeredByKey:Z

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field public mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

.field private mCursorVisible:Z

.field private mDPadCenterIsDown:Z

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEatTouchRelease:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableSelection:Z

.field private mEnterKeyIsDown:Z

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

.field private mIsCursorControllerOn:Z

.field private mIsIMEChangable:Z

.field private mIsInTextSelectionMode:Z

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field public mLockCursorControllerMenu:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNoContextMenuOnUp:Z

.field private mOrientation:I

.field protected mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPreDrawState:I

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectAllOnFocus:Z

.field mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionControllerEnabled:Z

.field private mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTempSelectAll:Z

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 228
    const/16 v1, 0x64

    sput v1, Landroid/widget/TextView;->PRIORITY:I

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 420
    .local v0, p:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 422
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 5434
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 9346
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 9380
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 9396
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 9398
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 10325
    const/4 v1, 0x0

    sput-object v1, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 451
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 58
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 458
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [I

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 243
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 244
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 246
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 247
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 254
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 256
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 258
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 278
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsIMEChangable:Z

    .line 366
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 368
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 369
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 374
    const/16 v51, 0x3

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 410
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 412
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 9307
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 9309
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 9319
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9325
    const v51, -0x33b8a6db

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 9330
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 9338
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 9341
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 9342
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 9343
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 9348
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 9350
    const/16 v51, 0x33

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 9354
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 9356
    const/high16 v51, 0x3f80

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 9357
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 9363
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 9364
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 9365
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 9366
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 9368
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 9369
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9370
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 9371
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 9374
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 9375
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 9379
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9389
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9397
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 9405
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mContextMenuTitleId:I

    .line 9425
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    .line 9433
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 10250
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOrientation:I

    .line 10272
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mByPassInputType:Z

    .line 10280
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableSelection:Z

    .line 10328
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTempSelectAll:Z

    .line 459
    const-string v51, ""

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 461
    new-instance v51, Landroid/text/TextPaint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 470
    new-instance v51, Landroid/graphics/Paint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 475
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 477
    sget-object v51, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 481
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v46, 0x0

    .line 482
    .local v46, textColorHighlight:I
    const/16 v45, 0x0

    .line 483
    .local v45, textColor:Landroid/content/res/ColorStateList;
    const/16 v47, 0x0

    .line 484
    .local v47, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v48, 0x0

    .line 485
    .local v48, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v49, 0xf

    .line 486
    .local v49, textSize:I
    const/16 v50, -0x1

    .line 487
    .local v50, typefaceIndex:I
    const/16 v43, -0x1

    .line 495
    .local v43, styleIndex:I
    const/4 v7, 0x0

    .line 496
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v51, 0x1

    const/16 v52, -0x1

    move-object v0, v5

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 497
    .local v6, ap:I
    const/16 v51, -0x1

    move v0, v6

    move/from16 v1, v51

    if-eq v0, v1, :cond_254

    .line 498
    sget-object v51, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 502
    :cond_254
    if-eqz v7, :cond_2a9

    .line 503
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 504
    .local v35, n:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_25c
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_2a6

    .line 505
    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 507
    .local v8, attr:I
    packed-switch v8, :pswitch_data_a70

    .line 504
    :goto_26c
    add-int/lit8 v30, v30, 0x1

    goto :goto_25c

    .line 509
    :pswitch_26f
    move-object v0, v7

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 510
    goto :goto_26c

    .line 513
    :pswitch_278
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 514
    goto :goto_26c

    .line 517
    :pswitch_27d
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 518
    goto :goto_26c

    .line 521
    :pswitch_282
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 522
    goto :goto_26c

    .line 525
    :pswitch_287
    move-object v0, v7

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 526
    goto :goto_26c

    .line 529
    :pswitch_290
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 530
    goto :goto_26c

    .line 533
    :pswitch_29b
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    goto :goto_26c

    .line 538
    .end local v8           #attr:I
    :cond_2a6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    .end local v30           #i:I
    .end local v35           #n:I
    :cond_2a9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v25

    .line 542
    .local v25, editable:Z
    const/16 v31, 0x0

    .line 543
    .local v31, inputMethod:Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 544
    .local v36, numeric:I
    const/16 v16, 0x0

    .line 545
    .local v16, digits:Ljava/lang/CharSequence;
    const/16 v38, 0x0

    .line 546
    .local v38, phone:Z
    const/4 v10, 0x0

    .line 547
    .local v10, autotext:Z
    const/4 v9, -0x1

    .line 548
    .local v9, autocap:I
    const/4 v12, 0x0

    .line 549
    .local v12, buffertype:I
    const/16 v40, 0x0

    .line 550
    .local v40, selectallonfocus:Z
    const/16 v18, 0x0

    .local v18, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .local v21, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 551
    .local v20, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 552
    .local v17, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 553
    .local v19, drawablePadding:I
    const/16 v26, -0x1

    .line 554
    .local v26, ellipsize:I
    const/16 v42, 0x0

    .line 555
    .local v42, singleLine:Z
    const/16 v34, -0x1

    .line 556
    .local v34, maxlength:I
    const-string v44, ""

    .line 557
    .local v44, text:Ljava/lang/CharSequence;
    const/16 v29, 0x0

    .line 558
    .local v29, hint:Ljava/lang/CharSequence;
    const/16 v41, 0x0

    .line 559
    .local v41, shadowcolor:I
    const/16 v22, 0x0

    .local v22, dx:F
    const/16 v23, 0x0

    .local v23, dy:F
    const/16 v39, 0x0

    .line 560
    .local v39, r:F
    const/16 v37, 0x0

    .line 561
    .local v37, password:Z
    const/16 v32, 0x0

    .line 563
    .local v32, inputType:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 564
    .restart local v35       #n:I
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_2e0
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_6f7

    .line 565
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 567
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_a82

    .line 564
    :cond_2f0
    :goto_2f0
    :pswitch_2f0
    add-int/lit8 v30, v30, 0x1

    goto :goto_2e0

    .line 569
    :pswitch_2f3
    move-object v0, v5

    move v1, v8

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 570
    goto :goto_2f0

    .line 573
    :pswitch_2fc
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 574
    goto :goto_2f0

    .line 577
    :pswitch_301
    move-object v0, v5

    move v1, v8

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 578
    goto :goto_2f0

    .line 581
    :pswitch_30a
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 582
    goto :goto_2f0

    .line 585
    :pswitch_30f
    move-object v0, v5

    move v1, v8

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    .line 586
    goto :goto_2f0

    .line 589
    :pswitch_318
    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 590
    goto :goto_2f0

    .line 593
    :pswitch_31d
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 594
    goto :goto_2f0

    .line 597
    :pswitch_322
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 598
    goto :goto_2f0

    .line 601
    :pswitch_327
    move-object v0, v5

    move v1, v8

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v40

    .line 602
    goto :goto_2f0

    .line 605
    :pswitch_330
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_2f0

    .line 609
    :pswitch_341
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_2f0

    .line 613
    :pswitch_352
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 614
    goto :goto_2f0

    .line 617
    :pswitch_357
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 618
    goto :goto_2f0

    .line 621
    :pswitch_35c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 622
    goto :goto_2f0

    .line 625
    :pswitch_361
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 626
    goto :goto_2f0

    .line 629
    :pswitch_366
    move-object v0, v5

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 630
    goto :goto_2f0

    .line 633
    :pswitch_36f
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_2f0

    .line 637
    :pswitch_382
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_2f0

    .line 641
    :pswitch_395
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_2f0

    .line 645
    :pswitch_3a8
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2f0

    .line 649
    :pswitch_3bb
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_2f0

    .line 653
    :pswitch_3ce
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_2f0

    .line 657
    :pswitch_3e1
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_2f0

    .line 661
    :pswitch_3f4
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_2f0

    .line 665
    :pswitch_407
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_2f0

    .line 669
    :pswitch_41a
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_2f0

    .line 673
    :pswitch_42d
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_2f0

    .line 677
    :pswitch_440
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_2f0

    .line 681
    :pswitch_453
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2f0

    .line 685
    :pswitch_466
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    .line 686
    goto/16 :goto_2f0

    .line 689
    :pswitch_46c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v44

    .line 690
    goto/16 :goto_2f0

    .line 693
    :pswitch_472
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_2f0

    .line 694
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_2f0

    .line 699
    :pswitch_489
    move-object v0, v5

    move v1, v8

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .line 700
    goto/16 :goto_2f0

    .line 703
    :pswitch_493
    move-object v0, v5

    move v1, v8

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 704
    goto/16 :goto_2f0

    .line 707
    :pswitch_49d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_2f0

    .line 711
    :pswitch_4b4
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_2f0

    .line 712
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_2f0

    .line 717
    :pswitch_4cb
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_2f0

    .line 718
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_2f0

    .line 723
    :pswitch_4e2
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 724
    goto/16 :goto_2f0

    .line 727
    :pswitch_4ee
    const/high16 v51, 0x3f80

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_2f0

    .line 731
    :pswitch_501
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_2f0

    .line 735
    :pswitch_513
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    .line 736
    goto/16 :goto_2f0

    .line 739
    :pswitch_51f
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 740
    goto/16 :goto_2f0

    .line 743
    :pswitch_52b
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 744
    goto/16 :goto_2f0

    .line 747
    :pswitch_537
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    .line 748
    goto/16 :goto_2f0

    .line 751
    :pswitch_543
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v51

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2f0

    .line 755
    :pswitch_558
    move-object v0, v5

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 756
    goto/16 :goto_2f0

    .line 759
    :pswitch_562
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 760
    goto/16 :goto_2f0

    .line 763
    :pswitch_568
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 764
    goto/16 :goto_2f0

    .line 767
    :pswitch_56e
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 768
    goto/16 :goto_2f0

    .line 771
    :pswitch_574
    move-object v0, v5

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 772
    goto/16 :goto_2f0

    .line 775
    :pswitch_57e
    move-object v0, v5

    move v1, v8

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 776
    goto/16 :goto_2f0

    .line 779
    :pswitch_588
    move-object v0, v5

    move v1, v8

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 780
    goto/16 :goto_2f0

    .line 783
    :pswitch_592
    move-object v0, v5

    move v1, v8

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    .line 784
    goto/16 :goto_2f0

    .line 787
    :pswitch_59c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_2f0

    .line 791
    :pswitch_5bc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_2f0

    .line 795
    :pswitch_5d2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 796
    goto/16 :goto_2f0

    .line 799
    :pswitch_5e2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_5f9

    .line 800
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 802
    :cond_5f9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_2f0

    .line 807
    :pswitch_61b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_632

    .line 808
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 810
    :cond_632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2f0

    .line 814
    :pswitch_644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_65b

    .line 815
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 817
    :cond_65b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_2f0

    .line 822
    :pswitch_67d
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_2f0

    .line 827
    :pswitch_68a
    const/16 v51, 0x0

    :try_start_68c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_69b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68c .. :try_end_69b} :catch_69d
    .catch Ljava/io/IOException; {:try_start_68c .. :try_end_69b} :catch_6af

    goto/16 :goto_2f0

    .line 828
    :catch_69d
    move-exception v51

    move-object/from16 v24, v51

    .line 829
    .local v24, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f0

    .line 830
    .end local v24           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6af
    move-exception v51

    move-object/from16 v24, v51

    .line 831
    .local v24, e:Ljava/io/IOException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f0

    .line 836
    .end local v24           #e:Ljava/io/IOException;
    :pswitch_6c1
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_2f0

    .line 840
    :pswitch_6d3
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_2f0

    .line 844
    :pswitch_6e5
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_2f0

    .line 848
    .end local v8           #attr:I
    :cond_6f7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 850
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 852
    .local v11, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_70c

    .line 854
    const/16 v37, 0x1

    .line 857
    :cond_70c
    if-eqz v31, :cond_897

    .line 861
    :try_start_70e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_715
    .catch Ljava/lang/ClassNotFoundException; {:try_start_70e .. :try_end_715} :catch_857

    move-result-object v13

    .line 867
    .local v13, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_716
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #a:Landroid/content/res/TypedArray;
    check-cast v5, Landroid/text/method/KeyListener;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_721
    .catch Ljava/lang/InstantiationException; {:try_start_716 .. :try_end_721} :catch_864
    .catch Ljava/lang/IllegalAccessException; {:try_start_716 .. :try_end_721} :catch_871

    .line 874
    if-eqz v32, :cond_87e

    move/from16 v51, v32

    :goto_725
    :try_start_725
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_72b
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_725 .. :try_end_72b} :catch_88a

    .line 960
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_72b
    :goto_72b
    if-eqz v37, :cond_755

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, 0xf

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_755

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, -0xff1

    move/from16 v51, v0

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x80

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 966
    :cond_755
    if-eqz v40, :cond_768

    .line 967
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 969
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object v0, v11

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_768

    .line 970
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 973
    :cond_768
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 975
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 977
    if-eqz v42, :cond_78d

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-nez v51, :cond_78d

    if-gez v26, :cond_78d

    .line 981
    const/16 v26, 0x3

    .line 985
    :cond_78d
    packed-switch v26, :pswitch_data_b08

    .line 1001
    :goto_790
    if-eqz v45, :cond_9e7

    move-object/from16 v51, v45

    :goto_794
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1002
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1004
    if-eqz v46, :cond_7b2

    .line 1005
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1007
    :cond_7b2
    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1009
    if-eqz v37, :cond_9ef

    .line 1010
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1011
    const/16 v50, 0x1

    .line 1019
    :cond_7cd
    :goto_7cd
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1021
    if-eqz v41, :cond_7e5

    .line 1022
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1025
    :cond_7e5
    if-ltz v34, :cond_a07

    .line 1026
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    new-instance v53, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v53, v51, v52

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1031
    :goto_803
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1032
    if-eqz v29, :cond_814

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1039
    :cond_814
    sget-object v51, Lcom/android/internal/R$styleable;->View:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1043
    .restart local v5       #a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v51, v0

    if-nez v51, :cond_836

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-eqz v51, :cond_a12

    :cond_836
    const/16 v51, 0x1

    move/from16 v28, v51

    .line 1044
    .local v28, focusable:Z
    :goto_83a
    move/from16 v15, v28

    .line 1045
    .local v15, clickable:Z
    move/from16 v33, v28

    .line 1047
    .local v33, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 1048
    const/16 v30, 0x0

    :goto_844
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_a32

    .line 1049
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 1051
    .restart local v8       #attr:I
    sparse-switch v8, :sswitch_data_b14

    .line 1048
    :goto_854
    add-int/lit8 v30, v30, 0x1

    goto :goto_844

    .line 862
    .end local v8           #attr:I
    .end local v15           #clickable:Z
    .end local v28           #focusable:Z
    .end local v33           #longClickable:Z
    :catch_857
    move-exception v51

    move-object/from16 v27, v51

    .line 863
    .local v27, ex:Ljava/lang/ClassNotFoundException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 868
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v27           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v13       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_864
    move-exception v51

    move-object/from16 v27, v51

    .line 869
    .local v27, ex:Ljava/lang/InstantiationException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 870
    .end local v27           #ex:Ljava/lang/InstantiationException;
    :catch_871
    move-exception v51

    move-object/from16 v27, v51

    .line 871
    .local v27, ex:Ljava/lang/IllegalAccessException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 874
    .end local v27           #ex:Ljava/lang/IllegalAccessException;
    :cond_87e
    :try_start_87e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_887
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_87e .. :try_end_887} :catch_88a

    move-result v51

    goto/16 :goto_725

    .line 877
    :catch_88a
    move-exception v51

    move-object/from16 v24, v51

    .line 878
    .local v24, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_72b

    .line 880
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #e:Ljava/lang/IncompatibleClassChangeError;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_897
    if-eqz v16, :cond_8b6

    .line 881
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 885
    if-eqz v32, :cond_8b3

    move/from16 v51, v32

    :goto_8ab
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_72b

    :cond_8b3
    const/16 v51, 0x1

    goto :goto_8ab

    .line 887
    :cond_8b6
    if-eqz v32, :cond_8dc

    .line 888
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 889
    const v51, 0x2000f

    and-int v51, v51, v32

    const v52, 0x20001

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_8d7

    const/16 v51, 0x1

    move/from16 v42, v51

    :goto_8d5
    goto/16 :goto_72b

    :cond_8d7
    const/16 v51, 0x0

    move/from16 v42, v51

    goto :goto_8d5

    .line 893
    :cond_8dc
    if-eqz v38, :cond_8f2

    .line 894
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 895
    const/16 v32, 0x3

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_72b

    .line 896
    :cond_8f2
    if-eqz v36, :cond_92e

    .line 897
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_928

    const/16 v51, 0x1

    :goto_8fa
    and-int/lit8 v52, v36, 0x4

    if-eqz v52, :cond_92b

    const/16 v52, 0x1

    :goto_900
    invoke-static/range {v51 .. v52}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 899
    const/16 v32, 0x2

    .line 900
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_916

    .line 901
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 903
    :cond_916
    and-int/lit8 v51, v36, 0x4

    if-eqz v51, :cond_920

    .line 904
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 906
    :cond_920
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_72b

    .line 897
    :cond_928
    const/16 v51, 0x0

    goto :goto_8fa

    :cond_92b
    const/16 v52, 0x0

    goto :goto_900

    .line 907
    :cond_92e
    if-nez v10, :cond_937

    const/16 v51, -0x1

    move v0, v9

    move/from16 v1, v51

    if-eq v0, v1, :cond_971

    .line 910
    :cond_937
    const/16 v32, 0x1

    .line 911
    if-nez v42, :cond_93f

    .line 912
    const/high16 v51, 0x2

    or-int v32, v32, v51

    .line 915
    :cond_93f
    packed-switch v9, :pswitch_data_b22

    .line 932
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 936
    .local v14, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_944
    invoke-static {v10, v14}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 937
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_72b

    .line 917
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_956
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 918
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x4000

    move/from16 v32, v0

    .line 919
    goto :goto_944

    .line 922
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_95f
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 923
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 924
    goto :goto_944

    .line 927
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_968
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 928
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 929
    goto :goto_944

    .line 938
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_971
    if-eqz v25, :cond_999

    .line 939
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 940
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 941
    if-nez v42, :cond_72b

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    const/high16 v52, 0x2

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_72b

    .line 945
    :cond_999
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 947
    packed-switch v12, :pswitch_data_b2c

    goto/16 :goto_72b

    .line 949
    :pswitch_9a6
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 950
    goto/16 :goto_72b

    .line 952
    :pswitch_9aa
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 953
    goto/16 :goto_72b

    .line 955
    :pswitch_9ae
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_72b

    .line 987
    .end local v5           #a:Landroid/content/res/TypedArray;
    :pswitch_9b2
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_790

    .line 990
    :pswitch_9bd
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_790

    .line 993
    :pswitch_9c8
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_790

    .line 996
    :pswitch_9d3
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 997
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_790

    .line 1001
    :cond_9e7
    const/high16 v51, -0x100

    invoke-static/range {v51 .. v51}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v51

    goto/16 :goto_794

    .line 1012
    :cond_9ef
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_7cd

    .line 1016
    const/16 v50, 0x1

    goto/16 :goto_7cd

    .line 1028
    :cond_a07
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_803

    .line 1043
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_a12
    const/16 v51, 0x0

    move/from16 v28, v51

    goto/16 :goto_83a

    .line 1053
    .restart local v8       #attr:I
    .restart local v15       #clickable:Z
    .restart local v28       #focusable:Z
    .restart local v33       #longClickable:Z
    :sswitch_a18
    move-object v0, v5

    move v1, v8

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 1054
    goto/16 :goto_854

    .line 1057
    :sswitch_a22
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 1058
    goto/16 :goto_854

    .line 1061
    :sswitch_a28
    move-object v0, v5

    move v1, v8

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    goto/16 :goto_854

    .line 1065
    .end local v8           #attr:I
    :cond_a32
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1067
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1068
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1069
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1071
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1074
    new-instance v51, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOrientation:I

    .line 1080
    return-void

    .line 507
    :pswitch_data_a70
    .packed-switch 0x0
        :pswitch_287
        :pswitch_290
        :pswitch_29b
        :pswitch_278
        :pswitch_26f
        :pswitch_27d
        :pswitch_282
    .end packed-switch

    .line 567
    :pswitch_data_a82
    .packed-switch 0x0
        :pswitch_543
        :pswitch_2f0
        :pswitch_574
        :pswitch_57e
        :pswitch_588
        :pswitch_562
        :pswitch_558
        :pswitch_568
        :pswitch_56e
        :pswitch_493
        :pswitch_453
        :pswitch_330
        :pswitch_341
        :pswitch_3f4
        :pswitch_382
        :pswitch_440
        :pswitch_3ce
        :pswitch_322
        :pswitch_46c
        :pswitch_466
        :pswitch_4ee
        :pswitch_4cb
        :pswitch_36f
        :pswitch_395
        :pswitch_3a8
        :pswitch_3bb
        :pswitch_3e1
        :pswitch_407
        :pswitch_41a
        :pswitch_42d
        :pswitch_472
        :pswitch_592
        :pswitch_489
        :pswitch_327
        :pswitch_4b4
        :pswitch_4e2
        :pswitch_513
        :pswitch_51f
        :pswitch_52b
        :pswitch_537
        :pswitch_301
        :pswitch_30a
        :pswitch_30f
        :pswitch_2fc
        :pswitch_31d
        :pswitch_318
        :pswitch_2f3
        :pswitch_501
        :pswitch_357
        :pswitch_361
        :pswitch_352
        :pswitch_35c
        :pswitch_366
        :pswitch_59c
        :pswitch_5bc
        :pswitch_49d
        :pswitch_5d2
        :pswitch_67d
        :pswitch_68a
        :pswitch_5e2
        :pswitch_61b
        :pswitch_644
        :pswitch_6c1
        :pswitch_6d3
        :pswitch_6e5
    .end packed-switch

    .line 985
    :pswitch_data_b08
    .packed-switch 0x1
        :pswitch_9b2
        :pswitch_9bd
        :pswitch_9c8
        :pswitch_9d3
    .end packed-switch

    .line 1051
    :sswitch_data_b14
    .sparse-switch
        0x12 -> :sswitch_a18
        0x1d -> :sswitch_a22
        0x1e -> :sswitch_a28
    .end sparse-switch

    .line 915
    :pswitch_data_b22
    .packed-switch 0x1
        :pswitch_956
        :pswitch_95f
        :pswitch_968
    .end packed-switch

    .line 947
    :pswitch_data_b2c
    .packed-switch 0x0
        :pswitch_9a6
        :pswitch_9aa
        :pswitch_9ae
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/widget/TextView;->pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->isHandleViewCanBeShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->clearCursorControllerMenuVisibility()V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    return-void
.end method

.method static synthetic access$2500()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 224
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)Landroid/text/Layout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applySingleLine(ZZ)V
    .registers 4
    .parameter "singleLine"
    .parameter "applyTransformation"

    .prologue
    const/4 v0, 0x1

    .line 6192
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 6193
    if-eqz p1, :cond_15

    .line 6194
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 6195
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6196
    if-eqz p2, :cond_14

    .line 6197
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6207
    :cond_14
    :goto_14
    return-void

    .line 6201
    :cond_15
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6203
    if-eqz p2, :cond_14

    .line 6204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_14
.end method

.method private assumeLayout()V
    .registers 8

    .prologue
    .line 5171
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 5173
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_14

    .line 5174
    const/4 v1, 0x0

    .line 5177
    :cond_14
    move v2, v1

    .line 5179
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1b

    .line 5180
    const/16 v1, 0x4000

    .line 5183
    :cond_1b
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5185
    return-void
.end method

.method private bringTextIntoView()Z
    .registers 15

    .prologue
    const/16 v13, 0x50

    const/4 v12, 0x1

    .line 5775
    const/4 v5, 0x0

    .line 5776
    .local v5, line:I
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_12

    .line 5777
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    sub-int v5, v10, v12

    .line 5780
    :cond_12
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 5781
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 5782
    .local v1, dir:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 5783
    .local v2, hspace:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v11

    sub-int v9, v10, v11

    .line 5784
    .local v9, vspace:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5788
    .local v3, ht:I
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_81

    .line 5794
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v4, v10

    .line 5795
    .local v4, left:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5797
    .local v6, right:I
    sub-int v10, v6, v4

    if-ge v10, v2, :cond_7a

    .line 5798
    add-int v10, v6, v4

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v2, 0x2

    sub-int v7, v10, v11

    .line 5830
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_6a
    if-ge v3, v9, :cond_bd

    .line 5831
    const/4 v8, 0x0

    .line 5840
    .local v8, scrolly:I
    :goto_6d
    iget v10, p0, Landroid/view/View;->mScrollX:I

    if-ne v7, v10, :cond_75

    iget v10, p0, Landroid/view/View;->mScrollY:I

    if-eq v8, v10, :cond_c8

    .line 5841
    :cond_75
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    move v10, v12

    .line 5844
    :goto_79
    return v10

    .line 5800
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_7a
    if-gez v1, :cond_7f

    .line 5801
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5803
    .end local v7           #scrollx:I
    :cond_7f
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5806
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_81
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_a1

    .line 5811
    if-gez v1, :cond_95

    .line 5812
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5813
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 5814
    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5815
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_95
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5822
    .end local v7           #scrollx:I
    :cond_a1
    if-gez v1, :cond_af

    .line 5823
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5825
    .end local v7           #scrollx:I
    :cond_af
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5826
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5833
    .end local v6           #right:I
    :cond_bd
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_c6

    .line 5834
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_6d

    .line 5836
    .end local v8           #scrolly:I
    :cond_c6
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_6d

    .line 5844
    :cond_c8
    const/4 v10, 0x0

    goto :goto_79
.end method

.method private canCopy()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7514
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 7522
    :goto_8
    return v0

    .line 7518
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7519
    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    move v0, v1

    .line 7522
    goto :goto_8
.end method

.method private canCut()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7500
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 7510
    :goto_8
    return v0

    .line 7504
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7505
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_23

    .line 7506
    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    move v0, v1

    .line 7510
    goto :goto_8
.end method

.method private canMarquee()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 6290
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 6291
    .local v0, width:I
    if-lez v0, :cond_20

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    move v1, v3

    goto :goto_1f
.end method

.method private canPaste()Z
    .registers 4

    .prologue
    .line 7534
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_2b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_2b

    .line 7537
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 7539
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 7540
    const/4 v1, 0x1

    .line 7544
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private canSelectText()Z
    .registers 2

    .prologue
    .line 7485
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkForRelayout()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 5721
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_14

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_94

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_94

    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_94

    :cond_1c
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_94

    .line 5727
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 5728
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 5729
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_6d

    move v2, v6

    .line 5736
    .local v2, hintWant:I
    :goto_3e
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5740
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_8d

    .line 5742
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_75

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_75

    .line 5744
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5769
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_6c
    return-void

    .line 5729
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_6d
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_3e

    .line 5750
    .restart local v2       #hintWant:I
    :cond_75
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8d

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8d

    .line 5752
    :cond_89
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 5759
    :cond_8d
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5760
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 5765
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_94
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5766
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5767
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c
.end method

.method private checkForResize()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 5680
    const/4 v1, 0x0

    .line 5682
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_21

    .line 5684
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_10

    .line 5685
    const/4 v1, 0x1

    .line 5686
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5690
    :cond_10
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_27

    .line 5691
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5693
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 5694
    const/4 v1, 0x1

    .line 5707
    .end local v0           #desiredHeight:I
    :cond_21
    :goto_21
    if-eqz v1, :cond_26

    .line 5708
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5711
    :cond_26
    return-void

    .line 5696
    :cond_27
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 5697
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_21

    .line 5698
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5700
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_21

    .line 5701
    const/4 v1, 0x1

    goto :goto_21
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 16
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 3646
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 3647
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 3653
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int v3, v1, v11

    .line 3654
    .local v3, cap:I
    if-gez v3, :cond_1e

    .line 3655
    const/16 v3, 0xc8

    .line 3658
    :cond_1e
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3660
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 3661
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_30
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_41

    .line 3662
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3661
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 3668
    :cond_41
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3669
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3670
    return-void
.end method

.method private clearCursorControllerMenuVisibility()V
    .registers 2

    .prologue
    .line 7973
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7974
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 7976
    :cond_11
    return-void
.end method

.method private compressText(F)Z
    .registers 9
    .parameter "width"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 5379
    cmpl-float v2, p1, v4

    if-lez v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_4b

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4b

    .line 5381
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 5382
    .local v1, textWidth:F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 5383
    .local v0, overflow:F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_4b

    const v2, 0x3d8f5c29

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_4b

    .line 5384
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5385
    new-instance v2, Landroid/widget/TextView$1;

    invoke-direct {v2, p0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v6

    .line 5394
    .end local v0           #overflow:F
    .end local v1           #textWidth:F
    :goto_4a
    return v2

    :cond_4b
    move v2, v5

    goto :goto_4a
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 6089
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 6090
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 6091
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 6093
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 6094
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 6095
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6096
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .registers 8
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 5398
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5399
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5400
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 5405
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sub-int v4, v2, v6

    if-ge v0, v4, :cond_21

    .line 5406
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1e

    .line 5407
    const/4 v4, -0x1

    .line 5414
    :goto_1d
    return v4

    .line 5405
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5410
    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_2f

    .line 5411
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5410
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 5414
    :cond_2f
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1d
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 12
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4575
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v5

    .line 4696
    :goto_b
    return v2

    .line 4579
    :cond_c
    sparse-switch p1, :sswitch_data_e0

    .line 4629
    :cond_f
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_af

    .line 4636
    iput-boolean v5, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4638
    const/4 v0, 0x1

    .line 4639
    .local v0, doDown:Z
    if-eqz p3, :cond_8a

    .line 4641
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4642
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4644
    .local v1, handled:Z
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_32

    .line 4645
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_81
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_32} :catch_86

    .line 4647
    :cond_32
    const/4 v0, 0x0

    .line 4648
    if-eqz v1, :cond_87

    .line 4655
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    .line 4649
    goto :goto_b

    .line 4581
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_3a
    iput-boolean v6, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4584
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_f

    .line 4590
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_5e

    .line 4594
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 4597
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v6, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 4599
    goto :goto_b

    .line 4606
    :cond_5e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_6c

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_6c
    move v2, v4

    .line 4608
    goto :goto_b

    .line 4614
    :sswitch_6e
    iput-boolean v6, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4615
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v5

    .line 4616
    goto :goto_b

    .line 4622
    :sswitch_78
    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_f

    .line 4623
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    move v2, v4

    .line 4624
    goto :goto_b

    .line 4655
    .restart local v0       #doDown:Z
    :catchall_81
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 4651
    :catch_86
    move-exception v2

    .line 4655
    :cond_87
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4659
    :cond_8a
    if-eqz v0, :cond_af

    .line 4660
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4661
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 4662
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4663
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a9

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_a9

    .line 4664
    invoke-virtual {p0, v7, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_a9
    move v2, v6

    .line 4666
    goto/16 :goto_b

    .line 4668
    :cond_ac
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4675
    .end local v0           #doDown:Z
    :cond_af
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_dc

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_dc

    .line 4676
    const/4 v0, 0x1

    .line 4677
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_cb

    .line 4679
    :try_start_ba
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_c3
    .catch Ljava/lang/AbstractMethodError; {:try_start_ba .. :try_end_c3} :catch_ca

    move-result v1

    .line 4681
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 4682
    if-eqz v1, :cond_cb

    move v2, v4

    .line 4683
    goto/16 :goto_b

    .line 4685
    .end local v1           #handled:Z
    :catch_ca
    move-exception v2

    .line 4690
    :cond_cb
    if-eqz v0, :cond_dc

    .line 4691
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 4692
    const/4 v2, 0x2

    goto/16 :goto_b

    .end local v0           #doDown:Z
    :cond_dc
    move v2, v5

    .line 4696
    goto/16 :goto_b

    .line 4579
    nop

    :sswitch_data_e0
    .sparse-switch
        0x4 -> :sswitch_78
        0x17 -> :sswitch_6e
        0x42 -> :sswitch_3a
    .end sparse-switch
.end method

.method private static extractRangeEndFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 7647
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 7643
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private fixFocusableAndClickableSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1292
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_18

    .line 1293
    :cond_e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1294
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1295
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1301
    :goto_17
    return-void

    .line 1297
    :cond_18
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1298
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1299
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_17
.end method

.method private getBottomVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 3772
    const/4 v4, 0x0

    .line 3773
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3775
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3776
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 3777
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3780
    :cond_17
    const/16 v5, 0x50

    if-eq v1, v5, :cond_3a

    .line 3783
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 3784
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3790
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3792
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 3793
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4b

    .line 3794
    sub-int v4, v0, v3

    .line 3799
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 3787
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 3796
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getDesiredHeight()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5616
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v0, v3}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_17

    move v2, v3

    :goto_e
    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .registers 10
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 5622
    if-nez p1, :cond_5

    .line 5623
    const/4 v4, 0x0

    .line 5672
    :goto_4
    return v4

    .line 5626
    :cond_5
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5627
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 5628
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5630
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5631
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_27

    .line 5632
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5633
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5636
    :cond_27
    add-int/2addr v0, v3

    .line 5638
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_6a

    .line 5643
    if-eqz p2, :cond_4f

    .line 5644
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_4f

    .line 5645
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v5

    add-int v0, v4, v5

    .line 5648
    if-eqz v1, :cond_4c

    .line 5649
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5650
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5653
    :cond_4c
    add-int/2addr v0, v3

    .line 5654
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 5661
    :cond_4f
    :goto_4f
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_71

    .line 5662
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_60

    .line 5663
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5670
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 5672
    goto :goto_4

    .line 5658
    :cond_6a
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4f

    .line 5666
    :cond_71
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_60
.end method

.method private getErrorX()I
    .registers 6

    .prologue
    .line 3602
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3604
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3605
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v0, :cond_2c

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_20
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_2c
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private getErrorY()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3619
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 3622
    .local v2, vspace:I
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3623
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    if-eqz v0, :cond_2e

    iget v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_1b
    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 3631
    .local v1, icontop:I
    if-eqz v0, :cond_30

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_25
    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    return v3

    .end local v1           #icontop:I
    :cond_2e
    move v4, v5

    .line 3623
    goto :goto_1b

    .restart local v1       #icontop:I
    :cond_30
    move v3, v5

    .line 3631
    goto :goto_25
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .registers 5
    .parameter "r"
    .parameter "line"

    .prologue
    .line 6079
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 6084
    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6085
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6086
    :cond_21
    return-void
.end method

.method private getLastTapPosition()I
    .registers 5

    .prologue
    .line 6951
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_4c

    .line 6952
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 6954
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_4c

    .line 6956
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_4a

    .line 6957
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6959
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_4a
    move v1, v0

    .line 6965
    .end local v0           #lastTapPosition:I
    :goto_4b
    return v1

    :cond_4c
    const/4 v1, -0x1

    goto :goto_4b
.end method

.method private getOffsetForHorizontal(II)I
    .registers 5
    .parameter "line"
    .parameter "x"

    .prologue
    .line 9189
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    .line 9191
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 9192
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9193
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    add-int/2addr p2, v0

    .line 9194
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 7440
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 7442
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_8

    move v1, p2

    .line 7445
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_7
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 7412
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7415
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_1d

    .line 7416
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 7418
    .local v0, ap:I
    if-eq v0, v4, :cond_1d

    .line 7420
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7422
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7424
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7428
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_1d
    return-object v2
.end method

.method private getVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 3741
    const/4 v4, 0x0

    .line 3742
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3744
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3745
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 3746
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3749
    :cond_17
    const/16 v5, 0x30

    if-eq v1, v5, :cond_3a

    .line 3752
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 3753
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3759
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3761
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 3762
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4b

    .line 3763
    sub-int v4, v0, v3

    .line 3768
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 3756
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 3765
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getWordForDictionary()Ljava/lang/String;
    .registers 8

    .prologue
    .line 7713
    iget-boolean v5, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v5, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v1, v5

    .line 7714
    .local v1, seedPosition:I
    :goto_9
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v3

    .line 7715
    .local v3, wordLimits:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2c

    .line 7716
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v2

    .line 7717
    .local v2, start:I
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 7718
    .local v0, end:I
    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v5, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7720
    .end local v0           #end:I
    .end local v2           #start:I
    :goto_25
    return-object v5

    .line 7713
    .end local v1           #seedPosition:I
    .end local v3           #wordLimits:J
    :cond_26
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v5

    move v1, v5

    goto :goto_9

    .line 7720
    .restart local v1       #seedPosition:I
    .restart local v3       #wordLimits:J
    :cond_2c
    const/4 v5, 0x0

    goto :goto_25
.end method

.method private getWordLimitsAt(I)J
    .registers 13
    .parameter "offset"

    .prologue
    .line 7561
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v9, 0xf

    .line 7562
    .local v4, klass:I
    const/4 v9, 0x2

    if-eq v4, v9, :cond_d

    const/4 v9, 0x3

    if-eq v4, v9, :cond_d

    const/4 v9, 0x4

    if-ne v4, v9, :cond_10

    .line 7565
    :cond_d
    const-wide/16 v9, -0x1

    .line 7635
    :goto_f
    return-wide v9

    .line 7568
    :cond_10
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v8, v9, 0xff0

    .line 7569
    .local v8, variation:I
    const/16 v9, 0x10

    if-eq v8, v9, :cond_28

    const/16 v9, 0x80

    if-eq v8, v9, :cond_28

    const/16 v9, 0x90

    if-eq v8, v9, :cond_28

    const/16 v9, 0x20

    if-eq v8, v9, :cond_28

    const/16 v9, 0xb0

    if-ne v8, v9, :cond_2b

    .line 7574
    :cond_28
    const-wide/16 v9, -0x1

    goto :goto_f

    .line 7577
    :cond_2b
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7578
    .local v5, len:I
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7580
    .local v1, end:I
    if-gez v1, :cond_3a

    .line 7581
    const-wide/16 v9, -0x1

    goto :goto_f

    .line 7584
    :cond_3a
    move v6, v1

    .line 7586
    .local v6, start:I
    :goto_3b
    if-lez v6, :cond_5e

    .line 7587
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    sub-int v10, v6, v10

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7588
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7590
    .local v7, type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_83

    const/4 v9, 0x1

    if-eq v7, v9, :cond_83

    const/4 v9, 0x2

    if-eq v7, v9, :cond_83

    const/4 v9, 0x3

    if-eq v7, v9, :cond_83

    const/4 v9, 0x4

    if-eq v7, v9, :cond_83

    const/16 v9, 0x9

    if-eq v7, v9, :cond_83

    .line 7600
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_5e
    :goto_5e
    if-ge v1, v5, :cond_7e

    .line 7601
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7602
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7604
    .restart local v7       #type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_86

    const/4 v9, 0x1

    if-eq v7, v9, :cond_86

    const/4 v9, 0x2

    if-eq v7, v9, :cond_86

    const/4 v9, 0x3

    if-eq v7, v9, :cond_86

    const/4 v9, 0x4

    if-eq v7, v9, :cond_86

    const/16 v9, 0x9

    if-eq v7, v9, :cond_86

    .line 7614
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_7e
    if-ne v6, v1, :cond_89

    .line 7615
    const-wide/16 v9, -0x1

    goto :goto_f

    .line 7586
    .restart local v0       #c:C
    .restart local v7       #type:I
    :cond_83
    add-int/lit8 v6, v6, -0x1

    goto :goto_3b

    .line 7600
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 7618
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_89
    sub-int v9, v1, v6

    const/16 v10, 0x30

    if-le v9, v10, :cond_93

    .line 7619
    const-wide/16 v9, -0x1

    goto/16 :goto_f

    .line 7622
    :cond_93
    const/4 v2, 0x0

    .line 7623
    .local v2, hasLetter:Z
    move v3, v6

    .local v3, i:I
    :goto_95
    if-ge v3, v1, :cond_a4

    .line 7624
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 7625
    const/4 v2, 0x1

    .line 7630
    :cond_a4
    if-nez v2, :cond_ad

    .line 7631
    const-wide/16 v9, -0x1

    goto/16 :goto_f

    .line 7623
    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 7635
    :cond_ad
    invoke-static {v6, v1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v9

    goto/16 :goto_f
.end method

.method private hasPasswordTransformationMethod()Z
    .registers 2

    .prologue
    .line 3128
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideControllers()V
    .registers 1

    .prologue
    .line 9184
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 9185
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 9186
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 3636
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_11

    .line 3637
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3638
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3642
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3643
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .registers 2

    .prologue
    .line 9166
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_9

    .line 9167
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 9169
    :cond_9
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .registers 2

    .prologue
    .line 9172
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_1b

    .line 9173
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 9175
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_1b

    .line 9176
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 9177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 9181
    :cond_1b
    return-void
.end method

.method private invalidateCursor()V
    .registers 2

    .prologue
    .line 3838
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3840
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 3841
    return-void
.end method

.method private invalidateCursor(III)V
    .registers 16
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    .line 3844
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_9

    .line 3845
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3881
    :cond_8
    :goto_8
    return-void

    .line 3847
    :cond_9
    if-gez p1, :cond_f

    if-gez p2, :cond_f

    if-ltz p3, :cond_8

    .line 3848
    :cond_f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3849
    .local v1, first:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3851
    .local v2, last:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 3852
    .local v4, line:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 3860
    .local v6, top:I
    if-lez v4, :cond_36

    .line 3861
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    sub-int v9, v4, v10

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 3866
    :cond_36
    if-ne v1, v2, :cond_6e

    .line 3867
    move v5, v4

    .line 3871
    .local v5, line2:I
    :goto_39
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 3872
    .local v0, bottom:I
    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    .line 3874
    .local v7, voffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int v3, v8, v9

    .line 3875
    .local v3, left:I
    add-int v8, v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, v0, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v3, v8, v9, v10}, Landroid/widget/TextView;->invalidate(IIII)V

    goto :goto_8

    .line 3869
    .end local v0           #bottom:I
    .end local v3           #left:I
    .end local v5           #line2:I
    .end local v7           #voffset:I
    :cond_6e
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .restart local v5       #line2:I
    goto :goto_39
.end method

.method private invalidateCursorPath()V
    .registers 10

    .prologue
    .line 3803
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_8

    .line 3804
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 3835
    :goto_7
    return-void

    .line 3806
    :cond_8
    sget-object v3, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v3

    .line 3817
    :try_start_b
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 3818
    .local v1, thick:F
    const/high16 v4, 0x3f80

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1d

    .line 3819
    const/high16 v1, 0x3f80

    .line 3822
    :cond_1d
    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    .line 3824
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3826
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 3827
    .local v0, left:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v5

    add-int v2, v4, v5

    .line 3829
    .local v2, top:I
    int-to-float v4, v0

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    invoke-static {v4}, Landroid/util/FloatMath;->floor(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v2

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v0

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v2

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3833
    monitor-exit v3

    goto :goto_7

    .end local v0           #left:I
    .end local v1           #thick:F
    .end local v2           #top:I
    :catchall_6c
    move-exception v4

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_b .. :try_end_6e} :catchall_6c

    throw v4
.end method

.method private isHandleViewCanBeShown()Z
    .registers 4

    .prologue
    .line 7764
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    .line 7765
    .local v0, isExtractView:Z
    const/4 v1, 0x0

    .line 7766
    .local v1, isFullscreenNow:Z
    if-eqz v0, :cond_d

    .line 7767
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    .line 7772
    :goto_9
    if-ne v0, v1, :cond_16

    const/4 v2, 0x1

    :goto_c
    return v2

    .line 7769
    :cond_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    goto :goto_9

    .line 7772
    :cond_16
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private isPasswordInputType(I)Z
    .registers 4
    .parameter "inputType"

    .prologue
    .line 3132
    and-int/lit16 v0, p1, 0xfff

    .line 3134
    .local v0, variation:I
    const/16 v1, 0x81

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private isTextEditable()Z
    .registers 2

    .prologue
    .line 7242
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isVisiblePasswordInputType(I)Z
    .registers 4
    .parameter "inputType"

    .prologue
    .line 3140
    and-int/lit16 v0, p1, 0xfff

    .line 3142
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private logLetterMode(I)V
    .registers 7
    .parameter "type"

    .prologue
    .line 3212
    const-string/jumbo v2, "service.gate.enabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3238
    :cond_f
    :goto_f
    return-void

    .line 3217
    :cond_10
    and-int/lit8 v0, p1, 0xf

    .line 3219
    .local v0, cls:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 3222
    const/4 v1, 0x0

    .line 3224
    .local v1, shift:I
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_3a

    .line 3225
    const/4 v1, 0x2

    .line 3235
    :goto_1b
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>KEYSELECT: SHIFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3226
    :cond_3a
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_40

    .line 3227
    const/4 v1, 0x3

    goto :goto_1b

    .line 3228
    :cond_40
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_46

    .line 3229
    const/4 v1, 0x1

    goto :goto_1b

    .line 3231
    :cond_46
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private makeBlink()V
    .registers 7

    .prologue
    .line 6779
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6780
    :cond_a
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_15

    .line 6781
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6792
    :cond_15
    :goto_15
    return-void

    .line 6787
    :cond_16
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_21

    .line 6788
    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 6790
    :cond_21
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6791
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_15
.end method

.method private nullLayouts()V
    .registers 2

    .prologue
    .line 5156
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_10

    .line 5157
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 5159
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_20

    .line 5160
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5163
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5164
    return-void
.end method

.method private onTapUpEvent(II)V
    .registers 10
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7047
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 7048
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7050
    .local v0, end:I
    if-ne v2, v0, :cond_44

    .line 7051
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_45

    if-nez p1, :cond_45

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p2, v4, :cond_45

    move v3, v6

    .line 7053
    .local v3, tapInsideSelectAllOnFocus:Z
    :goto_1b
    if-lt v2, p1, :cond_49

    if-ge v2, p2, :cond_49

    if-nez v3, :cond_49

    .line 7061
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7062
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_47

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_47

    move v1, v6

    .line 7063
    .local v1, selectAllGotFocus:Z
    :goto_2d
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v1, :cond_44

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_44

    .line 7064
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    .line 7078
    .end local v1           #selectAllGotFocus:Z
    .end local v3           #tapInsideSelectAllOnFocus:Z
    :cond_44
    :goto_44
    return-void

    :cond_45
    move v3, v5

    .line 7051
    goto :goto_1b

    .restart local v3       #tapInsideSelectAllOnFocus:Z
    :cond_47
    move v1, v5

    .line 7062
    goto :goto_2d

    .line 7069
    :cond_49
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7072
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_6d

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_6d

    move v1, v6

    .line 7073
    .restart local v1       #selectAllGotFocus:Z
    :goto_55
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v1, :cond_44

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_44

    .line 7074
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    goto :goto_44

    .end local v1           #selectAllGotFocus:Z
    :cond_6d
    move v1, v5

    .line 7072
    goto :goto_55
.end method

.method private static packRangeInLong(II)J
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7639
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, paste:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    packed-switch v4, :pswitch_data_20

    .line 338
    :goto_8
    :pswitch_8
    if-eqz v2, :cond_d

    .line 340
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V

    .line 343
    :cond_d
    return-void

    .line 323
    :pswitch_e
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v3, v0

    .line 324
    .local v3, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 325
    goto :goto_8

    .line 327
    .end local v3           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_17
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v1, v0

    .line 328
    .local v1, html:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v2

    .line 331
    goto :goto_8

    .line 320
    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_e
        :pswitch_8
        :pswitch_17
    .end packed-switch
.end method

.method private prepareCursorControllers()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7213
    const/4 v3, 0x0

    .line 7215
    .local v3, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7216
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_21

    .line 7217
    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    .line 7218
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_20

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-le v4, v5, :cond_4d

    :cond_20
    move v3, v7

    .line 7223
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_21
    :goto_21
    if-eqz v3, :cond_4f

    iget-boolean v4, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_4f

    move v4, v7

    :goto_2c
    iput-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 7224
    if-eqz v3, :cond_51

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_51

    move v4, v7

    :goto_3b
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 7227
    iget-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_43

    .line 7228
    iput-object v8, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 7231
    :cond_43
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_4c

    .line 7233
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7234
    iput-object v8, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 7236
    :cond_4c
    return-void

    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4d
    move v3, v6

    .line 7218
    goto :goto_21

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4f
    move v4, v6

    .line 7223
    goto :goto_2c

    :cond_51
    move v4, v6

    .line 7224
    goto :goto_3b
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .registers 12
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/4 v5, 0x1

    const-string v7, " "

    const-string v6, ""

    .line 8185
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 8186
    if-lez p1, :cond_3b

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 8188
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8189
    .local v1, originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    sub-int v3, p1, v5

    const-string v4, ""

    invoke-interface {v2, v3, p1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8192
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 8193
    .local v0, delta:I
    add-int/2addr p1, v0

    .line 8194
    add-int/2addr p2, v0

    .line 8208
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_3b
    :goto_3b
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 8209
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_69

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 8211
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    add-int/lit8 v2, p2, 0x1

    const-string v3, ""

    invoke-interface {p0, p2, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8219
    :cond_69
    :goto_69
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 8197
    .restart local p0
    :cond_6e
    if-lez p1, :cond_3b

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 8199
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8200
    .restart local v1       #originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    const-string v3, " "

    invoke-interface {v2, p1, p1, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8202
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 8203
    .restart local v0       #delta:I
    add-int/2addr p1, v0

    .line 8204
    add-int/2addr p2, v0

    goto :goto_3b

    .line 8214
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_98
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_69

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_69

    .line 8216
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    const-string v2, " "

    invoke-interface {p0, p2, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_69
.end method

.method private registerForPreDraw()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3884
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3885
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_8

    .line 3897
    :cond_7
    :goto_7
    return-void

    .line 3889
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_12

    .line 3890
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3891
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_7

    .line 3892
    :cond_12
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 3893
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_7
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .registers 6
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4976
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 4977
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 4978
    .local v0, i:I
    :goto_7
    if-lez v0, :cond_11

    .line 4979
    add-int/lit8 v0, v0, -0x1

    .line 4980
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 4982
    :cond_11
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .registers 3

    .prologue
    .line 3690
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    .line 3691
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 3692
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 3694
    :cond_10
    return-void
.end method

.method private selectCurrentWord()V
    .registers 16

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0xdbbb

    const v10, 0xdbb8

    const/4 v9, 0x1

    const-string v14, "SGH-I777"

    .line 7653
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 7710
    .end local p0
    :goto_11
    return-void

    .line 7659
    .restart local p0
    :cond_12
    iget-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v7, :cond_8c

    .line 7660
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7661
    .local v1, minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7684
    .local v0, maxOffset:I
    :goto_1e
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7685
    .local v5, wordLimits:J
    cmp-long v7, v5, v12

    if-ltz v7, :cond_b5

    .line 7686
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v4

    .line 7691
    .local v4, selectionStart:I
    :goto_2a
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7692
    cmp-long v7, v5, v12

    if-ltz v7, :cond_bf

    .line 7693
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v2

    .line 7698
    .local v2, selectionEnd:I
    :goto_36
    const-string v7, "SGH-I777"

    const-string v7, "SC-02C"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "SGH-I777"

    const-string v7, "SC-03D"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 7700
    :cond_4a
    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_6a

    .line 7701
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_6a

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_6a

    .line 7702
    add-int/lit8 v4, v4, 0x1

    .line 7704
    :cond_6a
    sub-int v7, v2, v9

    if-lez v7, :cond_84

    .line 7705
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_84

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_84

    .line 7706
    add-int/lit8 v2, v2, -0x1

    .line 7709
    :cond_84
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_11

    .line 7664
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    .end local v2           #selectionEnd:I
    .end local v4           #selectionStart:I
    .end local v5           #wordLimits:J
    .restart local p0
    :cond_8c
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 7668
    .local v3, selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-nez v3, :cond_9d

    .line 7669
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7670
    .restart local v1       #minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto :goto_1e

    .line 7673
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    :cond_9d
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView$SelectionModifierCursorController;->setMinTouchOffset(I)V

    .line 7674
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    .line 7676
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 7677
    .restart local v1       #minOffset:I
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto/16 :goto_1e

    .line 7688
    .end local v3           #selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    .restart local v5       #wordLimits:J
    :cond_b5
    const/4 v7, 0x5

    sub-int v7, v1, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4       #selectionStart:I
    goto/16 :goto_2a

    .line 7695
    :cond_bf
    add-int/lit8 v7, v0, 0x5

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2       #selectionEnd:I
    goto/16 :goto_36
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6528
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6529
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6530
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6531
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6532
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 6531
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6535
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 6
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 3719
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_1b

    .line 3720
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 3722
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3723
    array-length v1, p2

    iget-object p0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .end local p0
    check-cast p0, Landroid/text/InputFilter;

    aput-object p0, v0, v1

    .line 3725
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 3729
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_1a
    return-void

    .line 3727
    .restart local p0
    :cond_1b
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1a
.end method

.method private setInputType(IZ)V
    .registers 11
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3162
    and-int/lit8 v2, p1, 0xf

    .line 3164
    .local v2, cls:I
    if-ne v2, v6, :cond_35

    .line 3165
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_22

    move v0, v6

    .line 3167
    .local v0, autotext:Z
    :goto_d
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_24

    .line 3168
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3176
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_13
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3198
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3199
    if-eqz p2, :cond_6f

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3205
    :goto_1e
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 3207
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_22
    move v0, v7

    .line 3165
    goto :goto_d

    .line 3169
    .restart local v0       #autotext:Z
    :cond_24
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2b

    .line 3170
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3171
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2b
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_32

    .line 3172
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3174
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_32
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3177
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_35
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4b

    .line 3178
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_47

    move v4, v6

    :goto_3d
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_49

    move v5, v6

    :goto_42
    invoke-static {v4, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_47
    move v4, v7

    goto :goto_3d

    :cond_49
    move v5, v7

    goto :goto_42

    .line 3181
    :cond_4b
    const/4 v4, 0x4

    if-ne v2, v4, :cond_62

    .line 3182
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_74

    .line 3190
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3191
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3184
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_58
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3185
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3187
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_5d
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3188
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3193
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_62
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6a

    .line 3194
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3196
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_6a
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3201
    :cond_6f
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_1e

    .line 3182
    nop

    :sswitch_data_74
    .sparse-switch
        0x10 -> :sswitch_58
        0x20 -> :sswitch_5d
    .end sparse-switch
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 1252
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1253
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_11

    .line 1254
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1257
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1823
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 1824
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1826
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 1827
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1828
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1829
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1832
    :cond_1c
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .registers 28
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 2738
    if-nez p1, :cond_4

    .line 2739
    const-string p1, ""

    .line 2743
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move v5, v0

    if-eqz v5, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    .line 2744
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    .line 2745
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 2749
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    move v5, v0

    if-nez v5, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2751
    :cond_28
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_4b

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4b

    .line 2753
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2754
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2757
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .line 2758
    .local v15, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_52
    if-ge v13, v15, :cond_71

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v13

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2761
    .local v17, out:Ljava/lang/CharSequence;
    if-eqz v17, :cond_6e

    .line 2762
    move-object/from16 p1, v17

    .line 2758
    :cond_6e
    add-int/lit8 v13, v13, 0x1

    goto :goto_52

    .line 2766
    .end local v17           #out:Ljava/lang/CharSequence;
    :cond_71
    if-eqz p3, :cond_97

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_17f

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p4

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2775
    :cond_97
    :goto_97
    const/16 v16, 0x0

    .line 2777
    .local v16, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_ad

    .line 2778
    const/16 v16, 0x1

    .line 2781
    :cond_ad
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-nez v5, :cond_bd

    if-eqz v16, :cond_192

    .line 2783
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v20

    .line 2784
    .local v20, t:Landroid/text/Editable;
    move-object/from16 p1, v20

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2786
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 2787
    .local v14, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_e4

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2794
    .end local v14           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v20           #t:Landroid/text/Editable;
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    if-eqz v5, :cond_131

    .line 2797
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_f9

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_1bb

    .line 2798
    :cond_f9
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v18, v0

    .line 2803
    .local v18, s2:Landroid/text/Spannable;
    :goto_ff
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 2804
    move-object/from16 p1, v18

    .line 2805
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_1c9

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    .line 2812
    :goto_11a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2814
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move v5, v0

    if-eqz v5, :cond_131

    .line 2815
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2820
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_131
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 2821
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-nez v5, :cond_1cf

    .line 2824
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2828
    :goto_14a
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2830
    .local v21, textLength:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_262

    .line 2831
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v19, v0

    .line 2835
    .local v19, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/widget/TextView$ChangeWatcher;

    .line 2836
    .local v22, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move v12, v0

    .line 2837
    .local v12, count:I
    const/4 v13, 0x0

    :goto_172
    if-ge v13, v12, :cond_1e4

    .line 2838
    aget-object v5, v22, v13

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2837
    add-int/lit8 v13, v13, 0x1

    goto :goto_172

    .line 2771
    .end local v12           #count:I
    .end local v16           #needEditableForNotification:Z
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v21           #textLength:I
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_17f
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_97

    .line 2788
    .restart local v16       #needEditableForNotification:Z
    :cond_192
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_1a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_1ae

    .line 2789
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_e4

    .line 2790
    :cond_1ae
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView$CharWrapper;

    move v5, v0

    if-nez v5, :cond_e4

    .line 2791
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_e4

    .line 2800
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    .restart local v18       #s2:Landroid/text/Spannable;
    goto/16 :goto_ff

    .line 2805
    :cond_1c9
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    goto/16 :goto_11a

    .line 2826
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_14a

    .line 2840
    .restart local v12       #count:I
    .restart local v19       #sp:Landroid/text/Spannable;
    .restart local v21       #textLength:I
    .restart local v22       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_1fa

    .line 2841
    new-instance v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 2843
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    sget v7, Landroid/widget/TextView;->PRIORITY:I

    shl-int/lit8 v7, v7, 0x10

    or-int/lit8 v7, v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-eqz v5, :cond_229

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2850
    :cond_229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-eqz v5, :cond_242

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2855
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_262

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 p2, v0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2863
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 2867
    .end local v12           #count:I
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v5, v0

    if-eqz v5, :cond_26c

    .line 2868
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2871
    :cond_26c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 2872
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2874
    if-eqz v16, :cond_28d

    .line 2875
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 2879
    :cond_28d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 2880
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .registers 4
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 1098
    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1099
    return-void

    .line 1086
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1087
    goto :goto_4

    .line 1090
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1091
    goto :goto_4

    .line 1094
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1084
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4554
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v1, :cond_8

    move v1, v3

    .line 4571
    :goto_7
    return v1

    .line 4558
    :cond_8
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_e

    move v1, v2

    .line 4559
    goto :goto_7

    .line 4562
    :cond_e
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_22

    .line 4563
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 4565
    .local v0, variation:I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_20

    const/16 v1, 0x30

    if-ne v0, v1, :cond_22

    :cond_20
    move v1, v2

    .line 4567
    goto :goto_7

    .end local v0           #variation:I
    :cond_22
    move v1, v3

    .line 4571
    goto :goto_7
.end method

.method private showError()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 3536
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    .line 3537
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3561
    :goto_b
    return-void

    .line 3541
    :cond_c
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_48

    .line 3542
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3543
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109006b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3546
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 3547
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3549
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 3552
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 3555
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_48
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3556
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3557
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3559
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 3560
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_b
.end method

.method private startMarquee()V
    .registers 3

    .prologue
    .line 6296
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_5

    .line 6308
    :cond_4
    :goto_4
    return-void

    .line 6298
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6302
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_26
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_32
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6305
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 6306
    :cond_4a
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_4
.end method

.method private startStopMarquee(Z)V
    .registers 4
    .parameter "start"

    .prologue
    .line 6317
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_b

    .line 6318
    if-eqz p1, :cond_c

    .line 6319
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6324
    :cond_b
    :goto_b
    return-void

    .line 6321
    :cond_c
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_b
.end method

.method private startTextSelectionMode()V
    .registers 4

    .prologue
    .line 8243
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-nez v1, :cond_11

    .line 8244
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v1

    if-nez v1, :cond_12

    .line 8245
    const-string v1, "TextView"

    const-string v2, "TextView has no selection controller. Action mode cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8266
    :cond_11
    :goto_11
    return-void

    .line 8250
    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v1, :cond_11

    .line 8254
    :cond_22
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 8255
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->show()V

    .line 8258
    iget-boolean v1, p0, Landroid/widget/TextView;->mByPassInputType:Z

    if-nez v1, :cond_41

    .line 8259
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8261
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 8264
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_41
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_11
.end method

.method private stopMarquee()V
    .registers 2

    .prologue
    .line 6311
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6312
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 6314
    :cond_11
    return-void
.end method

.method private stopTextSelectionMode()V
    .registers 3

    .prologue
    .line 8269
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_15

    .line 8270
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8271
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 8272
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8274
    :cond_15
    return-void
.end method

.method private textCanBeSelected()Z
    .registers 2

    .prologue
    .line 7493
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_12
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private updateTextColors()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2402
    const/4 v1, 0x0

    .line 2403
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2404
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_13

    .line 2405
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2406
    const/4 v1, 0x1

    .line 2408
    :cond_13
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2c

    .line 2409
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2410
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_2c

    .line 2411
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2412
    const/4 v1, 0x1

    .line 2415
    :cond_2c
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_49

    .line 2416
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2417
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_49

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_49

    .line 2418
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 2419
    const/4 v1, 0x1

    .line 2422
    :cond_49
    if-eqz v1, :cond_4e

    .line 2423
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2425
    :cond_4e
    return-void
.end method

.method private viewportToContentHorizontalOffset()I
    .registers 3

    .prologue
    .line 6099
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .registers 4

    .prologue
    .line 6103
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    .line 6104
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_16

    .line 6105
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 6107
    :cond_16
    return v0
.end method


# virtual methods
.method public IsEndHandleVisible()I
    .registers 2

    .prologue
    .line 9446
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_b

    .line 9447
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->endHandleVisible()I

    move-result v0

    .line 9454
    :goto_a
    return v0

    .line 9450
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-nez v0, :cond_11

    .line 9451
    const/4 v0, 0x1

    goto :goto_a

    .line 9454
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->endHandleVisible()I

    move-result v0

    goto :goto_a
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 6504
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 6505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6508
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6509
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 2385
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2386
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 6
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2394
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_d

    .line 2395
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2398
    :cond_d
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2399
    return-void
.end method

.method public beginBatchEdit()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5053
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 5054
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5055
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_26

    .line 5056
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5057
    .local v1, nesting:I
    if-ne v1, v5, :cond_26

    .line 5058
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 5059
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 5060
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_27

    .line 5063
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5064
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5070
    :goto_23
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 5073
    .end local v1           #nesting:I
    :cond_26
    return-void

    .line 5066
    .restart local v1       #nesting:I
    :cond_27
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5067
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5068
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_23
.end method

.method public bringPointIntoView(I)Z
    .registers 31
    .parameter "offset"

    .prologue
    .line 5853
    const/4 v6, 0x0

    .line 5855
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 5858
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 5859
    .local v24, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 5860
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    add-int/lit8 v26, v17, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 5862
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    .line 5863
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 5864
    .local v19, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 5868
    .local v15, ht:I
    sget-object v25, Landroid/widget/TextView$2;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_29e

    .line 5878
    const/4 v11, 0x0

    .line 5881
    .local v11, grav:I
    :goto_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    mul-int v11, v11, v25

    .line 5883
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 5884
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 5886
    .local v23, vspace:I
    sub-int v25, v5, v20

    div-int/lit8 v13, v25, 0x2

    .line 5887
    .local v13, hslack:I
    move/from16 v22, v13

    .line 5889
    .local v22, vslack:I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_e2

    .line 5890
    div-int/lit8 v22, v23, 0x4

    .line 5891
    :cond_e2
    div-int/lit8 v25, v14, 0x4

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_eb

    .line 5892
    div-int/lit8 v13, v14, 0x4

    .line 5894
    :cond_eb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v12, v0

    .line 5895
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    .line 5897
    .local v21, vs:I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_100

    .line 5898
    sub-int v21, v20, v22

    .line 5899
    :cond_100
    sub-int v25, v5, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10e

    .line 5900
    sub-int v25, v23, v22

    sub-int v21, v5, v25

    .line 5901
    :cond_10e
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_118

    .line 5902
    sub-int v21, v15, v23

    .line 5903
    :cond_118
    const/16 v25, 0x0

    sub-int v25, v25, v21

    if-lez v25, :cond_120

    .line 5904
    const/16 v21, 0x0

    .line 5906
    :cond_120
    if-eqz v11, :cond_139

    .line 5907
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_12b

    .line 5908
    sub-int v12, v24, v13

    .line 5910
    :cond_12b
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_139

    .line 5911
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 5915
    :cond_139
    if-gez v11, :cond_1b8

    .line 5916
    sub-int v25, v16, v12

    if-lez v25, :cond_141

    .line 5917
    move/from16 v12, v16

    .line 5918
    :cond_141
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_14a

    .line 5919
    sub-int v12, v19, v14

    .line 5966
    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_161

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_172

    .line 5967
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_221

    .line 5968
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 5989
    :goto_171
    const/4 v6, 0x1

    .line 5992
    :cond_172
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_1b1

    .line 5997
    new-instance v18, Landroid/graphics/Rect;

    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5998
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 5999
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6001
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_1b1

    .line 6002
    const/4 v6, 0x1

    .line 6006
    .end local v18           #r:Landroid/graphics/Rect;
    :cond_1b1
    return v6

    .line 5870
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v21           #vs:I
    .end local v22           #vslack:I
    .end local v23           #vspace:I
    :pswitch_1b2
    const/4 v11, 0x1

    .line 5871
    .restart local v11       #grav:I
    goto/16 :goto_8e

    .line 5874
    .end local v11           #grav:I
    :pswitch_1b5
    const/4 v11, -0x1

    .line 5875
    .restart local v11       #grav:I
    goto/16 :goto_8e

    .line 5920
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v21       #vs:I
    .restart local v22       #vslack:I
    .restart local v23       #vspace:I
    :cond_1b8
    if-lez v11, :cond_1ca

    .line 5921
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_1c3

    .line 5922
    sub-int v12, v19, v14

    .line 5923
    :cond_1c3
    sub-int v25, v16, v12

    if-lez v25, :cond_14a

    .line 5924
    move/from16 v12, v16

    goto :goto_14a

    .line 5926
    :cond_1ca
    sub-int v25, v19, v16

    move/from16 v0, v25

    move v1, v14

    if-gt v0, v1, :cond_1db

    .line 5930
    sub-int v25, v19, v16

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v16, v25

    goto/16 :goto_14a

    .line 5931
    :cond_1db
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1e7

    .line 5936
    sub-int v12, v19, v14

    goto/16 :goto_14a

    .line 5937
    :cond_1e7
    add-int v25, v16, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f3

    .line 5942
    move/from16 v12, v16

    goto/16 :goto_14a

    .line 5943
    :cond_1f3
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_1fc

    .line 5947
    move/from16 v12, v16

    goto/16 :goto_14a

    .line 5948
    :cond_1fc
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_208

    .line 5952
    sub-int v12, v19, v14

    goto/16 :goto_14a

    .line 5957
    :cond_208
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_211

    .line 5958
    sub-int v12, v24, v13

    .line 5960
    :cond_211
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_14a

    .line 5961
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_14a

    .line 5970
    :cond_221
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    .line 5971
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    .line 5972
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 5974
    .local v10, dy:I
    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_280

    .line 5975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 5976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 5977
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 5986
    :goto_274
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_171

    .line 5979
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_295

    .line 5980
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5983
    :cond_295
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_274

    .line 5868
    nop

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_1b2
        :pswitch_1b5
    .end packed-switch
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 7257
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 7258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 7259
    return-void
.end method

.method public clearComposingText()V
    .registers 2

    .prologue
    .line 7019
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_d

    .line 7020
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 7022
    :cond_d
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 7381
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 7382
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 7384
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 6069
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1f

    .line 6070
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6071
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 6072
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 6073
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 6076
    :cond_1f
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 7397
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 7389
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 7390
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 7392
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V
    .registers 12
    .parameter "paste"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 10292
    const/4 v1, 0x0

    .line 10293
    .local v1, min:I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 10295
    .local v0, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 10296
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 10297
    .local v5, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 10299
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10300
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10303
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    :cond_27
    if-eqz p1, :cond_69

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_69

    .line 10305
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 10306
    invoke-direct {p0, v1, v0, p1}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v2

    .line 10307
    .local v2, minMax:J
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v1

    .line 10308
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 10311
    .end local v2           #minMax:J
    :cond_4b
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10312
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v6, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10313
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 10315
    iput-boolean v8, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 10316
    iget-object v6, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v6, :cond_69

    iget-boolean v6, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v6, :cond_69

    .line 10317
    invoke-virtual {p0, v9, v9}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 10321
    :cond_69
    return-void
.end method

.method public debug(I)V
    .registers 6
    .parameter "depth"

    .prologue
    const-string v3, ", "

    .line 6112
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6114
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6115
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6119
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c1

    .line 6121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6122
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_bb

    .line 6123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6129
    :cond_bb
    :goto_bb
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    return-void

    .line 6127
    :cond_c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bb
.end method

.method public didTouchFocusSelect()Z
    .registers 2

    .prologue
    .line 7252
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 6799
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6800
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 6801
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6802
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 7726
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    .line 7746
    :goto_8
    return v2

    .line 7730
    :cond_9
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v2}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 7732
    .local v0, isPassword:Z
    if-nez v0, :cond_3c

    .line 7733
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7734
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7735
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7737
    :cond_1f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 7738
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_33

    .line 7739
    const/16 v2, 0x1f5

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7741
    :cond_33
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3a
    :goto_3a
    move v2, v4

    .line 7746
    goto :goto_8

    .line 7744
    :cond_3c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    goto :goto_3a
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 2429
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2430
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_f
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_1b
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2433
    :cond_27
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2436
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2437
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_76

    .line 2438
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2439
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_43

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2440
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2442
    :cond_43
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_54

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2443
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2445
    :cond_54
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2446
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2448
    :cond_65
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_76

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2449
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2452
    .end local v1           #state:[I
    :cond_76
    return-void
.end method

.method public enableSelection()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0xff

    .line 10283
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10284
    iput-boolean v1, p0, Landroid/widget/TextView;->mEnableSelection:Z

    .line 10285
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 10286
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 10287
    return-void
.end method

.method public endBatchEdit()V
    .registers 5

    .prologue
    .line 5076
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 5077
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5078
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_13

    .line 5079
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5080
    .local v1, nesting:I
    if-nez v1, :cond_13

    .line 5081
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 5084
    .end local v1           #nesting:I
    :cond_13
    return-void
.end method

.method ensureEndedBatchEdit()V
    .registers 3

    .prologue
    .line 5087
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5088
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 5089
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5090
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 5092
    :cond_e
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 4860
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 16
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v9, 0x0

    .line 4870
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4871
    .local v2, content:Ljava/lang/CharSequence;
    if-eqz v2, :cond_97

    .line 4872
    const/4 v7, -0x2

    if-eq p2, v7, :cond_8e

    .line 4873
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4874
    .local v1, N:I
    if-gez p2, :cond_4d

    .line 4875
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4876
    const/4 p2, 0x0

    .line 4877
    move p3, v1

    .line 4909
    :cond_15
    :goto_15
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_87

    .line 4910
    invoke-interface {v2, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4921
    .end local v1           #N:I
    :goto_21
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4922
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/high16 v8, 0x1

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 4923
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4925
    :cond_33
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_3d

    .line 4926
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4928
    :cond_3d
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 4929
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4930
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4931
    const/4 v7, 0x1

    .line 4933
    :goto_4c
    return v7

    .line 4880
    .restart local v1       #N:I
    :cond_4d
    instance-of v7, v2, Landroid/text/Spanned;

    if-eqz v7, :cond_73

    .line 4881
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 4882
    .local v5, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v5, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 4884
    .local v6, spans:[Ljava/lang/Object;
    array-length v3, v6

    .line 4885
    .local v3, i:I
    :cond_5c
    :goto_5c
    if-lez v3, :cond_73

    .line 4886
    add-int/lit8 v3, v3, -0x1

    .line 4887
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 4888
    .local v4, j:I
    if-ge v4, p2, :cond_69

    move p2, v4

    .line 4889
    :cond_69
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 4890
    if-le v4, p3, :cond_5c

    move p3, v4

    goto :goto_5c

    .line 4893
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #spanned:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    :cond_73
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4894
    iput p3, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4897
    add-int/2addr p3, p4

    .line 4898
    if-le p2, v1, :cond_7f

    .line 4899
    move p2, v1

    .line 4903
    :cond_7b
    :goto_7b
    if-le p3, v1, :cond_83

    .line 4904
    move p3, v1

    goto :goto_15

    .line 4900
    :cond_7f
    if-gez p2, :cond_7b

    .line 4901
    const/4 p2, 0x0

    goto :goto_7b

    .line 4905
    :cond_83
    if-gez p3, :cond_15

    .line 4906
    const/4 p3, 0x0

    goto :goto_15

    .line 4913
    :cond_87
    invoke-static {v2, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    .line 4917
    .end local v1           #N:I
    :cond_8e
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4918
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4919
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    :cond_97
    move v7, v9

    .line 4933
    goto :goto_4c
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .registers 3
    .parameter "ims"

    .prologue
    .line 5095
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 5097
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_12

    .line 5098
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 5099
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 5104
    :cond_11
    :goto_11
    return-void

    .line 5100
    :cond_12
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_11

    .line 5102
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_11
.end method

.method public final getAutoLinkMask()I
    .registers 2

    .prologue
    .line 1723
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .registers 5

    .prologue
    .line 4481
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_9

    .line 4482
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 4490
    :goto_8
    return v1

    .line 4485
    :cond_9
    const/4 v0, 0x0

    .line 4486
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_17

    .line 4487
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 4490
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method protected getBottomPaddingOffset()I
    .registers 4

    .prologue
    .line 4041
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 3

    .prologue
    .line 1697
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1698
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_6
    return v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1660
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1661
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_1d

    .line 1662
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 1666
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_1c
.end method

.method public getCompoundPaddingBottom()I
    .registers 4

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1355
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1356
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 1358
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1368
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1369
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 1371
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1381
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1382
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 1384
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingTop()I
    .registers 4

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1342
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1343
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 1345
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    .prologue
    .line 2063
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_6
.end method

.method public final getCurrentTextColor()I
    .registers 2

    .prologue
    .line 1932
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6244
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3473
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .registers 8

    .prologue
    .line 1427
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1428
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 1450
    :goto_9
    return v5

    .line 1431
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1432
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    goto :goto_9

    .line 1435
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1436
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1437
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1438
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1440
    .local v2, layoutht:I
    if-lt v2, v4, :cond_34

    move v5, v0

    .line 1441
    goto :goto_9

    .line 1444
    :cond_34
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1445
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_40

    .line 1446
    add-int v5, v0, v4

    sub-int/2addr v5, v2

    goto :goto_9

    .line 1447
    :cond_40
    const/16 v5, 0x50

    if-ne v1, v5, :cond_46

    move v5, v0

    .line 1448
    goto :goto_9

    .line 1450
    :cond_46
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    goto :goto_9
.end method

.method public getExtendedPaddingTop()I
    .registers 8

    .prologue
    .line 1394
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1395
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    .line 1417
    :goto_9
    return v5

    .line 1398
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1399
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    goto :goto_9

    .line 1402
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1403
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1404
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1405
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1407
    .local v2, layoutht:I
    if-lt v2, v4, :cond_34

    move v5, v3

    .line 1408
    goto :goto_9

    .line 1411
    :cond_34
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1412
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3e

    move v5, v3

    .line 1413
    goto :goto_9

    .line 1414
    :cond_3e
    const/16 v5, 0x50

    if-ne v1, v5, :cond_46

    .line 1415
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    goto :goto_9

    .line 1417
    :cond_46
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    goto :goto_9
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 3735
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "r"

    .prologue
    .line 4414
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_8

    .line 4415
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4439
    :goto_7
    return-void

    .line 4419
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4420
    .local v3, sel:I
    if-gez v3, :cond_12

    .line 4421
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 4425
    :cond_12
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 4426
    .local v0, line:I
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 4427
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 4429
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 4430
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 4433
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4434
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    .line 4435
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4d

    .line 4436
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 4438
    :cond_4d
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7
.end method

.method public getFreezesText()Z
    .registers 2

    .prologue
    .line 2664
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 2143
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 3047
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2054
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getHysteresisOffset(III)I
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "previousOffset"

    .prologue
    const/4 v8, 0x1

    .line 9222
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 9223
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_9

    const/4 v6, -0x1

    .line 9245
    :goto_8
    return v6

    .line 9225
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr p2, v6

    .line 9227
    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 9228
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9229
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr p2, v6

    .line 9231
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 9233
    .local v2, line:I
    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 9234
    .local v3, previousLine:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 9235
    .local v5, previousLineTop:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 9236
    .local v4, previousLineBottom:I
    sub-int v6, v4, v5

    div-int/lit8 v0, v6, 0x8

    .line 9240
    .local v0, hysteresisThreshold:I
    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_46

    sub-int v6, p2, v4

    if-lt v6, v0, :cond_4e

    :cond_46
    sub-int v6, v3, v8

    if-ne v2, v6, :cond_4f

    sub-int v6, v5, p2

    if-ge v6, v0, :cond_4f

    .line 9242
    :cond_4e
    move v2, v3

    .line 9245
    :cond_4f
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v6

    goto :goto_8
.end method

.method public getImeActionId()I
    .registers 2

    .prologue
    .line 3313
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3302
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 3273
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .registers 4
    .parameter "create"

    .prologue
    const/4 v1, 0x0

    .line 3456
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_10

    .line 3457
    if-nez p1, :cond_9

    move-object v0, v1

    .line 3464
    :goto_8
    return-object v0

    .line 3458
    :cond_9
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3460
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_23

    .line 3461
    if-nez p1, :cond_1a

    move-object v0, v1

    goto :goto_8

    .line 3462
    :cond_1a
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3464
    :cond_23
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_8
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 3248
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$CursorController;
    .registers 3

    .prologue
    .line 9263
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 9264
    const/4 v1, 0x0

    .line 9276
    :goto_5
    return-object v1

    .line 9267
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1c

    .line 9268
    new-instance v1, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 9270
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9271
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1c

    .line 9272
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 9276
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_5
.end method

.method public getIsInTextSelectionMode()Z
    .registers 2

    .prologue
    .line 9442
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 7330
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_35

    .line 7331
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_27

    .line 7332
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7333
    .local v0, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 7334
    iget v1, v0, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 7351
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :goto_24
    return v1

    .restart local v0       #marquee:Landroid/widget/TextView$Marquee;
    :cond_25
    move v1, v3

    .line 7336
    goto :goto_24

    .line 7338
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :cond_27
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 7339
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_66

    .line 7351
    :cond_35
    :pswitch_35
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    goto :goto_24

    :pswitch_3a
    move v1, v3

    .line 7341
    goto :goto_24

    .line 7343
    :pswitch_3c
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_24

    :pswitch_63
    move v1, v3

    .line 7347
    goto :goto_24

    .line 7339
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_63
        :pswitch_35
        :pswitch_3a
        :pswitch_35
        :pswitch_3c
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .registers 5

    .prologue
    .line 4030
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 7
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 4459
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_c

    .line 4460
    if-eqz p2, :cond_a

    .line 4461
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    move v2, v3

    .line 4475
    :goto_b
    return v2

    .line 4466
    :cond_c
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 4468
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 4469
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_24

    .line 4470
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 4472
    :cond_24
    if-eqz p2, :cond_2d

    .line 4473
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4475
    :cond_2d
    add-int v2, v0, v1

    goto :goto_b
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 4446
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLineHeight()I
    .registers 3

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2093
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    .prologue
    .line 2009
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffset(II)I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9208
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, -0x1

    .line 9218
    :goto_7
    return v2

    .line 9210
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 9212
    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 9213
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9214
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 9216
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 9217
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v1

    .local v1, offset:I
    move v2, v1

    .line 9218
    goto :goto_7
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 1972
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3422
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 7356
    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_2f

    .line 7357
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v3

    if-nez v3, :cond_21

    .line 7358
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7359
    .local v1, marquee:Landroid/widget/TextView$Marquee;
    iget v3, v1, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v4, v1, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7376
    .end local v1           #marquee:Landroid/widget/TextView$Marquee;
    :goto_20
    return v3

    .line 7360
    :cond_21
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 7361
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_74

    .line 7376
    :cond_2f
    :pswitch_2f
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v3

    goto :goto_20

    .line 7363
    :pswitch_34
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 7365
    .local v2, textWidth:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 7366
    .local v0, lineWidth:F
    int-to-float v3, v2

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_20

    .line 7368
    .end local v0           #lineWidth:F
    .end local v2           #textWidth:I
    :pswitch_54
    const/4 v3, 0x0

    goto :goto_20

    .line 7370
    :pswitch_56
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_20

    .line 7361
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_56
        :pswitch_2f
        :pswitch_34
        :pswitch_2f
        :pswitch_54
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .registers 5

    .prologue
    .line 4046
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$CursorController;
    .registers 3

    .prologue
    .line 9280
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 9281
    const/4 v1, 0x0

    .line 9293
    :goto_5
    return-object v1

    .line 9284
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1c

    .line 9285
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 9287
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9288
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1c

    .line 9289
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 9293
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_5
.end method

.method public getSelectionEnd()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 6145
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 6137
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1923
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .registers 2

    .prologue
    .line 1839
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 1783
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 4

    .prologue
    .line 4036
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .registers 3

    .prologue
    .line 1485
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    .prologue
    .line 1459
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    .prologue
    .line 1467
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 3

    .prologue
    .line 1476
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .prologue
    .line 1309
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 1888
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2020
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1b

    .line 2021
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/text/style/URLSpan;

    move-object v0, p0

    .line 2023
    :goto_1a
    return-object v0

    .restart local p0
    :cond_1b
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_1a
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6573
    if-eq p3, p4, :cond_8

    .line 6574
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6575
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6578
    :cond_8
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6579
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_10

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_13

    .line 6580
    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6582
    :cond_13
    if-eqz v0, :cond_29

    .line 6583
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6584
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_30

    .line 6585
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6586
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6591
    :cond_22
    :goto_22
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6594
    :cond_29
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 6595
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6596
    return-void

    .line 6588
    :cond_30
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v1, p2, :cond_36

    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6589
    :cond_36
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    if-ge v1, v2, :cond_22

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_22
.end method

.method hasInsertionController()Z
    .registers 2

    .prologue
    .line 9252
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .registers 4

    .prologue
    .line 6152
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6153
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6155
    .local v0, selectionEnd:I
    if-ltz v1, :cond_e

    if-eq v1, v0, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method hasSelectionController()Z
    .registers 2

    .prologue
    .line 9259
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .registers 2

    .prologue
    .line 8278
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_9

    .line 8279
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8281
    :cond_9
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 16
    .parameter "drawable"

    .prologue
    .line 4062
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 4063
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4064
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .line 4065
    .local v7, scrollX:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 4070
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4071
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_31

    .line 4072
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_41

    .line 4073
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4074
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4075
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4077
    .local v9, vspace:I
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 4078
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4103
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_31
    :goto_31
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4106
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_40
    return-void

    .line 4079
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_41
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_6a

    .line 4080
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4081
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4082
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4084
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 4085
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4086
    goto :goto_31

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_6a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_8a

    .line 4087
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4088
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4089
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4091
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4092
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 4093
    goto :goto_31

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_8a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_31

    .line 4094
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4095
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4096
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4098
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4099
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_31
.end method

.method public isIMEChangable()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsIMEChangable:Z

    return v0
.end method

.method isInBatchEditMode()Z
    .registers 3

    .prologue
    .line 9297
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 9298
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_c

    .line 9299
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 9301
    :goto_9
    return v1

    .line 9299
    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 9301
    :cond_c
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_9
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 7945
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7946
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 4025
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 29
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 5196
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 5198
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5200
    if-gez p1, :cond_d

    .line 5201
    const/16 p1, 0x0

    .line 5203
    :cond_d
    if-gez p2, :cond_11

    .line 5204
    const/16 p2, 0x0

    .line 5208
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v2, v0

    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_4aa

    .line 5218
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5221
    .local v7, alignment:Landroid/text/Layout$Alignment;
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_145

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v2, v0

    if-nez v2, :cond_145

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5223
    .local v21, shouldEllipsize:Z
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_14e

    .line 5224
    new-instance v2, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v6, v0

    if-nez v6, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    move-object v11, v6

    :goto_64
    move/from16 v6, p1

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5289
    :goto_70
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_334

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5290
    :goto_7a
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    if-eqz v2, :cond_105

    .line 5293
    if-eqz v21, :cond_8b

    move/from16 p2, p1

    .line 5295
    :cond_8b
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    move-object v1, v2

    if-ne v0, v1, :cond_ad

    .line 5296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 5298
    if-eqz p4, :cond_ad

    .line 5299
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5303
    :cond_ad
    if-eqz p4, :cond_43c

    .line 5304
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_361

    if-eqz v21, :cond_c5

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_361

    .line 5306
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_339

    .line 5307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5317
    :goto_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/text/BoringLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5355
    :cond_105
    :goto_105
    if-eqz p6, :cond_10a

    .line 5356
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5359
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_139

    .line 5360
    move/from16 v0, p5

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_139

    .line 5361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    .line 5364
    .local v20, height:I
    const/4 v2, -0x2

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_4a1

    const/4 v2, -0x1

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_4a1

    .line 5365
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5374
    .end local v20           #height:I
    :cond_139
    :goto_139
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 5375
    return-void

    .line 5210
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    .end local v21           #shouldEllipsize:Z
    .restart local p1
    :sswitch_13d
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 5211
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_1d

    .line 5214
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_141
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 5215
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_1d

    .line 5221
    :cond_145
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_2e

    .line 5224
    .restart local v21       #shouldEllipsize:Z
    :cond_14a
    const/4 v6, 0x0

    move-object v11, v6

    goto/16 :goto_64

    .line 5229
    :cond_14e
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p3

    move-object v1, v2

    if-ne v0, v1, :cond_170

    .line 5230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p3

    .line 5232
    if-eqz p3, :cond_170

    .line 5233
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5237
    :cond_170
    if-eqz p3, :cond_2cf

    .line 5238
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_1f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_18d

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_1f4

    .line 5240
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_1cd

    .line 5241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5251
    :goto_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v2, v0

    check-cast v2, Landroid/text/BoringLayout;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_70

    .line 5246
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_1bf

    .line 5252
    :cond_1f4
    if-eqz v21, :cond_26a

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_26a

    .line 5253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_23b

    .line 5254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5260
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5265
    :cond_26a
    if-eqz v21, :cond_2a8

    .line 5266
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5272
    :cond_2a8
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5276
    :cond_2cf
    if-eqz v21, :cond_30d

    .line 5277
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5283
    :cond_30d
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5289
    :cond_334
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_7a

    .line 5312
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_f7

    .line 5318
    :cond_361
    if-eqz v21, :cond_3d7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_3d7

    .line 5319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_3a8

    .line 5320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5326
    :cond_3a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5331
    :cond_3d7
    if-eqz v21, :cond_415

    .line 5332
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5338
    :cond_415
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5342
    :cond_43c
    if-eqz v21, :cond_47a

    .line 5343
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5349
    :cond_47a
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5368
    .end local p1
    .restart local v20       #height:I
    :cond_4a1
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_139

    .line 5208
    nop

    :sswitch_data_4aa
    .sparse-switch
        0x1 -> :sswitch_13d
        0x5 -> :sswitch_141
    .end sparse-switch
.end method

.method public moveCursorToVisibleOffset()Z
    .registers 20

    .prologue
    .line 6018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v16, v0

    if-nez v16, :cond_11

    .line 6019
    const/16 v16, 0x0

    .line 6064
    .end local p0
    :goto_10
    return v16

    .line 6021
    .restart local p0
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 6022
    .local v11, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6023
    .local v4, end:I
    if-eq v11, v4, :cond_1e

    .line 6024
    const/16 v16, 0x0

    goto :goto_10

    .line 6029
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 6031
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 6032
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 6033
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v17

    sub-int v15, v16, v17

    .line 6034
    .local v15, vspace:I
    sub-int v16, v3, v12

    div-int/lit8 v14, v16, 0x2

    .line 6035
    .local v14, vslack:I
    div-int/lit8 v16, v15, 0x4

    move v0, v14

    move/from16 v1, v16

    if-le v0, v1, :cond_6b

    .line 6036
    div-int/lit8 v14, v15, 0x4

    .line 6037
    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v13, v0

    .line 6039
    .local v13, vs:I
    add-int v16, v13, v14

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_e7

    .line 6040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v13, v14

    sub-int v18, v3, v12

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 6047
    :cond_87
    :goto_87
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    sub-int v6, v16, v17

    .line 6048
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    .line 6049
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 6050
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v6, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v10

    .line 6052
    .local v10, rightChar:I
    move v9, v11

    .line 6053
    .local v9, newStart:I
    if-ge v9, v7, :cond_103

    .line 6054
    move v9, v7

    .line 6059
    :cond_d3
    :goto_d3
    if-eq v9, v11, :cond_107

    .line 6060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6061
    const/16 v16, 0x1

    goto/16 :goto_10

    .line 6041
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #newStart:I
    .end local v10           #rightChar:I
    .restart local p0
    :cond_e7
    add-int v16, v15, v13

    sub-int v16, v16, v14

    move v0, v3

    move/from16 v1, v16

    if-le v0, v1, :cond_87

    .line 6042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v15, v13

    sub-int v17, v17, v14

    sub-int v18, v3, v12

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_87

    .line 6055
    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v9       #newStart:I
    .restart local v10       #rightChar:I
    :cond_103
    if-le v9, v10, :cond_d3

    .line 6056
    move v9, v10

    goto :goto_d3

    .line 6064
    :cond_107
    const/16 v16, 0x0

    goto/16 :goto_10
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3966
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3968
    iput-boolean v2, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3970
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_f

    .line 3971
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 3972
    iput-boolean v2, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3975
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3976
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_27

    .line 3977
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1e

    .line 3978
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3980
    :cond_1e
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_27

    .line 3981
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3984
    :cond_27
    return-void
.end method

.method public onBeginBatchEdit()V
    .registers 1

    .prologue
    .line 5132
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 4801
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 5050
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 10254
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 10255
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Landroid/widget/TextView;->mOrientation:I

    if-eq v0, v1, :cond_f

    .line 10256
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 10257
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 10259
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/widget/TextView;->mOrientation:I

    .line 10262
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1f

    .line 10263
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 10264
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    .line 10268
    :cond_1f
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 15
    .parameter "menu"

    .prologue
    .line 7777
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7778
    const/4 v1, 0x0

    .line 7779
    .local v1, added:Z
    iget-boolean v9, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    if-nez v9, :cond_c

    iget-boolean v9, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    if-eqz v9, :cond_9b

    :cond_c
    const/4 v9, 0x1

    :goto_d
    iput-boolean v9, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 7781
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 7782
    .local v7, startOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7790
    .local v0, EndOffset:I
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    iput-boolean v9, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 7792
    const/4 v9, -0x1

    if-le v7, v9, :cond_28

    const/4 v9, -0x1

    if-le v0, v9, :cond_28

    .line 7793
    if-eq v7, v0, :cond_a2

    .line 7795
    iget v9, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v9, :cond_9e

    .line 7808
    :cond_28
    :goto_28
    iget-boolean v9, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v9, :cond_a6

    .line 7809
    new-instance v2, Landroid/widget/TextView$MenuHandler;

    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7811
    .local v2, handler:Landroid/widget/TextView$MenuHandler;
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 7812
    const/4 v9, 0x0

    const v10, 0x1020020

    const/4 v11, 0x0

    const v12, 0x1040003

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v10, 0x78

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7815
    const/4 v1, 0x1

    .line 7818
    :cond_4e
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 7819
    const/4 v9, 0x0

    const v10, 0x1020021

    const/4 v11, 0x0

    const v12, 0x1040001

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v10, 0x63

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7822
    const/4 v1, 0x1

    .line 7825
    :cond_6a
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 7826
    const/4 v9, 0x0

    const v10, 0x1020022

    const/4 v11, 0x0

    const v12, 0x104000b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v10, 0x76

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7829
    const/4 v1, 0x1

    .line 7924
    .end local v0           #EndOffset:I
    :cond_86
    :goto_86
    if-eqz v1, :cond_91

    .line 7925
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7926
    const v9, 0x104038c

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 7930
    :cond_91
    instance-of v9, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v9, :cond_98

    .line 7931
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7936
    :cond_98
    sput-object p1, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    .line 7938
    return-void

    .line 7779
    .end local v2           #handler:Landroid/widget/TextView$MenuHandler;
    .end local v7           #startOffset:I
    :cond_9b
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 7797
    .restart local v0       #EndOffset:I
    .restart local v7       #startOffset:I
    :cond_9e
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_28

    .line 7803
    :cond_a2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_28

    .line 7842
    :cond_a6
    new-instance v2, Landroid/widget/TextView$MenuHandler;

    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7844
    .restart local v2       #handler:Landroid/widget/TextView$MenuHandler;
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 7845
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v9

    if-nez v9, :cond_c7

    .line 7849
    const/4 v9, 0x0

    const v10, 0x1020028

    const/4 v11, 0x0

    const v12, 0x1040385

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7852
    :cond_c7
    const/4 v9, 0x0

    const v10, 0x102001f

    const/4 v11, 0x0

    const v12, 0x104000d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v10, 0x61

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7855
    const/4 v1, 0x1

    .line 7858
    :cond_dd
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spanned;

    if-eqz v9, :cond_113

    .line 7859
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 7860
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 7862
    .local v5, selEnd:I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7863
    .local v4, min:I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7865
    .local v3, max:I
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local v0           #EndOffset:I
    check-cast v0, Landroid/text/Spanned;

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v3, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 7867
    .local v8, urls:[Landroid/text/style/URLSpan;
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_113

    .line 7868
    const/4 v9, 0x0

    const v10, 0x1020023

    const/4 v11, 0x0

    const v12, 0x1040002

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7870
    const/4 v1, 0x1

    .line 7874
    .end local v3           #max:I
    .end local v4           #min:I
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    .end local v8           #urls:[Landroid/text/style/URLSpan;
    :cond_113
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v9

    if-eqz v9, :cond_12f

    .line 7875
    const/4 v9, 0x0

    const v10, 0x1020022

    const/4 v11, 0x0

    const v12, 0x104000b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v10, 0x76

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7878
    const/4 v1, 0x1

    .line 7903
    :cond_12f
    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v9

    if-eqz v9, :cond_86

    invoke-virtual {p0}, Landroid/widget/TextView;->isIMEChangable()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 7904
    const/4 v9, 0x1

    const v10, 0x1020024

    const/4 v11, 0x0

    const v12, 0x104038a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7906
    const/4 v1, 0x1

    goto/16 :goto_86
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6
    .parameter "outAttrs"

    .prologue
    const/high16 v3, 0x4000

    .line 4805
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 4806
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_13

    .line 4807
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4809
    :cond_13
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4810
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_8d

    .line 4811
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4812
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4813
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 4814
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 4815
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4819
    :goto_39
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_58

    .line 4821
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 4824
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4830
    :goto_4d
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_58

    .line 4831
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4834
    :cond_58
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0x2000f

    and-int/2addr v1, v2

    const v2, 0x20001

    if-ne v1, v2, :cond_68

    .line 4839
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4841
    :cond_68
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4842
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_98

    .line 4843
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 4844
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 4845
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 4846
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move-object v1, v0

    .line 4850
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_8c
    return-object v1

    .line 4817
    :cond_8d
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_39

    .line 4828
    :cond_91
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_4d

    .line 4850
    :cond_98
    const/4 v1, 0x0

    goto :goto_8c
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 3988
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3990
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3991
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_25

    .line 3992
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_13

    .line 3993
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3994
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3996
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1c

    .line 3997
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3999
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_25

    .line 4000
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4004
    :cond_25
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2c

    .line 4005
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 4008
    :cond_2c
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_35

    .line 4009
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1}, Landroid/widget/TextView$Blink;->cancel()V

    .line 4012
    :cond_35
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_3e

    .line 4013
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 4016
    :cond_3e
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_47

    .line 4017
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 4020
    :cond_47
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4021
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 48
    .parameter "canvas"

    .prologue
    .line 4110
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4113
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4115
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v24

    .line 4116
    .local v24, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v26

    .line 4117
    .local v26, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    .line 4118
    .local v25, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v23

    .line 4119
    .local v23, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v39, v0

    .line 4120
    .local v39, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v40, v0

    .line 4121
    .local v40, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v38, v0

    .line 4122
    .local v38, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v35, v0

    .line 4123
    .local v35, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    .line 4124
    .local v17, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v42, v0

    .line 4126
    .local v42, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v28, v0

    .line 4127
    .local v28, dr:Landroid/widget/TextView$Drawables;
    if-eqz v28, :cond_130

    .line 4133
    sub-int v6, v17, v42

    sub-int v6, v6, v23

    sub-int v45, v6, v26

    .line 4134
    .local v45, vspace:I
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    sub-int v32, v6, v24

    .line 4138
    .local v32, hspace:I
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_82

    .line 4139
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4140
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v6, v0

    add-int v6, v6, v39

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4143
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4149
    :cond_82
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_bf

    .line 4150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4151
    add-int v6, v39, v38

    sub-int v6, v6, v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4153
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4159
    :cond_bf
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_f3

    .line 4160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4161
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v7, v0

    add-int v7, v7, v40

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4163
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4169
    :cond_f3
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_130

    .line 4170
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4171
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v17

    sub-int v7, v7, v42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4174
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4175
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4179
    .end local v32           #hspace:I
    .end local v45           #vspace:I
    :cond_130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPreDrawState:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_14b

    .line 4180
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v36

    .line 4181
    .local v36, observer:Landroid/view/ViewTreeObserver;
    if-eqz v36, :cond_14b

    .line 4182
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4183
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 4187
    .end local v36           #observer:Landroid/view/ViewTreeObserver;
    :cond_14b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v22, v0

    .line 4189
    .local v22, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    if-nez v6, :cond_15b

    .line 4190
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4193
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4194
    .local v34, layout:Landroid/text/Layout;
    move/from16 v27, v22

    .line 4196
    .local v27, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_188

    .line 4197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object v6, v0

    if-eqz v6, :cond_182

    .line 4198
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v22, v0

    .line 4201
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4204
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v7

    iput-object v7, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 4207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4212
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v30

    .line 4213
    .local v30, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v29

    .line 4215
    .local v29, extendedPaddingBottom:I
    add-int v6, v24, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 4216
    .local v19, clipLeft:F
    add-int v6, v30, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    .line 4217
    .local v21, clipTop:F
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    add-int v6, v6, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    .line 4218
    .local v20, clipRight:F
    sub-int v6, v17, v42

    sub-int v6, v6, v29

    add-int v6, v6, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    .line 4220
    .local v18, clipBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_21b

    .line 4221
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 4222
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 4224
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 4225
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v18, v18, v6

    .line 4228
    :cond_21b
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4230
    const/16 v44, 0x0

    .line 4231
    .local v44, voffsetText:I
    const/16 v43, 0x0

    .line 4236
    .local v43, voffsetCursor:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x70

    const/16 v7, 0x30

    if-eq v6, v7, :cond_247

    .line 4237
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v44

    .line 4238
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v43

    .line 4240
    :cond_247
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-int v7, v30, v44

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2c7

    .line 4244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSingleLine:Z

    move v6, v0

    if-nez v6, :cond_2a5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_2a5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2a5

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4250
    :cond_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_2c7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2c7

    .line 4251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4255
    :cond_2c7
    const/16 v31, 0x0

    .line 4256
    .local v31, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 4264
    .local v8, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v6, v0

    if-eqz v6, :cond_2de

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_2e5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_2e5

    :cond_2de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mEnableSelection:Z

    move v6, v0

    if-eqz v6, :cond_364

    .line 4265
    :cond_2e5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 4266
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 4268
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCursorVisible:Z

    move v6, v0

    if-eqz v6, :cond_364

    if-ltz v7, :cond_364

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_364

    .line 4269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    if-nez v6, :cond_30d

    .line 4270
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 4272
    :cond_30d
    if-ne v7, v8, :cond_50c

    .line 4273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mShowCursor:J

    move-wide v13, v0

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v11, v13

    if-gez v6, :cond_364

    .line 4274
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_349

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 4277
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4281
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 4313
    :cond_364
    :goto_364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v33, v0

    .line 4314
    .local v33, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v33, :cond_470

    move-object/from16 v0, v33

    iget v0, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    move v6, v0

    if-nez v6, :cond_470

    .line 4315
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 4316
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_470

    .line 4317
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3ba

    .line 4318
    const/16 v37, 0x0

    .line 4319
    .local v37, reported:Z
    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    move v6, v0

    if-nez v6, :cond_392

    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    move v6, v0

    if-eqz v6, :cond_396

    .line 4323
    :cond_392
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v37

    .line 4325
    :cond_396
    if-nez v37, :cond_3ba

    if-eqz v31, :cond_3ba

    .line 4326
    const/4 v9, -0x1

    .line 4327
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 4328
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_3b5

    .line 4329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    check-cast v41, Landroid/text/Spannable;

    .line 4330
    .local v41, sp:Landroid/text/Spannable;
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 4331
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v41           #sp:Landroid/text/Spannable;
    :cond_3b5
    move-object/from16 v6, p0

    .line 4333
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4337
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v37           #reported:Z
    :cond_3ba
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_470

    if-eqz v31, :cond_470

    .line 4338
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, v31

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4339
    .end local v7           #selStart:I
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    .end local v8           #selEnd:I
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v6, v7

    .line 4341
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4342
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4344
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x0

    sub-int v8, v43, v44

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4346
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v7, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v11, v8

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v8, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v9, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4351
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4358
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_4b9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_4b9

    .line 4361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4368
    :cond_4b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_505

    const-string/jumbo v6, "service.gate.enabled"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_505

    const-string/jumbo v6, "service.gate.lcdtexton"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_505

    .line 4371
    const-string v6, "GATE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<GATE-M>LCDSTR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/LCDSTR</GATE-M>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    :cond_505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorControllerPositions()V

    .line 4387
    return-void

    .line 4287
    .end local v33           #ims:Landroid/widget/TextView$InputMethodState;
    .restart local v7       #selStart:I
    .restart local v8       #selEnd:I
    :cond_50c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_52e

    .line 4288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4290
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4294
    :cond_52e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move v9, v0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    goto/16 :goto_364
.end method

.method public onEditorAction(I)V
    .registers 25
    .parameter "actionCode"

    .prologue
    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v20, v0

    .line 3353
    .local v20, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v20, :cond_5f

    .line 3354
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    if-eqz v4, :cond_22

    .line 3355
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3399
    :cond_21
    :goto_21
    return-void

    .line 3366
    :cond_22
    const/4 v4, 0x5

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_46

    .line 3367
    const/16 v4, 0x82

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v22

    .line 3368
    .local v22, v:Landroid/view/View;
    if-eqz v22, :cond_21

    .line 3369
    const/16 v4, 0x82

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 3370
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3376
    .end local v22           #v:Landroid/view/View;
    :cond_46
    const/4 v4, 0x6

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_5f

    .line 3377
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 3378
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_21

    .line 3379
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_21

    .line 3385
    .end local v21           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v19

    .line 3386
    .local v19, h:Landroid/os/Handler;
    if-eqz v19, :cond_21

    .line 3387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3388
    .local v5, eventTime:J
    const/16 v16, 0x3f3

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v5

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3393
    const/16 v4, 0x3f3

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v5

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_21
.end method

.method public onEndBatchEdit()V
    .registers 1

    .prologue
    .line 5139
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 6814
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 6817
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6818
    :cond_a
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 15
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "SGH-I777"

    .line 6822
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_c

    .line 6824
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6948
    :goto_b
    return-void

    .line 6828
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6830
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 6832
    if-eqz p1, :cond_f9

    .line 6833
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 6834
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 6838
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_db

    if-nez v9, :cond_db

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_db

    move v6, v3

    .line 6840
    .local v6, isFocusHighlighted:Z
    :goto_2e
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_de

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_de

    if-nez v6, :cond_de

    move v0, v3

    :goto_3b
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 6842
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_45

    if-ltz v9, :cond_45

    if-gez v8, :cond_a9

    .line 6845
    :cond_45
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 6846
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_5a

    .line 6847
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6849
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 6850
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6862
    :cond_5a
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_67

    .line 6863
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 6871
    :cond_67
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_6f

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_7a

    :cond_6f
    if-ltz v9, :cond_7a

    if-ltz v8, :cond_7a

    .line 6882
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6887
    :cond_7a
    const-string v0, "SGH-I777"

    if-eqz v4, :cond_e1

    const-string v0, "SGH-I777"

    const-string v0, "SGH-I927"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 6888
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-nez v0, :cond_90

    iget-boolean v0, p0, Landroid/widget/TextView;->mTempSelectAll:Z

    if-eqz v0, :cond_a7

    :cond_90
    instance-of v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;

    if-eqz v0, :cond_98

    const/16 v0, 0x11

    if-lt p2, v0, :cond_a7

    .line 6889
    :cond_98
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6890
    iput-boolean v2, p0, Landroid/widget/TextView;->mTempSelectAll:Z

    .line 6900
    :cond_a7
    :goto_a7
    iput-boolean v3, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 6903
    .end local v7           #lastTapPosition:I
    :cond_a9
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 6904
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6906
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_ba

    .line 6907
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 6908
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 6911
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_ba
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6913
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c4

    .line 6914
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 6941
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_c4
    :goto_c4
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 6943
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_d6

    .line 6944
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 6947
    :cond_d6
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_b

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_db
    move v6, v2

    .line 6838
    goto/16 :goto_2e

    .restart local v6       #isFocusHighlighted:Z
    :cond_de
    move v0, v2

    .line 6840
    goto/16 :goto_3b

    .line 6893
    .restart local v7       #lastTapPosition:I
    :cond_e1
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-nez v0, :cond_e9

    iget-boolean v0, p0, Landroid/widget/TextView;->mTempSelectAll:Z

    if-eqz v0, :cond_a7

    .line 6894
    :cond_e9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6895
    iput-boolean v2, p0, Landroid/widget/TextView;->mTempSelectAll:Z

    goto :goto_a7

    .line 6917
    .end local v6           #isFocusHighlighted:Z
    .end local v7           #lastTapPosition:I
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_f9
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_100

    .line 6918
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 6921
    :cond_100
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6923
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 6924
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_11a

    .line 6927
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 6932
    :goto_10c
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_117

    .line 6933
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v0, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 6937
    :cond_117
    iput-boolean v2, p0, Landroid/widget/TextView;->mTempSelectAll:Z

    goto :goto_c4

    .line 6929
    :cond_11a
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_10c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4495
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4496
    .local v0, which:I
    if-nez v0, :cond_c

    .line 4498
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4501
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4506
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4508
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 4509
    .local v2, which:I
    if-nez v2, :cond_12

    .line 4511
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4544
    :goto_11
    return v3

    .line 4513
    :cond_12
    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    move v3, v5

    .line 4515
    goto :goto_11

    .line 4518
    :cond_17
    add-int/lit8 p2, p2, -0x1

    .line 4525
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4526
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4c

    .line 4527
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4528
    :goto_28
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3f

    .line 4529
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4530
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_28

    .line 4532
    :cond_3f
    iget-object v3, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v3, :cond_4a

    .line 4533
    invoke-virtual {p0, v6, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_4a
    move v3, v5

    .line 4544
    goto :goto_11

    .line 4536
    :cond_4c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4a

    .line 4537
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4538
    :goto_58
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_4a

    .line 4539
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4540
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_58
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 9461
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1a

    .line 9462
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 9463
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 9466
    :cond_14
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 9467
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 9469
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7451
    sparse-switch p1, :sswitch_data_40

    .line 7481
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 7453
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7454
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7460
    :sswitch_16
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7461
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7467
    :sswitch_24
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7468
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7474
    :sswitch_32
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7475
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7451
    :sswitch_data_40
    .sparse-switch
        0x1d -> :sswitch_8
        0x1f -> :sswitch_24
        0x32 -> :sswitch_32
        0x34 -> :sswitch_16
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x82

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4701
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 4702
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4797
    :goto_e
    return v2

    .line 4705
    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4707
    const/16 v2, 0x17

    if-eq p1, v2, :cond_19

    .line 4708
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 4711
    :cond_19
    sparse-switch p1, :sswitch_data_e2

    .line 4789
    :cond_1c
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_c5

    .line 4790
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_c5

    move v2, v5

    .line 4791
    goto :goto_e

    .line 4713
    :sswitch_2e
    iput-boolean v4, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4723
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_57

    .line 4724
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_57

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 4726
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4728
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4731
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_57
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_e

    .line 4734
    :sswitch_5c
    iput-boolean v4, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4735
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v2, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v2, :cond_7e

    .line 4738
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v4, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 4739
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7e

    move v2, v5

    .line 4741
    goto :goto_e

    .line 4745
    :cond_7e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_8c

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4757
    :cond_8c
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_bf

    .line 4758
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 4760
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_aa

    .line 4761
    invoke-virtual {v1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 4762
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4771
    :cond_a4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v5

    .line 4772
    goto/16 :goto_e

    .line 4773
    :cond_aa
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_bf

    .line 4777
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4778
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_bf

    .line 4779
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4784
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_bf
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 4793
    :cond_c5
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_dc

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_dc

    .line 4794
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_dc

    move v2, v5

    .line 4795
    goto/16 :goto_e

    .line 4797
    :cond_dc
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 4711
    :sswitch_data_e2
    .sparse-switch
        0x17 -> :sswitch_2e
        0x42 -> :sswitch_5c
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 30
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 5438
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 5439
    .local v25, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 5440
    .local v16, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 5441
    .local v26, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 5446
    .local v17, heightSize:I
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5447
    .local v6, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5449
    .local v7, hintBoring:Landroid/text/BoringLayout$Metrics;
    const/4 v10, -0x1

    .line 5450
    .local v10, des:I
    const/4 v14, 0x0

    .line 5452
    .local v14, fromexisting:Z
    const/high16 v3, 0x4000

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_d0

    .line 5454
    move/from16 v24, v26

    .line 5552
    .local v24, width:I
    :cond_1f
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v24, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 5553
    .local v4, want:I
    move/from16 v23, v4

    .line 5554
    .local v23, unpaddedWidth:I
    move v5, v4

    .line 5556
    .local v5, hintWant:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move v3, v0

    if-eqz v3, :cond_37

    .line 5557
    const/16 v4, 0x4000

    .line 5559
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_24c

    move/from16 v19, v5

    .line 5561
    .local v19, hintWidth:I
    :goto_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_259

    .line 5562
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v24, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5580
    :cond_59
    :goto_59
    const/high16 v3, 0x4000

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_2c5

    .line 5582
    move/from16 v15, v17

    .line 5583
    .local v15, height:I
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5595
    :cond_68
    :goto_68
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v3, v15, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .end local v4           #want:I
    sub-int v22, v3, v4

    .line 5596
    .local v22, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    if-le v3, v4, :cond_a1

    .line 5597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    move/from16 v0, v22

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 5604
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v3, v0

    if-nez v3, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move v0, v3

    move/from16 v1, v23

    if-gt v0, v1, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    move v0, v3

    move/from16 v1, v22

    if-le v0, v1, :cond_2df

    .line 5607
    :cond_c4
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5612
    :goto_c7
    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 5613
    return-void

    .line 5456
    .end local v5           #hintWant:I
    .end local v15           #height:I
    .end local v19           #hintWidth:I
    .end local v22           #unpaddedHeight:I
    .end local v23           #unpaddedWidth:I
    .end local v24           #width:I
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_e7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_e7

    .line 5457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v10

    .line 5460
    :cond_e7
    if-gez v10, :cond_21c

    .line 5461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 5462
    if-eqz v6, :cond_103

    .line 5463
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5469
    :cond_103
    :goto_103
    if-eqz v6, :cond_109

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v3, :cond_225

    .line 5470
    :cond_109
    if-gez v10, :cond_144

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v10, v3

    .line 5474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v21

    .line 5475
    .local v21, tempFloat:F
    const/high16 v3, 0x4120

    mul-float v3, v3, v21

    const/high16 v4, 0x4120

    rem-float v20, v3, v4

    .line 5476
    .local v20, remainder:F
    const/4 v11, 0x0

    .line 5477
    .local v11, des2:I
    const/high16 v3, 0x40a0

    cmpl-float v3, v20, v3

    if-ltz v3, :cond_21f

    .line 5478
    move/from16 v0, v21

    float-to-int v0, v0

    move v3, v0

    add-int/lit8 v11, v3, 0x1

    .line 5482
    :goto_141
    if-le v11, v10, :cond_144

    .line 5483
    move v10, v11

    .line 5488
    .end local v11           #des2:I
    .end local v20           #remainder:F
    .end local v21           #tempFloat:F
    :cond_144
    move/from16 v24, v10

    .line 5493
    .restart local v24       #width:I
    :goto_146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object v13, v0

    .line 5494
    .local v13, dr:Landroid/widget/TextView$Drawables;
    if-eqz v13, :cond_15f

    .line 5495
    iget v3, v13, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 5496
    iget v3, v13, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 5499
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-eqz v3, :cond_1c3

    .line 5500
    const/16 v18, -0x1

    .line 5503
    .local v18, hintDes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_17f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_17f

    .line 5504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v18

    .line 5507
    :cond_17f
    if-gez v18, :cond_19b

    .line 5508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    .line 5509
    if-eqz v7, :cond_19b

    .line 5510
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5514
    :cond_19b
    if-eqz v7, :cond_1a1

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v7, v3, :cond_22c

    .line 5515
    :cond_1a1
    if-gez v18, :cond_1b9

    .line 5516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v18, v0

    .line 5520
    :cond_1b9
    move/from16 v19, v18

    .line 5525
    .restart local v19       #hintWidth:I
    :goto_1bb
    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_1c3

    .line 5526
    move/from16 v24, v19

    .line 5530
    .end local v18           #hintDes:I
    .end local v19           #hintWidth:I
    :cond_1c3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .line 5532
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_232

    .line 5533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 5538
    :goto_1e7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23f

    .line 5539
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 5545
    :goto_200
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 5547
    const/high16 v3, -0x8000

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_1f

    .line 5548
    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto/16 :goto_1f

    .line 5466
    .end local v13           #dr:Landroid/widget/TextView$Drawables;
    .end local v24           #width:I
    :cond_21c
    const/4 v14, 0x1

    goto/16 :goto_103

    .line 5480
    .restart local v11       #des2:I
    .restart local v20       #remainder:F
    .restart local v21       #tempFloat:F
    :cond_21f
    move/from16 v0, v21

    float-to-int v0, v0

    move v11, v0

    goto/16 :goto_141

    .line 5490
    .end local v11           #des2:I
    .end local v20           #remainder:F
    .end local v21           #tempFloat:F
    :cond_225
    move-object v0, v6

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v24, v0

    .restart local v24       #width:I
    goto/16 :goto_146

    .line 5522
    .restart local v13       #dr:Landroid/widget/TextView$Drawables;
    .restart local v18       #hintDes:I
    :cond_22c
    move-object v0, v7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v19, v0

    .restart local v19       #hintWidth:I
    goto :goto_1bb

    .line 5535
    .end local v18           #hintDes:I
    .end local v19           #hintWidth:I
    :cond_232
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto :goto_1e7

    .line 5541
    :cond_23f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_200

    .line 5559
    .end local v13           #dr:Landroid/widget/TextView$Drawables;
    .restart local v4       #want:I
    .restart local v5       #hintWant:I
    .restart local v23       #unpaddedWidth:I
    :cond_24c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move/from16 v19, v3

    goto/16 :goto_40

    .line 5564
    .restart local v19       #hintWidth:I
    :cond_259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-ne v3, v4, :cond_27f

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_27f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int v8, v24, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-eq v3, v8, :cond_59

    .line 5567
    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-nez v3, :cond_2b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_2b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-le v4, v3, :cond_2b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    instance-of v3, v3, Landroid/text/BoringLayout;

    if-nez v3, :cond_2a7

    if-eqz v14, :cond_2b1

    if-ltz v10, :cond_2b1

    if-gt v10, v4, :cond_2b1

    .line 5571
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_59

    .line 5573
    :cond_2b1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v24, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_59

    .line 5585
    :cond_2c5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v12

    .line 5587
    .local v12, desired:I
    move v15, v12

    .line 5588
    .restart local v15       #height:I
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5590
    const/high16 v3, -0x8000

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_68

    .line 5591
    move v0, v12

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto/16 :goto_68

    .line 5609
    .end local v4           #want:I
    .end local v12           #desired:I
    .restart local v22       #unpaddedHeight:I
    :cond_2df
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_c7
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3903
    iget v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v3, v5, :cond_7

    move v3, v5

    .line 3961
    :goto_6
    return v3

    .line 3907
    :cond_7
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_e

    .line 3908
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 3911
    :cond_e
    const/4 v0, 0x0

    .line 3913
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 3914
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v3, :cond_18

    .line 3915
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .end local v2           #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    check-cast v2, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 3920
    .restart local v2       #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_18
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_49

    .line 3925
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3926
    .local v1, curs:I
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3927
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3935
    :cond_2c
    if-gez v1, :cond_3c

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3c

    .line 3937
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3940
    :cond_3c
    if-ltz v1, :cond_42

    .line 3941
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 3960
    .end local v1           #curs:I
    :cond_42
    :goto_42
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3961
    if-nez v0, :cond_4e

    move v3, v5

    goto :goto_6

    .line 3944
    :cond_49
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_42

    .line 3961
    :cond_4e
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 5152
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .parameter "state"

    .prologue
    .line 2586
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_8

    .line 2587
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2635
    :cond_7
    :goto_7
    return-void

    .line 2591
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    move-object v3, v0

    .line 2592
    .local v3, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2595
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1c

    .line 2596
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2599
    :cond_1c
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_7d

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_7d

    .line 2600
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_7d

    .line 2601
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2603
    .local v1, len:I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_38

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_84

    .line 2604
    :cond_38
    const-string v2, ""

    .line 2606
    .local v2, restored:Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_40

    .line 2607
    const-string v2, "(restored) "

    .line 2610
    :cond_40
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    .end local v1           #len:I
    .end local v2           #restored:Ljava/lang/String;
    :cond_7d
    :goto_7d
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 2625
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    goto :goto_7

    .line 2614
    .restart local v1       #len:I
    :cond_84
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2617
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_7d

    .line 2618
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_7d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 14

    .prologue
    .line 2523
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2526
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2527
    .local v5, save:Z
    const/4 v8, 0x0

    .line 2528
    .local v8, start:I
    const/4 v2, 0x0

    .line 2530
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_19

    .line 2531
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 2532
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2533
    if-gez v8, :cond_18

    if-ltz v2, :cond_19

    .line 2535
    :cond_18
    const/4 v5, 0x1

    .line 2539
    :cond_19
    if-eqz v5, :cond_6f

    .line 2540
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2542
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 2543
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 2545
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_66

    .line 2554
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2557
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_40
    if-ge v3, v4, :cond_4a

    aget-object v1, v0, v3

    .line 2558
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2557
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 2561
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_4a
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 2566
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_4c
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_59

    if-ltz v8, :cond_59

    if-ltz v2, :cond_59

    .line 2567
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 2570
    :cond_59
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 2573
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v10, :cond_64

    .line 2574
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    :cond_64
    move-object v10, v7

    .line 2581
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_65
    return-object v10

    .line 2563
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_66
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_4c

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_6f
    move-object v10, v9

    .line 2581
    goto :goto_65
.end method

.method protected onSelectionChanged(II)V
    .registers 3
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 6492
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 2

    .prologue
    .line 6806
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 6809
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6810
    :cond_a
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6482
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 16
    .parameter "id"

    .prologue
    .line 7987
    const/4 v6, 0x0

    .line 7988
    .local v6, min:I
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7991
    .local v5, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v11

    if-nez v11, :cond_11

    iget-boolean v11, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-nez v11, :cond_2b

    .line 7993
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 7994
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 7996
    .local v8, selEnd:I
    const/4 v11, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7997
    const/4 v11, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8001
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clipboardEx"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 8008
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    sparse-switch p1, :sswitch_data_1d4

    .line 8176
    const/4 v11, 0x0

    .end local p1
    :goto_3b
    return v11

    .line 8011
    .restart local p1
    :sswitch_3c
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/TextView;->mTempSelectAll:Z

    .line 8013
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {p1, v11, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8014
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 8015
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/TextView$CursorController;->show()V

    .line 8017
    iget-boolean v11, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    if-eqz v11, :cond_9c

    .line 8018
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v11, :cond_6d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v12, v12, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    if-eq v11, v12, :cond_8e

    .line 8020
    :cond_6d
    invoke-direct {p0}, Landroid/widget/TextView;->clearCursorControllerMenuVisibility()V

    .line 8022
    new-instance v11, Landroid/widget/TextView$CursorControllerMenu;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12, p0}, Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    .line 8023
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView$CursorControllerMenu;->setCursorControllerHeight(I)V

    .line 8025
    :cond_8e
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8026
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v11}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 8027
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 8030
    :cond_9c
    const/4 v11, 0x1

    goto :goto_3b

    .line 8033
    .restart local p1
    :sswitch_9e
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 8034
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/TextView$CursorController;->show()V

    .line 8036
    iget-boolean v11, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    if-eqz v11, :cond_ed

    .line 8037
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v11, :cond_be

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v12, v12, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    if-eq v11, v12, :cond_df

    .line 8039
    :cond_be
    invoke-direct {p0}, Landroid/widget/TextView;->clearCursorControllerMenuVisibility()V

    .line 8041
    new-instance v11, Landroid/widget/TextView$CursorControllerMenu;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12, p0}, Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    .line 8042
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView$CursorControllerMenu;->setCursorControllerHeight(I)V

    .line 8044
    :cond_df
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8045
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v11}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 8046
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 8049
    :cond_ed
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8053
    :sswitch_f0
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 8054
    .local v1, clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10f

    .line 8055
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v0, v11, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 8057
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Editable;

    invoke-interface {p1, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 8059
    :cond_10f
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 8067
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8071
    .end local v1           #clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local p1
    :sswitch_115
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 8072
    .restart local v1       #clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12d

    .line 8073
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v0, v11, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 8075
    :cond_12d
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 8082
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8086
    .end local v1           #clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :sswitch_133
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v11

    if-nez v11, :cond_13c

    .line 8087
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8092
    :cond_13c
    const/4 v7, 0x0

    .line 8093
    .local v7, paste:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getFrozenState()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_153

    .line 8095
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 8096
    .local v2, clipdataTemp:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0, v2}, Landroid/sec/clipboard/ClipboardExManager;->callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 8097
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8100
    .end local v2           #clipdataTemp:Landroid/sec/clipboard/data/ClipboardData;
    :cond_153
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 8101
    .restart local v1       #clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 8107
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V

    .line 8119
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 8120
    iget-object v11, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v11, :cond_175

    iget-boolean v11, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v11, :cond_175

    .line 8121
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 8124
    :cond_175
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8127
    .end local v1           #clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7           #paste:Ljava/lang/CharSequence;
    :sswitch_178
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 8128
    .local v10, urls:[Landroid/text/style/URLSpan;
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19e

    .line 8130
    new-instance v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 8131
    .local v3, clipdataText:Landroid/sec/clipboard/data/list/ClipboardDataText;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 8132
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 8136
    .end local v3           #clipdataText:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_19e
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8139
    .end local v10           #urls:[Landroid/text/style/URLSpan;
    .restart local p1
    :sswitch_1a1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 8140
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_1b1

    .line 8141
    const-string/jumbo v11, "touch_to_commit"

    const/4 v12, 0x0

    invoke-virtual {v4, p0, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8142
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 8144
    :cond_1b1
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8162
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1b4
    iget v11, p0, Landroid/widget/TextView;->mOrientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1bc

    .line 8163
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8167
    :cond_1bc
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    iget-object v13, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 8169
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v11, :cond_1d0

    .line 8170
    iget-object v11, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8172
    :cond_1d0
    const/4 v11, 0x1

    goto/16 :goto_3b

    .line 8008
    nop

    :sswitch_data_1d4
    .sparse-switch
        0x102001f -> :sswitch_3c
        0x1020020 -> :sswitch_f0
        0x1020021 -> :sswitch_115
        0x1020022 -> :sswitch_133
        0x1020023 -> :sswitch_178
        0x1020024 -> :sswitch_1a1
        0x1020028 -> :sswitch_9e
        0x1020192 -> :sswitch_1b4
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 7109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7112
    .local v0, action:I
    iput-boolean v11, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 7115
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 7116
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7118
    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 7119
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7122
    :cond_22
    if-nez v0, :cond_28

    .line 7125
    iput-boolean v11, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 7126
    iput-boolean v11, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 7129
    :cond_28
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 7136
    .local v8, result:Z
    iget-boolean v9, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    if-eqz v9, :cond_3c

    if-ne v0, v12, :cond_3c

    .line 7137
    iput-boolean v11, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 7205
    :cond_34
    :goto_34
    if-eq v0, v12, :cond_39

    const/4 v9, 0x3

    if-ne v0, v9, :cond_3b

    .line 7206
    :cond_39
    iput-boolean v11, p0, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 7209
    :cond_3b
    return v8

    .line 7139
    :cond_3c
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v9, :cond_4a

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v9

    if-nez v9, :cond_4a

    iget-boolean v9, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v9, :cond_34

    :cond_4a
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_34

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v9, :cond_34

    .line 7140
    const/4 v2, 0x0

    .line 7143
    .local v2, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 7144
    .local v7, oldSelStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 7146
    .local v6, oldSelEnd:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 7147
    .local v4, oldScrollX:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 7149
    .local v5, oldScrollY:I
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_70

    .line 7150
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-interface {v10, p0, v9, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 7153
    :cond_70
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v9

    if-eqz v9, :cond_10c

    .line 7154
    iget v9, p0, Landroid/view/View;->mScrollX:I

    if-ne v9, v4, :cond_7e

    iget v9, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v5, :cond_be

    .line 7156
    :cond_7e
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 7158
    iget-object v9, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v9, :cond_ad

    iget-object v9, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_ad

    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v9, :cond_ad

    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v9

    if-nez v9, :cond_ad

    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v9, :cond_ad

    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 7161
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 7162
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9, v11}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 7166
    :cond_ad
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v9, :cond_be

    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_be

    .line 7168
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 7171
    :cond_be
    if-ne v0, v12, :cond_10c

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_10c

    iget-boolean v9, p0, Landroid/widget/TextView;->mScrolled:Z

    if-nez v9, :cond_10c

    .line 7172
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 7175
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    .line 7176
    .local v1, csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    if-ne v9, v7, :cond_e9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    if-ne v9, v6, :cond_e9

    invoke-virtual {p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 7178
    :cond_e9
    new-instance v1, Landroid/widget/TextView$CommitSelectionReceiver;

    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-direct {v1, p0, v7, v6}, Landroid/widget/TextView$CommitSelectionReceiver;-><init>(Landroid/widget/TextView;II)V

    .line 7184
    .restart local v1       #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    :cond_ee
    iget-boolean v9, p0, Landroid/widget/TextView;->mByPassInputType:Z

    if-nez v9, :cond_f8

    .line 7185
    const/4 v9, 0x0

    invoke-virtual {v3, p0, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 7192
    :cond_f8
    invoke-direct {p0, v7, v6}, Landroid/widget/TextView;->onTapUpEvent(II)V

    .line 7195
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v9, :cond_10c

    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_10c

    .line 7196
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7202
    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_10c
    if-eqz v2, :cond_34

    const/4 v8, 0x1

    goto/16 :goto_34
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 7263
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 7265
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7266
    const/4 v0, 0x1

    .line 7270
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7007
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7008
    if-eqz p2, :cond_8

    .line 7009
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7011
    :cond_8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 6970
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 6972
    if-eqz p1, :cond_21

    .line 6973
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1d

    .line 6974
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 6976
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6977
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6978
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7002
    :cond_1d
    :goto_1d
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 7003
    return-void

    .line 6982
    :cond_21
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2a

    .line 6983
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 6986
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6987
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_36

    .line 6988
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 6990
    :cond_36
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6993
    iget v0, p0, Landroid/widget/TextView;->mContextMenuTitleId:I

    const v1, 0x104038c

    if-ne v0, v1, :cond_1d

    .line 6994
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1d

    .line 6995
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 6996
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    goto :goto_1d
.end method

.method public performLongClick()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8225
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-nez v0, :cond_12

    .line 8226
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8227
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v1

    .line 8237
    :goto_f
    return v0

    :cond_10
    move v0, v2

    .line 8230
    goto :goto_f

    .line 8233
    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 8234
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->show()V

    .line 8235
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 8236
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v2

    .line 8237
    goto :goto_f
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .parameter "watcher"

    .prologue
    .line 6517
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 6518
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6520
    .local v0, i:I
    if-ltz v0, :cond_11

    .line 6521
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6524
    .end local v0           #i:I
    :cond_11
    return-void
.end method

.method reportExtractedText()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 4937
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4938
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_40

    .line 4939
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 4940
    .local v6, contentChanged:Z
    if-nez v6, :cond_d

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_40

    .line 4941
    :cond_d
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 4942
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 4943
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4944
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_40

    .line 4945
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 4946
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_40

    .line 4950
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_26

    if-nez v6, :cond_26

    .line 4951
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4953
    :cond_26
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4959
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 4961
    const/4 v0, 0x1

    .line 4967
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_3f
    return v0

    :cond_40
    move v0, v9

    goto :goto_3f
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 7751
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7753
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7754
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 7755
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 7756
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 7757
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7758
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 6557
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6558
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6559
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6560
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6561
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 6560
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6564
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6543
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6544
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6545
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6546
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6547
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6546
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6550
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1984
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1985
    return-void
.end method

.method public setByPassInputType(Z)V
    .registers 2
    .parameter "byPass"

    .prologue
    .line 10275
    iput-boolean p1, p0, Landroid/widget/TextView;->mByPassInputType:Z

    .line 10276
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3
    .parameter "pad"

    .prologue
    .line 1677
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1678
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_f

    .line 1679
    if-eqz v0, :cond_8

    .line 1680
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 1689
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1690
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1691
    return-void

    .line 1683
    :cond_f
    if-nez v0, :cond_18

    .line 1684
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1686
    :cond_18
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_8
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1501
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1503
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_1f

    :cond_c
    const/4 v4, 0x1

    move v2, v4

    .line 1506
    .local v2, drawables:Z
    :goto_e
    if-nez v2, :cond_5e

    .line 1508
    if-eqz v1, :cond_18

    .line 1509
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_21

    .line 1510
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1599
    :cond_18
    :goto_18
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1600
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1601
    return-void

    .end local v2           #drawables:Z
    :cond_1f
    move v2, v6

    .line 1503
    goto :goto_e

    .line 1514
    .restart local v2       #drawables:Z
    :cond_21
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1515
    :cond_2a
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1516
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_35

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1517
    :cond_35
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1518
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1519
    :cond_40
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1520
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4b

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1521
    :cond_4b
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1522
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1523
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1524
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1525
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_18

    .line 1529
    :cond_5e
    if-nez v1, :cond_67

    .line 1530
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1533
    :cond_67
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_74

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_74

    .line 1534
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1536
    :cond_74
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1538
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v4, p2, :cond_83

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_83

    .line 1539
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1541
    :cond_83
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1543
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_92

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_92

    .line 1544
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1546
    :cond_92
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1548
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v4, p4, :cond_a1

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a1

    .line 1549
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1551
    :cond_a1
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1553
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1556
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1558
    .local v3, state:[I
    if-eqz p1, :cond_107

    .line 1559
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1560
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1561
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1562
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1563
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1568
    :goto_c0
    if-eqz p3, :cond_10c

    .line 1569
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1570
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1571
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1572
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1573
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1578
    :goto_d7
    if-eqz p2, :cond_111

    .line 1579
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1580
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1581
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1582
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1583
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1588
    :goto_ee
    if-eqz p4, :cond_116

    .line 1589
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1590
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1591
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1592
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1593
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_18

    .line 1565
    :cond_107
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_c0

    .line 1575
    :cond_10c
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_d7

    .line 1585
    :cond_111
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_ee

    .line 1595
    :cond_116
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_18
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1620
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1621
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_25

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_f
    if-eqz p2, :cond_27

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_15
    if-eqz p3, :cond_29

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1b
    if-eqz p4, :cond_21

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_21
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1625
    return-void

    :cond_25
    move-object v1, v4

    .line 1621
    goto :goto_f

    :cond_27
    move-object v2, v4

    goto :goto_15

    :cond_29
    move-object v3, v4

    goto :goto_1b
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1641
    if-eqz p1, :cond_e

    .line 1642
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1644
    :cond_e
    if-eqz p3, :cond_1b

    .line 1645
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1647
    :cond_1b
    if-eqz p2, :cond_28

    .line 1648
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1650
    :cond_28
    if-eqz p4, :cond_35

    .line 1651
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1653
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1654
    return-void
.end method

.method public setContextMenuTitleId(I)V
    .registers 2
    .parameter "titleId"

    .prologue
    .line 2703
    iput p1, p0, Landroid/widget/TextView;->mContextMenuTitleId:I

    .line 2704
    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 4
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6269
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 6270
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6272
    if-eqz p1, :cond_16

    .line 6273
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6279
    :cond_a
    :goto_a
    if-nez p1, :cond_12

    .line 6280
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6281
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 6286
    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6287
    return-void

    .line 6274
    :cond_16
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_a

    .line 6275
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method protected setEditTextMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 9409
    sparse-switch p1, :sswitch_data_c

    .line 9421
    :goto_3
    return-void

    .line 9411
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_3

    .line 9415
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_3

    .line 9409
    :sswitch_data_c
    .sparse-switch
        0xb -> :sswitch_4
        0x16 -> :sswitch_8
    .end sparse-switch
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 2673
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2674
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2675
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3
    .parameter "where"

    .prologue
    .line 6219
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6221
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 6222
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6223
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6224
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6226
    :cond_f
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2337
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2338
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2340
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2341
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2342
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3486
    if-nez p1, :cond_8

    .line 3487
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 3496
    :goto_7
    return-void

    .line 3489
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10801f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3493
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3494
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 3508
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3510
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 3511
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 3512
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3513
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2d

    .line 3514
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3520
    :goto_17
    if-nez p1, :cond_31

    .line 3521
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_2c

    .line 3522
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3523
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3526
    :cond_2a
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3533
    :cond_2c
    :goto_2c
    return-void

    .line 3517
    :cond_2d
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 3529
    :cond_31
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3530
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_2c
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 10
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 4989
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 4990
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_12

    .line 4991
    if-nez v1, :cond_33

    .line 4992
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5011
    :cond_12
    :goto_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 5012
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 5013
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5014
    .local v4, start:I
    if-gez v4, :cond_5f

    const/4 v4, 0x0

    .line 5016
    :cond_21
    :goto_21
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5017
    .local v2, end:I
    if-gez v2, :cond_63

    const/4 v2, 0x0

    .line 5019
    :cond_26
    :goto_26
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5022
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_67

    .line 5023
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 5027
    :goto_32
    return-void

    .line 4993
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_33
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_48

    .line 4994
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 4995
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 4997
    :cond_48
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4998
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4999
    .restart local v4       #start:I
    if-le v4, v0, :cond_51

    move v4, v0

    .line 5000
    :cond_51
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5001
    .restart local v2       #end:I
    if-le v2, v0, :cond_56

    move v2, v0

    .line 5002
    :cond_56
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5003
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 5015
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_5f
    if-le v4, v0, :cond_21

    move v4, v0

    goto :goto_21

    .line 5018
    .restart local v2       #end:I
    :cond_63
    if-le v2, v0, :cond_26

    move v2, v0

    goto :goto_26

    .line 5025
    :cond_67
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_32
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 5033
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_8

    .line 5034
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5036
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 5037
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .parameter "filters"

    .prologue
    .line 3703
    if-nez p1, :cond_8

    .line 3704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3707
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 3709
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_17

    .line 3710
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3712
    :cond_17
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 13
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3675
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 3677
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_31

    .line 3678
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3679
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3680
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 3684
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_31
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3686
    return v6
.end method

.method public setFreezesText(Z)V
    .registers 2
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2652
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2653
    return-void
.end method

.method public setGravity(I)V
    .registers 10
    .parameter "gravity"

    .prologue
    .line 2105
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_6

    .line 2106
    or-int/lit8 p1, p1, 0x3

    .line 2108
    :cond_6
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_c

    .line 2109
    or-int/lit8 p1, p1, 0x30

    .line 2112
    :cond_c
    const/4 v7, 0x0

    .line 2114
    .local v7, newLayout:Z
    and-int/lit8 v0, p1, 0x7

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    if-eq v0, v3, :cond_16

    .line 2116
    const/4 v7, 0x1

    .line 2119
    :cond_16
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_1d

    .line 2120
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2123
    :cond_1d
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2125
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4a

    if-eqz v7, :cond_4a

    .line 2127
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2128
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    move v2, v0

    .line 2130
    .local v2, hintWant:I
    :goto_31
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2134
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4a
    return-void

    .line 2128
    .restart local v1       #want:I
    :cond_4b
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_31
.end method

.method public setHeight(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2267
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2268
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2270
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2271
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2272
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1942
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_9

    .line 1943
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 1944
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1946
    :cond_9
    return-void
.end method

.method public final setHint(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3036
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3037
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3017
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 3019
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_d

    .line 3020
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3023
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 3024
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3026
    :cond_18
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2034
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2035
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2036
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2044
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2045
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2046
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .parameter "whether"

    .prologue
    .line 2179
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2181
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 2182
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2183
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2184
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2186
    :cond_f
    return-void
.end method

.method public setIMEChangable(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 280
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsIMEChangable:Z

    .line 281
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3288
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3289
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3291
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3292
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3293
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .parameter "imeOptions"

    .prologue
    .line 3260
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3261
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3263
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3264
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .parameter "includepad"

    .prologue
    .line 5425
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 5427
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 5428
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5429
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5430
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5432
    :cond_f
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3439
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3440
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_13

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3441
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3442
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3443
    return-void
.end method

.method public setInputType(I)V
    .registers 13
    .parameter "type"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3064
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 3065
    .local v5, wasPassword:Z
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 3066
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v9}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 3067
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 3068
    .local v2, isPassword:Z
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 3069
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 3070
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_53

    .line 3071
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3072
    invoke-direct {p0, v10, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3087
    :cond_27
    :goto_27
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 3088
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 3091
    const v7, 0x2000f

    and-int/2addr v7, p1

    const v8, 0x20001

    if-ne v7, v8, :cond_73

    move v4, v10

    .line 3098
    .local v4, multiLine:Z
    :goto_37
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eq v7, v4, :cond_3d

    if-eqz v0, :cond_46

    .line 3101
    :cond_3d
    if-nez v4, :cond_75

    move v7, v10

    :goto_40
    if-nez v2, :cond_77

    move v8, v10

    :goto_43
    invoke-direct {p0, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 3105
    :cond_46
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 3108
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3109
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_52

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3110
    :cond_52
    return-void

    .line 3073
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #multiLine:Z
    :cond_53
    if-eqz v3, :cond_62

    .line 3074
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_5e

    .line 3075
    const/4 v0, 0x1

    .line 3077
    :cond_5e
    invoke-direct {p0, v10, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_27

    .line 3078
    :cond_62
    if-nez v5, :cond_66

    if-eqz v6, :cond_27

    .line 3080
    :cond_66
    invoke-direct {p0, v8, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3081
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_27

    .line 3082
    const/4 v0, 0x1

    goto :goto_27

    :cond_73
    move v4, v9

    .line 3091
    goto :goto_37

    .restart local v4       #multiLine:Z
    :cond_75
    move v7, v9

    .line 3101
    goto :goto_40

    :cond_77
    move v8, v9

    goto :goto_43
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 6
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    .line 1226
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1227
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1229
    if-eqz p1, :cond_3a

    .line 1231
    :try_start_9
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_11
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_9 .. :try_end_11} :catch_2d

    .line 1235
    :goto_11
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_23

    .line 1237
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_32

    .line 1238
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    .line 1247
    :cond_23
    :goto_23
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1248
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2c

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1249
    :cond_2c
    return-void

    .line 1232
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 1233
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    iput v3, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_11

    .line 1240
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_32
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_23

    .line 1244
    :cond_3a
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_23
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2369
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2370
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2372
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_11

    .line 2373
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2374
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2375
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2377
    :cond_11
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2251
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2252
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2254
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2255
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2256
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2073
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2074
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2075
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2083
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2084
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2085
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1997
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 1998
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2
    .parameter "marqueeLimit"

    .prologue
    .line 6235
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 6236
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2309
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2310
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2312
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2313
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2314
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2237
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2238
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2240
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2241
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2242
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2223
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2224
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2226
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2227
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2228
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2323
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2324
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2326
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2327
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2328
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2281
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2282
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2284
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2285
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2286
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2209
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2210
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2212
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2213
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2214
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2195
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2196
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2198
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2199
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2200
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2295
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2296
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2298
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2299
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2300
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .parameter "movement"

    .prologue
    .line 1279
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1281
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 1282
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1287
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1288
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3326
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3327
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3329
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3330
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1703
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_13

    .line 1707
    :cond_10
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1711
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1712
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1713
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 2162
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2164
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 2165
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2166
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2167
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2170
    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 3411
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3412
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 3413
    return-void
.end method

.method public setRawInputType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 3155
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3157
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 3159
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 7274
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 7275
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6255
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 6257
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 6258
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6260
    :cond_11
    return-void
.end method

.method public setSelected(I)V
    .registers 3
    .parameter "value"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7027
    if-ne v0, p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7028
    return-void

    .line 7027
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSelected(Z)V
    .registers 5
    .parameter "selected"

    .prologue
    .line 7033
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 7035
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 7037
    if-eq p1, v0, :cond_14

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_14

    .line 7038
    if-eqz p1, :cond_15

    .line 7039
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7044
    :cond_14
    :goto_14
    return-void

    .line 7041
    :cond_15
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_14
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1958
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1960
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 1961
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 1962
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 1964
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1965
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 6165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6166
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 5
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6180
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_11

    .line 6182
    if-eqz p1, :cond_15

    .line 6183
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 6188
    :cond_11
    :goto_11
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 6189
    return-void

    .line 6185
    :cond_15
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_11
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 2681
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 2682
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2683
    return-void
.end method

.method public final setText(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3001
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3002
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 3005
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3006
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2698
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2699
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2729
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2731
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_f

    .line 2732
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$202(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 2734
    :cond_f
    return-void
.end method

.method public final setText([CII)V
    .registers 8
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 2890
    const/4 v0, 0x0

    .line 2892
    .local v0, oldlen:I
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_28

    .line 2893
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2901
    :cond_28
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4a

    .line 2902
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2903
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2908
    :goto_37
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_50

    .line 2909
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 2914
    :goto_42
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2915
    return-void

    .line 2905
    :cond_4a
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_37

    .line 2911
    :cond_50
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_42
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 12
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1731
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1739
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1740
    .local v1, color:I
    if-eqz v1, :cond_12

    .line 1741
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1744
    :cond_12
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1746
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1c

    .line 1747
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1750
    :cond_1c
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1752
    .local v4, ts:I
    if-eqz v4, :cond_26

    .line 1753
    int-to-float v6, v4

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1756
    :cond_26
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1758
    if-eqz v2, :cond_30

    .line 1759
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1762
    :cond_30
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1764
    if-eqz v2, :cond_3a

    .line 1765
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1770
    :cond_3a
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1772
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1775
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1776
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1777
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1899
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1900
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1901
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "colors"

    .prologue
    .line 1909
    if-nez p1, :cond_8

    .line 1910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1913
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1914
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1915
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2717
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2718
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 9
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 2984
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2985
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2986
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2988
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2990
    if-gez v2, :cond_14

    if-ltz v0, :cond_31

    .line 2991
    :cond_14
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_31

    .line 2992
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2997
    :cond_31
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1849
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    .line 1850
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 1851
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 1853
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 1854
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1855
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1856
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1859
    :cond_1f
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1797
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1798
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 1810
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1813
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_16

    .line 1814
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1818
    .local v1, r:Landroid/content/res/Resources;
    :goto_a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1820
    return-void

    .line 1816
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_a
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 4
    .parameter "method"

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_5

    .line 1334
    :goto_4
    return-void

    .line 1325
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_18

    .line 1326
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_18

    .line 1327
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1331
    :cond_18
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1333
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 1872
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    .line 1873
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1875
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 1876
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1877
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1878
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1881
    :cond_1a
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1111
    if-lez p2, :cond_39

    .line 1112
    if-nez p1, :cond_2e

    .line 1113
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1118
    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1120
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    move v1, v2

    .line 1121
    .local v1, typefaceStyle:I
    :goto_14
    xor-int/lit8 v2, v1, -0x1

    and-int v0, p2, v2

    .line 1122
    .local v0, need:I
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1123
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_37

    const/high16 v3, -0x4180

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1129
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_2d
    return-void

    .line 1115
    :cond_2e
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_33
    move v1, v4

    .line 1120
    goto :goto_14

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_35
    move v3, v4

    .line 1122
    goto :goto_1f

    :cond_37
    move v3, v5

    .line 1123
    goto :goto_2a

    .line 1125
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_39
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1126
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1127
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2d
.end method

.method public setWidth(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2353
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2354
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2356
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2357
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2358
    return-void
.end method

.method public showCursorController(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 9428
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    .line 9429
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 15
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v7, 0x1

    .line 6607
    const/4 v4, 0x0

    .line 6608
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 6610
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6612
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_33

    .line 6613
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6614
    const/4 v4, 0x1

    .line 6615
    move v2, p4

    .line 6617
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_16

    .line 6618
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6621
    :cond_16
    if-gez p3, :cond_1a

    if-ltz p4, :cond_33

    .line 6622
    :cond_1a
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6623
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6625
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 6626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6627
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6632
    :cond_33
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_4e

    .line 6633
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6634
    const/4 v4, 0x1

    .line 6635
    move v3, p4

    .line 6637
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_43

    .line 6638
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6641
    :cond_43
    if-gez p3, :cond_47

    if-ltz p4, :cond_4e

    .line 6642
    :cond_47
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 6643
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6647
    .end local v0           #end:I
    :cond_4e
    if-eqz v4, :cond_67

    .line 6648
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_67

    .line 6649
    if-gez v3, :cond_5e

    .line 6650
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 6652
    :cond_5e
    if-gez v2, :cond_64

    .line 6653
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 6655
    :cond_64
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 6659
    :cond_67
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_6f

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_7d

    .line 6661
    :cond_6f
    if-eqz v1, :cond_75

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_c9

    .line 6662
    :cond_75
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6663
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6664
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6670
    :cond_7d
    :goto_7d
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 6671
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6672
    if-eqz v1, :cond_8f

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 6673
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6676
    :cond_8f
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_9e

    .line 6677
    if-eqz v1, :cond_9b

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_cc

    .line 6678
    :cond_9b
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 6685
    :cond_9e
    :goto_9e
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_c8

    .line 6688
    if-eqz v1, :cond_c8

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_c8

    .line 6689
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_cf

    .line 6690
    if-ltz p3, :cond_ba

    .line 6691
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_b4

    .line 6692
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6694
    :cond_b4
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_ba

    .line 6695
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6698
    :cond_ba
    if-ltz p4, :cond_c8

    .line 6699
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_c2

    .line 6700
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6702
    :cond_c2
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_c8

    .line 6703
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6714
    :cond_c8
    :goto_c8
    return-void

    .line 6666
    :cond_c9
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_7d

    .line 6680
    :cond_cc
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_9e

    .line 6710
    :cond_cf
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_c8
.end method

.method updateAfterEdit()V
    .registers 4

    .prologue
    .line 5107
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5108
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5110
    .local v0, curs:I
    if-gez v0, :cond_11

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    .line 5112
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5115
    :cond_14
    if-ltz v0, :cond_28

    .line 5116
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5118
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 5120
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 5124
    :cond_28
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 5125
    return-void
.end method

.method protected updateCursorControllerPositions()V
    .registers 2

    .prologue
    .line 4395
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4397
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4400
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4402
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4406
    :cond_22
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4407
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->updateCursorControllerMenu()V

    .line 4410
    :cond_33
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .parameter "who"

    .prologue
    .line 4052
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 4053
    .local v0, verified:Z
    if-nez v0, :cond_26

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_26

    .line 4054
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_24

    :cond_22
    const/4 v1, 0x1

    .line 4057
    :goto_23
    return v1

    .line 4054
    :cond_24
    const/4 v1, 0x0

    goto :goto_23

    :cond_26
    move v1, v0

    .line 4057
    goto :goto_23
.end method
