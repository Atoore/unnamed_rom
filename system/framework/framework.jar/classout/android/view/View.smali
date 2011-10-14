.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$IQClientThreadRunnable;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field protected static final FIRST_STATE_SET:[I = null

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field protected static final LAST_STATE_SET:[I = null

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field protected static final MIDDLE_STATE_SET:[I = null

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FIRST_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_LAST_STATE_SET:[I = null

.field protected static final PRESSED_MIDDLE_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SINGLE_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final SINGLE_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field private static iqClientThread:Ljava/lang/Thread;

.field private static mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field static sInstanceCount:J

.field private static sTags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTagsLock:Ljava/lang/Object;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDrawableState:[I

.field private mDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field protected mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field protected mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSoundEffect:I

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field private mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 633
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_264

    move v0, v4

    :goto_e
    sput-boolean v0, Landroid/view/View;->$assertionsDisabled:Z

    .line 644
    sput-object v1, Landroid/view/View;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 648
    sput-object v1, Landroid/view/View;->iqClientThread:Ljava/lang/Thread;

    .line 701
    new-array v0, v2, [I

    fill-array-data v0, :array_268

    sput-object v0, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 852
    new-array v0, v2, [I

    fill-array-data v0, :array_272

    sput-object v0, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1003
    new-array v0, v3, [I

    sput-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1012
    new-array v0, v4, [I

    const v1, 0x101009e

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1021
    new-array v0, v4, [I

    const v1, 0x101009c

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1030
    new-array v0, v4, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1040
    new-array v0, v4, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1049
    new-array v0, v4, [I

    const v1, 0x101009d

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1058
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1066
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1074
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1082
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1090
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1098
    sget-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1108
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1117
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1126
    sget-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1135
    sget-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1146
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1156
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1165
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1175
    sget-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1184
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1194
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1204
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1215
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1224
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1234
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1244
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1256
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1266
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1278
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1289
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1302
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1308
    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x4

    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1348
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->LAST_STATE_SET:[I

    .line 1354
    new-array v0, v4, [I

    const v1, 0x10100a4

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FIRST_STATE_SET:[I

    .line 1360
    new-array v0, v4, [I

    const v1, 0x10100a5

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->MIDDLE_STATE_SET:[I

    .line 1366
    new-array v0, v4, [I

    const v1, 0x10100a3

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SINGLE_STATE_SET:[I

    .line 1372
    new-array v0, v5, [I

    fill-array-data v0, :array_27c

    sput-object v0, Landroid/view/View;->PRESSED_LAST_STATE_SET:[I

    .line 1378
    new-array v0, v5, [I

    fill-array-data v0, :array_284

    sput-object v0, Landroid/view/View;->PRESSED_FIRST_STATE_SET:[I

    .line 1384
    new-array v0, v5, [I

    fill-array-data v0, :array_28c

    sput-object v0, Landroid/view/View;->PRESSED_MIDDLE_STATE_SET:[I

    .line 1390
    new-array v0, v5, [I

    fill-array-data v0, :array_294

    sput-object v0, Landroid/view/View;->PRESSED_SINGLE_STATE_SET:[I

    .line 1397
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    .line 1892
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/View;->sInstanceCount:J

    return-void

    :cond_264
    move v0, v3

    .line 633
    goto/16 :goto_e

    .line 701
    nop

    :array_268
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 852
    :array_272
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1372
    :array_27c
    .array-data 0x4
        0xa6t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1378
    :array_284
    .array-data 0x4
        0xa4t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1384
    :array_28c
    .array-data 0x4
        0xa5t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1390
    :array_294
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1436
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1758
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1762
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1764
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1812
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 1821
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1827
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1833
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1839
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1842
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1873
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1879
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2531
    iput v3, p0, Landroid/view/View;->mSoundEffect:I

    .line 2255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1436
    iput v1, p0, Landroid/view/View;->mID:I

    .line 1758
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1762
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1764
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1812
    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 1821
    iput v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1827
    iput v1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1833
    iput v1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1839
    iput v1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1842
    iput-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1873
    iput-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1879
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2531
    iput v3, p0, Landroid/view/View;->mSoundEffect:I

    .line 1907
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 1908
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_2c
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1909
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 1912
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 1913
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1914
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1933
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1934
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 35
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1955
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1957
    sget-object v27, Lcom/android/internal/R$styleable;->View:[I

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    move/from16 v3, p3

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1960
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 1962
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/4 v14, -0x1

    .line 1963
    .local v14, leftPadding:I
    const/16 v21, -0x1

    .line 1964
    .local v21, topPadding:I
    const/16 v17, -0x1

    .line 1965
    .local v17, rightPadding:I
    const/4 v9, -0x1

    .line 1967
    .local v9, bottomPadding:I
    const/16 v16, -0x1

    .line 1969
    .local v16, padding:I
    const/16 v23, 0x0

    .line 1970
    .local v23, viewFlagValues:I
    const/16 v22, 0x0

    .line 1972
    .local v22, viewFlagMasks:I
    const/16 v20, 0x0

    .line 1974
    .local v20, setScrollContainer:Z
    const/16 v25, 0x0

    .line 1975
    .local v25, x:I
    const/16 v26, 0x0

    .line 1977
    .local v26, y:I
    const/16 v18, 0x0

    .line 1979
    .local v18, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v15, v0

    .line 1980
    .local v15, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 1981
    .local v5, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_34
    if-ge v13, v5, :cond_2e6

    .line 1982
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 1983
    .local v7, attr:I
    packed-switch v7, :pswitch_data_380

    .line 1981
    :cond_3d
    :goto_3d
    :pswitch_3d
    add-int/lit8 v13, v13, 0x1

    goto :goto_34

    .line 1985
    :pswitch_40
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1986
    goto :goto_3d

    .line 1988
    :pswitch_45
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 1989
    goto :goto_3d

    .line 1991
    :pswitch_50
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 1992
    goto :goto_3d

    .line 1994
    :pswitch_5b
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 1995
    goto :goto_3d

    .line 1997
    :pswitch_66
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 1998
    goto :goto_3d

    .line 2000
    :pswitch_71
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 2001
    goto :goto_3d

    .line 2003
    :pswitch_7c
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v25

    .line 2004
    goto :goto_3d

    .line 2006
    :pswitch_87
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v26

    .line 2007
    goto :goto_3d

    .line 2009
    :pswitch_92
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto :goto_3d

    .line 2012
    :pswitch_a3
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto :goto_3d

    .line 2015
    :pswitch_ae
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2016
    or-int/lit8 v23, v23, 0x2

    .line 2017
    or-int/lit8 v22, v22, 0x2

    goto/16 :goto_3d

    .line 2021
    :pswitch_c0
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2022
    or-int/lit8 v23, v23, 0x1

    .line 2023
    or-int/lit8 v22, v22, 0x1

    goto/16 :goto_3d

    .line 2027
    :pswitch_d2
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2028
    const v27, 0x40001

    or-int v23, v23, v27

    .line 2029
    const v27, 0x40001

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2033
    :pswitch_ea
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2034
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x4000

    move/from16 v23, v0

    .line 2035
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x4000

    move/from16 v22, v0

    goto/16 :goto_3d

    .line 2039
    :pswitch_104
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2040
    const/high16 v27, 0x20

    or-int v23, v23, v27

    .line 2041
    const/high16 v27, 0x20

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2045
    :pswitch_11a
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-nez v27, :cond_3d

    .line 2046
    const/high16 v27, 0x1

    or-int v23, v23, v27

    .line 2047
    const/high16 v27, 0x1

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2051
    :pswitch_130
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2052
    const/high16 v27, 0x40

    or-int v23, v23, v27

    .line 2053
    const/high16 v27, 0x40

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2057
    :pswitch_146
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 2058
    .local v24, visibility:I
    if-eqz v24, :cond_3d

    .line 2059
    sget-object v27, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v27, v27, v24

    or-int v23, v23, v27

    .line 2060
    or-int/lit8 v22, v22, 0xc

    goto/16 :goto_3d

    .line 2064
    .end local v24           #visibility:I
    :pswitch_15c
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2065
    .local v10, cacheQuality:I
    if-eqz v10, :cond_3d

    .line 2066
    sget-object v27, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v27, v27, v10

    or-int v23, v23, v27

    .line 2067
    const/high16 v27, 0x18

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2071
    .end local v10           #cacheQuality:I
    :pswitch_174
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_3d

    .line 2074
    :pswitch_180
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-nez v27, :cond_3d

    .line 2075
    const v27, -0x8000001

    and-int v23, v23, v27

    .line 2076
    const/high16 v27, 0x800

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2080
    :pswitch_197
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-nez v27, :cond_3d

    .line 2081
    const v27, -0x10000001

    and-int v23, v23, v27

    .line 2082
    const/high16 v27, 0x1000

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2086
    :pswitch_1ae
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 2087
    .local v19, scrollbars:I
    if-eqz v19, :cond_3d

    .line 2088
    or-int v23, v23, v19

    .line 2089
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x300

    move/from16 v22, v0

    .line 2090
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_3d

    .line 2094
    .end local v19           #scrollbars:I
    :pswitch_1ca
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2095
    .local v11, fadingEdge:I
    if-eqz v11, :cond_3d

    .line 2096
    or-int v23, v23, v11

    .line 2097
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x3000

    move/from16 v22, v0

    .line 2098
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_3d

    .line 2102
    .end local v11           #fadingEdge:I
    :pswitch_1e6
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 2103
    if-eqz v18, :cond_3d

    .line 2104
    const/high16 v27, 0x300

    and-int v27, v27, v18

    or-int v23, v23, v27

    .line 2105
    const/high16 v27, 0x300

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2109
    :pswitch_1fe
    const/16 v20, 0x1

    .line 2110
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2111
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_3d

    .line 2115
    :pswitch_217
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2116
    const/high16 v27, 0x400

    or-int v23, v23, v27

    .line 2117
    const/high16 v27, 0x400

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2121
    :pswitch_22d
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2122
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    .line 2123
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    goto/16 :goto_3d

    .line 2127
    :pswitch_247
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_3d

    .line 2130
    :pswitch_259
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_3d

    .line 2133
    :pswitch_26b
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_3d

    .line 2136
    :pswitch_27d
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_3d

    .line 2139
    :pswitch_28f
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_3d

    .line 2142
    :pswitch_2a1
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_3d

    .line 2145
    :pswitch_2b3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v27

    if-eqz v27, :cond_2c1

    .line 2146
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 2150
    :cond_2c1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2151
    .local v12, handlerName:Ljava/lang/String;
    if-eqz v12, :cond_3d

    .line 2152
    new-instance v27, Landroid/view/View$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3d

    .line 2186
    .end local v12           #handlerName:Ljava/lang/String;
    :pswitch_2da
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto/16 :goto_3d

    .line 2191
    .end local v7           #attr:I
    :cond_2e6
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2193
    if-eqz v8, :cond_2f4

    .line 2194
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2197
    :cond_2f4
    if-ltz v16, :cond_2fe

    .line 2198
    move/from16 v14, v16

    .line 2199
    move/from16 v21, v16

    .line 2200
    move/from16 v17, v16

    .line 2201
    move/from16 v9, v16

    .line 2208
    :cond_2fe
    if-ltz v14, :cond_364

    move/from16 v27, v14

    :goto_302
    if-ltz v21, :cond_36b

    move/from16 v28, v21

    :goto_306
    if-ltz v17, :cond_372

    move/from16 v29, v17

    :goto_30a
    if-ltz v9, :cond_379

    move/from16 v30, v9

    :goto_30e
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2213
    if-eqz v22, :cond_326

    .line 2214
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 2218
    :cond_326
    if-eqz v18, :cond_32b

    .line 2219
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 2222
    :cond_32b
    if-nez v25, :cond_32f

    if-eqz v26, :cond_338

    .line 2223
    :cond_32f
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 2226
    :cond_338
    if-nez v20, :cond_34b

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x200

    move/from16 v27, v0

    if-eqz v27, :cond_34b

    .line 2227
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 2230
    :cond_34b
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2244
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2247
    const-string v27, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 2249
    return-void

    .line 2208
    .restart local p1
    :cond_364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    goto :goto_302

    :cond_36b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    goto :goto_306

    :cond_372
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    goto :goto_30a

    :cond_379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v30, v0

    goto :goto_30e

    .line 1983
    :pswitch_data_380
    .packed-switch 0x7
        :pswitch_1e6
        :pswitch_92
        :pswitch_a3
        :pswitch_7c
        :pswitch_87
        :pswitch_40
        :pswitch_45
        :pswitch_50
        :pswitch_5b
        :pswitch_66
        :pswitch_71
        :pswitch_c0
        :pswitch_d2
        :pswitch_146
        :pswitch_ae
        :pswitch_1ae
        :pswitch_1ca
        :pswitch_3d
        :pswitch_247
        :pswitch_259
        :pswitch_26b
        :pswitch_27d
        :pswitch_ea
        :pswitch_104
        :pswitch_11a
        :pswitch_15c
        :pswitch_130
        :pswitch_28f
        :pswitch_2a1
        :pswitch_180
        :pswitch_217
        :pswitch_1fe
        :pswitch_197
        :pswitch_2b3
        :pswitch_174
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_2da
        :pswitch_22d
    .end packed-switch
.end method

.method static synthetic access$302(Landroid/view/View;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 633
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Landroid/view/View;->postCheckForLongClick(I)V

    return-void
.end method

.method private static captureViewInfo(Ljava/lang/String;Landroid/view/View;)V
    .registers 4
    .parameter "subTag"
    .parameter "v"

    .prologue
    .line 3898
    if-eqz p1, :cond_b

    const-string v0, "debug.captureview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    .line 3902
    :cond_b
    :goto_b
    return-void

    .line 3901
    :cond_c
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private computeOpaqueFlags()V
    .registers 4

    .prologue
    .line 5445
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 5446
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5451
    :goto_14
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5452
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_1e

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_23

    :cond_1e
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_34

    .line 5454
    :cond_23
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5458
    :goto_2a
    return-void

    .line 5448
    .end local v0           #flags:I
    :cond_2b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_14

    .line 5456
    .restart local v0       #flags:I
    :cond_34
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2a
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .registers 5
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 8373
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8374
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 8375
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8374
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 8377
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findViewShouldExist(Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 3631
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3632
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_1e

    .line 3633
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_1e
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .registers 5
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8571
    move v0, p0

    .line 8572
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8573
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8575
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_12

    .line 8584
    :goto_c
    return v0

    .line 8577
    :sswitch_d
    move v0, p0

    .line 8578
    goto :goto_c

    .line 8581
    :sswitch_f
    move v0, v2

    goto :goto_c

    .line 8575
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .registers 6

    .prologue
    .line 3848
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3849
    .local v1, ancestor:Landroid/view/ViewParent;
    :goto_2
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    .line 3850
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 3851
    .local v2, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x6

    if-ne v3, v4, :cond_14

    .line 3852
    const/4 v3, 0x1

    .line 3857
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :goto_13
    return v3

    .line 3854
    .restart local v2       #vgAncestor:Landroid/view/ViewGroup;
    :cond_14
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3856
    goto :goto_2

    .line 3857
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :cond_19
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 8964
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8965
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .registers 3

    .prologue
    .line 2457
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_11

    .line 2458
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2460
    :cond_11
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5216
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected static mergeDrawableStates([I[I)[I
    .registers 7
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 7640
    array-length v0, p0

    .line 7641
    .local v0, N:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 7642
    .local v1, i:I
    :goto_4
    if-ltz v1, :cond_d

    aget v2, p0, v1

    if-nez v2, :cond_d

    .line 7643
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 7645
    :cond_d
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7646
    return-object p0
.end method

.method private postCheckForLongClick(I)V
    .registers 5
    .parameter "delayOffset"

    .prologue
    .line 8918
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8920
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_e

    .line 8921
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 8923
    :cond_e
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 8924
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8926
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .registers 6
    .parameter "flags"

    .prologue
    const-string v4, " "

    .line 7192
    const-string v1, ""

    .line 7193
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7194
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 7195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7196
    add-int/lit8 v0, v0, 0x1

    .line 7199
    :cond_1f
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_78

    .line 7217
    :goto_24
    return-object v1

    .line 7201
    :sswitch_25
    if-lez v0, :cond_3a

    .line 7202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7204
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7206
    goto :goto_24

    .line 7208
    :sswitch_4e
    if-lez v0, :cond_63

    .line 7209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7211
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7213
    goto :goto_24

    .line 7199
    nop

    :sswitch_data_78
    .sparse-switch
        0x4 -> :sswitch_25
        0x8 -> :sswitch_4e
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .registers 6
    .parameter "privateFlags"

    .prologue
    const-string v4, " "

    .line 7228
    const-string v1, ""

    .line 7229
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7231
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 7232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7233
    add-int/lit8 v0, v0, 0x1

    .line 7236
    :cond_1f
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 7237
    if-lez v0, :cond_39

    .line 7238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7240
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7241
    add-int/lit8 v0, v0, 0x1

    .line 7244
    :cond_4e
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7d

    .line 7245
    if-lez v0, :cond_68

    .line 7246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7248
    :cond_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7249
    add-int/lit8 v0, v0, 0x1

    .line 7252
    :cond_7d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ad

    .line 7253
    if-lez v0, :cond_98

    .line 7254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7256
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7257
    add-int/lit8 v0, v0, 0x1

    .line 7260
    :cond_ad
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_dd

    .line 7261
    if-lez v0, :cond_c8

    .line 7262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7264
    :cond_c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7265
    add-int/lit8 v0, v0, 0x1

    .line 7268
    :cond_dd
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_10b

    .line 7269
    if-lez v0, :cond_f8

    .line 7270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7272
    :cond_f8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7275
    :cond_10b
    return-object v1
.end method

.method private recomputePadding()V
    .registers 5

    .prologue
    .line 5827
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 5828
    return-void
.end method

.method private removeLongPressCallback()V
    .registers 2

    .prologue
    .line 4668
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_9

    .line 4669
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4671
    :cond_9
    return-void
.end method

.method private removeTapCallback()V
    .registers 3

    .prologue
    .line 4687
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_11

    .line 4688
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4689
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4691
    :cond_11
    return-void
.end method

.method private removeUnsetPressCallback()V
    .registers 2

    .prologue
    .line 4677
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_13

    .line 4678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4679
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4681
    :cond_13
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 2930
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 2941
    :cond_8
    :goto_8
    return-void

    .line 2934
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2937
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_8

    .line 2938
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_8
.end method

.method public static resolveSize(II)I
    .registers 5
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8544
    move v0, p0

    .line 8545
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8546
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8547
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_16

    .line 8558
    :goto_c
    return v0

    .line 8549
    :sswitch_d
    move v0, p0

    .line 8550
    goto :goto_c

    .line 8552
    :sswitch_f
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8553
    goto :goto_c

    .line 8555
    :sswitch_14
    move v0, v2

    goto :goto_c

    .line 8547
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method private static setTagInternal(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter "view"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8213
    const/4 v1, 0x0

    .line 8214
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8215
    :try_start_4
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-nez v2, :cond_25

    .line 8216
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    .line 8220
    :goto_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_30

    .line 8222
    if-nez v1, :cond_21

    .line 8223
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 8224
    .restart local v1       #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v2, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8225
    :try_start_1b
    sget-object v3, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8226
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    .line 8229
    :cond_21
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8230
    return-void

    .line 8218
    :cond_25
    :try_start_25
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    goto :goto_f

    .line 8220
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v2

    .line 8226
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v3
.end method

.method private static stateSetUnion([I[I)[I
    .registers 16
    .parameter "stateSet1"
    .parameter "stateSet2"

    .prologue
    const/4 v13, 0x1

    .line 8930
    array-length v8, p0

    .line 8931
    .local v8, stateSet1Length:I
    array-length v9, p1

    .line 8932
    .local v9, stateSet2Length:I
    add-int v11, v8, v9

    new-array v7, v11, [I

    .line 8933
    .local v7, newSet:[I
    const/4 v4, 0x0

    .line 8934
    .local v4, k:I
    const/4 v1, 0x0

    .line 8935
    .local v1, i:I
    const/4 v3, 0x0

    .line 8938
    .local v3, j:I
    sget-object v0, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_f
    if-ge v2, v6, :cond_47

    aget v10, v0, v2

    .line 8939
    .local v10, viewState:I
    if-ge v1, v8, :cond_36

    aget v11, p0, v1

    if-ne v11, v10, :cond_36

    .line 8940
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8941
    add-int/lit8 v1, v1, 0x1

    .line 8946
    :goto_1f
    if-le v4, v13, :cond_43

    .line 8947
    sget-boolean v11, Landroid/view/View;->$assertionsDisabled:Z

    if-nez v11, :cond_43

    sub-int v11, v4, v13

    aget v11, v7, v11

    const/4 v12, 0x2

    sub-int v12, v4, v12

    aget v12, v7, v12

    if-gt v11, v12, :cond_43

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 8942
    .end local v4           #k:I
    .restart local v5       #k:I
    :cond_36
    if-ge v3, v9, :cond_48

    aget v11, p1, v3

    if-ne v11, v10, :cond_48

    .line 8943
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8944
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 8938
    :cond_43
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_f

    .line 8950
    .end local v10           #viewState:I
    :cond_47
    return-object v7

    .restart local v10       #viewState:I
    :cond_48
    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_1f
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3661
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3662
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3680
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3692
    :cond_6
    :goto_6
    return-void

    .line 3684
    :cond_7
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3689
    :cond_18
    if-eqz p1, :cond_6

    .line 3690
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
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
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 3713
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 3715
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_e

    and-int v1, v0, v3

    if-ne v1, v3, :cond_15

    :cond_e
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_15

    .line 3717
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3719
    :cond_15
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .registers 20
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 8886
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v3

    .line 8887
    .local v3, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 8888
    .local v15, db:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .line 8889
    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_79

    if-eqz v14, :cond_79

    .line 8890
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v11, v4, v5

    .line 8891
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v7, v4, v5

    .line 8892
    .local v7, h:I
    iget v4, v15, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_32

    .line 8894
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8896
    :cond_32
    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-ge v4, v11, :cond_3f

    .line 8898
    iget v4, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8900
    :cond_3f
    iget v4, v15, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_4d

    .line 8902
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, v15, Landroid/graphics/Rect;->top:I

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8904
    :cond_4d
    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v7, :cond_5a

    .line 8906
    const/4 v4, 0x0

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8908
    :cond_5a
    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    move-object/from16 v16, v0

    .line 8909
    .local v16, location:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8910
    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->translate(II)V

    .line 8911
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 8915
    .end local v7           #h:I
    .end local v11           #w:I
    .end local v16           #location:[I
    :goto_78
    return-void

    .line 8913
    :cond_79
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_78
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 6189
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_7

    .line 6190
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6197
    :goto_6
    return-void

    .line 6191
    :cond_7
    if-nez p1, :cond_d

    .line 6192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 6194
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5203
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected awakenScrollBars(I)Z
    .registers 3
    .parameter "startDelay"

    .prologue
    .line 5255
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 12
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5297
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5299
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_a

    iget-boolean v4, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v4, :cond_c

    :cond_a
    move v4, v5

    .line 5337
    :goto_b
    return v4

    .line 5303
    :cond_c
    iget-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v4, :cond_17

    .line 5304
    new-instance v4, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v4}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 5307
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 5309
    :cond_23
    if-eqz p2, :cond_28

    .line 5311
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5314
    :cond_28
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_34

    .line 5318
    const/16 v0, 0x2ee

    .line 5319
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5324
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_34
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 5325
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 5326
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5329
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_51

    .line 5330
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5331
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_51
    move v4, v8

    .line 5334
    goto :goto_b

    .end local v1           #fadeStartTime:J
    :cond_53
    move v4, v5

    .line 5337
    goto :goto_b
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 4853
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 4854
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 4856
    :cond_9
    return-void
.end method

.method public buildDrawingCache()V
    .registers 2

    .prologue
    .line 6629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6630
    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 21
    .parameter "autoScale"

    .prologue
    .line 6651
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    and-int v17, v17, v18

    if-eqz v17, :cond_23

    if-eqz p1, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_c0

    .line 6662
    :cond_23
    :goto_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 6663
    .local v16, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 6665
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    .line 6666
    .local v3, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_d7

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d7

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 6668
    .local v14, scalingRequired:Z
    :goto_51
    if-eqz p1, :cond_7d

    if-eqz v14, :cond_7d

    .line 6669
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 6670
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 6673
    :cond_7d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    move v7, v0

    .line 6674
    .local v7, drawingCacheBackgroundColor:I
    if-nez v7, :cond_8a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v17

    if-eqz v17, :cond_dd

    :cond_8a
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 6675
    .local v10, opaque:Z
    :goto_8e
    if-eqz v3, :cond_e2

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e2

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 6677
    .local v15, use32BitCache:Z
    :goto_9b
    if-lez v16, :cond_bd

    if-lez v9, :cond_bd

    mul-int v17, v16, v9

    if-eqz v10, :cond_e7

    if-nez v15, :cond_e7

    const/16 v18, 0x2

    :goto_a7
    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_ea

    .line 6681
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6791
    .end local v3           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v7           #drawingCacheBackgroundColor:I
    .end local v9           #height:I
    .end local v10           #opaque:Z
    .end local v14           #scalingRequired:Z
    .end local v15           #use32BitCache:Z
    .end local v16           #width:I
    :cond_c0
    :goto_c0
    return-void

    .line 6651
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_c0

    goto/16 :goto_23

    .line 6666
    .restart local v3       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v9       #height:I
    .restart local v16       #width:I
    :cond_d7
    const/16 v17, 0x0

    move/from16 v14, v17

    goto/16 :goto_51

    .line 6674
    .restart local v7       #drawingCacheBackgroundColor:I
    .restart local v14       #scalingRequired:Z
    :cond_dd
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_8e

    .line 6675
    .restart local v10       #opaque:Z
    :cond_e2
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_9b

    .line 6677
    .restart local v15       #use32BitCache:Z
    :cond_e7
    const/16 v18, 0x4

    goto :goto_a7

    .line 6685
    :cond_ea
    const/4 v6, 0x1

    .line 6686
    .local v6, clear:Z
    if-eqz p1, :cond_215

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_207

    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 6689
    .local v4, bitmap:Landroid/graphics/Bitmap;
    :goto_f9
    if-eqz v4, :cond_10e

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_10e

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-eq v0, v1, :cond_162

    .line 6691
    :cond_10e
    if-nez v10, :cond_23d

    .line 6692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x18

    and-int v17, v17, v18

    sparse-switch v17, :sswitch_data_288

    .line 6703
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6713
    .local v11, quality:Landroid/graphics/Bitmap$Config;
    :goto_11f
    if-eqz v4, :cond_124

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 6716
    :cond_124
    :try_start_124
    move/from16 v0, v16

    move v1, v9

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6717
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6718
    if-eqz p1, :cond_24a

    .line 6719
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6723
    :goto_150
    if-eqz v10, :cond_15c

    if-eqz v15, :cond_15c

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_15c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_124 .. :try_end_15c} :catch_25a

    .line 6736
    :cond_15c
    if-eqz v7, :cond_273

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 6740
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_162
    :goto_162
    if-eqz v3, :cond_279

    .line 6741
    iget-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6742
    .local v5, canvas:Landroid/graphics/Canvas;
    if-nez v5, :cond_16d

    .line 6743
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 6745
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_16d
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6750
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6756
    :goto_177
    if-eqz v6, :cond_17c

    .line 6757
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6760
    :cond_17c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 6761
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 6763
    .local v12, restoreCount:I
    if-eqz p1, :cond_18c

    if-eqz v14, :cond_18c

    .line 6764
    iget v13, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 6765
    .local v13, scale:F
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6768
    .end local v13           #scale:F
    :cond_18c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6770
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6774
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_280

    .line 6778
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, -0x600001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6779
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6784
    :goto_1fe
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6786
    if-eqz v3, :cond_c0

    .line 6788
    iput-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_c0

    .line 6686
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v12           #restoreCount:I
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_f9

    :cond_215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_223

    const/16 v17, 0x0

    move-object/from16 v4, v17

    goto/16 :goto_f9

    :cond_223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_f9

    .line 6694
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_231
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6695
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_11f

    .line 6697
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_235
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 6698
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_11f

    .line 6700
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_239
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6701
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_11f

    .line 6709
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_23d
    if-eqz v15, :cond_245

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :goto_243
    goto/16 :goto_11f

    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_245
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    goto :goto_243

    .line 6721
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :cond_24a
    :try_start_24a
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    :try_end_258
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24a .. :try_end_258} :catch_25a

    goto/16 :goto_150

    .line 6724
    :catch_25a
    move-exception v17

    move-object/from16 v8, v17

    .line 6728
    .local v8, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_269

    .line 6729
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_c0

    .line 6731
    :cond_269
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_c0

    .line 6736
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_273
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_162

    .line 6753
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_279
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_177

    .line 6781
    .restart local v12       #restoreCount:I
    :cond_280
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1fe

    .line 6692
    :sswitch_data_288
    .sparse-switch
        0x0 -> :sswitch_231
        0x80000 -> :sswitch_235
        0x100000 -> :sswitch_239
    .end sparse-switch
.end method

.method public cancelLongPress()V
    .registers 1

    .prologue
    .line 4700
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4707
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4708
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 4479
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 8682
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 8683
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 8685
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8686
    return-void
.end method

.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2721
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 2722
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2724
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_16

    .line 2725
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 2728
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2729
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2731
    :cond_1d
    return-void
.end method

.method clearFocusForRemoval()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2739
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 2740
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2742
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2743
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2745
    :cond_14
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 5954
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 5933
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 5912
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 5636
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 6015
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 5994
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 5973
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 4493
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 4497
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4499
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 4500
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_17

    .line 4501
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4506
    :cond_17
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4508
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_28

    .line 4509
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 4511
    :cond_28
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f00

    .line 6798
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v8, v9

    .line 6799
    .local v7, width:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 6801
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6802
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_30

    iget v8, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v6, v8

    .line 6803
    .local v6, scale:F
    :goto_16
    int-to-float v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v7, v8

    .line 6804
    int-to-float v8, v4

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 6806
    if-lez v7, :cond_34

    move v8, v7

    :goto_21
    if-lez v4, :cond_36

    move v9, v4

    :goto_24
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6807
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_38

    .line 6808
    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v8

    .line 6802
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_30
    const/high16 v8, 0x3f80

    move v6, v8

    goto :goto_16

    .restart local v6       #scale:F
    :cond_34
    move v8, v11

    .line 6806
    goto :goto_21

    :cond_36
    move v9, v11

    goto :goto_24

    .line 6811
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6814
    if-eqz v0, :cond_92

    .line 6815
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6816
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_50

    .line 6817
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 6819
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_50
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6824
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6830
    :goto_56
    const/high16 v8, -0x100

    and-int/2addr v8, p2

    if-eqz v8, :cond_5e

    .line 6831
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6834
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 6835
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 6836
    .local v5, restoreCount:I
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6837
    iget v8, p0, Landroid/view/View;->mScrollX:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6840
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6841
    .local v3, flags:I
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6844
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_98

    .line 6845
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6850
    :goto_88
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6852
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6854
    if-eqz v0, :cond_91

    .line 6856
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6859
    :cond_91
    return-object v1

    .line 6827
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v5           #restoreCount:I
    :cond_92
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_56

    .line 6847
    .restart local v3       #flags:I
    .restart local v5       #restoreCount:I
    :cond_98
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_88
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 8293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 8294
    return-void
.end method

.method protected debug(I)V
    .registers 11
    .parameter "depth"

    .prologue
    const-string v8, ")"

    const-string/jumbo v7, "}"

    const-string v6, ", "

    const-string v5, "View"

    .line 8306
    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8308
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8309
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 8310
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4b

    .line 8311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8313
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 8314
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_6e

    .line 8315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8317
    :cond_6e
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8319
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_95

    .line 8320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8321
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8324
    :cond_95
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8328
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8330
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_10b

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_10b

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_10b

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_159

    .line 8332
    :cond_10b
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8335
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8338
    :cond_159
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8341
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8343
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8344
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_237

    .line 8345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8349
    :goto_1a2
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8351
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8355
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8357
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8361
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8362
    return-void

    .line 8347
    :cond_237
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1a2
.end method

.method public destroyDrawingCache()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6584
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_14

    .line 6585
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6586
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6587
    :cond_12
    iput-object v2, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6589
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_14
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_27

    .line 6590
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6591
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6592
    :cond_25
    iput-object v2, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6594
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_27
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 6
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 6284
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6285
    iget v1, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 6286
    iget-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_16

    .line 6287
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 6288
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 6290
    :cond_16
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 6291
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6292
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6294
    :cond_2b
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 6295
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 6296
    iget v0, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6297
    .local v0, vis:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_3a

    .line 6298
    invoke-virtual {p0, v0}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6300
    :cond_3a
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4263
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 4264
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 4242
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4243
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 3
    .parameter "consistency"

    .prologue
    .line 8238
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 6304
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6305
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_d

    .line 6306
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6307
    .local v1, vis:I
    if-eq v1, v2, :cond_d

    .line 6308
    invoke-virtual {p0, v2}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6312
    .end local v1           #vis:I
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 6313
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_26

    .line 6314
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6315
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6317
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6318
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 4142
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 4143
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 4898
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 3882
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3883
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 3946
    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3948
    const/4 v0, 0x1

    .line 3951
    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_20
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_17

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3925
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3962
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2879
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6411
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 6412
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6413
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_29

    .line 6416
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6417
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6418
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 6419
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6424
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_29
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6345
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_2e

    .line 6346
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6347
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 6348
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_27

    .line 6349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6352
    :cond_27
    if-eqz v0, :cond_2e

    .line 6355
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6358
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 3468
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 7904
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 3864
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3865
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 3974
    const-string v1, "SGH-I777"

    const-string v2, "GT-I9221"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    .line 3976
    .local v0, metaState:I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_19

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_19

    move v1, v3

    .line 4024
    .end local v0           #metaState:I
    :goto_18
    return v1

    .line 3981
    :cond_19
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3982
    const/4 v1, 0x0

    goto :goto_18

    .line 4020
    :cond_21
    iget-object v1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_35

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_35

    iget-object v1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v3

    .line 4022
    goto :goto_18

    .line 4024
    :cond_35
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4052
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3601
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4112
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4113
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 4063
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4064
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4166
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4167
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 43
    .parameter "canvas"

    .prologue
    .line 6972
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v29, v0

    .line 6973
    .local v29, privateFlags:I
    const/high16 v3, 0x60

    and-int v3, v3, v29

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v3, :cond_9d

    :cond_1e
    const/4 v3, 0x1

    move v13, v3

    .line 6975
    .local v13, dirtyOpaque:Z
    :goto_20
    const v3, -0x600001

    and-int v3, v3, v29

    or-int/lit8 v3, v3, 0x20

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6992
    if-nez v13, :cond_73

    .line 6993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 6994
    .local v10, background:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_73

    .line 6995
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    .line 6996
    .local v33, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    .line 6998
    .local v34, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    move v3, v0

    if-eqz v3, :cond_69

    .line 6999
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v7, v0

    sub-int/2addr v6, v7

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7000
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7003
    :cond_69
    or-int v3, v33, v34

    if-nez v3, :cond_a0

    .line 7004
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7014
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    :cond_73
    :goto_73
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v40, v0

    .line 7015
    .local v40, viewFlags:I
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x1000

    move v3, v0

    if-eqz v3, :cond_c7

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 7016
    .local v21, horizontalEdges:Z
    :goto_83
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x2000

    move v3, v0

    if-eqz v3, :cond_cb

    const/4 v3, 0x1

    move/from16 v39, v3

    .line 7017
    .local v39, verticalEdges:Z
    :goto_8d
    if-nez v39, :cond_cf

    if-nez v21, :cond_cf

    .line 7019
    if-nez v13, :cond_96

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7022
    :cond_96
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7025
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 7168
    :goto_9c
    return-void

    .line 6973
    .end local v13           #dirtyOpaque:Z
    .end local v21           #horizontalEdges:Z
    .end local v39           #verticalEdges:Z
    .end local v40           #viewFlags:I
    :cond_9d
    const/4 v3, 0x0

    move v13, v3

    goto :goto_20

    .line 7006
    .restart local v10       #background:Landroid/graphics/drawable/Drawable;
    .restart local v13       #dirtyOpaque:Z
    .restart local v33       #scrollX:I
    .restart local v34       #scrollY:I
    :cond_a0
    move/from16 v0, v33

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7007
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7008
    move/from16 v0, v33

    neg-int v0, v0

    move v3, v0

    int-to-float v3, v3

    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_73

    .line 7015
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    .restart local v40       #viewFlags:I
    :cond_c7
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_83

    .line 7016
    .restart local v21       #horizontalEdges:Z
    :cond_cb
    const/4 v3, 0x0

    move/from16 v39, v3

    goto :goto_8d

    .line 7038
    .restart local v39       #verticalEdges:Z
    :cond_cf
    const/16 v17, 0x0

    .line 7039
    .local v17, drawTop:Z
    const/4 v14, 0x0

    .line 7040
    .local v14, drawBottom:Z
    const/4 v15, 0x0

    .line 7041
    .local v15, drawLeft:Z
    const/16 v16, 0x0

    .line 7043
    .local v16, drawRight:Z
    const/16 v38, 0x0

    .line 7044
    .local v38, topFadeStrength:F
    const/4 v12, 0x0

    .line 7045
    .local v12, bottomFadeStrength:F
    const/16 v23, 0x0

    .line 7046
    .local v23, leftFadeStrength:F
    const/16 v31, 0x0

    .line 7049
    .local v31, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    .line 7050
    .local v27, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    .line 7052
    .local v28, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v26

    .line 7053
    .local v26, offsetRequired:Z
    if-eqz v26, :cond_fa

    .line 7054
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v3

    add-int v27, v27, v3

    .line 7055
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v3

    add-int v28, v28, v3

    .line 7058
    :cond_fa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    add-int v22, v3, v27

    .line 7059
    .local v22, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v30, v3, v27

    .line 7060
    .local v30, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    add-int v37, v3, v28

    .line 7061
    .local v37, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v11, v3, v28

    .line 7063
    .local v11, bottom:I
    if-eqz v26, :cond_13f

    .line 7064
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v3

    add-int v30, v30, v3

    .line 7065
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v3

    add-int/2addr v11, v3

    .line 7068
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v35, v0

    .line 7069
    .local v35, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move/from16 v24, v0

    .line 7073
    .local v24, length:I
    if-eqz v39, :cond_157

    add-int v3, v37, v24

    sub-int v4, v11, v24

    if-le v3, v4, :cond_157

    .line 7074
    sub-int v3, v11, v37

    div-int/lit8 v24, v3, 0x2

    .line 7078
    :cond_157
    if-eqz v21, :cond_163

    add-int v3, v22, v24

    sub-int v4, v30, v24

    if-le v3, v4, :cond_163

    .line 7079
    sub-int v3, v30, v22

    div-int/lit8 v24, v3, 0x2

    .line 7082
    :cond_163
    if-eqz v39, :cond_192

    .line 7083
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v38

    .line 7084
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-ltz v3, :cond_33a

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 7085
    :goto_17c
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 7086
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-ltz v3, :cond_33f

    const/4 v3, 0x1

    move v14, v3

    .line 7089
    :cond_192
    :goto_192
    if-eqz v21, :cond_1c1

    .line 7090
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 7091
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-ltz v3, :cond_343

    const/4 v3, 0x1

    move v15, v3

    .line 7092
    :goto_1aa
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 7093
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-ltz v3, :cond_347

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 7096
    :cond_1c1
    :goto_1c1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v32

    .line 7098
    .local v32, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v36

    .line 7099
    .local v36, solidColor:I
    if-nez v36, :cond_34c

    .line 7100
    const/16 v20, 0x4

    .line 7102
    .local v20, flags:I
    if-eqz v17, :cond_1e5

    .line 7103
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7106
    :cond_1e5
    if-eqz v14, :cond_1fa

    .line 7107
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7110
    :cond_1fa
    if-eqz v15, :cond_20f

    .line 7111
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7114
    :cond_20f
    if-eqz v16, :cond_224

    .line 7115
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7122
    .end local v20           #flags:I
    :cond_224
    :goto_224
    if-nez v13, :cond_229

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7125
    :cond_229
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7128
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 7129
    .local v8, p:Landroid/graphics/Paint;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 7130
    .local v25, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v18, v0

    .line 7131
    .local v18, fade:Landroid/graphics/Shader;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 7133
    .local v19, fadeHeight:F
    if-eqz v17, :cond_27d

    .line 7134
    const/high16 v3, 0x3f80

    mul-float v4, v19, v38

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7135
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7136
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7137
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7140
    :cond_27d
    if-eqz v14, :cond_2b6

    .line 7141
    const/high16 v3, 0x3f80

    mul-float v4, v19, v12

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7142
    const/high16 v3, 0x4334

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7143
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    int-to-float v4, v11

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7144
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7145
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7148
    :cond_2b6
    if-eqz v15, :cond_2f2

    .line 7149
    const/high16 v3, 0x3f80

    mul-float v4, v19, v23

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7150
    const/high16 v3, -0x3d4c

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7151
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7152
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7153
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7156
    :cond_2f2
    if-eqz v16, :cond_32e

    .line 7157
    const/high16 v3, 0x3f80

    mul-float v4, v19, v31

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7158
    const/high16 v3, 0x42b4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7159
    move/from16 v0, v30

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7160
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7161
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7164
    :cond_32e
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7167
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_9c

    .line 7084
    .end local v8           #p:Landroid/graphics/Paint;
    .end local v18           #fade:Landroid/graphics/Shader;
    .end local v19           #fadeHeight:F
    .end local v25           #matrix:Landroid/graphics/Matrix;
    .end local v32           #saveCount:I
    .end local v36           #solidColor:I
    :cond_33a
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_17c

    .line 7086
    :cond_33f
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_192

    .line 7091
    :cond_343
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_1aa

    .line 7093
    :cond_347
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_1c1

    .line 7118
    .restart local v32       #saveCount:I
    .restart local v36       #solidColor:I
    :cond_34c
    invoke-virtual/range {v35 .. v36}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_224
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 7511
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7512
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7513
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7515
    :cond_11
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 2961
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3613
    sparse-switch p2, :sswitch_data_3c

    move-object v0, v1

    .line 3627
    :goto_6
    return-object v0

    .line 3615
    :sswitch_7
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-ne v0, v2, :cond_d

    move-object v0, v1

    goto :goto_6

    .line 3616
    :cond_d
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3618
    :sswitch_14
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    if-ne v0, v2, :cond_1a

    move-object v0, v1

    goto :goto_6

    .line 3619
    :cond_1a
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3621
    :sswitch_21
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    if-ne v0, v2, :cond_27

    move-object v0, v1

    goto :goto_6

    .line 3622
    :cond_27
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3624
    :sswitch_2e
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    if-ne v0, v2, :cond_34

    move-object v0, v1

    goto :goto_6

    .line 3625
    :cond_34
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3613
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_7
        0x21 -> :sswitch_21
        0x42 -> :sswitch_14
        0x82 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 8040
    if-gez p1, :cond_4

    .line 8041
    const/4 v0, 0x0

    .line 8043
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 8014
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_6

    move-object v0, p0

    .line 8017
    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 8054
    if-nez p1, :cond_4

    .line 8055
    const/4 v0, 0x0

    .line 8057
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 8026
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    .line 8029
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "insets"

    .prologue
    .line 3161
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 3162
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3163
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 3164
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 3165
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 3166
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3167
    const/4 v0, 0x1

    .line 3169
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 3
    .parameter "direction"

    .prologue
    .line 3582
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    .line 3583
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3585
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forceLayout()V
    .registers 2

    .prologue
    .line 8416
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8417
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 8761
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8762
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_2f

    if-eqz v6, :cond_2f

    .line 8763
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8764
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_30

    .line 8767
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 8768
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8769
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8778
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_2f
    :goto_2f
    return v9

    .line 8771
    .restart local v8       #pflags:I
    :cond_30
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 8775
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_2f
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 8664
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 6258
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6259
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_c

    .line 6260
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 6261
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_a

    .line 6262
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :cond_a
    move-object v2, v1

    .line 6266
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :goto_b
    return-object v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 7773
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8390
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5006
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 5733
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getBottomPaddingOffset()I
    .registers 2

    .prologue
    .line 6956
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2894
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4307
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 4524
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .registers 2

    .prologue
    .line 7546
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    .line 7547
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7551
    :goto_c
    return-object v0

    .line 7549
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7550
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7551
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_c
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 6532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "autoScale"

    .prologue
    const/high16 v3, 0x2

    const v2, 0x8000

    const/4 v1, 0x0

    .line 6563
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_d

    move-object v0, v1

    .line 6569
    .end local p0
    :goto_c
    return-object v0

    .line 6566
    .restart local p0
    :cond_d
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 6567
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6569
    :cond_15
    if-eqz p1, :cond_27

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1d

    move-object v0, v1

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_c

    .restart local p0
    :cond_27
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2d

    move-object v0, v1

    goto :goto_c

    :cond_2d
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_c
.end method

.method public getDrawingCacheBackgroundColor()I
    .registers 2

    .prologue
    .line 6620
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .registers 3

    .prologue
    .line 2999
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    .line 4961
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4962
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4963
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4964
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4965
    return-void
.end method

.method public getDrawingTime()J
    .registers 3

    .prologue
    .line 6455
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getFilterTouchesWhenObscured()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3530
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .registers 4
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3647
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3648
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 3649
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 5049
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5050
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 5080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 8
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v4, 0x0

    .line 5067
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v2, v3

    .line 5068
    .local v1, width:I
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int v0, v2, v3

    .line 5069
    .local v0, height:I
    if-lez v1, :cond_2f

    if-lez v0, :cond_2f

    .line 5070
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5071
    if-eqz p2, :cond_1f

    .line 5072
    iget v2, p0, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 5074
    :cond_1f
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    .line 5076
    :goto_2c
    return v2

    :cond_2d
    move v2, v4

    .line 5074
    goto :goto_2c

    :cond_2f
    move v2, v4

    .line 5076
    goto :goto_2c
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 5472
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 5473
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5475
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final getHeight()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4950
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "outRect"

    .prologue
    .line 5035
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5036
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 2326
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2327
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2328
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 2329
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2332
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2364
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2365
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_12

    .line 2366
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2367
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_12

    .line 2368
    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2369
    .local v2, size:I
    if-gtz v2, :cond_11

    .line 2370
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_11
    move v3, v2

    .line 2376
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_12
    return v3
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 8112
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .prologue
    .line 3030
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .prologue
    .line 3911
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 5122
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5016
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 5748
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getLeftPaddingOffset()I
    .registers 2

    .prologue
    .line 6914
    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "r"

    .prologue
    .line 5084
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5085
    .local v0, offset:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5086
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5087
    const/4 v1, 0x1

    .line 5089
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getLocationInWindow([I)V
    .registers 11
    .parameter "location"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7985
    if-eqz p1, :cond_8

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_10

    .line 7986
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7990
    :cond_10
    iget v4, p0, Landroid/view/View;->mLeft:I

    aput v4, p1, v8

    .line 7991
    iget v4, p0, Landroid/view/View;->mTop:I

    aput v4, p1, v7

    .line 7993
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7994
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_1a
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_39

    .line 7995
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 7996
    .local v1, view:Landroid/view/View;
    aget v4, p1, v8

    iget v5, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v8

    .line 7997
    aget v4, p1, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v7

    .line 7998
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7999
    goto :goto_1a

    .line 8001
    .end local v1           #view:Landroid/view/View;
    :cond_39
    instance-of v4, v2, Landroid/view/ViewRoot;

    if-eqz v4, :cond_48

    .line 8003
    move-object v0, v2

    check-cast v0, Landroid/view/ViewRoot;

    move-object v3, v0

    .line 8004
    .local v3, vr:Landroid/view/ViewRoot;
    aget v4, p1, v7

    iget v5, v3, Landroid/view/ViewRoot;->mCurScrollY:I

    sub-int/2addr v4, v5

    aput v4, p1, v7

    .line 8006
    .end local v3           #vr:Landroid/view/ViewRoot;
    :cond_48
    return-void
.end method

.method public getLocationOnScreen([I)V
    .registers 6
    .parameter "location"

    .prologue
    .line 7968
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7970
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7971
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 7972
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7973
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7975
    :cond_17
    return-void
.end method

.method public final getMeasuredHeight()I
    .registers 2

    .prologue
    .line 4986
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .registers 2

    .prologue
    .line 4975
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .registers 2

    .prologue
    .line 3113
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .registers 2

    .prologue
    .line 3053
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .registers 2

    .prologue
    .line 3073
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .registers 2

    .prologue
    .line 3093
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 2

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getOverScrollMode()I
    .registers 2

    .prologue
    .line 9067
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 7853
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 7864
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 7875
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 7842
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 4907
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 7418
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5026
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 5762
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getRightPaddingOffset()I
    .registers 2

    .prologue
    .line 6928
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 4

    .prologue
    .line 7944
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_c

    .line 7945
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 7946
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 7957
    .end local v1           #v:Landroid/view/View;
    :goto_b
    return-object v2

    .line 7951
    :cond_c
    move-object v0, p0

    .line 7953
    .local v0, parent:Landroid/view/View;
    :goto_d
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 7954
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_d

    :cond_1c
    move-object v2, v0

    .line 7957
    goto :goto_b
.end method

.method public getScrollBarStyle()I
    .registers 3

    .prologue
    .line 5891
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .prologue
    .line 4919
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .prologue
    .line 4930
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 7182
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundEffect()I
    .registers 2

    .prologue
    .line 2554
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 8599
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 8601
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 8602
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 8603
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_f

    .line 8604
    move v1, v0

    .line 8608
    .end local v0           #bgMinHeight:I
    :cond_f
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 8623
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 8625
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 8626
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 8627
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_f

    .line 8628
    move v1, v0

    .line 8632
    .end local v0           #bgMinWidth:I
    :cond_f
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8125
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    .line 8154
    const/4 v1, 0x0

    .line 8155
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8156
    :try_start_4
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_12

    .line 8157
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 8159
    :cond_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1a

    .line 8161
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8162
    :goto_19
    return-object v2

    .line 8159
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    .line 8162
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public final getTop()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4996
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 5719
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getTopPaddingOffset()I
    .registers 2

    .prologue
    .line 6942
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .registers 2

    .prologue
    .line 4721
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3702
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3703
    return-object v0
.end method

.method public getVerticalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 2294
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2295
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2296
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 2297
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2300
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getVerticalScrollbarWidth()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2342
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2343
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_13

    .line 2344
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2345
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_13

    .line 2346
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2347
    .local v2, size:I
    if-gtz v2, :cond_12

    .line 2348
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_12
    move v3, v2

    .line 2354
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_13
    return v3
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .prologue
    .line 7929
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 7930
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7935
    :goto_8
    return-object v0

    .line 7932
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_14

    .line 7933
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7935
    :cond_14
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_8
.end method

.method public getVisibility()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3194
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4940
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .registers 2

    .prologue
    .line 6235
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 6275
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 6244
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowVisibility()I
    .registers 2

    .prologue
    .line 4192
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "outRect"

    .prologue
    const/4 v5, 0x0

    .line 4212
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_34

    .line 4214
    :try_start_5
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_31

    .line 4221
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4222
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 4223
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 4224
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 4225
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 4230
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_30
    return-void

    .line 4215
    :catch_31
    move-exception v3

    move-object v1, v3

    .line 4216
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_30

    .line 4228
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_34
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4229
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_30
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2647
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c

    .line 2648
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2650
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    .line 2651
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2654
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2655
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2657
    :cond_1c
    return-void
.end method

.method public hasFocus()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 2772
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFocusable()Z
    .registers 2

    .prologue
    .line 2788
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasOpaqueScrollbars()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 5464
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 4100
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .registers 5
    .parameter "a"

    .prologue
    .line 2278
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2280
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2283
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .registers 11
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2391
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2393
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2395
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_12

    .line 2396
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2399
    :cond_12
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2401
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1c

    .line 2402
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 2404
    :cond_1c
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 2407
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 2410
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 2415
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 2419
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2420
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2422
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2423
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5b

    .line 2424
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2427
    :cond_5b
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2429
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_67

    .line 2430
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 2433
    :cond_67
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2434
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2436
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2437
    if-eqz v3, :cond_7d

    .line 2438
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2441
    :cond_7d
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2443
    if-eqz v0, :cond_89

    .line 2444
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 2448
    :cond_89
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 2449
    return-void
.end method

.method public invalidate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 5409
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2b

    .line 5410
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8021

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5411
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5412
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5413
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 5414
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5415
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5418
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5421
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2b
    return-void
.end method

.method public invalidate(IIII)V
    .registers 14
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 5385
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_30

    .line 5386
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5387
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5388
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5389
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    if-ge p1, p3, :cond_30

    if-ge p2, p4, :cond_30

    .line 5390
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 5391
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 5392
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5393
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5394
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5397
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    .end local v4           #tmpr:Landroid/graphics/Rect;
    :cond_30
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 11
    .parameter "dirty"

    .prologue
    .line 5354
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_32

    .line 5355
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5356
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5357
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5358
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 5359
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 5360
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 5361
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5362
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5364
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5367
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_32
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .parameter "drawable"

    .prologue
    .line 7427
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 7428
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7429
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 7430
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 7432
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 7435
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_1d
    return-void
.end method

.method public isClickable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3397
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDrawingCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 6521
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDuplicateParentStateEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 6490
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3217
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFitsSystemWindowsFlagSet()Z
    .registers 3

    .prologue
    .line 3179
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isFocusable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3556
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isFocusableInTouchMode()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 3569
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 2950
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 3338
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 5649
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHorizontalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 5776
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isInEditMode()Z
    .registers 2

    .prologue
    .line 6878
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchMode()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4292
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 4293
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4295
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/view/ViewRoot;->isInTouchMode()Z

    move-result v0

    goto :goto_8
.end method

.method public isLayoutRequested()Z
    .registers 3

    .prologue
    .line 7285
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLongClickable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 3424
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isOpaque()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 5436
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 2

    .prologue
    .line 6900
    const/4 v0, 0x0

    return v0
.end method

.method public isPressed()Z
    .registers 3

    .prologue
    .line 3482
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRootNamespace()Z
    .registers 2

    .prologue
    .line 8097
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSaveEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 3495
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollbarFadingEnabled()Z
    .registers 2

    .prologue
    .line 5854
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7913
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShown()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3133
    move-object v1, p0

    .line 3136
    .local v1, current:Landroid/view/View;
    :cond_2
    iget v3, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_a

    move v3, v4

    .line 3149
    :goto_9
    return v3

    .line 3139
    :cond_a
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3140
    .local v2, parent:Landroid/view/ViewParent;
    if-nez v2, :cond_10

    move v3, v4

    .line 3141
    goto :goto_9

    .line 3143
    :cond_10
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_16

    .line 3144
    const/4 v3, 0x1

    goto :goto_9

    .line 3146
    :cond_16
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3147
    if-nez v1, :cond_2

    move v3, v4

    .line 3149
    goto :goto_9
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 3309
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 5684
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 5806
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 6131
    const/4 v0, 0x0

    return v0
.end method

.method public final layout(IIII)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 7308
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 7309
    .local v1, changed:Z
    if-nez v1, :cond_e

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_1c

    :cond_e
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7314
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 7315
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7317
    :cond_1c
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7318
    return-void
.end method

.method public final measure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8440
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_30

    .line 8445
    :cond_10
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8452
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 8456
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2a

    .line 8457
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8462
    :cond_2a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8465
    :cond_30
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 8466
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 8467
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .registers 4
    .parameter "force"

    .prologue
    .line 4275
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4276
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_d

    .line 4277
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_a

    if-eqz p1, :cond_d

    .line 4278
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4281
    :cond_d
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 5108
    iget v0, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mLeft:I

    .line 5109
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 5110
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 5098
    iget v0, p0, Landroid/view/View;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mTop:I

    .line 5099
    iget v0, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 5100
    return-void
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 8727
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8728
    return-void
.end method

.method protected onAnimationStart()V
    .registers 3

    .prologue
    .line 8715
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8716
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 6209
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 6210
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6212
    :cond_b
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 6213
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 6214
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6216
    :cond_1d
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 4449
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 8866
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 4256
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 11
    .parameter "consistency"

    .prologue
    const v8, 0x8000

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "ViewConsistency"

    const-string v5, "View "

    .line 8252
    const/4 v2, 0x1

    .line 8254
    .local v2, result:Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_8d

    move v1, v7

    .line 8255
    .local v1, checkLayout:Z
    :goto_f
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_8f

    move v0, v7

    .line 8257
    .local v0, checkDrawing:Z
    :goto_14
    if-eqz v1, :cond_5e

    .line 8258
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 8259
    const/4 v2, 0x0

    .line 8260
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a parent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8264
    :cond_3b
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_5e

    .line 8265
    const/4 v2, 0x0

    .line 8266
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not attached to a window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8271
    :cond_5e
    if-eqz v0, :cond_8c

    .line 8275
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_8c

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_8c

    .line 8277
    const/4 v2, 0x0

    .line 8278
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was invalidated but its drawing cache is valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8283
    :cond_8c
    return v2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    :cond_8d
    move v1, v4

    .line 8254
    goto :goto_f

    .restart local v1       #checkLayout:Z
    :cond_8f
    move v0, v4

    .line 8255
    goto :goto_14
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 4534
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 11
    .parameter "extraSpace"

    .prologue
    const/high16 v6, 0x40

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7571
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_18

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_18

    .line 7573
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 7619
    :goto_17
    return-object v5

    .line 7578
    .restart local p0
    :cond_18
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7580
    .local v3, privateFlags:I
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_51

    move v4, v8

    .line 7582
    .local v4, viewStateIndex:I
    :goto_1f
    shl-int/lit8 v5, v4, 0x1

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_53

    move v6, v8

    :goto_28
    add-int v4, v5, v6

    .line 7585
    shl-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v8

    :goto_33
    add-int v4, v5, v6

    .line 7587
    shl-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_57

    move v6, v8

    :goto_3c
    add-int v4, v5, v6

    .line 7590
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 7591
    .local v2, hasWindowFocus:Z
    shl-int/lit8 v5, v4, 0x1

    if-eqz v2, :cond_59

    move v6, v8

    :goto_47
    add-int v4, v5, v6

    .line 7593
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 7607
    .local v0, drawableState:[I
    if-nez p1, :cond_5b

    move-object v5, v0

    .line 7608
    goto :goto_17

    .end local v0           #drawableState:[I
    .end local v2           #hasWindowFocus:Z
    .end local v4           #viewStateIndex:I
    :cond_51
    move v4, v7

    .line 7580
    goto :goto_1f

    .restart local v4       #viewStateIndex:I
    :cond_53
    move v6, v7

    .line 7582
    goto :goto_28

    :cond_55
    move v6, v7

    .line 7585
    goto :goto_33

    :cond_57
    move v6, v7

    .line 7587
    goto :goto_3c

    .restart local v2       #hasWindowFocus:Z
    :cond_59
    move v6, v7

    .line 7591
    goto :goto_47

    .line 7612
    .restart local v0       #drawableState:[I
    :cond_5b
    if-eqz v0, :cond_67

    .line 7613
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 7614
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_65
    move-object v5, v1

    .line 7619
    goto :goto_17

    .line 7616
    .end local v1           #fullState:[I
    :cond_67
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_65
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .parameter "outAttrs"

    .prologue
    .line 4465
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 6225
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6226
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 6227
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6228
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6229
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 4155
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 6182
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6151
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6152
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6153
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .registers 28
    .parameter "canvas"

    .prologue
    .line 6028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object v12, v0

    .line 6029
    .local v12, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v12, :cond_e

    .line 6031
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v21, v0

    .line 6033
    .local v21, state:I
    if-nez v21, :cond_f

    .line 6122
    .end local v21           #state:I
    :cond_e
    :goto_e
    return-void

    .line 6037
    .restart local v21       #state:I
    :cond_f
    const/16 v17, 0x0

    .line 6039
    .local v17, invalidate:Z
    const/4 v5, 0x2

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_13f

    .line 6041
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v5, :cond_20

    .line 6042
    const/4 v5, 0x1

    new-array v5, v5, [F

    iput-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 6045
    :cond_20
    move-object v0, v12

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v22, v0

    .line 6048
    .local v22, values:[F
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v5

    sget-object v6, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v5, v6, :cond_131

    .line 6050
    const/4 v5, 0x0

    iput v5, v12, Landroid/view/View$ScrollabilityCache;->state:I

    .line 6058
    :goto_35
    const/16 v17, 0x1

    .line 6066
    .end local v22           #values:[F
    :goto_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v24, v0

    .line 6068
    .local v24, viewFlags:I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x100

    move v5, v0

    const/16 v6, 0x100

    if-ne v5, v6, :cond_148

    const/4 v5, 0x1

    move v13, v5

    .line 6070
    .local v13, drawHorizontalScrollBar:Z
    :goto_48
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x200

    move v5, v0

    const/16 v6, 0x200

    if-ne v5, v6, :cond_14c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v5

    if-nez v5, :cond_14c

    const/4 v5, 0x1

    move v14, v5

    .line 6074
    .local v14, drawVerticalScrollBar:Z
    :goto_59
    if-nez v14, :cond_5d

    if-eqz v13, :cond_e

    .line 6075
    :cond_5d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int v25, v5, v6

    .line 6076
    .local v25, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int v15, v5, v6

    .line 6078
    .local v15, height:I
    iget-object v7, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 6079
    .local v7, scrollBar:Landroid/widget/ScrollBarDrawable;
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v20

    .line 6080
    .local v20, size:I
    if-gtz v20, :cond_83

    .line 6081
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v20, v0

    .line 6084
    :cond_83
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    .line 6085
    .local v18, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    .line 6086
    .local v19, scrollY:I
    const/high16 v5, 0x200

    and-int v5, v5, v24

    if-nez v5, :cond_150

    const/4 v5, -0x1

    move/from16 v16, v5

    .line 6090
    .local v16, inside:I
    :goto_98
    if-eqz v13, :cond_e8

    .line 6091
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 6094
    if-eqz v14, :cond_155

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v5

    move/from16 v23, v5

    .line 6096
    .local v23, verticalScrollBarGap:I
    :goto_b2
    add-int v5, v19, v15

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v9, v5, v6

    .line 6097
    .local v9, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v18, v5

    .line 6098
    .local v8, left:I
    add-int v5, v18, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int/2addr v5, v6

    sub-int v10, v5, v23

    .line 6099
    .local v10, right:I
    add-int v11, v9, v20

    .local v11, bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6100
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 6101
    if-eqz v17, :cond_e8

    .line 6102
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 6106
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v23           #verticalScrollBarGap:I
    :cond_e8
    if-eqz v14, :cond_e

    .line 6107
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 6111
    add-int v5, v18, v25

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v8, v5, v6

    .line 6112
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    and-int v5, v5, v16

    add-int v9, v19, v5

    .line 6113
    .restart local v9       #top:I
    add-int v10, v8, v20

    .line 6114
    .restart local v10       #right:I
    add-int v5, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v11, v5, v6

    .restart local v11       #bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6115
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 6116
    if-eqz v17, :cond_e

    .line 6117
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_e

    .line 6052
    .end local v7           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v13           #drawHorizontalScrollBar:Z
    .end local v14           #drawVerticalScrollBar:Z
    .end local v15           #height:I
    .end local v16           #inside:I
    .end local v18           #scrollX:I
    .end local v19           #scrollY:I
    .end local v20           #size:I
    .end local v24           #viewFlags:I
    .end local v25           #width:I
    .restart local v22       #values:[F
    :cond_131
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v6, 0x0

    aget v6, v22, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_35

    .line 6062
    .end local v22           #values:[F
    :cond_13f
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_37

    .line 6068
    .restart local v24       #viewFlags:I
    :cond_148
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_48

    .line 6070
    .restart local v13       #drawHorizontalScrollBar:Z
    :cond_14c
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_59

    .line 6086
    .restart local v7       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v14       #drawVerticalScrollBar:Z
    .restart local v15       #height:I
    .restart local v18       #scrollX:I
    .restart local v19       #scrollY:I
    .restart local v20       #size:I
    .restart local v25       #width:I
    :cond_150
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_98

    .line 6094
    .restart local v16       #inside:I
    :cond_155
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_b2
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6172
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6173
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6174
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4036
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 4039
    const/4 v0, 0x0

    .line 4041
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 7410
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 3890
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2810
    if-eqz p1, :cond_7

    .line 2811
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2814
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2815
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_41

    .line 2816
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2817
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2819
    :cond_17
    if-eqz v0, :cond_26

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_26

    .line 2821
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 2823
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 2829
    :cond_29
    :goto_29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2830
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_35

    .line 2831
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 2834
    :cond_35
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_40

    .line 2835
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 2837
    :cond_40
    return-void

    .line 2824
    :cond_41
    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_29

    .line 2826
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_29
.end method

.method protected onFocusLost()V
    .registers 1

    .prologue
    .line 2926
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 2927
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x20

    .line 4337
    const/4 v0, 0x0

    .line 4339
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_34

    :cond_7
    move v1, v0

    .line 4358
    :goto_8
    return v1

    .line 4342
    :sswitch_9
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    move v1, v4

    .line 4343
    goto :goto_8

    .line 4346
    :cond_13
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_20

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    :cond_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 4349
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4350
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_32

    .line 4351
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/View;->postCheckForLongClick(I)V

    :cond_32
    move v1, v4

    .line 4353
    goto :goto_8

    .line 4339
    :sswitch_data_34
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4367
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 4416
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4323
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4428
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4381
    const/4 v0, 0x0

    .line 4383
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_2e

    :cond_4
    :goto_4
    move v1, v0

    .line 4402
    :goto_5
    return v1

    .line 4386
    :sswitch_6
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 4387
    const/4 v1, 0x1

    goto :goto_5

    .line 4389
    :cond_10
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4390
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4392
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_4

    .line 4394
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4396
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_4

    .line 4383
    :sswitch_data_2e
    .sparse-switch
        0x17 -> :sswitch_6
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7334
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8516
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8518
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 9056
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 6439
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6440
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 6441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6447
    :cond_5c
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 6382
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6383
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 7
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 4870
    iput-boolean v1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 4872
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4873
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 4874
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 4876
    :cond_9
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter "alpha"

    .prologue
    .line 8742
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 4889
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    .line 3874
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 3875
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3876
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4559
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4561
    .local v3, viewFlags:I
    and-int/lit8 v6, v3, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1b

    .line 4564
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_17

    and-int v6, v3, v10

    if-ne v6, v10, :cond_19

    :cond_17
    move v6, v9

    .line 4661
    :goto_18
    return v6

    :cond_19
    move v6, v8

    .line 4564
    goto :goto_18

    .line 4568
    :cond_1b
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v6, :cond_29

    .line 4569
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v6, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_29

    move v6, v9

    .line 4570
    goto :goto_18

    .line 4574
    :cond_29
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_31

    and-int v6, v3, v10

    if-ne v6, v10, :cond_11b

    .line 4576
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_11e

    :cond_38
    :goto_38
    move v6, v9

    .line 4658
    goto :goto_18

    .line 4578
    :pswitch_3a
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_a4

    move v1, v9

    .line 4579
    .local v1, prepressed:Z
    :goto_42
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_4a

    if-eqz v1, :cond_38

    .line 4582
    :cond_4a
    const/4 v0, 0x0

    .line 4583
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_61

    .line 4584
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 4587
    :cond_61
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_80

    .line 4589
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4592
    if-nez v0, :cond_80

    .line 4596
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_75

    .line 4597
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 4599
    :cond_75
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 4600
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 4605
    :cond_80
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_8b

    .line 4606
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 4609
    :cond_8b
    if-eqz v1, :cond_a6

    .line 4610
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4611
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4612
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4618
    :cond_a0
    :goto_a0
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_38

    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :cond_a4
    move v1, v8

    .line 4578
    goto :goto_42

    .line 4614
    .restart local v0       #focusTaken:Z
    .restart local v1       #prepressed:Z
    :cond_a6
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 4616
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_a0

    .line 4623
    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :pswitch_b4
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_bf

    .line 4624
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 4626
    :cond_bf
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4627
    iput-boolean v8, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 4628
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_38

    .line 4632
    :pswitch_d4
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4633
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4634
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_38

    .line 4638
    :pswitch_e2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 4639
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 4642
    .local v5, y:I
    iget v2, p0, Landroid/view/View;->mTouchSlop:I

    .line 4643
    .local v2, slop:I
    sub-int v6, v8, v2

    if-lt v4, v6, :cond_104

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_104

    sub-int v6, v8, v2

    if-lt v5, v6, :cond_104

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    if-lt v5, v6, :cond_38

    .line 4646
    :cond_104
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4647
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_38

    .line 4649
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4652
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4653
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_38

    .end local v2           #slop:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_11b
    move v6, v8

    .line 4661
    goto/16 :goto_18

    .line 4576
    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_3a
        :pswitch_e2
        :pswitch_d4
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4549
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4123
    if-nez p2, :cond_9

    .line 4124
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_a

    .line 4125
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4130
    :cond_9
    :goto_9
    return-void

    .line 4127
    :cond_a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 4077
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4078
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_25

    .line 4079
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4080
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4082
    :cond_10
    if-eqz v0, :cond_1b

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 4083
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 4085
    :cond_1b
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4086
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4090
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4091
    return-void

    .line 4087
    :cond_25
    if-eqz v0, :cond_21

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_21

    .line 4088
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_21
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4180
    if-nez p1, :cond_5

    .line 4181
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4183
    :cond_5
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 30
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 8995
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v14, v0

    .line 8996
    .local v14, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7e

    const/16 v18, 0x1

    move/from16 v6, v18

    .line 8998
    .local v6, canScrollHorizontal:Z
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_83

    const/16 v18, 0x1

    move/from16 v7, v18

    .line 9000
    .local v7, canScrollVertical:Z
    :goto_29
    if-eqz v14, :cond_34

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_88

    if-eqz v6, :cond_88

    :cond_34
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 9002
    .local v13, overScrollHorizontal:Z
    :goto_38
    if-eqz v14, :cond_43

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_8d

    if-eqz v7, :cond_8d

    :cond_43
    const/16 v18, 0x1

    move/from16 v15, v18

    .line 9005
    .local v15, overScrollVertical:Z
    :goto_47
    add-int v11, p3, p1

    .line 9006
    .local v11, newScrollX:I
    if-nez v13, :cond_4d

    .line 9007
    const/16 p7, 0x0

    .line 9010
    :cond_4d
    add-int v12, p4, p2

    .line 9011
    .local v12, newScrollY:I
    if-nez v15, :cond_53

    .line 9012
    const/16 p8, 0x0

    .line 9016
    :cond_53
    move/from16 v0, p7

    neg-int v0, v0

    move v10, v0

    .line 9017
    .local v10, left:I
    add-int v16, p7, p5

    .line 9018
    .local v16, right:I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v17, v0

    .line 9019
    .local v17, top:I
    add-int v5, p8, p6

    .line 9021
    .local v5, bottom:I
    const/4 v8, 0x0

    .line 9022
    .local v8, clampedX:Z
    move v0, v11

    move/from16 v1, v16

    if-le v0, v1, :cond_92

    .line 9023
    move/from16 v11, v16

    .line 9024
    const/4 v8, 0x1

    .line 9030
    :cond_69
    :goto_69
    const/4 v9, 0x0

    .line 9031
    .local v9, clampedY:Z
    if-le v12, v5, :cond_97

    .line 9032
    move v12, v5

    .line 9033
    const/4 v9, 0x1

    .line 9039
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 9041
    if-nez v8, :cond_7b

    if-eqz v9, :cond_a0

    :cond_7b
    const/16 v18, 0x1

    :goto_7d
    return v18

    .line 8996
    .end local v5           #bottom:I
    .end local v6           #canScrollHorizontal:Z
    .end local v7           #canScrollVertical:Z
    .end local v8           #clampedX:Z
    .end local v9           #clampedY:Z
    .end local v10           #left:I
    .end local v11           #newScrollX:I
    .end local v12           #newScrollY:I
    .end local v13           #overScrollHorizontal:Z
    .end local v15           #overScrollVertical:Z
    .end local v16           #right:I
    .end local v17           #top:I
    :cond_7e
    const/16 v18, 0x0

    move/from16 v6, v18

    goto :goto_17

    .line 8998
    .restart local v6       #canScrollHorizontal:Z
    :cond_83
    const/16 v18, 0x0

    move/from16 v7, v18

    goto :goto_29

    .line 9000
    .restart local v7       #canScrollVertical:Z
    :cond_88
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_38

    .line 9002
    .restart local v13       #overScrollHorizontal:Z
    :cond_8d
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_47

    .line 9025
    .restart local v5       #bottom:I
    .restart local v8       #clampedX:Z
    .restart local v10       #left:I
    .restart local v11       #newScrollX:I
    .restart local v12       #newScrollY:I
    .restart local v15       #overScrollVertical:Z
    .restart local v16       #right:I
    .restart local v17       #top:I
    :cond_92
    if-ge v11, v10, :cond_69

    .line 9026
    move v11, v10

    .line 9027
    const/4 v8, 0x1

    goto :goto_69

    .line 9034
    .restart local v9       #clampedY:Z
    :cond_97
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_6e

    .line 9035
    move/from16 v12, v17

    .line 9036
    const/4 v9, 0x1

    goto :goto_6e

    .line 9041
    :cond_a0
    const/16 v18, 0x0

    goto :goto_7d
.end method

.method public performClick()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2567
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2569
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_14

    .line 2572
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2574
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 2578
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method performCollectViewAttributes(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 4268
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    or-int/2addr v0, p1

    const v1, 0x400000c

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_10

    .line 4270
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4272
    :cond_10
    return-void
.end method

.method public performHapticFeedback(I)Z
    .registers 3
    .parameter "feedbackConstant"

    .prologue
    .line 8835
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .registers 6
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 8848
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_7

    move v0, v2

    .line 8855
    :goto_6
    return v0

    .line 8851
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    .line 8853
    goto :goto_6

    .line 8855
    :cond_13
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :goto_1c
    invoke-interface {v0, p1, v1}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_6

    :cond_21
    move v1, v2

    goto :goto_1c
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 2588
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2590
    const/4 v0, 0x0

    .line 2591
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_f

    .line 2592
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 2594
    :cond_f
    if-nez v0, :cond_15

    .line 2595
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 2597
    :cond_15
    if-eqz v0, :cond_1b

    .line 2598
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2600
    :cond_1b
    return v0
.end method

.method public playSoundEffect(I)V
    .registers 5
    .parameter "soundConstant"

    .prologue
    .line 8794
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 8817
    :cond_10
    :goto_10
    return-void

    .line 8800
    :cond_11
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_21

    .line 8801
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 8804
    :cond_21
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 8805
    .local v0, ringerMode:I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 8811
    if-ltz p1, :cond_10

    .line 8816
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v1, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_10
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 4
    .parameter "action"

    .prologue
    .line 5490
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_d

    .line 5491
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5498
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_c
    return v1

    .line 5494
    :cond_d
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 5495
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 5519
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_d

    .line 5520
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5527
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_c
    return v1

    .line 5523
    :cond_d
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 5524
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public postInvalidate()V
    .registers 3

    .prologue
    .line 5561
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 5562
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5577
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 5578
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 5
    .parameter "delayMilliseconds"

    .prologue
    .line 5590
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 5591
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5592
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5593
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5594
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5596
    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 10
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5614
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_22

    .line 5615
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    .line 5616
    .local v0, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 5617
    iput p3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 5618
    iput p4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 5619
    iput p5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 5620
    iput p6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 5622
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5623
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5624
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5625
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5627
    .end local v0           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v1           #msg:Landroid/os/Message;
    :cond_22
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .prologue
    .line 7526
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7527
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7529
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7530
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 7531
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 7533
    :cond_10
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 5
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 5542
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_e

    .line 5543
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5550
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5551
    .end local v0           #handler:Landroid/os/Handler;
    :goto_d
    return v1

    .line 5546
    :cond_e
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5547
    goto :goto_d
.end method

.method public final requestFocus()Z
    .registers 3

    .prologue
    .line 3739
    const-string v0, "SGH-I777"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3740
    const-string v0, "com.sec.android.widgetapp.TwCalendarAppWidget"

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1e

    .line 3742
    const/4 v0, 0x0

    .line 3745
    :goto_1d
    return v0

    :cond_1e
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    goto :goto_1d
.end method

.method public final requestFocus(I)Z
    .registers 3
    .parameter "direction"

    .prologue
    .line 3767
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3800
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_12

    :cond_10
    move v0, v1

    .line 3817
    :goto_11
    return v0

    .line 3806
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-eq v3, v0, :cond_1f

    move v0, v1

    .line 3808
    goto :goto_11

    .line 3812
    :cond_1f
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    .line 3813
    goto :goto_11

    .line 3816
    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v2

    .line 3817
    goto :goto_11
.end method

.method public final requestFocusFromTouch()Z
    .registers 4

    .prologue
    .line 3832
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3833
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3834
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 3835
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRoot;

    .line 3836
    .local v1, viewRoot:Landroid/view/ViewRoot;
    if-eqz v1, :cond_18

    .line 3837
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 3841
    .end local v0           #root:Landroid/view/View;
    .end local v1           #viewRoot:Landroid/view/ViewRoot;
    :cond_18
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    return v2
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 8403
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8405
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_17

    .line 8406
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 8408
    :cond_17
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "rectangle"

    .prologue
    .line 2671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 9
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2690
    move-object v1, p0

    .line 2691
    .local v1, child:Landroid/view/View;
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2692
    .local v2, parent:Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 2693
    .local v3, scrolled:Z
    :goto_4
    if-eqz v2, :cond_27

    .line 2694
    invoke-interface {v2, v1, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2699
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2700
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2702
    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_28

    .line 2709
    :cond_27
    return v3

    .line 2706
    :cond_28
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2707
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_4
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6396
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 6397
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6330
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 6331
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 7446
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    .line 7447
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 7449
    :cond_13
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5170
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 5171
    return-void
.end method

.method public scrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5150
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_8

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_20

    .line 5151
    :cond_8
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 5152
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 5153
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 5154
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5155
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5156
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_20

    .line 5157
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5160
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_20
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 2843
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2844
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2846
    :cond_13
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 2852
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2853
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2854
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2855
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2857
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_4c

    .line 2858
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 2859
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2860
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2861
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2862
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2865
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4c
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2867
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2868
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 8700
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8701
    if-eqz p1, :cond_7

    .line 8702
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 8704
    :cond_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7655
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7656
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7690
    const/4 v1, 0x0

    .line 7692
    .local v1, requestLayout:Z
    iput v6, p0, Landroid/view/View;->mBackgroundResource:I

    .line 7698
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    .line 7699
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7700
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7703
    :cond_14
    if-eqz p1, :cond_97

    .line 7704
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 7705
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_2a

    .line 7706
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7707
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7709
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7710
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 7715
    :cond_3b
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_58

    .line 7717
    :cond_57
    const/4 v1, 0x1

    .line 7720
    :cond_58
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7721
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 7722
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7724
    :cond_68
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_95

    move v2, v7

    :goto_6f
    invoke-virtual {p1, v2, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 7725
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7727
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_87

    .line 7728
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7729
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7730
    const/4 v1, 0x1

    .line 7758
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_87
    :goto_87
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7760
    if-eqz v1, :cond_8f

    .line 7761
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7764
    :cond_8f
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7765
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7766
    return-void

    .restart local v0       #padding:Landroid/graphics/Rect;
    :cond_95
    move v2, v6

    .line 7724
    goto :goto_6f

    .line 7734
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_97
    iput-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7736
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_ab

    .line 7742
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7743
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7755
    :cond_ab
    const/4 v1, 0x1

    goto :goto_87
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7666
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_7

    .line 7677
    :goto_6
    return-void

    .line 7670
    :cond_7
    const/4 v0, 0x0

    .line 7671
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_10

    .line 7672
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7674
    :cond_10
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7676
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_6
.end method

.method public setClickable(Z)V
    .registers 4
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 3412
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3413
    return-void

    .line 3412
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "contentDescription"

    .prologue
    .line 2909
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 2910
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 6608
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_e

    .line 6609
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 6610
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6612
    :cond_e
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    .line 6508
    if-eqz p1, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6509
    return-void

    .line 6508
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setDrawingCacheQuality(I)V
    .registers 3
    .parameter "quality"

    .prologue
    .line 3016
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3017
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 6477
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6478
    return-void

    .line 6477
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 3228
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_9

    .line 3241
    :goto_8
    return-void

    .line 3230
    :cond_9
    if-eqz p1, :cond_16

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3236
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3240
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    :cond_16
    move v0, v1

    .line 3230
    goto :goto_c
.end method

.method public setFadingEdgeLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 2313
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2314
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2315
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 3544
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3546
    return-void

    :cond_9
    move v0, v1

    .line 3544
    goto :goto_5
.end method

.method setFlags(II)V
    .registers 11
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 4731
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 4732
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4734
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 4735
    .local v0, changed:I
    if-nez v0, :cond_18

    .line 4846
    :cond_17
    :goto_17
    return-void

    .line 4738
    :cond_18
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4741
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2d

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2d

    .line 4743
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_100

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_100

    .line 4746
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4757
    :cond_2d
    :goto_2d
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_53

    .line 4758
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_53

    .line 4763
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4765
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4771
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_53

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_53

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_53

    .line 4772
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 4778
    :cond_53
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_7c

    .line 4779
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4780
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4781
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4783
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_74

    .line 4784
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4785
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4787
    :cond_74
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_7c

    .line 4788
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4793
    :cond_7c
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a4

    .line 4794
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4795
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4797
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9c

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 4799
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_9c

    .line 4800
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4803
    :cond_9c
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_a4

    .line 4804
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4808
    :cond_a4
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_ad

    .line 4809
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 4812
    :cond_ad
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_b5

    .line 4813
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4816
    :cond_b5
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_c3

    .line 4817
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4818
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4821
    :cond_c3
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_d0

    .line 4822
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4823
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4826
    :cond_d0
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_f0

    .line 4827
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_11a

    .line 4828
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_113

    .line 4829
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4830
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4837
    :goto_ea
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4838
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4841
    :cond_f0
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_17

    .line 4842
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_17

    .line 4843
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    goto/16 :goto_17

    .line 4747
    :cond_100
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2d

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2d

    .line 4753
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_2d

    .line 4832
    :cond_113
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_ea

    .line 4835
    :cond_11a
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_ea
.end method

.method public setFocusable(Z)V
    .registers 5
    .parameter "focusable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3255
    if-nez p1, :cond_9

    .line 3256
    const/high16 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3258
    :cond_9
    if-eqz p1, :cond_10

    move v0, v2

    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3259
    return-void

    :cond_10
    move v0, v1

    .line 3258
    goto :goto_c
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v2, 0x4

    const/4 v1, 0x1

    .line 3277
    if-eqz p1, :cond_f

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3278
    if-eqz p1, :cond_e

    .line 3279
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setFlags(II)V

    .line 3281
    :cond_e
    return-void

    .line 3277
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setFrame(IIII)Z
    .registers 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7350
    const/4 v0, 0x0

    .line 7357
    .local v0, changed:Z
    iget v6, p0, Landroid/view/View;->mLeft:I

    if-ne v6, p1, :cond_11

    iget v6, p0, Landroid/view/View;->mRight:I

    if-ne v6, p3, :cond_11

    iget v6, p0, Landroid/view/View;->mTop:I

    if-ne v6, p2, :cond_11

    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq v6, p4, :cond_55

    .line 7358
    :cond_11
    const/4 v0, 0x1

    .line 7361
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v6, 0x20

    .line 7364
    .local v1, drawn:I
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7367
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v6, v7

    .line 7368
    .local v5, oldWidth:I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, v6, v7

    .line 7370
    .local v4, oldHeight:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7371
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 7372
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 7373
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 7375
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7377
    sub-int v3, p3, p1

    .line 7378
    .local v3, newWidth:I
    sub-int v2, p4, p2

    .line 7380
    .local v2, newHeight:I
    if-ne v3, v5, :cond_3b

    if-eq v2, v4, :cond_3e

    .line 7381
    :cond_3b
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7384
    :cond_3e
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_4d

    .line 7390
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7391
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7395
    :cond_4d
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v6, v1

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7397
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7399
    .end local v1           #drawn:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #oldHeight:I
    .end local v5           #oldWidth:I
    :cond_55
    return v0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 4
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 3325
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3326
    return-void

    .line 3325
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 5664
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 5665
    if-eqz p1, :cond_b

    .line 5666
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5669
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5671
    :cond_11
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .registers 3
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 5789
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 5790
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5791
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5792
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5794
    :cond_12
    return-void
.end method

.method public setId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 8074
    iput p1, p0, Landroid/view/View;->mID:I

    .line 8075
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .registers 3
    .parameter "isRoot"

    .prologue
    .line 8084
    if-eqz p1, :cond_9

    .line 8085
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8089
    :goto_8
    return-void

    .line 8087
    :cond_9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 3044
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3045
    return-void

    .line 3044
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 5135
    if-nez p1, :cond_b

    .line 5136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5138
    :cond_b
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5139
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5140
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 4
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 3438
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3439
    return-void

    .line 3438
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final setMeasuredDimension(II)V
    .registers 4
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 8529
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 8530
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 8532
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8533
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2
    .parameter "minHeight"

    .prologue
    .line 8643
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 8644
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2
    .parameter "minWidth"

    .prologue
    .line 8654
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 8655
    return-void
.end method

.method public setNextFocusDownId(I)V
    .registers 2
    .parameter "nextFocusDownId"

    .prologue
    .line 3124
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3125
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .registers 2
    .parameter "nextFocusLeftId"

    .prologue
    .line 3064
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3065
    return-void
.end method

.method public setNextFocusRightId(I)V
    .registers 2
    .parameter "nextFocusRightId"

    .prologue
    .line 3084
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3085
    return-void
.end method

.method public setNextFocusUpId(I)V
    .registers 2
    .parameter "nextFocusUpId"

    .prologue
    .line 3104
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3105
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 2489
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2492
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2493
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 2518
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2519
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2521
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2522
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2468
    iput-object p1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2469
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2617
    iput-object p1, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 2618
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 2504
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2507
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2508
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2625
    iput-object p1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2626
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "overScrollMode"

    .prologue
    .line 9082
    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 9085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9087
    :cond_21
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 9088
    return-void
.end method

.method public setPadding(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v4, 0x100

    const/4 v3, 0x0

    .line 7794
    const/4 v0, 0x0

    .line 7796
    .local v0, changed:Z
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 7797
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 7799
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 7802
    .local v1, viewFlags:I
    and-int/lit16 v2, v1, 0x300

    if-eqz v2, :cond_22

    .line 7804
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_18

    .line 7805
    and-int v2, v1, v4

    if-nez v2, :cond_44

    move v2, v3

    :goto_17
    add-int/2addr p3, v2

    .line 7808
    :cond_18
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_22

    .line 7809
    and-int v2, v1, v4

    if-nez v2, :cond_49

    move v2, v3

    :goto_21
    add-int/2addr p4, v2

    .line 7814
    :cond_22
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v2, p1, :cond_29

    .line 7815
    const/4 v0, 0x1

    .line 7816
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 7818
    :cond_29
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v2, p2, :cond_30

    .line 7819
    const/4 v0, 0x1

    .line 7820
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 7822
    :cond_30
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v2, p3, :cond_37

    .line 7823
    const/4 v0, 0x1

    .line 7824
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 7826
    :cond_37
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v2, p4, :cond_3e

    .line 7827
    const/4 v0, 0x1

    .line 7828
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 7831
    :cond_3e
    if-eqz v0, :cond_43

    .line 7832
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7834
    :cond_43
    return-void

    .line 7805
    :cond_44
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v2

    goto :goto_17

    .line 7809
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v2

    goto :goto_21
.end method

.method public setPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 3451
    if-eqz p1, :cond_f

    .line 3452
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3456
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3457
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 3458
    return-void

    .line 3454
    :cond_f
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setSaveEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 3515
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3516
    return-void

    :cond_9
    move v0, v1

    .line 3515
    goto :goto_5
.end method

.method public setScrollBarStyle(I)V
    .registers 5
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 5875
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_18

    .line 5876
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5877
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5878
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5880
    :cond_18
    return-void
.end method

.method public setScrollContainer(Z)V
    .registers 4
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 2972
    if-eqz p1, :cond_21

    .line 2973
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 2974
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2975
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2977
    :cond_19
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2984
    :goto_20
    return-void

    .line 2979
    :cond_21
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 2980
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2982
    :cond_2d
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_20
.end method

.method public setScrollbarFadingEnabled(Z)V
    .registers 4
    .parameter "fadeScrollbars"

    .prologue
    .line 5837
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5838
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5839
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 5840
    if-eqz p1, :cond_d

    .line 5841
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5845
    :goto_c
    return-void

    .line 5843
    :cond_d
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_c
.end method

.method public setSelected(Z)V
    .registers 4
    .parameter "selected"

    .prologue
    const/4 v1, 0x0

    .line 7887
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_8
    if-eq v0, p1, :cond_22

    .line 7888
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_11

    const/4 v1, 0x4

    :cond_11
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7889
    if-nez p1, :cond_19

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 7890
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7891
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7892
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 7894
    :cond_22
    return-void

    :cond_23
    move v0, v1

    .line 7887
    goto :goto_8
.end method

.method public setSoundEffect(I)V
    .registers 2
    .parameter "soundEffect"

    .prologue
    .line 2544
    iput p1, p0, Landroid/view/View;->mSoundEffect:I

    .line 2545
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .registers 4
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 3296
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3297
    return-void

    .line 3296
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8189
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 8190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8194
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 8195
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .parameter "tag"

    .prologue
    .line 8140
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 8141
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8204
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 8205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8209
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 8210
    return-void
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 4714
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 4715
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 5699
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 5700
    if-eqz p1, :cond_b

    .line 5701
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5704
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5706
    :cond_11
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 5819
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 5820
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5821
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5822
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5824
    :cond_12
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3205
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3206
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3207
    :cond_12
    return-void

    :cond_13
    move v1, v2

    .line 3206
    goto :goto_f
.end method

.method public setWillNotCacheDrawing(Z)V
    .registers 4
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 3374
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3375
    return-void

    .line 3374
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWillNotDraw(Z)V
    .registers 4
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 3351
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3352
    return-void

    .line 3351
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public showContextMenu()Z
    .registers 2

    .prologue
    .line 2609
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 8673
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 8674
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8675
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8676
    return-void
.end method

.method unFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2756
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 2757
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2759
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2760
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2762
    :cond_14
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "who"

    .prologue
    .line 7473
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_b

    .line 7474
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7476
    :cond_b
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 7458
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    .line 7459
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7461
    :cond_13
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 7498
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public willNotCacheDrawing()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 3384
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willNotDraw()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3361
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
