.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$CountingOutputStream;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$ScaleDetectorListener;,
        Landroid/webkit/WebView$DragTracker;,
        Landroid/webkit/WebView$DragTrackerHandler;,
        Landroid/webkit/WebView$PostScale;,
        Landroid/webkit/WebView$CmdVal;,
        Landroid/webkit/WebView$SelectionOffset;,
        Landroid/webkit/WebView$CursorDirection;,
        Landroid/webkit/WebView$ResultTransport;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$PluginUpdateData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$WebTextSelectionListener;,
        Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;,
        Landroid/webkit/WebView$WebSelectRequest;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;,
        Landroid/webkit/WebView$ZoomMode;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final DEBUG_DRAG_TRACKER:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x320

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x190

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_INPUT_ACTION:I = 0x83

.field public static final FORM_INPUT_DONE:I = 0x20

.field public static final FORM_INPUT_GO:I = 0x10

.field public static final FORM_INPUT_NEXT_SELECT:I = 0x8

.field public static final FORM_INPUT_NEXT_TEXT:I = 0x4

.field public static final FORM_INPUT_NONE:I = 0x0

.field public static final FORM_INPUT_PREV_SELECT:I = 0x2

.field public static final FORM_INPUT_PREV_TEXT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final IMMEDIATE_REPAINT_MSG_ID:I = 0x7b

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x81

.field private static final LAST_PRIVATE_MSG_ID:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_ADAPTIVE_ZOOM_ANIMATION_LENGTH:I = 0x2bc

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MIN_SCROLL_AMOUNT_TO_DISABLE_DRAG_TRACKER:I = 0x4

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MOVE_OUT_OF_PLUGIN:I = 0x6e

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field public static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field public static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field public static final PREVENT_DEFAULT_NO:I = 0x0

.field public static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field public static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REQUEST_CLEAR_CURSOR:I = 0x85

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final REQUEST_LISTBOX:I = 0x84

.field private static final RESUME_WEBCORE_PRIORITY:I = 0x7

.field static final RETURN_LABEL:I = 0x7d

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCH_ALPHA:I = 0xff

.field private static final SCH_ALPHA_DIFF:I = 0x33

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field static final SCROLL_BY_MSG_ID:I = 0x66

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_CONTROLS_NOTIFY:I = 0x8d

.field static final SELECTION_POS_CHANGED_DELAY:I = 0x320

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field static final SET_ROOT_LAYER_MSG_ID:I = 0x7c

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0x67

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0x68

.field private static final TAP_TIMEOUT:I = 0xc8

.field private static final TOUCHX_LEFT:I = 0x50

.field private static final TOUCHX_RIGHT:I = 0x50

.field private static final TOUCHY_BOTTOM:I = 0x3c

.field private static final TOUCHY_UP:I = 0x0

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x32

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_SELECTION_MSG_ID:I = 0x8c

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field public static final WEBTEXTSELECT_CHARACTER_GRANULARITY:I = 0x0

.field public static final WEBTEXTSELECT_CHAR_CONTROLER_LEFT:I = 0x1

.field public static final WEBTEXTSELECT_CHAR_CONTROLER_RIGHT:I = 0x2

.field public static final WEBTEXTSELECT_NO_CONTROLER:I = 0x0

.field public static final WEBTEXTSELECT_PARAGRAPH_GRANULARITY:I = 0x4

.field public static final WEBTEXTSELECT_PARA_CONTROLER_BM:I = 0x5

.field public static final WEBTEXTSELECT_PARA_CONTROLER_LM:I = 0x3

.field public static final WEBTEXTSELECT_PARA_CONTROLER_RM:I = 0x4

.field public static final WEBTEXTSELECT_PARA_CONTROLER_UM:I = 0x6

.field public static final WEBTEXTSELECT_WORD_GRANULARITY:I = 0x1

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:J = 0x0L

.field static final ZOOM_ON_DOUBLE_TAP:I = 0x82

.field private static final mAdaptiveZoomPadding:I = 0xa

.field public static mInUserRotate:Z = false

.field public static mInUserScroll:Z = false

.field static mLogEvent:Z = false

.field private static final mMaxAdaptiveZoomScale:F = 2.0f

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static mScrollBeyondPage:Z

.field static sMaxViewportWidth:I


# instance fields
.field public SimulateSelect:Z

.field public bSCHvisibleonFocus:Z

.field public bShowSingleCursorHandler:Z

.field private bWebSelectDialogIsUp:Z

.field public iAlpha:I

.field public iTimer:I

.field private isSCHCompletelyDrawn:Z

.field public isSelectionset:Z

.field private isTouchedSCH:Z

.field private mActionMove:Z

.field public mActionMoveSCH:Z

.field private mActualScale:F

.field private mAdaptiveZoom:Z

.field private mAdaptiveZoomAnimationLength:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mAutoRedraw:Z

.field private mAutoSelection:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mController:I

.field mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelayedDeleteRootLayer:Z

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDragTracker:Landroid/webkit/WebView$DragTracker;

.field private mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mExtendSelection:Z

.field private mExtendSelectionPressed:Z

.field private mFindHeight:I

.field private mFindIsUp:Z

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field private mFocusSizeChanged:Z

.field private mFocusedNodeName:Ljava/lang/String;

.field private mFocusedNodePointer:I

.field private mForwardTouchEvents:Z

.field private mForwardTouchEvents_others:Z

.field private mForwardTouchEvents_plugin:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGotCenterDown:Z

.field private mGotKeyDown:Z

.field private mHandleTouchRevision:I

.field private mHasRotateSupport:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

.field private mIgnoreDoubleTap:Z

.field private mIgnoreFling:Z

.field private mIgnoreViewSizeChanged:Z

.field public mInActionMove:Z

.field private mInOverScrollMode:Z

.field mInZoomOverview:Z

.field private mInitialScaleInPercent:I

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mIsGrabbingScreen:Z

.field private mIsPaused:Z

.field private mIsWebCoreTimerPaused:Z

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mLongPress:Z

.field private mMagnifier:Landroid/webkit/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field public mMoveIsStarted:Z

.field private mMsgPauseRecvd:Z

.field private mMsgResumeRecvd:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedToAdjustWebTextView:Z

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDeltaX:I

.field private mOverscrollDeltaY:I

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

.field private mPreserveZoom:Z

.field public mPreventDefault:I

.field mPreventDefaultTimeout:I

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mShiftIsPressed:Z

.field private mSizeChangedCallback:Ljava/lang/Runnable;

.field private mSmartSelection:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field public mStopSelection:Z

.field private mSupportMultiTouch:Z

.field private mTempDisableInvalidate:Z

.field private mTextGeneration:I

.field mTextWrapScale:F

.field private mTitleBar:Landroid/view/View;

.field private mTitleShadow:Landroid/graphics/drawable/Drawable;

.field private mTmpLocations:[I

.field private mTouchMode:I

.field private mTouchSelectionHandler:Z

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field public mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field private mViewCenterYCorrection:F

.field final mViewManager:Landroid/webkit/ViewManager;

.field private mWebClipboard:Landroid/webkit/WebClipboard;

.field private mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

.field private mWebSelectDialog:Landroid/webkit/WebSelectDialog;

.field private mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

.field private mWebSelectionOn:Z

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private mbIsNewWordSelected:Z

.field private motionListener1:Landroid/hardware/motion/MRListener;

.field private registerTiltListener:Z

.field private schContentX:I

.field private schContentY:I

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    sput-boolean v3, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    .line 360
    sput-boolean v3, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 361
    sput-boolean v3, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 376
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 710
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 834
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 847
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "SCROLL_BY_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v5

    const-string v1, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOVE_OUT_OF_PLUGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IMMEDIATE_REPAINT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_ROOT_LAYER_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ZOOM_ON_DOUBLE_TAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "FORM_INPUT_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "REQUEST_LISTBOX"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "REQUEST_CLEAR_CURSOR"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 893
    const/16 v0, 0x320

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 921
    const v0, 0x3c23d70a

    sput v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    .line 998
    sput-boolean v4, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1544
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1545
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1553
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1554
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1563
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V

    .line 1564
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1580
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 332
    iput-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 341
    iput-boolean v1, p0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 342
    iput-boolean v1, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 343
    iput-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    .line 344
    iput-boolean v1, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 345
    iput-boolean v1, p0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    .line 346
    iput-boolean v1, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 372
    iput-boolean v1, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    .line 373
    iput-boolean v1, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    .line 374
    iput-boolean v1, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    .line 377
    new-instance v0, Landroid/webkit/WebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->motionListener1:Landroid/hardware/motion/MRListener;

    .line 397
    iput-boolean v1, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 560
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 573
    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 612
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 626
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 642
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 643
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    .line 644
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    .line 655
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 666
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 675
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 735
    iput-boolean v2, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 736
    iput-boolean v1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 746
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 901
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 904
    iput v1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 910
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 914
    const/16 v0, 0x320

    iput v0, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 924
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 942
    iput-boolean v1, p0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 943
    iput v6, p0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 946
    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 948
    iput v1, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 966
    iput v1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 967
    iput v1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 1001
    iput-wide v4, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 1016
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 1141
    new-instance v0, Landroid/webkit/WebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 1191
    iput v1, p0, Landroid/webkit/WebView;->mController:I

    .line 1192
    iput-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1193
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 1194
    iput-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 1195
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1201
    new-instance v0, Landroid/webkit/WebView$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 4954
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 4955
    iput-object v3, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4956
    iput v1, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 4957
    iput v1, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 5272
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5835
    iput-boolean v1, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 6765
    iput-object v3, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 6766
    iput-object v3, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    .line 8004
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 8005
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 8006
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8007
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 8008
    iput v1, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 8009
    iput v1, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 8010
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 8011
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 8012
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 8013
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 8016
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 8017
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 8018
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 8019
    iput-boolean v1, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 8020
    iput-boolean v1, p0, Landroid/webkit/WebView;->mActionMove:Z

    .line 8021
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 8022
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 8023
    iput-boolean v1, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 8072
    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 8073
    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 8074
    iput-boolean v1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 8075
    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 8076
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 8077
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 8078
    iput-wide v4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 8084
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 8786
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    .line 10448
    iput-boolean v1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 10449
    iput-object v3, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 11143
    const/16 v0, 0xc8

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    .line 11326
    iput v1, p0, Landroid/webkit/WebView;->mHandleTouchRevision:I

    .line 11993
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 1581
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1583
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1584
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1585
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1586
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1587
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 1589
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1591
    new-instance v0, Landroid/webkit/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkit/WebMagnifier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    .line 1592
    new-instance v0, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {v0}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    .line 1594
    new-instance v0, Landroid/webkit/WebTextSelectionControls;

    invoke-direct {v0, p1, p0}, Landroid/webkit/WebTextSelectionControls;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    .line 1595
    return-void
.end method

.method private IsTextSelectionControlerForward(II)Z
    .registers 14
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const-string/jumbo v10, "webview"

    const-string/jumbo v9, "startPoint="

    const-string v8, ","

    .line 11414
    const/4 v0, 0x0

    .line 11416
    .local v0, moveForward:Z
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    if-ne v4, v6, :cond_55

    .line 11417
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 11418
    .local v2, startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 11419
    .local v3, startY:I
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_43

    .line 11420
    const-string/jumbo v4, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPoint="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11422
    :cond_43
    if-le p2, v3, :cond_47

    .line 11423
    const/4 v0, 0x1

    .line 11466
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_46
    :goto_46
    return v0

    .line 11424
    .restart local v2       #startX:I
    .restart local v3       #startY:I
    :cond_47
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_46

    add-int/lit8 v4, v2, 0x5

    if-le p1, v4, :cond_46

    .line 11426
    const/4 v0, 0x1

    goto :goto_46

    .line 11428
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_55
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a0

    .line 11429
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 11430
    .restart local v2       #startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 11431
    .restart local v3       #startY:I
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_8e

    .line 11432
    const-string/jumbo v4, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPoint="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11435
    :cond_8e
    if-ge p2, v3, :cond_92

    .line 11436
    const/4 v0, 0x1

    goto :goto_46

    .line 11437
    :cond_92
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_46

    sub-int v4, v2, v7

    if-ge p1, v4, :cond_46

    .line 11439
    const/4 v0, 0x1

    goto :goto_46

    .line 11441
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_a0
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b5

    .line 11442
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11443
    .local v1, selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 11444
    .restart local v3       #startY:I
    sub-int v4, v3, v6

    if-ge p2, v4, :cond_46

    .line 11445
    const/4 v0, 0x1

    goto :goto_46

    .line 11447
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_b5
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    if-ne v4, v7, :cond_ca

    .line 11448
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11449
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 11450
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_46

    .line 11451
    const/4 v0, 0x1

    goto/16 :goto_46

    .line 11453
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_ca
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e0

    .line 11454
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11455
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 11456
    .restart local v2       #startX:I
    sub-int v4, v2, v6

    if-ge p1, v4, :cond_46

    .line 11457
    const/4 v0, 0x1

    goto/16 :goto_46

    .line 11459
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v2           #startX:I
    :cond_e0
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_46

    .line 11460
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11461
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 11462
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, 0x2

    if-le p1, v4, :cond_46

    .line 11463
    const/4 v0, 0x1

    goto/16 :goto_46
.end method

.method private _onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .parameter "canvas"

    .prologue
    .line 4476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->alwaysAllowWebViewDraw()Z

    move-result v20

    if-nez v20, :cond_33

    .line 4556
    :cond_32
    :goto_32
    return-void

    .line 4482
    :cond_33
    const/4 v5, 0x0

    .line 4483
    .local v5, cacheBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v7, p1

    .line 4484
    .local v7, innerCanvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    .line 4485
    .local v9, offsetX:I
    const/4 v10, 0x0

    .line 4486
    .local v10, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_80

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    move/from16 v20, v0

    if-nez v20, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    move/from16 v20, v0

    if-nez v20, :cond_80

    .line 4487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmapOffsetX()I

    move-result v9

    .line 4489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmapOffsetY()I

    move-result v10

    .line 4492
    :cond_80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4493
    .local v11, time1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4494
    .local v13, time2:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 4495
    .local v15, time3:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4498
    .local v17, time4:J
    if-eqz v5, :cond_d0

    .line 4501
    :try_start_92
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_1f0

    .line 4502
    .end local v7           #innerCanvas:Landroid/graphics/Canvas;
    .local v8, innerCanvas:Landroid/graphics/Canvas;
    :try_start_97
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4503
    move v0, v9

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_cf
    .catchall {:try_start_97 .. :try_end_cf} :catchall_228

    move-object v7, v8

    .line 4505
    .end local v8           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v7       #innerCanvas:Landroid/graphics/Canvas;
    :cond_d0
    :try_start_d0
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->_onDrawInner(Landroid/graphics/Canvas;)V

    .line 4506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4507
    if-eqz v5, :cond_10c

    .line 4509
    move v0, v9

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    neg-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4511
    :cond_10c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_10f
    .catchall {:try_start_d0 .. :try_end_10f} :catchall_1f0

    move-result-wide v15

    .line 4514
    if-eqz v5, :cond_142

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_142

    .line 4520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/webkit/OnPinchZoomListener;->setisDrawingWebView(Z)V

    .line 4521
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->_onDrawInner(Landroid/graphics/Canvas;)V

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->postCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 4525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/webkit/OnPinchZoomListener;->setisDrawingWebView(Z)V

    .line 4529
    :cond_142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_15c

    if-eqz v5, :cond_15c

    .line 4536
    :cond_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_1ce

    .line 4538
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v19

    .line 4539
    .local v19, titleH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1ce

    if-nez v19, :cond_1ce

    .line 4540
    const/high16 v20, 0x40a0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v6, v0

    .line 4542
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    add-int v24, v24, v6

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4550
    .end local v6           #height:I
    .end local v19           #titleH:I
    :cond_1ce
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_1dd

    .line 4551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebTextView;->onDrawSubstitute()V

    .line 4553
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-eqz v20, :cond_32

    .line 4554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    goto/16 :goto_32

    .line 4514
    :catchall_1f0
    move-exception v20

    :goto_1f1
    if-eqz v5, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_223

    .line 4520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/webkit/OnPinchZoomListener;->setisDrawingWebView(Z)V

    .line 4521
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->_onDrawInner(Landroid/graphics/Canvas;)V

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->postCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 4525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/webkit/OnPinchZoomListener;->setisDrawingWebView(Z)V

    .line 4529
    :cond_223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4514
    throw v20

    .end local v7           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v8       #innerCanvas:Landroid/graphics/Canvas;
    :catchall_228
    move-exception v20

    move-object v7, v8

    .end local v8           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v7       #innerCanvas:Landroid/graphics/Canvas;
    goto :goto_1f1
.end method

.method private _onDrawInner(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 4561
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    .line 4619
    :goto_5
    return-void

    .line 4568
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_17

    .line 4569
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_5

    .line 4573
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 4574
    .local v9, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 4576
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_6a

    .line 4577
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 4578
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080347

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4581
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4583
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 4584
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4585
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4586
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4589
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_6a
    const/4 v10, 0x0

    .line 4590
    .local v10, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 4591
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v10, v0

    .line 4593
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4594
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4595
    iget v0, p0, Landroid/view/View;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v10, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 4597
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4598
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4600
    const/high16 v1, -0x4080

    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4602
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v10, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4604
    .end local v7           #bottom:I
    .end local v8           #right:I
    .end local v10           #top:I
    :cond_b4
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_c2

    .line 4605
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4607
    :cond_c2
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-nez v0, :cond_ce

    .line 4608
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 4618
    :cond_c9
    :goto_c9
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_5

    .line 4610
    :cond_ce
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$DragTrackerHandler;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 4612
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 4614
    :cond_d9
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 4615
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    goto :goto_c9
.end method

.method private abortAnimation()V
    .registers 2

    .prologue
    .line 2961
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2962
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 2963
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Landroid/webkit/WebviewScaleGestureDetector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    return v0
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Landroid/webkit/WebView;)Landroid/widget/OverScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->doDoubleTap()V

    return-void
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$11002(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$1102(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    return p1
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;IZ)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$11300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11600(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$11700(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    return v0
.end method

.method static synthetic access$11800(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$11900(Landroid/webkit/WebView;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 321
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    return-void
.end method

.method static synthetic access$12002(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$12102(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$12200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->doAdaptiveZoom(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    return v0
.end method

.method static synthetic access$12400(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->showMagnifier(IIZ)V

    return-void
.end method

.method static synthetic access$12502(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mController:I

    return p1
.end method

.method static synthetic access$12600(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    return v0
.end method

.method static synthetic access$12700(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$12702(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return p1
.end method

.method static synthetic access$12800(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$13000(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13100(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13300(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13400(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13500(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$13502(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-object p1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$13600(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2302(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$2402(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mAnchorX:I

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800()F
    .registers 1

    .prologue
    .line 321
    sget v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3102(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3202(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 321
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;FFJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800()J
    .registers 2

    .prologue
    .line 321
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$3902(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$4102(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->selectClosestWord(II)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;IIZ)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetRootLayer(I)V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    return v0
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mFindHeight:I

    return v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$7202(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    return p1
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;IIZJ)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 321
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$8002(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    return v0
.end method

.method static synthetic access$8300(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$8602(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$8702(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    return v0
.end method

.method static synthetic access$8802(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    return v0
.end method

.method static synthetic access$8902(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return v0
.end method

.method static synthetic access$9002(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$9102(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$9202(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$9302(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$9800(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 321
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$9900(Landroid/webkit/WebView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    return v0
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 3242
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3244
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3249
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3250
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3251
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3252
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3260
    .local v0, ri:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3262
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 3267
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 3268
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 3269
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 3270
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 3232
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3233
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3234
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 3235
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_1c

    .line 3236
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3238
    :cond_1c
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v2, 0x8d

    .line 7852
    invoke-virtual {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 7853
    if-eqz p3, :cond_f

    .line 7854
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7856
    :cond_f
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7857
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7858
    iput p2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7859
    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7860
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7861
    const/4 v1, 0x4

    iput v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7863
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_23
    return-void
.end method

.method private centerFitRect(IIII)V
    .registers 27
    .parameter "docX"
    .parameter "docY"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 8840
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v17

    .line 8841
    .local v17, viewWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    .line 8842
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 8844
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_77

    .line 8845
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v15, v0

    .line 8849
    :cond_33
    :goto_33
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_87

    .line 8850
    div-int/lit8 v18, p3, 0x2

    add-int v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, p4, 0x2

    add-int v19, v19, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 8883
    :goto_76
    return-void

    .line 8846
    :cond_77
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_33

    .line 8847
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v15, v0

    goto :goto_33

    .line 8854
    :cond_87
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 8855
    .local v9, oldScreenX:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v13, v18, v15

    .line 8856
    .local v13, rectViewX:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v18, v15

    .line 8857
    .local v12, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v15

    .line 8858
    .local v6, newMaxWidth:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v7, v18, v19

    .line 8860
    .local v7, newScreenX:F
    cmpl-float v18, v7, v13

    if-lez v18, :cond_17a

    .line 8861
    move v7, v13

    .line 8865
    :cond_cc
    :goto_cc
    mul-float v18, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8867
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v10, v18, v19

    .line 8869
    .local v10, oldScreenY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 8870
    .local v14, rectViewY:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v11, v18, v15

    .line 8871
    .local v11, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 8872
    .local v5, newMaxHeight:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 8874
    .local v8, newScreenY:F
    cmpl-float v18, v8, v14

    if-lez v18, :cond_18d

    .line 8875
    move v8, v14

    .line 8879
    :cond_14e
    :goto_14e
    mul-float v18, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8881
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_76

    .line 8862
    .end local v5           #newMaxHeight:F
    .end local v8           #newScreenY:F
    .end local v10           #oldScreenY:F
    .end local v11           #rectViewHeight:F
    .end local v14           #rectViewY:F
    :cond_17a
    sub-float v18, v6, v13

    sub-float v18, v18, v12

    cmpl-float v18, v7, v18

    if-lez v18, :cond_cc

    .line 8863
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v6, v13

    sub-float v7, v18, v19

    goto/16 :goto_cc

    .line 8876
    .restart local v5       #newMaxHeight:F
    .restart local v8       #newScreenY:F
    .restart local v10       #oldScreenY:F
    .restart local v11       #rectViewHeight:F
    .restart local v14       #rectViewY:F
    :cond_18d
    sub-float v18, v5, v14

    sub-float v18, v18, v11

    cmpl-float v18, v8, v18

    if-lez v18, :cond_14e

    .line 8877
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v5, v14

    sub-float v8, v18, v19

    goto :goto_14e
.end method

.method private clearHelpers()V
    .registers 2

    .prologue
    .line 1921
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1922
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 1923
    return-void
.end method

.method private static computeDuration(II)I
    .registers 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 3918
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3919
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 3920
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeMaxScrollX()I
    .registers 3

    .prologue
    .line 8349
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeMaxScrollY()I
    .registers 3

    .prologue
    .line 8353
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeRealHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 3358
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_7

    .line 3359
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3368
    :goto_6
    return v0

    .line 3360
    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_26

    .line 3365
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_6

    .line 3368
    :cond_26
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_6
.end method

.method private computeRealVerticalScrollRange()I
    .registers 3

    .prologue
    .line 3394
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_7

    .line 3395
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 3404
    :goto_6
    return v0

    .line 3396
    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_26

    .line 3401
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_6

    .line 3404
    :cond_26
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_6
.end method

.method private contentSizeChanged(Z)V
    .registers 4
    .parameter "updateLayout"

    .prologue
    .line 4103
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 4122
    :cond_7
    :goto_7
    return-void

    .line 4107
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_1e

    .line 4108
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_1a

    if-eqz p1, :cond_7

    .line 4110
    :cond_1a
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_7

    .line 4112
    :cond_1e
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_34

    .line 4113
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_30

    if-eqz p1, :cond_7

    .line 4115
    :cond_30
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_7

    .line 4120
    :cond_34
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_7
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .parameter "x"

    .prologue
    .line 2913
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .registers 4

    .prologue
    .line 8564
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8566
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$11;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 8575
    new-instance v1, Landroid/webkit/WebView$12;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$12;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 8584
    return-object v0
.end method

.method private didUpdateTextViewBounds(Z)Z
    .registers 11
    .parameter "allowIntersect"

    .prologue
    const/4 v8, 0x0

    .line 4689
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4690
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4691
    .local v1, vBox:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4692
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4697
    if-eqz p1, :cond_3a

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 4702
    :cond_19
    :goto_19
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4704
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4707
    const/4 v3, 0x1

    return v3

    .line 4697
    :cond_3a
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 4700
    :cond_40
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v3, v4, v8, v8}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_19
.end method

.method public static disablePlatformNotifications()V
    .registers 0

    .prologue
    .line 1972
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1973
    return-void
.end method

.method private dismissWebSelectDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2586
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_29

    .line 2587
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 2588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 2589
    iput-boolean v3, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 2591
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2593
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x85

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2596
    :cond_29
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .registers 9
    .parameter "isTextView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5035
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 5036
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_b

    .line 5037
    invoke-virtual {v0, p0, p1}, Landroid/webkit/WebChromeClient;->onDisplaySoftKeyboard(Landroid/webkit/WebView;Z)V

    .line 5040
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 5044
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v4, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_48

    move v2, v6

    .line 5045
    .local v2, zoom:Z
    :goto_20
    if-eqz v2, :cond_32

    .line 5046
    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 5047
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 5048
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 5050
    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    const/4 v4, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 5052
    :cond_32
    if-eqz p1, :cond_4a

    .line 5053
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5054
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 5055
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5056
    if-eqz v2, :cond_47

    .line 5057
    invoke-direct {p0, v6}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    .line 5068
    :cond_47
    :goto_47
    return-void

    .end local v2           #zoom:Z
    :cond_48
    move v2, v5

    .line 5044
    goto :goto_20

    .line 5067
    .restart local v2       #zoom:Z
    :cond_4a
    invoke-virtual {v1, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_47
.end method

.method private doAdaptiveZoom(Landroid/graphics/Rect;)V
    .registers 27
    .parameter "blockRect"

    .prologue
    .line 9058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v21

    if-nez v21, :cond_11

    .line 9224
    :cond_10
    :goto_10
    return-void

    .line 9062
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 9066
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v9, v0

    .line 9068
    .local v9, oldScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 9069
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 9070
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 9071
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 9073
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_133

    .line 9074
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom mLastTouchX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mLastTouchY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9075
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom mScrollX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mScrollY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9076
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom blockRect=("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9080
    :cond_133
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v15

    .line 9082
    .local v15, settings:Landroid/webkit/WebSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 9083
    .local v5, blockWidth:I
    if-lez v5, :cond_10

    .line 9084
    const/16 v20, 0x0

    .line 9085
    .local v20, zoomToMin:Z
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v21

    const/16 v22, 0xa

    sub-int v18, v21, v22

    .line 9087
    .local v18, viewWidth:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v8, v21, v22

    .line 9089
    .local v8, newScale:F
    const/high16 v21, 0x4000

    cmpl-float v21, v8, v21

    if-lez v21, :cond_15a

    .line 9091
    const/high16 v8, 0x4000

    .line 9094
    :cond_15a
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_18a

    .line 9095
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom newScale="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mActualScale="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9098
    :cond_18a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    sub-float v21, v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const v22, 0x3d4ccccd

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_44d

    .line 9100
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9102
    new-instance v11, Landroid/graphics/Rect;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9103
    .local v11, scaledRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 9104
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_20e

    .line 9105
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom scaledRect=("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9108
    :cond_20e
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 9110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v10, v21, v8

    .line 9112
    .local v10, scaledHeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v10, v21

    if-gtz v21, :cond_266

    .line 9113
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_249

    .line 9114
    const-string/jumbo v21, "webview"

    const-string v22, "doAdaptiveZoom make complete block visible..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9116
    :cond_249
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 9118
    :cond_266
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    .line 9120
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_2c2

    .line 9121
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom mZoomCenterX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mZoomCenterY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mViewCenterYCorrection="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9124
    :cond_2c2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 9125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 9130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_441

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_441

    .line 9132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->overrideDoubleTap()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_435

    .line 9134
    new-instance v19, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct/range {v19 .. v19}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    .line 9135
    .local v19, zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 9136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v9

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9185
    .end local v10           #scaledHeight:F
    .end local v19           #zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    :goto_357
    if-eqz v20, :cond_10

    .line 9186
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9188
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_36d

    .line 9189
    const-string/jumbo v21, "webview"

    const-string v22, "doAdaptiveZoom : Zooming to default scale..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9193
    :cond_36d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 9194
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 9195
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 9196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 9199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5cc

    .line 9201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->overrideDoubleTap()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5b5

    .line 9203
    new-instance v19, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct/range {v19 .. v19}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    .line 9209
    .restart local v19       #zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 9211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v9

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_10

    .line 9140
    .end local v19           #zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    .restart local v10       #scaledHeight:F
    :cond_435
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_357

    .line 9145
    :cond_441
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_357

    .line 9152
    .end local v10           #scaledHeight:F
    .end local v11           #scaledRect:Landroid/graphics/Rect;
    :cond_44d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v22

    sub-int v21, v21, v22

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move v14, v0

    .line 9153
    .local v14, scrollYwithoutTitle:F
    new-instance v11, Landroid/graphics/Rect;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9154
    .restart local v11       #scaledRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 9156
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move v12, v0

    .line 9157
    .local v12, scrollCentreX:F
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move v13, v0

    .line 9159
    .local v13, scrollCentreY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v16, v0

    .line 9160
    .local v16, viewCentreX:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v17, v14, v21

    .line 9162
    .local v17, viewCentreY:F
    sub-float v21, v12, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move v6, v0

    .line 9163
    .local v6, dx:I
    sub-float v21, v13, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 9165
    .local v7, dy:I
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_525

    .line 9166
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom scrollCentreX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", scrollCentreY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9167
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom viewCentreX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", viewCentreY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", dx="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", dy="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9170
    :cond_525
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v21, v14

    if-ltz v21, :cond_54d

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v14

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_54d

    .line 9171
    const/4 v7, 0x0

    .line 9173
    :cond_54d
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_576

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_576

    .line 9174
    const/4 v6, 0x0

    .line 9176
    :cond_576
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_58e

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5b1

    .line 9177
    :cond_58e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v22, v22, v7

    const/16 v23, 0x1

    const/16 v24, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto/16 :goto_357

    .line 9181
    :cond_5b1
    const/16 v20, 0x1

    goto/16 :goto_357

    .line 9215
    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v12           #scrollCentreX:F
    .end local v13           #scrollCentreY:F
    .end local v14           #scrollYwithoutTitle:F
    .end local v16           #viewCentreX:F
    .end local v17           #viewCentreY:F
    :cond_5b5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_10

    .line 9220
    :cond_5cc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_10
.end method

.method private doDoubleTap()V
    .registers 15

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8919
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doDoubleTap : getUseWideViewPort - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v9}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIgnoreDoubleTap -  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getLayoutAlgorithm - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8921
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-nez v7, :cond_52

    .line 8996
    :cond_51
    :goto_51
    return-void

    .line 8925
    :cond_52
    iget-boolean v7, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    if-nez v7, :cond_51

    .line 8930
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_66

    .line 8931
    invoke-direct {p0}, Landroid/webkit/WebView;->prepareForAdaptiveZoom()V

    goto :goto_51

    .line 8935
    :cond_66
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8936
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8937
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8938
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8939
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 8940
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 8942
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 8943
    iget-object v7, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v9, p0, Landroid/webkit/WebView;->mAnchorY:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v3

    .line 8944
    .local v3, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v3, :cond_c9

    .line 8945
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 8946
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8948
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_ae

    iput v10, p0, Landroid/view/View;->mScrollY:I

    .line 8949
    :cond_ae
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_51

    .line 8952
    :cond_bb
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8953
    iget v7, v3, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v8, v3, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v9, v3, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v10, v3, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-direct {p0, v7, v8, v9, v10}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    goto :goto_51

    .line 8957
    :cond_c9
    const/4 v6, 0x0

    .line 8958
    .local v6, zoomToDefault:Z
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_121

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_121

    .line 8960
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 8962
    .local v2, overviewScale:F
    invoke-direct {p0, v2, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 8963
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8977
    .end local v2           #overviewScale:F
    :cond_f0
    :goto_f0
    if-eqz v6, :cond_51

    .line 8978
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8979
    iget v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 8980
    .local v0, left:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_11a

    .line 8982
    if-ge v0, v13, :cond_15f

    move v7, v10

    :goto_104
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int v5, v7, v8

    .line 8986
    .local v5, viewLeft:I
    if-lez v5, :cond_162

    .line 8987
    int-to-float v7, v5

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8994
    .end local v5           #viewLeft:I
    :cond_11a
    :goto_11a
    iget v7, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v7, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_51

    .line 8964
    .end local v0           #left:I
    :cond_121
    iget-boolean v7, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v7, :cond_15d

    .line 8965
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 8966
    .local v1, newScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_14c

    .line 8967
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8969
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_148

    iput v10, p0, Landroid/view/View;->mScrollY:I

    .line 8970
    :cond_148
    invoke-direct {p0, v1, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_f0

    .line 8971
    :cond_14c
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_f0

    .line 8972
    const/4 v6, 0x1

    goto :goto_f0

    .line 8975
    .end local v1           #newScale:F
    :cond_15d
    const/4 v6, 0x1

    goto :goto_f0

    .line 8982
    .restart local v0       #left:I
    :cond_15f
    sub-int v7, v0, v13

    goto :goto_104

    .line 8990
    .restart local v5       #viewLeft:I
    :cond_162
    invoke-virtual {p0, v5, v10}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 8991
    const/4 v7, 0x0

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    goto :goto_11a
.end method

.method private doDrag(II)V
    .registers 15
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 7909
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v0

    if-ne v0, v9, :cond_17

    .line 7911
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0, p1, p2}, Landroid/webkit/OnPinchZoomListener;->doDrag(II)Z

    move-result v0

    if-ne v0, v9, :cond_17

    .line 7948
    :cond_16
    :goto_16
    return-void

    .line 7915
    :cond_17
    or-int v0, p1, p2

    if-eqz v0, :cond_60

    .line 7916
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 7917
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 7918
    .local v4, oldY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 7919
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 7921
    .local v6, rangeY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2f

    .line 7923
    iput p1, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 7924
    iput p2, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 7927
    :cond_2f
    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 7930
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_60

    .line 7933
    :cond_5d
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7936
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_60
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7937
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_92

    move v10, v9

    .line 7938
    .local v10, showPlusMinus:Z
    :goto_73
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v0, :cond_16

    if-eqz v10, :cond_16

    .line 7939
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_94

    .line 7940
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7944
    :goto_88
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v7, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .end local v10           #showPlusMinus:Z
    :cond_92
    move v10, v11

    .line 7937
    goto :goto_73

    .line 7942
    .restart local v10       #showPlusMinus:Z
    :cond_94
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto :goto_88
.end method

.method private doFling()V
    .registers 22

    .prologue
    .line 8365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIgnoreFling:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 8471
    :cond_7
    :goto_7
    return-void

    .line 8369
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 8372
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v9

    .line 8373
    .local v9, maxX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v11

    .line 8375
    .local v11, maxY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaximumFling:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8377
    .local v19, vx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 8379
    .local v20, vy:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v3, v0

    if-eqz v3, :cond_54

    .line 8380
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b1

    .line 8381
    const/16 v20, 0x0

    .line 8387
    :cond_54
    :goto_54
    const/high16 v17, 0x3f40

    .line 8388
    .local v17, flingfactor:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    if-eqz v3, :cond_66

    .line 8390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getFlingFactor()F

    move-result v17

    .line 8395
    :cond_66
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    mul-float v3, v3, v17

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8396
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float v3, v3, v17

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 8399
    if-nez v9, :cond_7e

    if-eqz v20, :cond_82

    :cond_7e
    if-nez v11, :cond_b4

    if-nez v19, :cond_b4

    .line 8400
    :cond_82
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v3, v0

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    .end local v9           #maxX:I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8404
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_7

    .line 8383
    .end local v17           #flingfactor:F
    .restart local v9       #maxX:I
    :cond_b1
    const/16 v19, 0x0

    goto :goto_54

    .line 8409
    .restart local v17       #flingfactor:F
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    if-eqz v3, :cond_d8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d8

    .line 8411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doFling(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 8415
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v15

    .line 8416
    .local v15, currentVelocity:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_276

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_276

    .line 8417
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v3, v0

    float-to-double v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 v16, v0

    .line 8419
    .local v16, deltaR:F
    const v14, 0x40c90fdb

    .line 8420
    .local v14, circle:F
    const v3, 0x40b4f4ab

    cmpl-float v3, v16, v3

    if-gtz v3, :cond_126

    const v3, 0x3f20d97c

    cmpg-float v3, v16, v3

    if-gez v3, :cond_252

    .line 8421
    :cond_126
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v4, v0

    mul-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8422
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v4, v0

    mul-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 8423
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_17d

    .line 8424
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFling vx= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8438
    .end local v14           #circle:F
    .end local v16           #deltaR:F
    :cond_17d
    :goto_17d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-eqz v3, :cond_18b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-ne v3, v9, :cond_197

    :cond_18b
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_197

    .line 8439
    const/16 v19, 0x0

    .line 8441
    :cond_197
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-eqz v3, :cond_1a5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-ne v3, v11, :cond_1b1

    :cond_1a5
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_1b1

    .line 8442
    const/16 v20, 0x0

    .line 8445
    :cond_1b1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v4, v0

    if-ge v3, v4, :cond_1f5

    .line 8446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    neg-int v4, v4

    if-eq v3, v4, :cond_1d7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    add-int/2addr v4, v9

    if-ne v3, v4, :cond_1d9

    .line 8447
    :cond_1d7
    const/16 v19, 0x0

    .line 8449
    :cond_1d9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    neg-int v4, v4

    if-eq v3, v4, :cond_1f3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    add-int/2addr v4, v11

    if-ne v3, v4, :cond_1f5

    .line 8450
    :cond_1f3
    const/16 v20, 0x0

    .line 8454
    :cond_1f5
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelX:F

    .line 8455
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelY:F

    .line 8456
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v3, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 8459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    move/from16 v0, v19

    neg-int v0, v0

    move v6, v0

    move/from16 v0, v20

    neg-int v0, v0

    move v7, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-nez v9, :cond_2f0

    const/4 v12, 0x0

    :goto_235
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v13, v0

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 8466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v18

    .line 8467
    .local v18, time:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 8468
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_7

    .line 8426
    .end local v18           #time:I
    .restart local v14       #circle:F
    .restart local v16       #deltaR:F
    :cond_252
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_17d

    .line 8427
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFling missed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x40c90fdb

    div-float v5, v16, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17d

    .line 8429
    .end local v14           #circle:F
    .end local v16           #deltaR:F
    :cond_276
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_17d

    .line 8430
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFling start last="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScrollX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScrollY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17d

    .line 8459
    :cond_2f0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v12, v0

    goto/16 :goto_235
.end method

.method private doMotionUp(II)V
    .registers 6
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 8777
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8778
    const v0, 0x11206

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8780
    :cond_15
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_24

    .line 8781
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 8783
    :cond_24
    return-void
.end method

.method private doShortPress()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 8745
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doShortPress : mNativeClass - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPreventDefault -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8747
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_2d

    .line 8774
    :cond_2c
    :goto_2c
    return-void

    .line 8750
    :cond_2d
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2c

    .line 8754
    sput-boolean v6, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 8755
    sput-boolean v6, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 8756
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8757
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8759
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8760
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8761
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 8762
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 8764
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 8765
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 8766
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 8767
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 8768
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 8769
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_2c

    .line 8772
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_7b
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_2c
.end method

.method private doTrackball(J)V
    .registers 29
    .parameter "time"

    .prologue
    .line 8259
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 8260
    .local v13, elapsed:I
    if-nez v13, :cond_10

    .line 8261
    const/16 v13, 0xc8

    .line 8263
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 8264
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 8265
    .local v25, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 8266
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    .line 8267
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_93

    .line 8268
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move v5, v0

    if-nez v5, :cond_6a

    .line 8272
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 8273
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 8274
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 8275
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 8277
    :cond_6a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 8279
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8346
    :cond_92
    :goto_92
    return-void

    .line 8282
    :cond_93
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 8283
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 8284
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 8285
    .local v16, maxA:F
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_f4

    .line 8286
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doTrackball elapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTrackballRemainsX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTrackballRemainsY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8292
    :cond_f4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    sub-int v21, v5, v20

    .line 8293
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    sub-int v14, v5, v19

    .line 8294
    .local v14, height:I
    if-gez v21, :cond_106

    const/16 v21, 0x0

    .line 8295
    :cond_106
    if-gez v14, :cond_109

    const/4 v14, 0x0

    .line 8296
    :cond_109
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 8297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 8298
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 8299
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 8300
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    .line 8301
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    .line 8302
    .local v18, oldScrollY:I
    if-lez v7, :cond_1e0

    .line 8303
    cmpg-float v5, v11, v12

    if-gez v5, :cond_1b9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b5

    const/16 v5, 0x13

    move v6, v5

    .line 8307
    .local v6, selectKeyCode:I
    :goto_14d
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 8308
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_198

    .line 8309
    const-string/jumbo v5, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doTrackball keyCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mTrackballRemainsX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mTrackballRemainsY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8314
    :cond_198
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_28e

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-eqz v5, :cond_28e

    .line 8315
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1a6
    if-ge v15, v7, :cond_1cb

    .line 8316
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 8315
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a6

    .line 8303
    .end local v6           #selectKeyCode:I
    .end local v15           #i:I
    :cond_1b5
    const/16 v5, 0x14

    move v6, v5

    goto :goto_14d

    :cond_1b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1c7

    const/16 v5, 0x15

    move v6, v5

    goto :goto_14d

    :cond_1c7
    const/16 v5, 0x16

    move v6, v5

    goto :goto_14d

    .line 8318
    .restart local v6       #selectKeyCode:I
    .restart local v15       #i:I
    :cond_1cb
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 8322
    .end local v15           #i:I
    :cond_1d5
    :goto_1d5
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8324
    .end local v6           #selectKeyCode:I
    :cond_1e0
    const/4 v5, 0x5

    if-lt v7, v5, :cond_92

    .line 8325
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 8326
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 8327
    .local v24, yMove:I
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_24f

    .line 8328
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doTrackball pinScrollBy count="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xMove="

    .end local v7           #count:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yMove="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mScrollX-oldScrollX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v7, v0

    sub-int v7, v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mScrollY-oldScrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    sub-int v7, v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8335
    :cond_24f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_262

    .line 8336
    const/16 v22, 0x0

    .line 8338
    :cond_262
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_275

    .line 8339
    const/16 v24, 0x0

    .line 8341
    :cond_275
    if-nez v22, :cond_279

    if-eqz v24, :cond_286

    .line 8342
    :cond_279
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 8344
    :cond_286
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_92

    .line 8319
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    .restart local v6       #selectKeyCode:I
    .restart local v7       #count:I
    :cond_28e
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_1d5

    .line 8320
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto/16 :goto_1d5
.end method

.method private domChangedFocus()V
    .registers 3

    .prologue
    .line 2706
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2707
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2709
    :cond_11
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "webview"

    .line 4424
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v3

    :goto_15
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v1, v5, :cond_21

    iget-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    if-eqz v1, :cond_70

    :cond_21
    move v1, v3

    :goto_22
    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4427
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 4428
    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->drawWebSelectionControl(Landroid/graphics/Canvas;Z)V

    .line 4431
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v3, v0, :cond_6d

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-ne v3, v0, :cond_6d

    .line 4433
    iget v0, p0, Landroid/webkit/WebView;->iTimer:I

    if-nez v0, :cond_72

    iget-boolean v0, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    if-nez v0, :cond_72

    .line 4435
    const-string/jumbo v0, "webview"

    const-string v0, "  drawContent ()   Hiding  SingleCursorHandler"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    iput-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    .line 4437
    iget-object v0, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v0, :cond_64

    .line 4438
    const-string/jumbo v0, "webview"

    const-string v0, "  isVisibleCursorHandler is false"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    iget-object v0, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    iget-object v1, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    invoke-interface {v0, v5}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 4441
    :cond_64
    iput-boolean v2, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 4442
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 4443
    iput v6, p0, Landroid/webkit/WebView;->iTimer:I

    .line 4444
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4457
    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    move v0, v2

    .line 4424
    goto :goto_15

    :cond_70
    move v1, v2

    goto :goto_22

    .line 4449
    :cond_72
    const-string/jumbo v0, "webview"

    const-string v0, "  drawContent ()   Drawing  SingleCursorHandler"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawSingleCursorHandler(Landroid/graphics/Canvas;)V

    .line 4452
    iget v0, p0, Landroid/webkit/WebView;->iTimer:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/webkit/WebView;->iTimer:I

    .line 4453
    iget v0, p0, Landroid/webkit/WebView;->iTimer:I

    if-gez v0, :cond_6d

    iput v6, p0, Landroid/webkit/WebView;->iTimer:I

    goto :goto_6d
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .registers 29
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 4759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 4760
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 4951
    :cond_2a
    :goto_2a
    return-void

    .line 4765
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2ec

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 4766
    .local v7, animateZoom:Z
    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v20

    if-eqz v20, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6b

    :cond_4f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_79

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_79

    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f2

    :cond_79
    const/16 v20, 0x1

    move/from16 v6, v20

    .line 4772
    .local v6, animateScroll:Z
    :goto_7d
    const/4 v8, 0x0

    .line 4773
    .local v8, correctionY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_df

    .line 4774
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b8

    .line 4775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 4776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 4777
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 4779
    :cond_b8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    if-nez v20, :cond_df

    .line 4780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x64

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4782
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 4787
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_fa

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_fa

    .line 4788
    const/4 v7, 0x0

    .line 4791
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->forceHighQualityImage()Z

    move-result v20

    if-eqz v20, :cond_10f

    .line 4799
    const/4 v6, 0x0

    .line 4803
    :cond_10f
    if-eqz v7, :cond_375

    .line 4805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move v11, v0

    .line 4806
    .local v11, interval:I
    const/16 v20, 0x1f4

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_2f8

    .line 4807
    move v0, v11

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43fa

    div-float v12, v20, v21

    .line 4808
    .local v12, ratio:F
    const/high16 v20, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, v12

    add-float v21, v21, v22

    div-float v19, v20, v21

    .line 4810
    .local v19, zoomScale:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4832
    .end local v12           #ratio:F
    :goto_14f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v20, v0

    mul-float v13, v19, v20

    .line 4835
    .local v13, scale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_346

    .line 4836
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v17, v20, v21

    .line 4841
    .local v17, viewCentreX:F
    :goto_16c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    mul-float v20, v20, v13

    sub-float v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 4843
    .local v15, tx:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 4845
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v14

    .line 4848
    .local v14, titleHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_34e

    .line 4849
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v18, v20, v21

    .line 4850
    .local v18, viewCentreY:F
    add-float v18, v18, v8

    .line 4855
    :goto_1cd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v13

    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v18, v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 4858
    .local v16, ty:I
    move/from16 v0, v16

    move v1, v14

    if-gt v0, v1, :cond_356

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    :goto_203
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 4861
    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4862
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4863
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_25e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v20, v0

    if-nez v20, :cond_25e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_25e

    .line 4867
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 4870
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v20

    if-eqz v20, :cond_25e

    .line 4871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 4880
    .end local v11           #interval:I
    .end local v13           #scale:F
    .end local v14           #titleHeight:I
    .end local v15           #tx:I
    .end local v16           #ty:I
    .end local v17           #viewCentreX:F
    .end local v18           #viewCentreY:F
    .end local v19           #zoomScale:F
    :cond_25e
    :goto_25e
    const/4 v5, 0x0

    .line 4883
    .local v5, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v20, v0

    if-eqz v20, :cond_271

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations()Z

    move-result v20

    if-eqz v20, :cond_271

    .line 4884
    const/4 v5, 0x1

    .line 4887
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4889
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-nez v7, :cond_283

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v21, v0

    if-nez v21, :cond_283

    if-eqz v5, :cond_394

    :cond_283
    const/16 v21, 0x1

    :goto_285
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 4892
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    .line 4894
    const/4 v9, 0x0

    .line 4895
    .local v9, extras:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_398

    .line 4896
    const/4 v9, 0x1

    .line 4935
    :cond_2a3
    :goto_2a3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawExtras(Landroid/graphics/Canvas;IZ)V

    .line 4937
    const/16 v20, 0x3

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c9

    .line 4938
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c9

    .line 4939
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 4942
    :cond_2c9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    .line 4943
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 4947
    if-nez v7, :cond_2a

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_2a

    .line 4948
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    goto/16 :goto_2a

    .line 4765
    .end local v5           #UIAnimationsRunning:Z
    .end local v6           #animateScroll:Z
    .end local v7           #animateZoom:Z
    .end local v8           #correctionY:F
    .end local v9           #extras:I
    :cond_2ec
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_3b

    .line 4766
    .restart local v7       #animateZoom:Z
    :cond_2f2
    const/16 v20, 0x0

    move/from16 v6, v20

    goto/16 :goto_7d

    .line 4812
    .restart local v6       #animateScroll:Z
    .restart local v8       #correctionY:F
    .restart local v11       #interval:I
    :cond_2f8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v19, v0

    .line 4814
    .restart local v19       #zoomScale:F
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScale:F

    .line 4815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4817
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4818
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_33f

    .line 4819
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 4820
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v20

    if-eqz v20, :cond_33f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v20

    if-eqz v20, :cond_33f

    .line 4824
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 4828
    :cond_33f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    move v8, v0

    goto/16 :goto_14f

    .line 4838
    .restart local v13       #scale:F
    :cond_346
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    .restart local v17       #viewCentreX:F
    goto/16 :goto_16c

    .line 4853
    .restart local v14       #titleHeight:I
    .restart local v15       #tx:I
    :cond_34e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v18, v0

    .restart local v18       #viewCentreY:F
    goto/16 :goto_1cd

    .line 4858
    .restart local v16       #ty:I
    :cond_356
    sub-int v20, v16, v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v20

    add-int v20, v20, v14

    goto/16 :goto_203

    .line 4875
    .end local v11           #interval:I
    .end local v13           #scale:F
    .end local v14           #titleHeight:I
    .end local v15           #tx:I
    .end local v16           #ty:I
    .end local v17           #viewCentreX:F
    .end local v18           #viewCentreY:F
    .end local v19           #zoomScale:F
    :cond_375
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4877
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    goto/16 :goto_25e

    .line 4889
    .restart local v5       #UIAnimationsRunning:Z
    :cond_394
    const/16 v21, 0x0

    goto/16 :goto_285

    .line 4897
    .restart local v9       #extras:I
    :cond_398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3ce

    .line 4898
    const/4 v9, 0x2

    .line 4899
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->nativeSetSelectionPointer(ZFII)V

    goto/16 :goto_2a3

    .line 4903
    :cond_3ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-eqz v20, :cond_444

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_444

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAutoSelection:Z

    move/from16 v20, v0

    if-eqz v20, :cond_444

    .line 4905
    if-eqz p3, :cond_413

    .line 4906
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_43a

    .line 4907
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 4908
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v10

    .line 4909
    .local v10, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v10, :cond_412

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v10}, Landroid/webkit/WebView$HitTestResult;->access$700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v20

    if-nez v20, :cond_430

    .line 4912
    :cond_412
    const/4 v9, 0x0

    .line 4921
    .end local v10           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_413
    :goto_413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a3

    .line 4923
    const/4 v9, 0x0

    goto/16 :goto_2a3

    .line 4913
    .restart local v10       #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_413

    .line 4914
    const/4 v9, 0x3

    goto :goto_413

    .line 4916
    .end local v10           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_43a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_413

    .line 4917
    const/4 v9, 0x3

    goto :goto_413

    .line 4926
    :cond_444
    if-eqz p3, :cond_2a3

    .line 4927
    const/4 v9, 0x3

    .line 4929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a3

    .line 4931
    const/4 v9, 0x0

    goto/16 :goto_2a3
.end method

.method private drawExtras(Landroid/graphics/Canvas;IZ)V
    .registers 5
    .parameter "canvas"
    .parameter "extras"
    .parameter "animationsRunning"

    .prologue
    .line 4737
    if-eqz p3, :cond_9

    .line 4738
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4740
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeDrawExtras(Landroid/graphics/Canvas;I)V

    .line 4741
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4742
    return-void
.end method

.method private drawSingleCursorHandler(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/16 v8, 0x18

    const/4 v12, 0x1

    const/16 v11, 0xff

    const-string/jumbo v10, "webview"

    .line 4358
    const-string/jumbo v6, "webview"

    const-string v6, "drawSingleCursorHandler Enter "

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    invoke-virtual {p0}, Landroid/webkit/WebView;->textChangedForWatcher()V

    .line 4363
    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 4364
    .local v0, cursurRect:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 4365
    .local v4, x:I
    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v5, v6, v7

    .line 4366
    .local v5, y:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4367
    .local v3, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4369
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_36

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v7, :cond_36

    .line 4412
    :goto_35
    return-void

    .line 4372
    :cond_36
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080385

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4373
    .local v2, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawSingleCursorHandler singleCursorhandler is drawn at  x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 4376
    .local v1, iSCHHeight:I
    add-int v6, v5, v1

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_ea

    .line 4378
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080386

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4379
    sub-int v6, v4, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v7, v5, v7

    sub-int/2addr v7, v1

    add-int/lit8 v8, v4, 0x1a

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4384
    :goto_92
    iget-boolean v6, p0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    if-nez v6, :cond_f4

    iget v6, p0, Landroid/webkit/WebView;->iAlpha:I

    if-ge v6, v11, :cond_f4

    .line 4386
    const-string/jumbo v6, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawSingleCursorHandler before add  iAlpha = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkit/WebView;->iAlpha:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    iget v6, p0, Landroid/webkit/WebView;->iAlpha:I

    add-int/lit8 v6, v6, 0x33

    iput v6, p0, Landroid/webkit/WebView;->iAlpha:I

    .line 4388
    iget v6, p0, Landroid/webkit/WebView;->iAlpha:I

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4389
    iget v6, p0, Landroid/webkit/WebView;->iAlpha:I

    if-ne v6, v11, :cond_ca

    .line 4391
    const/4 v6, 0x7

    iput v6, p0, Landroid/webkit/WebView;->iTimer:I

    .line 4392
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4394
    :cond_ca
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4395
    const-string/jumbo v6, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawSingleCursorHandler -after add  iAlpha = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkit/WebView;->iAlpha:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 4381
    :cond_ea
    sub-int v6, v4, v8

    add-int/lit8 v7, v4, 0x1a

    add-int/lit8 v8, v5, 0x3c

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_92

    .line 4401
    :cond_f4
    iput v11, p0, Landroid/webkit/WebView;->iAlpha:I

    .line 4403
    const-string/jumbo v6, "webview"

    const-string v6, "drawSingleCursorHandler invalida() and  draw again   "

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4408
    iput-boolean v12, p0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    goto/16 :goto_35
.end method

.method private drawWebSelectionControl(Landroid/graphics/Canvas;Z)V
    .registers 12
    .parameter "canvas"
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    .line 4722
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_28

    .line 4723
    const/4 v8, 0x1

    .line 4725
    .local v8, bDisaplayController:Z
    iget v7, p0, Landroid/webkit/WebView;->mController:I

    .line 4726
    .local v7, nController:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    if-ne v1, v0, :cond_11

    .line 4727
    const/4 v8, 0x0

    .line 4729
    :cond_11
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v6, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 4733
    .end local v7           #nController:I
    .end local v8           #bDisaplayController:Z
    :cond_28
    return-void
.end method

.method public static enablePlatformNotifications()V
    .registers 0

    .prologue
    .line 1964
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1965
    return-void
.end method

.method private extendScroll(I)Z
    .registers 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 2475
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 2476
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 2477
    .local v1, newY:I
    if-ne v1, v0, :cond_11

    move v2, v3

    .line 2480
    :goto_10
    return v2

    .line 2478
    :cond_11
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2479
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 2480
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "addr"

    .prologue
    .line 3781
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3807
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;
    .registers 8
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"

    .prologue
    .line 11169
    new-instance v0, Landroid/webkit/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CopyParams;-><init>()V

    .line 11170
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p1, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    .line 11171
    iput p2, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    .line 11172
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    .line 11173
    iput-boolean p4, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    .line 11174
    iput p5, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    .line 11175
    iget v1, p0, Landroid/webkit/WebView;->mController:I

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    .line 11176
    const/4 v1, -0x1

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 11177
    return-object v0
.end method

.method private getCopyParams(IIZZFI)Landroid/webkit/WebViewCore$CopyParams;
    .registers 8
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"
    .parameter "granularity"

    .prologue
    .line 11188
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v0

    .line 11190
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p6, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 11191
    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4317
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .registers 4

    .prologue
    .line 10992
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_f

    .line 10993
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 11000
    .local v1, width:I
    :goto_a
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 10995
    .end local v1           #width:I
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10996
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10997
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_a
.end method

.method private getScaledMaxYScroll()I
    .registers 5

    .prologue
    .line 11005
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_13

    .line 11006
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 11015
    .local v0, height:I
    :goto_a
    int-to-float v2, v0

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 11008
    .end local v0           #height:I
    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 11009
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11010
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_a
.end method

.method private getSelectionDirection(II)V
    .registers 7
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 11307
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 11309
    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/WebView;->getSelectionType(IIZ)I

    move-result v0

    .line 11311
    .local v0, nController:I
    packed-switch v0, :pswitch_data_34

    .line 11323
    :cond_b
    :goto_b
    return-void

    .line 11318
    :pswitch_c
    iput v0, p0, Landroid/webkit/WebView;->mController:I

    .line 11319
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 11320
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v1, :cond_b

    .line 11321
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectionDirection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selection controller has been selected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 11311
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private getSelectionExtendPoint(II)Landroid/graphics/Point;
    .registers 11
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 11333
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 11334
    .local v4, value:Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 11335
    .local v1, deltaX:I
    const/4 v2, 0x0

    .line 11336
    .local v2, deltaY:I
    const/4 v0, 0x0

    .line 11338
    .local v0, ControlerLength:I
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v5, :cond_10

    .line 11339
    const/4 v5, 0x0

    .line 11409
    :goto_f
    return-object v5

    .line 11341
    :cond_10
    iput p1, v4, Landroid/graphics/Point;->x:I

    .line 11342
    iput p2, v4, Landroid/graphics/Point;->y:I

    .line 11343
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 11345
    .local v3, selectRect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getControllerHeight()I

    move-result v0

    .line 11346
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-eq v6, v5, :cond_2a

    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v7, v5, :cond_2d

    .line 11347
    :cond_2a
    iget v5, p0, Landroid/webkit/WebView;->mHandleTouchRevision:I

    add-int/2addr v0, v5

    .line 11350
    :cond_2d
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v6, v5, :cond_a5

    .line 11351
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v5

    if-nez v5, :cond_88

    .line 11352
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, p2

    .line 11353
    if-le v2, v0, :cond_7a

    .line 11354
    add-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 11404
    :cond_48
    :goto_48
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_78

    .line 11405
    const-string v5, "getSelectionExtendPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Org Value X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Y "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Modify Value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    move-object v5, v4

    .line 11409
    goto :goto_f

    .line 11355
    :cond_7a
    if-lez v2, :cond_48

    if-gt v2, v0, :cond_48

    .line 11356
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_48

    .line 11360
    :cond_88
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 11361
    if-le v2, v0, :cond_97

    .line 11362
    sub-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_48

    .line 11363
    :cond_97
    if-lez v2, :cond_48

    if-gt v2, v0, :cond_48

    .line 11364
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_48

    .line 11368
    :cond_a5
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v7, v5, :cond_ea

    .line 11369
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v5

    if-nez v5, :cond_cb

    .line 11370
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 11371
    if-le v2, v0, :cond_c0

    .line 11372
    sub-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_48

    .line 11373
    :cond_c0
    if-lez v2, :cond_48

    if-gt v2, v0, :cond_48

    .line 11374
    sub-int v5, p2, v2

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_48

    .line 11378
    :cond_cb
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, p2

    .line 11379
    if-le v2, v0, :cond_db

    .line 11380
    add-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_48

    .line 11381
    :cond_db
    if-lez v2, :cond_48

    if-gt v2, v0, :cond_48

    .line 11382
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_48

    .line 11387
    :cond_ea
    const/4 v5, 0x5

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-eq v5, v6, :cond_f4

    const/4 v5, 0x6

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-ne v5, v6, :cond_10c

    .line 11390
    :cond_f4
    if-lez p1, :cond_100

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ge p1, v5, :cond_100

    .line 11391
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_48

    .line 11392
    :cond_100
    if-lez p1, :cond_48

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-le p1, v5, :cond_48

    .line 11393
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_48

    .line 11395
    :cond_10c
    const/4 v5, 0x3

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-eq v5, v6, :cond_116

    const/4 v5, 0x4

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-ne v5, v6, :cond_48

    .line 11398
    :cond_116
    if-lez p2, :cond_122

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ge p2, v5, :cond_122

    .line 11399
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_48

    .line 11400
    :cond_122
    if-lez p2, :cond_48

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v5, :cond_48

    .line 11401
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_48
.end method

.method private getViewHeightWithTitle()I
    .registers 3

    .prologue
    .line 1852
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1853
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_13

    .line 1854
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1856
    :cond_13
    return v0
.end method

.method private goBackOrForward(IZ)V
    .registers 6
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 2465
    if-eqz p1, :cond_12

    .line 2466
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2468
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2469
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_13

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2472
    :cond_12
    return-void

    .line 2469
    :cond_13
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private hideCursor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11977
    invoke-direct {p0}, Landroid/webkit/WebView;->isPinchZoomListenerEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11982
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 11984
    :try_start_a
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    .line 11986
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 11991
    :goto_f
    return-void

    .line 11986
    :catchall_10
    move-exception v0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    throw v0

    .line 11989
    :cond_14
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    goto :goto_f
.end method

.method private hideSoftKeyboard()V
    .registers 4

    .prologue
    .line 5072
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5075
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5076
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .registers 8
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const-string/jumbo v4, "webview"

    const-string v3, ", "

    .line 7084
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v1, :cond_71

    .line 7085
    const-string/jumbo v1, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeFocusIsPlugin()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7086
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7087
    .local v0, r:Landroid/graphics/Rect;
    const-string/jumbo v1, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeFocusNodeBounds()=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7090
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_71
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x1

    :goto_82
    return v1

    :cond_83
    const/4 v1, 0x0

    goto :goto_82
.end method

.method private inEditingMode()Z
    .registers 2

    .prologue
    .line 2564
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private inFullScreenMode()Z
    .registers 2

    .prologue
    .line 7104
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1642
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1643
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1644
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1645
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1646
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1648
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1649
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1650
    .local v2, slop:I
    iput v2, p0, Landroid/webkit/WebView;->mTouchSlop:I

    .line 1651
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1652
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 1653
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1654
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1655
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1658
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1660
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1661
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1662
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1663
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1664
    iput v1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1665
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1666
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1667
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1668
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1669
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1670
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1671
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1673
    new-instance v3, Landroid/webkit/WebClipboard;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/webkit/WebClipboard;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 1674
    iget-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->initWebClipboard()V

    .line 1676
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 2955
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 2956
    return-void
.end method

.method private isPinchZoomListenerEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 11972
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 11973
    .local v0, l:Landroid/webkit/OnPinchZoomListener;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z
    .registers 8
    .parameter "view"

    .prologue
    .line 8811
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 8812
    .local v2, viewWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    .line 8813
    .local v1, viewHeight:I
    int-to-float v3, v2

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 8815
    .local v0, scale:F
    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5e

    .line 8816
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8820
    :cond_1e
    :goto_1e
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_67

    .line 8821
    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-lt v3, v4, :cond_67

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_67

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-lt v3, v4, :cond_67

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v1

    if-gt v3, v4, :cond_67

    .line 8827
    const/4 v3, 0x1

    .line 8830
    :goto_5d
    return v3

    .line 8817
    :cond_5e
    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1e

    .line 8818
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_1e

    .line 8830
    :cond_67
    const/4 v3, 0x0

    goto :goto_5d
.end method

.method private keyCodeToSoundsEffect(I)I
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 8243
    packed-switch p1, :pswitch_data_14

    .line 8253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8245
    :pswitch_b
    const/4 v0, 0x2

    .line 8251
    :goto_c
    return v0

    .line 8247
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_c

    .line 8249
    :pswitch_f
    const/4 v0, 0x4

    goto :goto_c

    .line 8251
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_c

    .line 8243
    nop

    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_b
        :pswitch_f
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method private letPluginHandleNavKey(IJZ)V
    .registers 18
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"

    .prologue
    .line 11032
    if-eqz p4, :cond_27

    .line 11033
    const/4 v5, 0x0

    .line 11034
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 11035
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 11040
    :goto_c
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_14
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v8, v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 11045
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11046
    return-void

    .line 11037
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_27
    const/4 v5, 0x1

    .line 11038
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_c

    .line 11040
    :cond_2b
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawExtras(Landroid/graphics/Canvas;I)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations()Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsReadonlyTextInput()Z
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextSize()I
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBlockLeftEdge(IIF)I
.end method

.method private native nativeGetClosestWordPosition(II)Landroid/graphics/Point;
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeResetSelection()V
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetRootLayer(I)V
.end method

.method private native nativeSetSelectionPointer(ZFII)V
.end method

.method private native nativeSetSelectionRegion(Z)V
.end method

.method private native nativeStartSelection(II)Z
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .registers 21
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 11051
    iget v11, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v11, :cond_6

    .line 11052
    const/4 v11, 0x0

    .line 11100
    :goto_5
    return v11

    .line 11054
    :cond_6
    move-wide/from16 v0, p4

    move-object v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 11055
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v11

    iput-object v11, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 11056
    invoke-direct/range {p0 .. p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v11

    if-nez v11, :cond_57

    const/4 v11, 0x1

    move v4, v11

    .line 11058
    .local v4, keyHandled:Z
    :goto_19
    sget-boolean v11, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v11, :cond_4f

    .line 11059
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "navHandledKey mLastCursorBounds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mLastCursorTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " handled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11063
    :cond_4f
    if-eqz v4, :cond_55

    iget-boolean v11, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v11, :cond_5a

    :cond_55
    move v11, v4

    .line 11064
    goto :goto_5

    .line 11056
    .end local v4           #keyHandled:Z
    :cond_57
    const/4 v11, 0x0

    move v4, v11

    goto :goto_19

    .line 11066
    .restart local v4       #keyHandled:Z
    :cond_5a
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 11067
    .local v3, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_66

    move v11, v4

    goto :goto_5

    .line 11068
    :cond_66
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 11069
    .local v9, viewCursorRingBounds:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 11070
    .local v10, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v10}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11071
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11072
    .local v8, outset:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v6, v11, 0x2

    .line 11073
    .local v6, maxXScroll:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v7, v11, 0x2

    .line 11074
    .local v7, maxYScroll:I
    neg-int v11, v6

    neg-int v12, v7

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 11075
    invoke-static {v8, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-nez v11, :cond_91

    move v11, v4

    .line 11076
    goto/16 :goto_5

    .line 11079
    :cond_91
    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 11081
    .local v5, maxH:I
    if-lez v5, :cond_ad

    .line 11082
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v5, v11, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 11090
    :cond_a2
    :goto_a2
    iget-object v11, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c0

    move v11, v4

    goto/16 :goto_5

    .line 11084
    :cond_ad
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    neg-int v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 11086
    if-gez v5, :cond_a2

    .line 11087
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v5, v11, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_a2

    .line 11091
    :cond_c0
    iget-object v11, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cb

    move v11, v4

    .line 11092
    goto/16 :goto_5

    .line 11094
    :cond_cb
    sget-boolean v11, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v11, :cond_e9

    .line 11095
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "navHandledKey contentCursorRingBounds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11098
    :cond_e9
    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 11099
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v11, v4

    .line 11100
    goto/16 :goto_5
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 9376
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 9377
    return-void
.end method

.method private pictureReady()Z
    .registers 2

    .prologue
    .line 7108
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v0

    return v0
.end method

.method private static pinLoc(III)I
    .registers 4
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2770
    if-ge p2, p1, :cond_4

    .line 2772
    const/4 p0, 0x0

    .line 2783
    :cond_3
    :goto_3
    return p0

    .line 2774
    :cond_4
    if-gez p0, :cond_8

    .line 2775
    const/4 p0, 0x0

    goto :goto_3

    .line 2777
    :cond_8
    add-int v0, p0, p1

    if-le v0, p2, :cond_3

    .line 2778
    sub-int p0, p2, p1

    .line 2780
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    goto :goto_3
.end method

.method private pinLocX(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 2788
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_6

    move v0, p1

    .line 2789
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_5
.end method

.method private pinLocY(I)I
    .registers 5
    .parameter "y"

    .prologue
    .line 2794
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_6

    move v0, p1

    .line 2795
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_5
.end method

.method private pinScrollBy(IIZI)Z
    .registers 7
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3926
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3931
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3932
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 3933
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v3, p1, v0

    .line 3934
    .local v3, dx:I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, p2, v0

    .line 3936
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_16

    .line 3937
    const/4 v0, 0x0

    .line 3949
    :goto_15
    return v0

    .line 3939
    :cond_16
    if-eqz p3, :cond_37

    .line 3941
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-lez p4, :cond_32

    move v5, p4

    :goto_21
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3943
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 3944
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3949
    :goto_30
    const/4 v0, 0x1

    goto :goto_15

    .line 3941
    :cond_32
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_21

    .line 3946
    :cond_37
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3947
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_30
.end method

.method private prepareForAdaptiveZoom()V
    .registers 8

    .prologue
    .line 9001
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v4

    if-nez v4, :cond_d

    .line 9024
    :goto_c
    return-void

    .line 9005
    :cond_d
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 9006
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 9008
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    .line 9009
    .local v2, touchX:I
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    .line 9011
    .local v3, touchY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 9014
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 9016
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 9018
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_5c

    .line 9019
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareForAdaptiveZoom touchX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9022
    :cond_5c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 9023
    .local v0, pt:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xbb

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_c
.end method

.method private recordNewContentSize(IIZ)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 2970
    or-int v4, p1, p2

    if-nez v4, :cond_5

    .line 3027
    :goto_4
    return-void

    .line 2974
    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_63

    iget-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-eqz v4, :cond_63

    .line 2984
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v4, p1, :cond_63

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-ge p2, v4, :cond_63

    .line 2985
    if-lez p2, :cond_63

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    const v5, 0x3f99999a

    cmpg-float v4, v4, v5

    if-gez v4, :cond_63

    .line 2986
    int-to-float v4, p2

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 2987
    .local v0, newHeightInPixels:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 2994
    .local v3, viewPortHeight:I
    sub-int v4, v0, v3

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_63

    .line 2995
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "override mContentHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    move p2, v0

    .line 3003
    .end local v0           #newHeightInPixels:I
    .end local v3           #viewPortHeight:I
    :cond_63
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v4, p1, :cond_6b

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v4, p2, :cond_bc

    .line 3005
    :cond_6b
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 3006
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 3009
    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v4, :cond_bc

    .line 3011
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 3012
    .local v1, oldX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3013
    .local v2, oldY:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v4

    iput v4, p0, Landroid/view/View;->mScrollX:I

    .line 3014
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v4

    iput v4, p0, Landroid/view/View;->mScrollY:I

    .line 3015
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-ne v1, v4, :cond_8f

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v4, :cond_96

    .line 3016
    :cond_8f
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v4, v5, v1, v2}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 3018
    :cond_96
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_bc

    .line 3021
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 3022
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 3026
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    :cond_bc
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto/16 :goto_4
.end method

.method private requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    .registers 24
    .parameter "elementRect"
    .parameter "immediate"

    .prologue
    .line 9523
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 9526
    .local v8, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9536
    .local v5, content:Landroid/graphics/Rect;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v12

    .line 9537
    .local v12, screenTop:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v9

    .line 9538
    .local v9, screenBottom:I
    sub-int v6, v9, v12

    .line 9539
    .local v6, height:I
    const/4 v14, 0x0

    .line 9541
    .local v14, scrollYDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v9

    if-le v0, v1, :cond_fb

    .line 9542
    div-int/lit8 v7, v6, 0x3

    .line 9543
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    mul-int/lit8 v17, v7, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_f1

    .line 9546
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    .line 9556
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_98
    :goto_98
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 9557
    .local v10, screenLeft:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v11

    .line 9558
    .local v11, screenRight:I
    sub-int v15, v11, v10

    .line 9559
    .local v15, width:I
    const/4 v13, 0x0

    .line 9561
    .local v13, scrollXDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-le v0, v1, :cond_117

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-le v0, v1, :cond_117

    .line 9562
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    move v1, v15

    if-le v0, v1, :cond_10d

    .line 9563
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v16, v10

    add-int v13, v13, v16

    .line 9576
    :cond_db
    :goto_db
    or-int v16, v14, v13

    if-eqz v16, :cond_12e

    .line 9577
    if-nez p2, :cond_12b

    const/16 v16, 0x1

    :goto_e3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 9581
    :goto_f0
    return-void

    .line 9550
    .end local v10           #screenLeft:I
    .end local v11           #screenRight:I
    .end local v13           #scrollXDelta:I
    .end local v15           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_f1
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v17, v12, v7

    sub-int v14, v16, v17

    goto :goto_98

    .line 9552
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_fb
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_98

    .line 9553
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    goto :goto_98

    .line 9565
    .restart local v10       #screenLeft:I
    .restart local v11       #screenRight:I
    .restart local v13       #scrollXDelta:I
    .restart local v15       #width:I
    :cond_10d
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v11

    add-int v13, v13, v16

    goto :goto_db

    .line 9567
    :cond_117
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_db

    .line 9568
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    sub-int v13, v13, v16

    goto :goto_db

    .line 9577
    :cond_12b
    const/16 v16, 0x0

    goto :goto_e3

    .line 9579
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_f0
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .registers 13
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const-string v9, "currentWidth"

    const-string v8, "currentHeight"

    .line 2113
    const-string/jumbo v5, "scrollX"

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2114
    .local v3, sx:I
    const-string/jumbo v5, "scrollY"

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2115
    .local v4, sy:I
    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 2116
    .local v2, scale:F
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2117
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2118
    iput v3, p0, Landroid/view/View;->mScrollX:I

    .line 2119
    iput v4, p0, Landroid/view/View;->mScrollY:I

    .line 2121
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 2122
    .local v0, displayHeight:I
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 2124
    .local v1, displayWidth:I
    if-le v0, v1, :cond_a6

    .line 2125
    const-string v5, "currentHeight"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "currentWidth"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_8d

    .line 2126
    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    mul-float/2addr v2, v5

    .line 2127
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2128
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2148
    :goto_71
    iput v2, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2149
    div-float v5, v7, v2

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2150
    const-string/jumbo v5, "textwrapScale"

    invoke-virtual {p2, v5, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2151
    const-string/jumbo v5, "overview"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2152
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2153
    return-void

    .line 2130
    :cond_8d
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2131
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    goto :goto_71

    .line 2134
    :cond_a6
    const-string v5, "currentHeight"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "currentWidth"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_d1

    .line 2135
    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    mul-float/2addr v2, v5

    .line 2136
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2137
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    goto :goto_71

    .line 2139
    :cond_d1
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2140
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    goto :goto_71
.end method

.method private scaleTrackballX(FI)I
    .registers 7
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 8215
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 8216
    .local v1, xMove:I
    move v0, v1

    .line 8217
    .local v0, nextXMove:I
    if-lez v1, :cond_14

    .line 8218
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_11

    .line 8219
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 8224
    :cond_11
    :goto_11
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 8225
    return v1

    .line 8221
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_11

    .line 8222
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method private scaleTrackballY(FI)I
    .registers 7
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 8229
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 8230
    .local v1, yMove:I
    move v0, v1

    .line 8231
    .local v0, nextYMove:I
    if-lez v1, :cond_14

    .line 8232
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_11

    .line 8233
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 8238
    :cond_11
    :goto_11
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 8239
    return v1

    .line 8235
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_11

    .line 8236
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method private selectClosestWord(II)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1268
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_54

    .line 1269
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1270
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1272
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1274
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1275
    iput-boolean v7, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 1276
    iput-boolean v7, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 1277
    iput-boolean v7, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1278
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1279
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_54

    .line 1280
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectClosestWord Touch Position content x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_54
    return-void
.end method

.method private sendMotionUp(IIIII)V
    .registers 9
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10976
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 10977
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 10978
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 10979
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 10980
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 10981
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 10982
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10983
    instance-of v1, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_1f

    .line 10985
    check-cast p0, Landroid/webkit/HtmlComposerView;

    .end local p0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewTouchUp()V

    .line 10987
    :cond_1f
    return-void
.end method

.method private sendMouseClick(II)V
    .registers 7
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10950
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbc

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10952
    return-void
.end method

.method private sendMoveFocus(II)V
    .registers 7
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10937
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10939
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .registers 8
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10943
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10945
    return-void
.end method

.method private sendMoveMouseIfLatest(Z)V
    .registers 5
    .parameter "removeFocus"

    .prologue
    .line 10966
    if-eqz p1, :cond_6

    .line 10967
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 10969
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x88

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10971
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 3196
    iget-boolean v3, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3227
    :goto_6
    return-object v3

    .line 3198
    :cond_7
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v3, :cond_e

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    goto :goto_6

    .line 3200
    :cond_e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3201
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3203
    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 3204
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 3205
    .local v1, pos:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x6b

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3207
    iput-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3209
    .end local v1           #pos:Landroid/graphics/Point;
    :cond_35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3210
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 3212
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_8c

    .line 3213
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendOurVisibleRect=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_8c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3221
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3223
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 3224
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    :cond_a5
    move-object v3, v2

    .line 3227
    goto/16 :goto_6
.end method

.method private sendViewSizeZoom()Z
    .registers 2

    .prologue
    .line 3314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    move-result v0

    return v0
.end method

.method private sendViewSizeZoom(Z)Z
    .registers 10
    .parameter "needAnchorDiff"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3317
    iget-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v4, :cond_a

    if-nez p1, :cond_a

    move v4, v6

    .line 3354
    :goto_9
    return v4

    .line 3319
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 3320
    .local v3, viewWidth:I
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3321
    .local v2, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3330
    .local v1, newHeight:I
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v2, v4, :cond_2b

    iget-boolean v4, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v4, :cond_2b

    .line 3331
    const/4 v1, 0x0

    .line 3334
    :cond_2b
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v2, v4, :cond_33

    iget v4, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v1, v4, :cond_85

    .line 3335
    :cond_33
    new-instance v0, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v0}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3336
    .local v0, data:Landroid/webkit/WebView$ViewSizeData;
    iput v2, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3337
    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3338
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3339
    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3340
    iget v4, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_83

    iget-boolean v4, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v4, :cond_83

    move v4, v7

    :goto_56
    iput-boolean v4, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3341
    iget v4, p0, Landroid/webkit/WebView;->mAnchorX:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3342
    iget v4, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 3344
    iput-boolean p1, v0, Landroid/webkit/WebView$ViewSizeData;->mNeedAnchorDiff:Z

    .line 3345
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportLeft:I

    .line 3346
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportTop:I

    .line 3348
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x69

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3349
    iput v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 3350
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3351
    iput v6, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v6, p0, Landroid/webkit/WebView;->mAnchorX:I

    move v4, v7

    .line 3352
    goto :goto_9

    :cond_83
    move v4, v6

    .line 3340
    goto :goto_56

    .end local v0           #data:Landroid/webkit/WebView$ViewSizeData;
    :cond_85
    move v4, v6

    .line 3354
    goto :goto_9
.end method

.method private setActive(Z)V
    .registers 6
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5693
    if-eqz p1, :cond_43

    .line 5694
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5695
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_37

    .line 5696
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5697
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    :goto_19
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_33

    .line 5706
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5707
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 5708
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5709
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5751
    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5752
    return-void

    .line 5703
    :cond_37
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_19

    .line 5712
    :cond_3a
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_33

    .line 5720
    :cond_40
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_33

    .line 5726
    :cond_43
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_63

    .line 5738
    :cond_5d
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-nez v0, :cond_63

    .line 5739
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5742
    :cond_63
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 5743
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5744
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5745
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5746
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_77

    .line 5747
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5749
    :cond_77
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    goto :goto_33
.end method

.method private setContentScrollBy(IIZ)Z
    .registers 7
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 3955
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_7

    move v1, v2

    .line 3979
    :goto_6
    return v1

    .line 3962
    :cond_7
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 3963
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 3964
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_31

    .line 3966
    if-eqz p2, :cond_23

    .line 3967
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3968
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3969
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3970
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 3977
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_23
    if-nez p2, :cond_2f

    if-eqz p1, :cond_2f

    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_6

    :cond_2f
    move v1, v2

    goto :goto_6

    .line 3979
    :cond_31
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_6
.end method

.method private setContentScrollTo(II)Z
    .registers 9
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4025
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_8

    move v2, v4

    .line 4079
    :goto_7
    return v2

    .line 4035
    :cond_8
    or-int v2, p1, p2

    if-nez v2, :cond_30

    .line 4039
    const/4 v0, 0x0

    .line 4040
    .local v0, vx:I
    const/4 v1, 0x0

    .line 4052
    .local v1, vy:I
    :goto_e
    if-nez p1, :cond_3f

    if-ne p2, v5, :cond_3f

    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-nez v2, :cond_3f

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-nez v2, :cond_3f

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_3f

    .line 4055
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_39

    .line 4059
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 4060
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    :goto_2e
    move v2, v4

    .line 4066
    goto :goto_7

    .line 4042
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_30
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4043
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_e

    .line 4062
    :cond_39
    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_2e

    .line 4069
    :cond_3f
    sput-boolean v4, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    .line 4071
    invoke-direct {p0, v0, v1, v4, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 4075
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-eq v2, v0, :cond_4a

    if-gez p1, :cond_54

    :cond_4a
    sget-boolean v2, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    if-nez v2, :cond_56

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v1, :cond_56

    if-ltz p2, :cond_56

    :cond_54
    move v2, v5

    .line 4077
    goto :goto_7

    :cond_56
    move v2, v4

    .line 4079
    goto :goto_7
.end method

.method private setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 11
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "zoomInfo"

    .prologue
    .line 3032
    sget-object v4, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 3033
    return-void
.end method

.method private setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 31
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "mode"
    .parameter "zoomInfo"

    .prologue
    .line 3043
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextWrapScale:F

    move/from16 v18, v0

    .line 3044
    .local v18, oldTextWrapScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move v15, v0

    .line 3045
    .local v15, oldLastHeightSent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    .line 3046
    .local v10, oldActualScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v14, v0

    .line 3047
    .local v14, oldInvActualScale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v11, v0

    .line 3048
    .local v11, oldAdaptiveZoom:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    move v12, v0

    .line 3049
    .local v12, oldAdaptiveZoomAnimationLength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    .line 3050
    .local v16, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    .line 3051
    .local v17, oldScrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mInZoomOverview:Z

    move v13, v0

    .line 3052
    .local v13, oldInZoomOverview:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v19, v0

    .line 3053
    .local v19, oldZoomCenterX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v20, v0

    .line 3056
    .local v20, oldZoomCenterY:F
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_46

    .line 3057
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 3059
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_12e

    .line 3060
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 p1, v0

    .line 3062
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDefaultScale:F

    move v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_64

    .line 3063
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3076
    :cond_64
    :goto_64
    if-eqz p2, :cond_72

    .line 3077
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 3079
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3081
    :cond_72
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_7d

    if-eqz p3, :cond_bb

    .line 3082
    :cond_7d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move v3, v0

    if-eqz v3, :cond_162

    .line 3085
    if-nez p5, :cond_a7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_a7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v3, v0

    if-nez v3, :cond_a7

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 3088
    :cond_a7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3089
    const/high16 v3, 0x3f80

    div-float v3, v3, p1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3090
    if-nez p5, :cond_bb

    .line 3091
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 3165
    :cond_bb
    :goto_bb
    if-eqz p5, :cond_12d

    .line 3167
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    .line 3168
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    .line 3169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    .line 3170
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    .line 3171
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    .line 3174
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 3175
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3176
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3177
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3178
    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 3179
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 3180
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 3181
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 3182
    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3183
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3184
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3189
    :cond_12d
    return-void

    .line 3064
    :cond_12e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_13f

    .line 3065
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 p1, v0

    goto/16 :goto_64

    .line 3066
    :cond_13f
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_154

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-nez v3, :cond_154

    .line 3070
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 p1, v0

    goto/16 :goto_64

    .line 3071
    :cond_154
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getRegisterTiltListener()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 3073
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    goto/16 :goto_64

    .line 3096
    :cond_162
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v6, v0

    .line 3097
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    .line 3098
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v3, v0

    mul-float v21, p1, v3

    .line 3099
    .local v21, ratio:F
    int-to-float v3, v6

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v5, v0

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    .line 3100
    .local v22, sx:F
    int-to-float v3, v7

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float v23, v3, v4

    .line 3104
    .local v23, sy:F
    if-nez p5, :cond_1ba

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_1ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v3, v0

    if-nez v3, :cond_1ba

    .line 3105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 3107
    :cond_1ba
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3108
    const/high16 v3, 0x3f80

    div-float v3, v3, p1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3111
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 3113
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    .line 3115
    .local v24, titleHeight:I
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_283

    .line 3116
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 3117
    int-to-float v3, v6

    mul-float v22, v21, v3

    .line 3119
    move/from16 v0, v24

    move v1, v7

    if-ge v0, v1, :cond_26a

    .line 3120
    move/from16 v0, v24

    int-to-float v0, v0

    move v3, v0

    sub-int v4, v7, v24

    int-to-float v4, v4

    mul-float v4, v4, v21

    add-float v23, v3, v4

    .line 3135
    :goto_1f3
    if-nez p5, :cond_1fd

    .line 3136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 3141
    :cond_1fd
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 3142
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 3145
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_2a8

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-eqz v3, :cond_236

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v4

    if-eq v3, v4, :cond_2a8

    :cond_236
    const/4 v3, 0x1

    move v9, v3

    .line 3147
    .local v9, needAnchorDiff:Z
    :goto_238
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-ne v6, v3, :cond_246

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-eq v7, v3, :cond_2ae

    .line 3148
    :cond_246
    if-nez p5, :cond_260

    .line 3149
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_2ab

    const/4 v3, 0x1

    move v8, v3

    :goto_25b
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->onScrollChangedAnchorDiff(IIIIZ)V

    .line 3158
    :cond_260
    :goto_260
    if-nez p5, :cond_bb

    .line 3160
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_bb

    .line 3122
    .end local v9           #needAnchorDiff:Z
    :cond_26a
    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    goto :goto_1f3

    .line 3125
    :cond_26f
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    .line 3126
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    goto/16 :goto_1f3

    .line 3129
    :cond_283
    int-to-float v3, v6

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v5, v0

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    .line 3130
    int-to-float v3, v7

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v5, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float v23, v3, v4

    goto/16 :goto_1f3

    .line 3145
    :cond_2a8
    const/4 v3, 0x0

    move v9, v3

    goto :goto_238

    .line 3149
    .restart local v9       #needAnchorDiff:Z
    :cond_2ab
    const/4 v3, 0x0

    move v8, v3

    goto :goto_25b

    .line 3155
    :cond_2ae
    if-nez p5, :cond_260

    .line 3156
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_260
.end method

.method private setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 26
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "zoomInfo"

    .prologue
    .line 9235
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextWrapScale:F

    move v10, v0

    .line 9236
    .local v10, oldTextWrapScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move v7, v0

    .line 9237
    .local v7, oldLastHeightSent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    .line 9238
    .local v3, oldActualScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v6, v0

    .line 9239
    .local v6, oldInvActualScale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v4, v0

    .line 9240
    .local v4, oldAdaptiveZoom:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    move v5, v0

    .line 9241
    .local v5, oldAdaptiveZoomAnimationLength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v8, v0

    .line 9242
    .local v8, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v9, v0

    .line 9245
    .local v9, oldScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v17, v0

    cmpg-float v17, p1, v17

    if-gez v17, :cond_15b

    .line 9246
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 p1, v0

    .line 9250
    :cond_38
    :goto_38
    sget-boolean v17, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v17, :cond_88

    .line 9251
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setNewZoomScaleEx scale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMinZoomScale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMaxZoomScale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", zoomInfo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9254
    :cond_88
    if-eqz p2, :cond_98

    .line 9255
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 9257
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 9259
    :cond_98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-nez v17, :cond_a4

    if-eqz p3, :cond_ea

    .line 9260
    :cond_a4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16d

    .line 9263
    if-nez p4, :cond_d5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-eqz v17, :cond_d5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_d5

    .line 9264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 9266
    :cond_d5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 9267
    const/high16 v17, 0x3f80

    div-float v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 9269
    if-nez p4, :cond_ea

    .line 9270
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 9321
    :cond_ea
    :goto_ea
    if-eqz p4, :cond_15a

    .line 9323
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    .line 9324
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    .line 9325
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    .line 9326
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    .line 9327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    .line 9330
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 9331
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 9332
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 9333
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 9334
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 9335
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 9336
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 9337
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 9340
    :cond_15a
    return-void

    .line 9247
    :cond_15b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-lez v17, :cond_38

    .line 9248
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 p1, v0

    goto/16 :goto_38

    .line 9275
    :cond_16d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v11, v0

    .line 9276
    .local v11, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v12, v0

    .line 9277
    .local v12, oldY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v17, v0

    mul-float v13, p1, v17

    .line 9278
    .local v13, ratio:F
    sget-boolean v17, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v17, :cond_1b0

    .line 9279
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setNewZoomScale ratio = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mInvActualScale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9284
    :cond_1b0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 9285
    .local v16, titleHeight:F
    move v0, v11

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v18, v0

    mul-float v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    add-float v14, v17, v18

    .line 9286
    .local v14, sx:F
    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    mul-float v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v16

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    add-float v15, v17, v18

    .line 9289
    .local v15, sy:F
    if-nez p4, :cond_224

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-eqz v17, :cond_224

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_224

    .line 9290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 9292
    :cond_224
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 9293
    const/high16 v17, 0x3f80

    div-float v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 9295
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 9296
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 9299
    if-nez p4, :cond_24f

    .line 9300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 9305
    :cond_24f
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 9306
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 9307
    sget-boolean v17, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v17, :cond_2a7

    .line 9308
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setNewZoomScale mScrollX = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mScrollY = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9312
    :cond_2a7
    if-nez p4, :cond_ea

    .line 9314
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 9315
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto/16 :goto_ea
.end method

.method private setSmartTextSelection(Z)V
    .registers 2
    .parameter "smartSeelction"

    .prologue
    .line 1453
    iput-boolean p1, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 1454
    return-void
.end method

.method private showMagnifier(IIZ)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "isNew"

    .prologue
    const/4 v5, 0x1

    .line 8028
    invoke-virtual {p0, p1, p2, v5}, Landroid/webkit/WebView;->getSelectionType(IIZ)I

    move-result v0

    .line 8030
    .local v0, handleType:I
    if-nez p3, :cond_a

    .line 8031
    packed-switch v0, :pswitch_data_72

    .line 8057
    :cond_a
    :goto_a
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_6b

    .line 8058
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/webkit/WebMagnifier;->show(IILandroid/graphics/Rect;F)V

    .line 8061
    :goto_19
    return-void

    .line 8033
    :pswitch_1a
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_a

    .line 8034
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8035
    .local v2, rtStart:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 8036
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 8037
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iput v5, v3, Landroid/webkit/WebMagnifier;->mMode:I

    goto :goto_a

    .line 8042
    .end local v2           #rtStart:Landroid/graphics/Rect;
    :pswitch_42
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_a

    .line 8043
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8044
    .local v1, rtEnd:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 8045
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 8046
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    const/4 v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mMode:I

    goto :goto_a

    .line 8060
    .end local v1           #rtEnd:Landroid/graphics/Rect;
    :cond_6b
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    goto :goto_19

    .line 8031
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_42
    .end packed-switch
.end method

.method private static sign(F)I
    .registers 3
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 6566
    cmpl-float v0, p0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    cmpg-float v0, p0, v1

    if-gez v0, :cond_d

    const/4 v0, -0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .registers 22
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11474
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "singleCursorHandlerTouchEvent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11476
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 11477
    .local v2, cursurRect:Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 11478
    .local v8, xCursorPosition:I
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 11479
    .local v11, yCursorPosition:I
    const/16 v12, 0x50

    sub-int v6, v8, v12

    .line 11480
    .local v6, x1:I
    add-int/lit8 v7, v8, 0x50

    .line 11481
    .local v7, x2:I
    const/4 v12, 0x0

    sub-int v9, v11, v12

    .line 11482
    .local v9, y1:I
    add-int/lit8 v10, v11, 0x3c

    .line 11484
    .local v10, y2:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 11485
    .local v5, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v5}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11487
    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1080385

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 11488
    .local v4, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 11490
    .local v3, iSCHHeight:I
    add-int v12, v11, v3

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    if-le v12, v13, :cond_9e

    .line 11492
    const/16 v12, 0x50

    sub-int v6, v8, v12

    .line 11493
    add-int/lit8 v7, v8, 0x50

    .line 11494
    iget v11, v2, Landroid/graphics/Rect;->top:I

    .line 11495
    const/16 v12, 0x3c

    sub-int v9, v11, v12

    .line 11496
    add-int/lit8 v10, v11, 0x0

    .line 11499
    :cond_9e
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "singleCursorHandlerTouchEvent  - x1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " y1 =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  x2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " y2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11501
    packed-switch p2, :pswitch_data_122

    .line 11535
    :cond_d9
    :goto_d9
    const/4 v12, 0x0

    :goto_da
    return v12

    .line 11504
    :pswitch_db
    move/from16 v0, p3

    move v1, v6

    if-le v0, v1, :cond_d9

    move/from16 v0, p3

    move v1, v7

    if-ge v0, v1, :cond_d9

    move/from16 v0, p4

    move v1, v9

    if-le v0, v1, :cond_d9

    move/from16 v0, p4

    move v1, v10

    if-ge v0, v1, :cond_d9

    .line 11506
    const/4 v12, 0x1

    goto :goto_da

    .line 11513
    :pswitch_f1
    const/16 v12, 0x28

    sub-int v12, v6, v12

    move/from16 v0, p3

    move v1, v12

    if-le v0, v1, :cond_115

    add-int/lit8 v12, v7, 0x28

    move/from16 v0, p3

    move v1, v12

    if-ge v0, v1, :cond_115

    move/from16 v0, p4

    move v1, v9

    if-le v0, v1, :cond_115

    add-int/lit8 v12, v10, 0x3c

    move/from16 v0, p4

    move v1, v12

    if-ge v0, v1, :cond_115

    .line 11515
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 11516
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 11517
    const/4 v12, 0x1

    goto :goto_da

    .line 11521
    :cond_115
    const-string/jumbo v12, "webview"

    const-string v13, " @@@    singleCursorHandlerTouchEvent   NOT touched on Single Cursor image   @@@"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 11528
    :pswitch_11e
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    goto :goto_d9

    .line 11501
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_db
        :pswitch_11e
        :pswitch_f1
    .end packed-switch
.end method

.method private skipInvalidates()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 11959
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 11967
    :goto_6
    return v0

    .line 11962
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v0

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 11965
    goto :goto_6

    .line 11967
    :cond_1d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private spawnContentScrollTo(II)V
    .registers 7
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 4085
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_5

    .line 4093
    :goto_4
    return-void

    .line 4090
    :cond_5
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4091
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 4092
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_4
.end method

.method private startDrag()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 7878
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7880
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7881
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v2, :cond_10

    .line 7882
    invoke-direct {p0}, Landroid/webkit/WebView;->hideCursor()V

    .line 7884
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 7885
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5a

    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5a

    iget v2, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v2, v4, :cond_3a

    iget v2, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v2, v4, :cond_5a

    .line 7891
    :cond_3a
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 7892
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 7893
    .local v0, count:I
    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v2, :cond_5a

    if-lez v0, :cond_5a

    .line 7894
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 7895
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x1040357

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7901
    .end local v0           #count:I
    :cond_5a
    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v4, :cond_6b

    .line 7903
    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->startDrag()V

    .line 7905
    :cond_6b
    return-void
.end method

.method private startTouch(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 7867
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7868
    iput p2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7869
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7870
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7871
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7872
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    if-eqz v0, :cond_1c

    .line 7873
    new-instance v0, Landroid/webkit/WebView$DragTrackerHandler;

    iget-object v1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/webkit/WebView$DragTrackerHandler;-><init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    .line 7875
    :cond_1c
    return-void
.end method

.method private stopTouch()V
    .registers 2

    .prologue
    .line 7951
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_9

    .line 7952
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 7957
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15

    .line 7958
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7959
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7963
    :cond_15
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2d

    .line 7964
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7965
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7966
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7967
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7969
    :cond_2d
    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .registers 28
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11543
    const/16 v17, 0x0

    .line 11544
    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 11546
    .local v14, eventTime:J
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_6a

    .line 11547
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textSelectionTouchEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11550
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    if-nez v5, :cond_76

    .line 11551
    const/4 v5, 0x0

    .line 11731
    .end local p1
    :goto_75
    return v5

    .line 11552
    .restart local p1
    :cond_76
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move v5, v0

    if-nez v5, :cond_9e

    .line 11554
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v5, v6, :cond_8f

    .line 11555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 11557
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-nez v5, :cond_9c

    .line 11558
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 11560
    :cond_9c
    const/4 v5, 0x0

    goto :goto_75

    .line 11562
    :cond_9e
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_cc

    .line 11563
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xtend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11566
    :cond_cc
    packed-switch p2, :pswitch_data_498

    .end local p1
    :cond_cf
    :goto_cf
    move/from16 v5, v17

    .line 11731
    goto :goto_75

    .line 11568
    .restart local p1
    :pswitch_d2
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_df

    .line 11569
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent:ACTION_DOWN: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11571
    :cond_df
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 11572
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 11573
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionDirection(II)V

    .line 11575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_15e

    .line 11576
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 11577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 11578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11581
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 11582
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 11583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_147

    .line 11584
    move/from16 v0, p5

    float-to-int v0, v0

    move v5, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->showMagnifier(IIZ)V

    .line 11587
    :cond_147
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 11588
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11589
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 11590
    const/16 v17, 0x1

    goto/16 :goto_cf

    .line 11594
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    if-eqz v5, :cond_cf

    .line 11596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_cf

    .line 11604
    :pswitch_177
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_184

    .line 11605
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent ACTION_MOVE: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11607
    :cond_184
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 11609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_cf

    .line 11611
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xtend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26d

    .line 11614
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1cf

    .line 11615
    const-string/jumbo v5, "webview"

    const-string v6, "Action Move after LONG PRESS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11617
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd4

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 11619
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11620
    .local v11, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd4

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11657
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_1f4
    :goto_1f4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_242

    .line 11658
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textSelectionTouchEvent : Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11663
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 11665
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 11666
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebMagnifier;->mMode:I

    if-nez v5, :cond_327

    .line 11668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 11676
    :cond_269
    :goto_269
    const/16 v17, 0x1

    goto/16 :goto_cf

    .line 11623
    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_319

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_319

    .line 11627
    const/16 v16, 0x0

    .line 11628
    .local v16, moveForward:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionExtendPoint(II)Landroid/graphics/Point;

    move-result-object v20

    .line 11630
    .local v20, value:Landroid/graphics/Point;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v12, v0

    .line 11631
    .local v12, currX:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v13, v0

    .line 11632
    .local v13, currY:I
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->IsTextSelectionControlerForward(II)Z

    move-result v16

    .line 11634
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_30f

    .line 11635
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mActionMove:Z

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11638
    .restart local v11       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 11639
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 11640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 11641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11644
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1f4

    .line 11645
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MotionEvent.ACTION_MOVE: ExtendPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f4

    .line 11649
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_30f
    const-string/jumbo v5, "webview"

    const-string v6, "Right Selection Controler never cross left side Controler ."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f4

    .line 11652
    .end local v12           #currX:I
    .end local v13           #currY:I
    .end local v16           #moveForward:Z
    .end local v20           #value:Landroid/graphics/Point;
    :cond_319
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1f4

    .line 11653
    const-string/jumbo v5, "webview"

    const-string v6, "MotionEvent.ACTION_MOVE: mCopyInfo not updated"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f4

    .line 11669
    :cond_327
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v5, v6, :cond_35f

    .line 11670
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11671
    .local v19, rtStart:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_269

    .line 11672
    .end local v19           #rtStart:Landroid/graphics/Rect;
    :cond_35f
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v5, v6, :cond_269

    .line 11673
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11674
    .local v18, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_269

    .line 11682
    .end local v18           #rtEnd:Landroid/graphics/Rect;
    :pswitch_397
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_3a4

    .line 11683
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent ACTION_UP: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11685
    :cond_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 11686
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 11687
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 11688
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_43c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_43c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_43c

    .line 11690
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    move v5, v0

    if-eqz v5, :cond_3e4

    move-object/from16 v0, p0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object/from16 p1, v0

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v5

    if-nez v5, :cond_434

    .line 11691
    :cond_3e4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 11692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11695
    .restart local v11       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd3

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11697
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 11698
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_41c

    .line 11699
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent : Selection Stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11701
    :cond_41c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11703
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11727
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_434
    :goto_434
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mLongPress:Z

    goto/16 :goto_cf

    .line 11706
    .restart local p1
    :cond_43c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_47f

    .line 11708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_469

    .line 11710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11718
    :goto_460
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    .line 11719
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11720
    const/16 v17, 0x1

    goto :goto_434

    .line 11715
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_460

    .line 11724
    :cond_47f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_434

    .line 11566
    :pswitch_data_498
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_397
        :pswitch_177
    .end packed-switch
.end method

.method private updateSelection()V
    .registers 8

    .prologue
    .line 8644
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_5

    .line 8653
    :goto_4
    return-void

    .line 8648
    :cond_5
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8649
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8650
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8652
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .registers 7
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 10440
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v0, :cond_1b

    .line 10443
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 10445
    :cond_1b
    return-void
.end method

.method private updateZoomButtonsEnabled()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1626
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_7

    .line 1639
    :goto_6
    return-void

    .line 1627
    :cond_7
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d

    move v0, v5

    .line 1628
    .local v0, canZoomIn:Z
    :goto_10
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v2, :cond_2f

    move v1, v5

    .line 1629
    .local v1, canZoomOut:Z
    :goto_1d
    if-nez v0, :cond_31

    if-nez v1, :cond_31

    .line 1632
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_2d
    move v0, v4

    .line 1627
    goto :goto_10

    .restart local v0       #canZoomIn:Z
    :cond_2f
    move v1, v4

    .line 1628
    goto :goto_1d

    .line 1636
    .restart local v1       #canZoomOut:Z
    :cond_31
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1637
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_6
.end method

.method private updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .registers 11
    .parameter "restoreState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"
    .parameter "updateZoomOverview"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10870
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4a

    .line 10871
    iget-boolean v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    if-eqz v1, :cond_43

    .line 10872
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_3c

    .line 10873
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10874
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 10875
    if-eqz p4, :cond_2f

    .line 10876
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 10877
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v4

    :goto_2d
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 10901
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2f
    :goto_2f
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_51

    .line 10902
    sget v1, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 10907
    :goto_39
    return-void

    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_3a
    move v1, v3

    .line 10877
    goto :goto_2d

    .line 10884
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_3c
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10885
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_2f

    .line 10888
    :cond_43
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10889
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_2f

    .line 10896
    :cond_4a
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10898
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_2f

    .line 10904
    :cond_51
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_39
.end method

.method private viewInvalidate()V
    .registers 1

    .prologue
    .line 11022
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11023
    return-void
.end method

.method private viewInvalidate(IIII)V
    .registers 12
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2934
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2935
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 2936
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 2940
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .registers 16
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2945
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2946
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 2947
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 2952
    return-void
.end method

.method private viewToContentDimension(IF)F
    .registers 4
    .parameter "d"
    .parameter "scale"

    .prologue
    .line 8474
    int-to-float v0, p1

    div-float/2addr v0, p2

    return v0
.end method

.method private viewToContentX(IF)F
    .registers 4
    .parameter "x"
    .parameter "scale"

    .prologue
    .line 8478
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->viewToContentDimension(IF)F

    move-result v0

    return v0
.end method

.method private viewToContentY(IF)F
    .registers 4
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 8482
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/webkit/WebView;->viewToContentDimension(IF)F

    move-result v0

    return v0
.end method

.method private zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .registers 9
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "zoomInfo"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 8487
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 8489
    .local v0, oldScale:F
    if-nez p3, :cond_f

    .line 8491
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 8492
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 8496
    :cond_f
    iget v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 8497
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 8500
    :cond_1f
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8502
    if-nez p3, :cond_48

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_48

    .line 8504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 8505
    div-float v1, v3, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 8506
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v3, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 8507
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 8508
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8509
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8510
    const/4 v1, 0x1

    .line 8512
    :goto_47
    return v1

    :cond_48
    move v1, v4

    goto :goto_47
.end method

.method private zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .registers 13
    .parameter "scale"
    .parameter "zoomInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const-wide v5, 0x3fa999999999999aL

    .line 9344
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 9345
    .local v0, oldScale:F
    if-nez p2, :cond_15

    .line 9347
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 9348
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 9352
    :cond_15
    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_29

    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_29

    .line 9353
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 9356
    :cond_29
    invoke-direct {p0, p1, v9, v8, p2}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9358
    if-nez p2, :cond_4d

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4d

    .line 9360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 9361
    div-float v1, v7, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 9362
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v7, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 9363
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 9364
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    move v1, v9

    .line 9367
    :goto_4c
    return v1

    :cond_4d
    move v1, v8

    goto :goto_4c
.end method


# virtual methods
.method public AdvanceTextSelectionAll()Z
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v11, "y: "

    const-string/jumbo v10, "webview"

    .line 1291
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_e

    move v0, v8

    .line 1328
    :goto_d
    return v0

    .line 1292
    :cond_e
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v8

    goto :goto_d

    .line 1295
    :cond_16
    invoke-virtual {p0}, Landroid/webkit/WebView;->ClearWebTextSelection()V

    .line 1299
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1300
    invoke-direct {p0, v8, v8}, Landroid/webkit/WebView;->nativeGetClosestWordPosition(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1303
    .local v7, pos:Landroid/graphics/Point;
    const/4 v4, 0x1

    .line 1308
    .local v4, bhaveSelection:Z
    const/4 v4, 0x0

    .line 1309
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_4e

    .line 1310
    const-string/jumbo v0, "webview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvanceTextSelectionAll : closest point x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "y: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_4e
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1319
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1321
    iput-boolean v8, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1322
    iput-boolean v9, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1323
    iput v8, p0, Landroid/webkit/WebView;->mController:I

    .line 1324
    iput-boolean v8, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 1325
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_97

    .line 1326
    const-string/jumbo v0, "webview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectClosestWord closest point x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "y: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    move v0, v9

    .line 1328
    goto/16 :goto_d
.end method

.method public ClearWebTextSelection()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1407
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v2, :cond_3b

    .line 1408
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 1409
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1410
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_3b

    .line 1411
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 1412
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1413
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1415
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_38

    .line 1416
    const-string/jumbo v0, "webview"

    const-string v1, "ClearWebTextSelection() : Clear Text Selection "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_38
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1421
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_3b
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 4249
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4250
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4251
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4252
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4253
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 4293
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4294
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4280
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4281
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 2
    .parameter "watcher"

    .prologue
    .line 6195
    iput-object p1, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    .line 6196
    return-void
.end method

.method public canGoBack()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2396
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2397
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2398
    :try_start_8
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2399
    monitor-exit v0

    move v1, v2

    .line 2401
    :goto_10
    return v1

    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x1

    :goto_18
    monitor-exit v0

    goto :goto_10

    .line 2403
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    move v1, v2

    .line 2401
    goto :goto_18
.end method

.method public canGoBackOrForward(I)Z
    .registers 6
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 2442
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2443
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2444
    :try_start_8
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2445
    monitor-exit v0

    move v2, v3

    .line 2448
    :goto_10
    return v2

    .line 2447
    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 2448
    .local v1, newIndex:I
    if-ltz v1, :cond_25

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_25

    const/4 v2, 0x1

    :goto_20
    monitor-exit v0

    goto :goto_10

    .line 2450
    .end local v1           #newIndex:I
    :catchall_22
    move-exception v2

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v2

    .restart local v1       #newIndex:I
    :cond_25
    move v2, v3

    .line 2448
    goto :goto_20
.end method

.method public canGoForward()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2418
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2419
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2420
    :try_start_9
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2421
    monitor-exit v0

    move v1, v3

    .line 2423
    :goto_11
    return v1

    :cond_12
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_23

    move v1, v4

    :goto_1e
    monitor-exit v0

    goto :goto_11

    .line 2425
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    move v1, v3

    .line 2423
    goto :goto_1e
.end method

.method public canRedo()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 6139
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v3, v4

    .line 6155
    .end local p0
    :goto_10
    return v3

    .line 6141
    .restart local p0
    :cond_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 6142
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6144
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 6146
    :try_start_1c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3e

    .line 6149
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_32

    .line 6154
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3e

    .line 6155
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_10

    .line 6151
    .restart local p0
    :catch_32
    move-exception v1

    .line 6152
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 6154
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public canUndo()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 6119
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v3, v4

    .line 6135
    .end local p0
    :goto_10
    return v3

    .line 6121
    .restart local p0
    :cond_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 6122
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6124
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 6126
    :try_start_1c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3e

    .line 6129
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_32

    .line 6134
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3e

    .line 6135
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_10

    .line 6131
    .restart local p0
    :catch_32
    move-exception v1

    .line 6132
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 6134
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public cancelTouch()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 7972
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_a

    .line 7973
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 7978
    :cond_a
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    .line 7979
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7980
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7984
    :cond_16
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2e

    .line 7985
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7986
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7987
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7988
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7991
    :cond_2e
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_3a

    .line 7992
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7993
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7995
    :cond_3a
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7996
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7997
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7998
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7999
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8000
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8001
    invoke-direct {p0}, Landroid/webkit/WebView;->hideCursor()V

    .line 8002
    return-void
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .registers 2

    .prologue
    .line 2556
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2557
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_5
.end method

.method centerKeyPressOnTextField()V
    .registers 5

    .prologue
    .line 8725
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8727
    return-void
.end method

.method centerKeyPressOnTextFieldEx(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 8734
    new-instance v0, Landroid/webkit/WebViewCore$SelectAndClickData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$SelectAndClickData;-><init>()V

    .line 8735
    .local v0, data:Landroid/webkit/WebViewCore$SelectAndClickData;
    iput p1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionStart:I

    .line 8736
    iput p2, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionEnd:I

    .line 8737
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorFrame:I

    .line 8738
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorNode:I

    .line 8739
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 8740
    return-void
.end method

.method public changeProgressState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 6780
    iget-object v0, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->setIsInProgress(Z)V

    .line 6781
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .registers 5

    .prologue
    .line 6257
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    const/4 v2, -0x1

    .line 6268
    .end local p0
    :goto_f
    return v2

    .line 6259
    .restart local p0
    :cond_10
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6260
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 6261
    :try_start_1c
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3e

    .line 6263
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_32

    .line 6267
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3e

    .line 6268
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_f

    .line 6264
    .restart local p0
    :catch_32
    move-exception v0

    .line 6265
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 6267
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public clearCache(Z)V
    .registers 6
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 3660
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3662
    return-void

    :cond_c
    move v2, v3

    .line 3660
    goto :goto_8
.end method

.method public clearComposingSelection()V
    .registers 5

    .prologue
    .line 5883
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5884
    return-void
.end method

.method public clearFormData()V
    .registers 3

    .prologue
    .line 3669
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3670
    const/4 v0, 0x0

    .line 3671
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 3673
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_c
    return-void
.end method

.method public clearHistory()V
    .registers 3

    .prologue
    .line 3679
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 3680
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3681
    return-void
.end method

.method public clearMatches()V
    .registers 2

    .prologue
    .line 3814
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 3815
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_9

    .line 3819
    :goto_8
    return-void

    .line 3817
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3818
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_8
.end method

.method public clearSslPreferences()V
    .registers 3

    .prologue
    .line 3688
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3689
    return-void
.end method

.method clearTextEntry(Z)V
    .registers 3
    .parameter "disableFocusController"

    .prologue
    .line 2573
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2574
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 2575
    if-eqz p1, :cond_10

    .line 2576
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 2579
    :cond_10
    return-void
.end method

.method public clearView()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2541
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2542
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2543
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2544
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .registers 5
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 5887
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5896
    :cond_e
    :goto_e
    return-void

    .line 5889
    :cond_f
    if-lez p2, :cond_18

    .line 5891
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 5893
    :cond_18
    if-eqz p1, :cond_e

    const-string v0, ""

    if-eq p1, v0, :cond_e

    .line 5894
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 5895
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    goto :goto_e
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    .line 3390
    iget v0, p0, Landroid/view/View;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 5

    .prologue
    .line 3374
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3377
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3378
    .local v2, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3379
    .local v0, overscrollRight:I
    if-gez v2, :cond_e

    .line 3380
    sub-int/2addr v1, v2

    .line 3385
    :cond_d
    :goto_d
    return v1

    .line 3381
    :cond_e
    if-le v2, v0, :cond_d

    .line 3382
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_d
.end method

.method public computeScroll()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 3863
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3864
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 3865
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 3866
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 3867
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 3868
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3870
    if-ne v3, v10, :cond_20

    if-eq v4, v11, :cond_7c

    .line 3871
    :cond_20
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3872
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3873
    .local v6, rangeY:I
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 3877
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_7c

    .line 3878
    if-gtz v6, :cond_40

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_5d

    .line 3879
    :cond_40
    if-gez v11, :cond_8f

    if-ltz v4, :cond_8f

    .line 3880
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3881
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3882
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3892
    :cond_5d
    :goto_5d
    if-lez v5, :cond_7c

    .line 3893
    if-gez v10, :cond_ad

    if-ltz v3, :cond_ad

    .line 3894
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3895
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3896
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3907
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_7c
    :goto_7c
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3908
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3909
    sput-boolean v9, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 3910
    sput-boolean v9, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 3915
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_8e
    :goto_8e
    return-void

    .line 3884
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_8f
    if-le v11, v6, :cond_5d

    if-gt v4, v6, :cond_5d

    .line 3885
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3886
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3887
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_5d

    .line 3898
    :cond_ad
    if-le v10, v5, :cond_7c

    if-gt v3, v5, :cond_7c

    .line 3899
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3900
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3901
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_7c

    .line 3913
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_cb
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_8e
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 3431
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 3426
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 5

    .prologue
    .line 3410
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3413
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3414
    .local v2, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 3415
    .local v0, overscrollBottom:I
    if-gez v2, :cond_e

    .line 3416
    sub-int/2addr v1, v2

    .line 3421
    :cond_d
    :goto_d
    return v1

    .line 3417
    :cond_e
    if-le v2, v0, :cond_d

    .line 3418
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_d
.end method

.method contentToViewDimension(I)I
    .registers 4
    .parameter "d"

    .prologue
    .line 2893
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 2901
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .registers 4
    .parameter "y"

    .prologue
    .line 2909
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .registers 2

    .prologue
    .line 3700
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .registers 9

    .prologue
    const-string/jumbo v7, "webview"

    .line 5623
    const/4 v1, 0x0

    .line 5624
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 5625
    .local v3, selection:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_4a

    .line 5626
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_2f

    .line 5627
    const-string/jumbo v4, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copySelection \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5629
    :cond_2f
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x1040365

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5632
    const/4 v1, 0x1

    .line 5634
    :try_start_3d
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 5636
    .local v0, clip:Landroid/text/IClipboard;
    invoke-interface {v0, v3}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_4e

    .line 5641
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5642
    return v1

    .line 5637
    :catch_4e
    move-exception v4

    move-object v2, v4

    .line 5638
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v4, "webview"

    const-string v4, "Clipboard failed"

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .registers 4

    .prologue
    .line 4987
    new-instance v1, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 4988
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 4989
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 4990
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 4991
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 4992
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 4993
    return-object v1
.end method

.method public cursorIsAnchor()Z
    .registers 2

    .prologue
    .line 2719
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    .line 2720
    const/4 v0, 0x0

    .line 2722
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    goto :goto_5
.end method

.method public debugDump()V
    .registers 3

    .prologue
    .line 11114
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 11115
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 11116
    return-void
.end method

.method deleteSelection(II)V
    .registers 8
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5004
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 5005
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 5007
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 5009
    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 5
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 6039
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6043
    :cond_e
    :goto_e
    return-void

    .line 6041
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_e
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1931
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1933
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1934
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_32

    .line 1937
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1938
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1940
    monitor-enter p0

    .line 1941
    :try_start_16
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1942
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1943
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1944
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_3d

    .line 1946
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1947
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1950
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1951
    :try_start_2c
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1952
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_40

    .line 1954
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_32
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_3c

    .line 1955
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1956
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1958
    :cond_3c
    return-void

    .line 1944
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 1952
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method dismissZoomControl()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8886
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_18

    .line 8889
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_e

    .line 8890
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 8892
    :cond_e
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_17

    .line 8893
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 8910
    :cond_17
    :goto_17
    return-void

    .line 8897
    :cond_18
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 8898
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 8899
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_17

    .line 8900
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_17

    .line 8903
    :cond_2c
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    .line 8904
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8906
    :cond_37
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_17

    .line 8907
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_17
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 6528
    const/4 v0, 0x1

    .line 6532
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 6533
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_22

    .line 6534
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 6547
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_2a

    .line 6548
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 6551
    :goto_21
    return v1

    .line 6536
    :cond_22
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_27

    .line 6541
    const/4 v0, 0x0

    .line 6543
    :cond_27
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_1b

    :cond_2a
    move v1, v2

    .line 6551
    goto :goto_21
.end method

.method public displaySoftKeyboardForHtmlComposer()V
    .registers 2

    .prologue
    .line 5861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    .line 5862
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4226
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4227
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 3855
    if-nez p1, :cond_3

    .line 3859
    :goto_2
    return-void

    .line 3858
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v1, 0x1

    .line 4342
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v0

    if-eq v0, v1, :cond_19

    :cond_d
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 4344
    :cond_19
    const/4 v0, 0x0

    .line 4351
    :goto_1a
    return v0

    .line 4346
    :cond_1b
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_2d

    .line 4349
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4351
    :cond_2d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1a
.end method

.method drawHistory()Z
    .registers 2

    .prologue
    .line 4961
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 11126
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 11127
    return-void
.end method

.method public drawSelectionControl()V
    .registers 2

    .prologue
    .line 6205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->drawSelectionControl(Z)V

    .line 6206
    return-void
.end method

.method public drawSelectionControl(Z)V
    .registers 4
    .parameter "isTextChanged"

    .prologue
    .line 6209
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6217
    :cond_e
    :goto_e
    return-void

    .line 6211
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 6212
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mController:I

    .line 6213
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6214
    if-eqz p1, :cond_e

    .line 6215
    invoke-virtual {p0}, Landroid/webkit/WebView;->textChangedForWatcher()V

    goto :goto_e
.end method

.method public dumpDisplayTree()V
    .registers 2

    .prologue
    .line 5236
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 5237
    return-void
.end method

.method public dumpDomTree(Z)V
    .registers 6
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 5246
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5247
    return-void

    :cond_c
    move v2, v3

    .line 5246
    goto :goto_8
.end method

.method public dumpRenderTree(Z)V
    .registers 6
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 5256
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5257
    return-void

    :cond_c
    move v2, v3

    .line 5256
    goto :goto_8
.end method

.method public dumpV8Counters()V
    .registers 3

    .prologue
    .line 5267
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5268
    return-void
.end method

.method public emulateShiftHeld()V
    .registers 3

    .prologue
    .line 5571
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_5

    .line 5577
    :cond_4
    :goto_4
    return-void

    .line 5573
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 5576
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_4
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "command"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v5, "webview"

    .line 6094
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_a

    .line 6115
    :cond_9
    :goto_9
    return-void

    .line 6096
    :cond_a
    iget-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v4, v2, :cond_24

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-ne v4, v2, :cond_24

    .line 6097
    const-string/jumbo v2, "webview"

    const-string v2, "execEditorCommand To hide Cursor handler"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    iput v3, p0, Landroid/webkit/WebView;->iTimer:I

    .line 6099
    iput-boolean v3, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 6102
    :cond_24
    new-instance v0, Landroid/webkit/WebView$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$CmdVal;-><init>(Landroid/webkit/WebView;)V

    .line 6103
    .local v0, cmdVal:Landroid/webkit/WebView$CmdVal;
    iput-object p1, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    .line 6104
    iput-object p2, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    .line 6105
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "Copy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6106
    :cond_3f
    monitor-enter v0

    .line 6107
    :try_start_40
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4c

    .line 6109
    :try_start_47
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4f

    .line 6113
    :goto_4a
    :try_start_4a
    monitor-exit v0

    goto :goto_9

    :catchall_4c
    move-exception v2

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v2

    .line 6110
    :catch_4f
    move-exception v1

    .line 6111
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_50
    const-string/jumbo v2, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_4c

    goto :goto_4a
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4218
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4219
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4333
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 4335
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4337
    return-void

    .line 4335
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .registers 5
    .parameter "find"

    .prologue
    const/4 v2, 0x0

    .line 3722
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_7

    move v1, v2

    .line 3727
    :goto_6
    return v1

    .line 3723
    :cond_7
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 3725
    .local v0, result:I
    :goto_16
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3726
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    move v1, v0

    .line 3727
    goto :goto_6

    .end local v0           #result:I
    :cond_1d
    move v0, v2

    .line 3723
    goto :goto_16
.end method

.method public findIndex()I
    .registers 2

    .prologue
    .line 3747
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    .line 3748
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_5
.end method

.method public findNext(Z)V
    .registers 3
    .parameter "forward"

    .prologue
    .line 3711
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_5

    .line 3713
    :goto_4
    return-void

    .line 3712
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_4
.end method

.method public flingScroll(II)V
    .registers 14
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 8358
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 8360
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8361
    return-void
.end method

.method public freeMemory()V
    .registers 3

    .prologue
    .line 3647
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3648
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "webview"

    .line 5967
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move-object v2, v3

    .line 5980
    .end local p0
    :goto_13
    return-object v2

    .line 5969
    .restart local p0
    :cond_14
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v3, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5970
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 5971
    :try_start_1a
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_41

    .line 5974
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_2d

    .line 5979
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_41

    .line 5980
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_13

    .line 5975
    .restart local p0
    :catch_2d
    move-exception v0

    .line 5976
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2e
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5979
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 1864
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .registers 2

    .prologue
    .line 3570
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .registers 2

    .prologue
    .line 3578
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .registers 8
    .parameter "giveContentRect"

    .prologue
    const/4 v5, 0x0

    .line 6273
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_11

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_11

    move-object v3, v5

    .line 6286
    .end local p0
    :goto_10
    return-object v3

    .line 6275
    .restart local p0
    :cond_11
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6276
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6277
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v2

    .line 6278
    :try_start_21
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x209

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_40

    .line 6281
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_40
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_34

    .line 6285
    :goto_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_40

    .line 6286
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    move-object v3, p0

    goto :goto_10

    .line 6282
    .restart local p0
    :catch_34
    move-exception v0

    .line 6283
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_35
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 6285
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_40
    move-exception v3

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_40

    throw v3
.end method

.method public getDragTracker()Landroid/webkit/WebView$DragTracker;
    .registers 2

    .prologue
    .line 6755
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 3545
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3546
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .registers 11

    .prologue
    const/4 v6, 0x7

    const-string/jumbo v9, "tel:"

    const-string/jumbo v8, "mailto:"

    const-string v7, "geo:0,0?q="

    .line 2658
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_f

    .line 2659
    const/4 v5, 0x0

    .line 2700
    :goto_e
    return-object v5

    .line 2662
    :cond_f
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2663
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2664
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 2665
    const/16 v5, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2686
    :cond_25
    :goto_25
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2687
    .local v4, type:I
    if-eqz v4, :cond_2d

    if-ne v4, v6, :cond_50

    .line 2690
    :cond_2d
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2691
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2692
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2693
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_50

    .line 2694
    if-nez v4, :cond_bd

    const/4 v5, 0x5

    :goto_4a
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2697
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    :cond_50
    move-object v5, v2

    .line 2700
    goto :goto_e

    .line 2667
    .end local v4           #type:I
    :cond_52
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 2668
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_25

    .line 2669
    const-string/jumbo v5, "tel:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 2670
    const/4 v5, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2671
    const-string/jumbo v5, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_25

    .line 2672
    :cond_74
    const-string/jumbo v5, "mailto:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 2673
    const/4 v5, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2674
    const-string/jumbo v5, "mailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_25

    .line 2675
    :cond_90
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 2676
    const/4 v5, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2677
    const-string v5, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 2679
    :cond_af
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2680
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v6}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2681
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 2694
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #type:I
    :cond_bd
    const/16 v5, 0x8

    goto :goto_4a
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 6167
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move-object v3, v4

    .line 6180
    .end local p0
    :goto_10
    return-object v3

    .line 6169
    .restart local p0
    :cond_11
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 6170
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v4, v1}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6171
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 6172
    :try_start_1c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3b

    .line 6175
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_2f

    .line 6179
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3b

    .line 6180
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebHTMLMarkupData;

    move-object v3, p0

    goto :goto_10

    .line 6176
    .restart local p0
    :catch_2f
    move-exception v0

    .line 6177
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_30
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 6179
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3b
    move-exception v3

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v3
.end method

.method public getMaxZoomScale()F
    .registers 2

    .prologue
    .line 469
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return v0
.end method

.method public getMinZoomScale()F
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3525
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3526
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getPlainText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "webview"

    .line 5948
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move-object v2, v3

    .line 5961
    .end local p0
    :goto_13
    return-object v2

    .line 5950
    .restart local p0
    :cond_14
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v3, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5951
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 5952
    :try_start_1a
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_41

    .line 5955
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_2d

    .line 5960
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_41

    .line 5961
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_13

    .line 5956
    .restart local p0
    :catch_2d
    move-exception v0

    .line 5957
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2e
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5960
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 3563
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getRegisterTiltListener()Z
    .registers 2

    .prologue
    .line 6803
    iget-boolean v0, p0, Landroid/webkit/WebView;->registerTiltListener:Z

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 2604
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5649
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_7

    const-string v0, ""

    .line 5650
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 6059
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_16

    :cond_10
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 6076
    :goto_15
    return-object v3

    .line 6062
    :cond_16
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6064
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 6066
    :try_start_1c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_43

    .line 6069
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_37

    .line 6074
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_43

    .line 6075
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 6076
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_15

    .line 6071
    .end local v1           #pnt:Landroid/graphics/Point;
    :catch_37
    move-exception v0

    .line 6072
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_38
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 6074
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v3
.end method

.method public getSelectionType(IIZ)I
    .registers 21
    .parameter "ptX"
    .parameter "ptY"
    .parameter "isScreenCoords"

    .prologue
    .line 11197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    if-nez v14, :cond_15

    .line 11198
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_13

    .line 11199
    const-string/jumbo v14, "webview"

    const-string v15, "isSelectionControlArea : Selection Info is not updated "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11201
    :cond_13
    const/4 v14, 0x0

    .line 11303
    :goto_14
    return v14

    .line 11204
    :cond_15
    const/high16 v3, 0x3f80

    .line 11206
    .local v3, MIN_SCALE_LEVEL:F
    const/4 v5, 0x0

    .local v5, controllerWidth:I
    const/4 v4, 0x0

    .line 11207
    .local v4, controllerHeight:I
    const/4 v9, 0x0

    .local v9, selectX:I
    const/4 v10, 0x0

    .line 11209
    .local v10, selectY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebTextSelectionControls;->getControllerWidth()I

    move-result v5

    .line 11210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebTextSelectionControls;->getControllerHeight()I

    move-result v4

    .line 11212
    const/4 v14, 0x1

    move v0, v14

    move/from16 v1, p3

    if-ne v0, v1, :cond_4f

    .line 11213
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v14, v0

    add-int v14, v14, p1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result p1

    .line 11214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    add-int v14, v14, p2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result p2

    .line 11218
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_105

    .line 11219
    int-to-float v14, v5

    const v15, 0x3f99999a

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 11220
    int-to-float v14, v4

    const v15, 0x3f99999a

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 11221
    new-instance v11, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v14, v15, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11223
    .local v11, selectionCtrl:Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 11224
    .local v8, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v14, :cond_87

    .line 11225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v14}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 11228
    :cond_87
    if-eqz v8, :cond_204

    .line 11230
    div-int/lit8 v12, v5, 0x2

    .line 11231
    .local v12, xRadius:I
    div-int/lit8 v13, v4, 0x2

    .line 11234
    .local v13, yRadius:I
    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    div-int/lit8 v9, v14, 0x2

    .line 11235
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 11236
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 11237
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_ab

    .line 11238
    const/4 v14, 0x5

    goto/16 :goto_14

    .line 11241
    :cond_ab
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 11242
    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    div-int/lit8 v10, v14, 0x2

    .line 11243
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 11244
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_c9

    .line 11245
    const/4 v14, 0x3

    goto/16 :goto_14

    .line 11248
    :cond_c9
    iget v9, v8, Landroid/graphics/Rect;->right:I

    .line 11249
    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    div-int/lit8 v10, v14, 0x2

    .line 11250
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 11251
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_e7

    .line 11252
    const/4 v14, 0x4

    goto/16 :goto_14

    .line 11255
    :cond_e7
    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    div-int/lit8 v9, v14, 0x2

    .line 11256
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 11257
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 11258
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_204

    .line 11259
    const/4 v14, 0x6

    goto/16 :goto_14

    .line 11263
    .end local v8           #selectRect:Landroid/graphics/Rect;
    .end local v11           #selectionCtrl:Landroid/graphics/Rect;
    .end local v12           #xRadius:I
    .end local v13           #yRadius:I
    :cond_105
    div-int/lit8 v14, v4, 0x2

    add-int v6, v4, v14

    .line 11264
    .local v6, nTouchAreaHeight:I
    new-instance v7, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11267
    .local v7, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v14, :cond_18a

    .line 11268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->left:I

    .line 11269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v14

    if-nez v14, :cond_170

    .line 11270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->top:I

    .line 11271
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    sub-int v15, v10, v4

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 11277
    :goto_145
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_162

    .line 11278
    const-string/jumbo v14, "webview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isSelectionControlArea : rtCtrlTouchArea: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11280
    :cond_162
    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_18a

    .line 11281
    const/4 v14, 0x1

    goto/16 :goto_14

    .line 11273
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 11274
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    div-int/lit8 v15, v4, 0x4

    sub-int v15, v10, v15

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_145

    .line 11285
    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v14, :cond_204

    .line 11286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->right:I

    .line 11287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v14

    if-nez v14, :cond_1ec

    .line 11288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 11289
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    div-int/lit8 v15, v4, 0x4

    sub-int v15, v10, v15

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 11295
    :goto_1c1
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_1de

    .line 11296
    const-string/jumbo v14, "webview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isSelectionControlArea : rtCtrlTouchArea: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11298
    :cond_1de
    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_204

    .line 11299
    const/4 v14, 0x2

    goto/16 :goto_14

    .line 11291
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->top:I

    .line 11292
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    sub-int v15, v10, v4

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1c1

    .line 11303
    .end local v6           #nTouchAreaHeight:I
    .end local v7           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_204
    const/4 v14, 0x0

    goto/16 :goto_14
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .prologue
    .line 4262
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;
    .registers 9
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v3, "webview"

    .line 5929
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move-object v3, v5

    .line 5943
    .end local p0
    :goto_13
    return-object v3

    .line 5931
    .restart local p0
    :cond_14
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 5932
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5933
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 5934
    :try_start_27
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_4e

    .line 5937
    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_3a

    .line 5942
    :goto_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_4e

    .line 5943
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    goto :goto_13

    .line 5938
    .restart local p0
    :catch_3a
    move-exception v0

    .line 5939
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3b
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5940
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 5942
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v3
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3535
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3536
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getTitleHeight()I
    .registers 2

    .prologue
    .line 1831
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3554
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3555
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3512
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3513
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method getViewHeight()I
    .registers 3

    .prologue
    .line 1848
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getViewManager()Landroid/webkit/ViewManager;
    .registers 2

    .prologue
    .line 9046
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .registers 3

    .prologue
    .line 1819
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_f

    .line 1820
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1822
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e
.end method

.method public getVisibleTitleHeight()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1839
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .registers 2

    .prologue
    .line 4201
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .prologue
    .line 4170
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebClipboard()Landroid/webkit/WebClipboard;
    .registers 2

    .prologue
    .line 4267
    iget-object v0, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .registers 2

    .prologue
    .line 4181
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .registers 9

    .prologue
    .line 1246
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    if-nez v4, :cond_a

    .line 1247
    :cond_8
    const/4 v4, 0x0

    .line 1258
    :goto_9
    return-object v4

    .line 1248
    :cond_a
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1249
    .local v3, value:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    .line 1250
    .local v2, textSelected:Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1251
    .local v1, startRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1253
    .local v0, EndRect:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/webkit/WebTextSelectionControls;->SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1258
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    goto :goto_9
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .prologue
    .line 4140
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .registers 2

    .prologue
    .line 9612
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .registers 7

    .prologue
    .line 8596
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_27

    .line 8597
    new-instance v4, Landroid/widget/ZoomButtonsController;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 8598
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 8602
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 8603
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 8604
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_27

    .line 8605
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v0

    .line 8606
    .local v2, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8609
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_27
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8531
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_14

    .line 8532
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8533
    const/4 v0, 0x0

    .line 8560
    :goto_13
    return-object v0

    .line 8535
    :cond_14
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_2b

    .line 8536
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 8543
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 8544
    new-instance v0, Landroid/webkit/WebView$10;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 8560
    :cond_2b
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_13
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 2410
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 2411
    return-void
.end method

.method public goBackOrForward(I)V
    .registers 3
    .parameter "steps"

    .prologue
    .line 2461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 2462
    return-void
.end method

.method public goForward()V
    .registers 2

    .prologue
    .line 2432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 2433
    return-void
.end method

.method public grabScreen(Landroid/graphics/Canvas;IIF)V
    .registers 13
    .parameter "canvas"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scale"

    .prologue
    const/4 v7, 0x0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 403
    .local v3, start:J
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 404
    .local v1, savedScrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 405
    .local v2, savedScrollY:I
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 406
    .local v0, savedScale:F
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 407
    neg-int v5, p2

    iput v5, p0, Landroid/view/View;->mScrollX:I

    .line 408
    neg-int v5, p3

    iput v5, p0, Landroid/view/View;->mScrollY:I

    .line 409
    iput p4, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 411
    :try_start_16
    iget v5, p0, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_2b

    .line 414
    iput-boolean v7, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 415
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 416
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 417
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 420
    return-void

    .line 414
    :catchall_2b
    move-exception v5

    iput-boolean v7, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 415
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 416
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 417
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 414
    throw v5
.end method

.method public hideSoftKeyboardForHtmlComposer()V
    .registers 1

    .prologue
    .line 5865
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    .line 5866
    return-void
.end method

.method public imageCopy(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 6082
    if-eqz p1, :cond_9

    .line 6083
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6085
    :cond_9
    return-void
.end method

.method inAnimateZoom()Z
    .registers 3

    .prologue
    .line 4676
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method initiateTextFieldDrag(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 8676
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8689
    :goto_6
    return-void

    .line 8679
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 8680
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 8681
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 8682
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_34

    .line 8683
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 8684
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8686
    :cond_34
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 8687
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8688
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_6
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;
    .registers 10
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/WebView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .line 5812
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    const/4 v2, 0x0

    .line 5828
    :goto_f
    return-object v2

    .line 5813
    :cond_10
    new-instance v1, Landroid/webkit/WebViewCore$EditableParams;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$EditableParams;-><init>()V

    .line 5814
    .local v1, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 5815
    iput p2, v1, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    .line 5816
    iput-boolean p3, v1, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    .line 5817
    iput-object p4, v1, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 5818
    monitor-enter v1

    .line 5819
    :try_start_1e
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_3f

    .line 5822
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_33

    .line 5826
    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3f

    .line 5828
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    iget v3, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_f

    .line 5823
    :catch_33
    move-exception v0

    .line 5824
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_34
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 5826
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 11898
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11899
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    .line 11901
    :cond_9
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11905
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11906
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->invalidate(IIII)V

    .line 11908
    :cond_9
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "dirty"

    .prologue
    .line 11891
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11892
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 11894
    :cond_9
    return-void
.end method

.method public invokeZoomPicker()V
    .registers 5

    .prologue
    .line 2625
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2626
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :goto_12
    return-void

    .line 2629
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 2630
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2631
    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_12

    .line 2633
    :cond_2a
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2634
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method

.method public isBodyEmpty()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 5986
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v3, v4

    .line 5999
    .end local p0
    :goto_10
    return v3

    .line 5988
    .restart local p0
    :cond_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5989
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5990
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 5991
    :try_start_1c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3e

    .line 5994
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_32

    .line 5998
    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3e

    .line 5999
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_10

    .line 5995
    .restart local p0
    :catch_32
    move-exception v1

    .line 5996
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 5998
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public isEditableView()Z
    .registers 2

    .prologue
    .line 5848
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method public isMagnifierVisible()Z
    .registers 2

    .prologue
    .line 5853
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_c

    .line 5854
    const/4 v0, 0x1

    .line 5857
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 3639
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public isPluginFullScreen()Z
    .registers 2

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method public isTouchedSingleCursorhandler()Z
    .registers 2

    .prologue
    .line 5808
    iget-boolean v0, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    return v0
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V
    .registers 2
    .parameter "mCursorHandlerListener"

    .prologue
    .line 1183
    iput-object p1, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    .line 1184
    return-void
.end method

.method public isVisibleSingleCursorHandler()Z
    .registers 2

    .prologue
    .line 5804
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2327
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 2353
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2354
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    :goto_11
    return-void

    .line 2357
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2358
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 2359
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 2360
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 2361
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 2362
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 2363
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 2364
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2365
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2367
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    goto :goto_11
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 2286
    if-nez p1, :cond_3

    .line 2290
    :goto_2
    return-void

    .line 2289
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2269
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2270
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 2271
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 2272
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 2273
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2274
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2276
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2277
    sput-boolean v3, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 2278
    sput-boolean v3, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 2279
    return-void
.end method

.method moveSelection(FF)V
    .registers 16
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v12, -0x10

    const/4 v11, 0x0

    const/16 v10, 0x10

    .line 8179
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_a

    .line 8212
    :goto_9
    return-void

    .line 8181
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 8182
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 8183
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 8184
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 8185
    iget v7, p0, Landroid/view/View;->mScrollX:I

    add-int v1, v6, v7

    .line 8186
    .local v1, maxX:I
    iget v7, p0, Landroid/view/View;->mScrollY:I

    add-int v2, v0, v7

    .line 8187
    .local v2, maxY:I
    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 8189
    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 8191
    sget-boolean v7, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v7, :cond_9e

    .line 8192
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveSelection mSelectX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSelectY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mScrollX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " xRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " yRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8201
    :cond_9e
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 8202
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/view/View;->mScrollX:I

    if-ge v7, v8, :cond_d8

    move v3, v12

    .line 8205
    .local v3, scrollX:I
    :goto_b4
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    if-ge v7, v8, :cond_e2

    move v4, v12

    .line 8208
    .local v4, scrollY:I
    :goto_bb
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v11}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 8209
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8210
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 8211
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_9

    .line 8202
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_d8
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v10

    if-le v7, v8, :cond_e0

    move v3, v10

    goto :goto_b4

    :cond_e0
    move v3, v11

    goto :goto_b4

    .line 8205
    .restart local v3       #scrollX:I
    :cond_e2
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v10

    if-le v7, v8, :cond_ea

    move v4, v10

    goto :goto_bb

    :cond_ea
    move v4, v11

    goto :goto_bb
.end method

.method native nativeClearCursor()V
.end method

.method native nativeCursorMatchesFocus()Z
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeInputFieldAction(Ljava/lang/String;I)I
.end method

.method native nativeMoveCursorToInput(Ljava/lang/String;II)I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method public notifyFindDialogDismissed()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3825
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_6

    .line 3836
    :goto_5
    return-void

    .line 3828
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3829
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3830
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3834
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3835
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_5
.end method

.method public notifySelectDialogDismissed()V
    .registers 2

    .prologue
    .line 5603
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5604
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5605
    return-void
.end method

.method public onAdaptiveZoomFinished(F)V
    .registers 6
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9031
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_12

    .line 9033
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9040
    :goto_e
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 9041
    return-void

    .line 9038
    :cond_12
    invoke-direct {p0, p1, v2, v1, v3}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_e
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 5655
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 5656
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5657
    :cond_d
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5674
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5681
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6395
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6398
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v5, v0, :cond_16

    .line 6399
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6401
    :cond_16
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_24

    .line 6402
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    .line 6404
    :cond_24
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6406
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_40

    .line 6407
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6412
    :cond_40
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 6413
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6417
    :cond_51
    sput-boolean v5, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 6418
    sput-boolean v4, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 6420
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 5024
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5025
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5026
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 5661
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 5663
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 5664
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 5665
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5666
    :cond_13
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 5667
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 4467
    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->_onDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 4469
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_c

    .line 4470
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->onWebViewDrawFinished()V

    .line 4473
    :cond_c
    return-void

    .line 4469
    :catchall_d
    move-exception v0

    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_17

    .line 4470
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->onWebViewDrawFinished()V

    .line 4469
    :cond_17
    throw v0
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 8
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3439
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_7

    .line 3440
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr p4, v0

    .line 3442
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3443
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3444
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 9
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "webview"

    .line 6302
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_2c

    .line 6303
    const-string/jumbo v0, "webview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT focusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6306
    :cond_2c
    if-nez p1, :cond_39

    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v3, v0, :cond_39

    .line 6307
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6309
    :cond_39
    if-eqz p1, :cond_5e

    .line 6312
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 6313
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_5b

    .line 6314
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6315
    const-string/jumbo v0, "webview"

    const-string/jumbo v0, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6320
    :goto_50
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_57

    .line 6321
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 6341
    :cond_57
    :goto_57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6342
    return-void

    .line 6318
    :cond_5b
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_50

    .line 6331
    :cond_5e
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_70

    .line 6332
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6333
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_6d

    .line 6334
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 6336
    :cond_6d
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 6338
    :cond_70
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_57
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5690
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v11, 0x16

    const/16 v10, 0x13

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5289
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_40

    .line 5290
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyDown at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unicode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5294
    :cond_40
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_46

    move v0, v3

    .line 5423
    :goto_45
    return v0

    .line 5310
    :cond_46
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_54
    move v0, v3

    .line 5312
    goto :goto_45

    .line 5315
    :cond_56
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_5e

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_66

    .line 5317
    :cond_5e
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5318
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5324
    :cond_66
    :goto_66
    if-lt p1, v10, :cond_ce

    if-gt p1, v11, :cond_ce

    .line 5326
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5327
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 5328
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v0, v2

    .line 5329
    goto :goto_45

    .line 5319
    :cond_7c
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_66

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_66

    .line 5320
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_66

    .line 5331
    :cond_8a
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_b5

    .line 5332
    const/16 v0, 0x15

    if-ne p1, v0, :cond_a7

    move v7, v9

    .line 5334
    .local v7, xRate:I
    :goto_93
    if-ne p1, v10, :cond_ad

    move v8, v9

    .line 5336
    .local v8, yRate:I
    :goto_96
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 5337
    .local v6, multiplier:I
    mul-int v0, v7, v6

    int-to-float v0, v0

    mul-int v1, v8, v6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    move v0, v2

    .line 5338
    goto :goto_45

    .line 5332
    .end local v6           #multiplier:I
    .end local v7           #xRate:I
    .end local v8           #yRate:I
    :cond_a7
    if-ne p1, v11, :cond_ab

    move v7, v2

    goto :goto_93

    :cond_ab
    move v7, v3

    goto :goto_93

    .line 5334
    .restart local v7       #xRate:I
    :cond_ad
    const/16 v0, 0x14

    if-ne p1, v0, :cond_b3

    move v8, v2

    goto :goto_96

    :cond_b3
    move v8, v3

    goto :goto_96

    .line 5340
    .end local v7           #xRate:I
    :cond_b5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 5341
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 5342
    goto/16 :goto_45

    :cond_cb
    move v0, v3

    .line 5345
    goto/16 :goto_45

    .line 5348
    :cond_ce
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d6

    const/16 v0, 0x42

    if-ne p1, v0, :cond_10f

    .line 5349
    :cond_d6
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5350
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10c

    .line 5351
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_e6

    move v0, v2

    .line 5352
    goto/16 :goto_45

    .line 5354
    :cond_e6
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5355
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5359
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_10a

    move v0, v2

    :goto_104
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 5360
    goto/16 :goto_45

    :cond_10a
    move v0, v3

    .line 5359
    goto :goto_104

    :cond_10c
    move v0, v3

    .line 5363
    goto/16 :goto_45

    .line 5366
    :cond_10f
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_11c

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_11c

    .line 5369
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 5370
    iput-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5373
    :cond_11c
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 5374
    packed-switch p1, :pswitch_data_1a4

    .line 5392
    :cond_129
    :goto_129
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_174

    .line 5395
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5399
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5401
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 5402
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 5403
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_45

    .line 5376
    :pswitch_154
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_129

    .line 5380
    :pswitch_158
    const/16 v0, 0xc

    if-ne p1, v0, :cond_161

    move v0, v2

    :goto_15d
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_129

    :cond_161
    move v0, v3

    goto :goto_15d

    .line 5384
    :pswitch_163
    const/16 v0, 0xe

    if-ne p1, v0, :cond_16c

    move v0, v2

    :goto_168
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_129

    :cond_16c
    move v0, v3

    goto :goto_168

    .line 5387
    :pswitch_16e
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 5388
    goto/16 :goto_45

    .line 5405
    :cond_174
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 5408
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5409
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 5410
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 5411
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_45

    .line 5416
    :cond_190
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_196

    .line 5418
    :cond_196
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5420
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    move v0, v2

    .line 5423
    goto/16 :goto_45

    .line 5374
    nop

    :pswitch_data_1a4
    .packed-switch 0xb
        :pswitch_154
        :pswitch_158
        :pswitch_158
        :pswitch_163
        :pswitch_163
        :pswitch_16e
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 5277
    if-nez p1, :cond_18

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5279
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5280
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5282
    const/4 v0, 0x1

    .line 5284
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5432
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_3b

    .line 5433
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyUp at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", unicode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    :cond_3b
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_41

    move v4, v9

    .line 5529
    :goto_40
    return v4

    .line 5442
    :cond_41
    const/4 v4, 0x5

    if-ne p1, v4, :cond_73

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 5443
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v2

    .line 5444
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-nez v4, :cond_73

    if-eqz v2, :cond_73

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 5446
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5447
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 5448
    goto :goto_40

    .line 5455
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_73
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_81

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_83

    :cond_81
    move v4, v9

    .line 5456
    goto :goto_40

    .line 5459
    :cond_83
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_8b

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_93

    .line 5461
    :cond_8b
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 5462
    iput-boolean v9, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5469
    :cond_93
    const/16 v4, 0x13

    if-lt p1, v4, :cond_b7

    const/16 v4, 0x16

    if-gt p1, v4, :cond_b7

    .line 5471
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 5472
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v9}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v4, v8

    .line 5473
    goto :goto_40

    .line 5463
    :cond_aa
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 5464
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    move v4, v8

    .line 5465
    goto :goto_40

    :cond_b5
    move v4, v9

    .line 5477
    goto :goto_40

    .line 5480
    :cond_b7
    const/16 v4, 0x17

    if-eq p1, v4, :cond_bf

    const/16 v4, 0x42

    if-ne p1, v4, :cond_139

    .line 5482
    :cond_bf
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5483
    iput-boolean v9, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5485
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_e2

    .line 5486
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_d9

    .line 5487
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5488
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_d6
    move v4, v8

    .line 5494
    goto/16 :goto_40

    .line 5490
    :cond_d9
    iput-boolean v8, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5491
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5492
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_d6

    .line 5498
    :cond_e2
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 5501
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_ef

    move v4, v9

    .line 5502
    goto/16 :goto_40

    .line 5504
    :cond_ef
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 5505
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5506
    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 5507
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-eqz v4, :cond_117

    .line 5508
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5509
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 5510
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_114

    .line 5511
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_114
    move v4, v8

    .line 5513
    goto/16 :goto_40

    .line 5515
    :cond_117
    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 5516
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 5517
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_136

    .line 5518
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_136
    move v4, v8

    .line 5521
    goto/16 :goto_40

    .line 5525
    .end local v0           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_139
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_13f

    .line 5527
    :cond_13f
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v8

    .line 5529
    goto/16 :goto_40
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 9418
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 9420
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 9421
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 9422
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 9423
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 9425
    .local v7, widthSize:I
    move v4, v3

    .line 9426
    .local v4, measuredHeight:I
    move v5, v7

    .line 9429
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 9430
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 9434
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_47

    .line 9435
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 9436
    move v4, v0

    .line 9437
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_33

    .line 9440
    if-le v4, v3, :cond_33

    .line 9441
    move v4, v3

    .line 9442
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 9448
    :cond_33
    :goto_33
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_3c

    .line 9449
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 9452
    :cond_3c
    if-nez v6, :cond_4a

    .line 9453
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 9454
    move v5, v1

    .line 9459
    :goto_41
    monitor-enter p0

    .line 9460
    :try_start_42
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 9461
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4d

    .line 9462
    return-void

    .line 9446
    :cond_47
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_33

    .line 9456
    :cond_4a
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_41

    .line 9461
    :catchall_4d
    move-exception v8

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 15
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3449
    iput-boolean v9, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3450
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3451
    .local v0, maxX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v1

    .line 3452
    .local v1, maxY:I
    if-nez v0, :cond_7c

    .line 3454
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3458
    :cond_12
    :goto_12
    if-ltz p2, :cond_16

    if-le p2, v1, :cond_18

    .line 3459
    :cond_16
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3462
    :cond_18
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3463
    .local v2, oldX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3464
    .local v3, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 3468
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v6, :cond_7b

    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-ne v3, v6, :cond_7b

    iget v6, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, v6, :cond_7b

    .line 3471
    if-lez v0, :cond_50

    .line 3472
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    add-int v4, v2, v6

    .line 3473
    .local v4, pulledToX:I
    if-gez v4, :cond_83

    .line 3474
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3475
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 3476
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3484
    :cond_4e
    :goto_4e
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 3487
    .end local v4           #pulledToX:I
    :cond_50
    if-gtz v1, :cond_58

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v6

    if-nez v6, :cond_7b

    .line 3488
    :cond_58
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    add-int v5, v3, v6

    .line 3489
    .local v5, pulledToY:I
    if-gez v5, :cond_a1

    .line 3490
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3491
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_79

    .line 3492
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3500
    :cond_79
    :goto_79
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 3503
    .end local v5           #pulledToY:I
    :cond_7b
    return-void

    .line 3455
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    :cond_7c
    if-ltz p1, :cond_80

    if-le p1, v0, :cond_12

    .line 3456
    :cond_80
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_12

    .line 3478
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #pulledToX:I
    :cond_83
    if-le v4, v0, :cond_4e

    .line 3479
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3480
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 3481
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_4e

    .line 3494
    .end local v4           #pulledToX:I
    .restart local v5       #pulledToY:I
    :cond_a1
    if-le v5, v1, :cond_79

    .line 3495
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3496
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_79

    .line 3497
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_79
.end method

.method onPageFinished(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 3988
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 3992
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-nez v0, :cond_1d

    .line 3994
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3997
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3999
    :cond_20
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 3616
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_e

    .line 3617
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3618
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3620
    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 3627
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_e

    .line 3628
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3629
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3631
    :cond_e
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 13
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string/jumbo v7, "username"

    const-string/jumbo v6, "password"

    const-string v5, "host"

    .line 1718
    const/4 v1, 0x0

    .line 1719
    .local v1, rVal:Z
    if-nez p4, :cond_11

    .line 1721
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :goto_10
    return v1

    .line 1723
    :cond_11
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1725
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1730
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1732
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1737
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040356

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040360

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040361

    new-instance v5, Landroid/webkit/WebView$7;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040362

    new-instance v5, Landroid/webkit/WebView$6;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040363

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$4;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1765
    const/4 v1, 0x1

    goto/16 :goto_10
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 6505
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_5

    .line 6507
    :goto_4
    return-void

    .line 6506
    :cond_5
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->onScrollChangedAnchorDiff(IIIIZ)V

    goto :goto_4
.end method

.method protected onScrollChangedAnchorDiff(IIIIZ)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "needAnchorDiff"

    .prologue
    const/4 v3, 0x0

    .line 6510
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 6511
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 6514
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 6515
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 6516
    invoke-direct {p0, p5}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 6518
    :cond_1c
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 6520
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/webkit/OnPinchZoomListener;->onScrollChanged(IIII)V

    .line 6523
    :cond_2e
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 14
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6425
    const-string/jumbo v0, "webview"

    const-string v1, "OnSizeChanged: Enter "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6427
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    if-eqz v0, :cond_15

    if-ne p1, p3, :cond_15

    .line 6428
    iput-boolean v4, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    .line 6500
    :cond_14
    :goto_14
    return-void

    .line 6432
    :cond_15
    iget-object v0, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 6433
    iget-object v0, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6435
    :cond_1e
    sput-boolean v4, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 6436
    sput-boolean v4, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 6439
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 6441
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_4c

    .line 6443
    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6444
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6445
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6446
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6452
    :cond_4c
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 6453
    .local v7, newMaxViewportWidth:I
    sget v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v7, v0, :cond_5b

    .line 6454
    sput v7, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 6458
    :cond_5b
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v0, :cond_8b

    .line 6463
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_ae

    iget-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    :goto_70
    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6466
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    if-lez v0, :cond_8b

    .line 6468
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v6, v0, v1

    .line 6469
    .local v6, initialScale:F
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8b

    .line 6470
    iput v6, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6475
    .end local v6           #initialScale:F
    :cond_8b
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6484
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    if-nez v0, :cond_b3

    .line 6485
    new-instance v0, Landroid/webkit/WebView$PostScale;

    if-eq p1, p3, :cond_b1

    move v1, v3

    :goto_97
    sget-object v2, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    invoke-direct {v0, p0, v1, v2}, Landroid/webkit/WebView$PostScale;-><init>(Landroid/webkit/WebView;ZLandroid/webkit/WebView$ZoomMode;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 6496
    :goto_9f
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_14

    .line 6497
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    goto/16 :goto_14

    .line 6463
    :cond_ae
    iget v2, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    goto :goto_70

    :cond_b1
    move v1, v4

    .line 6485
    goto :goto_97

    .line 6488
    :cond_b3
    if-lez p3, :cond_bf

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_d4

    .line 6489
    :cond_bf
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    if-eq p1, p3, :cond_ce

    move v2, v3

    :goto_c4
    if-eq p1, p3, :cond_d0

    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    :goto_c9
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_9f

    :cond_ce
    move v2, v4

    goto :goto_c4

    :cond_d0
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    goto :goto_c9

    .line 6491
    :cond_d4
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float v1, v0, v1

    if-eq p1, p3, :cond_e8

    move v2, v3

    :goto_de
    if-eq p1, p3, :cond_ea

    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    :goto_e3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_9f

    :cond_e8
    move v2, v4

    goto :goto_de

    :cond_ea
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    goto :goto_e3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 41
    .parameter "ev"

    .prologue
    .line 7114
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_1d

    .line 7116
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->pictureReady()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 7117
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1b

    .line 7118
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "onTouchEvent: Warning-> picture is NOT ready! ignore!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    :cond_1b
    const/4 v5, 0x0

    .line 7848
    :goto_1c
    return v5

    .line 7124
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_32

    .line 7125
    :cond_30
    const/4 v5, 0x0

    goto :goto_1c

    .line 7128
    :cond_32
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_69

    .line 7129
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7131
    :cond_69
    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_d9

    .line 7132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mFirstTouchPosX:F

    move v6, v0

    sub-float v22, v5, v6

    .line 7133
    .local v22, dX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mFirstTouchPosY:F

    move v6, v0

    sub-float v23, v5, v6

    .line 7134
    .local v23, dY:F
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlop:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d9

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlop:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d9

    .line 7135
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_d6

    .line 7136
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent: move event dx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and dy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " too small! ignore!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7137
    :cond_d6
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7143
    .end local v22           #dX:F
    .end local v23           #dY:F
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebMagnifier;->mbShow:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f2

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_f2

    .line 7144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 7146
    :cond_f2
    const/16 v21, 0x0

    .line 7147
    .local v21, consumeEvent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_123

    .line 7148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->onWebViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_123

    .line 7149
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v5, v6, :cond_123

    .line 7150
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7157
    :cond_123
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v27

    .line 7161
    .local v27, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    move v5, v0

    if-eqz v5, :cond_2ca

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2ca

    .line 7162
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v6, v0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_2c7

    .line 7164
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_182

    .line 7166
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7167
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v5, v0

    if-nez v5, :cond_170

    .line 7168
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7170
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7173
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v10

    .line 7174
    .local v10, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v11

    .line 7175
    .local v11, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v7, v5, 0xff

    .line 7176
    .local v7, action:I
    const/4 v5, 0x5

    if-ne v7, v5, :cond_2a8

    .line 7177
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 7178
    const/4 v7, 0x0

    .line 7203
    :cond_1a1
    :goto_1a1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v10, v5

    if-lez v5, :cond_1b3

    .line 7204
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v10, v5

    .line 7206
    :cond_1b3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v11, v5

    if-lez v5, :cond_1c5

    .line 7207
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v11, v5

    .line 7210
    :cond_1c5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move v5, v0

    sub-float v29, v5, v10

    .line 7211
    .local v29, fDeltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move v5, v0

    sub-float v30, v5, v11

    .line 7212
    .local v30, fDeltaY:F
    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    .line 7213
    .local v24, deltaX:I
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 7214
    .local v25, deltaY:I
    float-to-int v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    .line 7215
    .local v8, contentX:I
    float-to-int v5, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v9

    .line 7216
    .local v9, contentY:I
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_243

    .line 7217
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X, Y Position: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7218
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content X, Y Position: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7225
    :cond_243
    if-eqz v21, :cond_2d8

    .line 7231
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 7232
    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-nez v5, :cond_2a5

    .line 7233
    const/4 v5, 0x1

    if-ne v5, v7, :cond_2a5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_2a5

    .line 7234
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7235
    .local v37, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7236
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7237
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7238
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_297

    .line 7241
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7242
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7244
    :cond_297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7247
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_2a5
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7179
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    .end local v24           #deltaX:I
    .end local v25           #deltaY:I
    .end local v29           #fDeltaX:F
    .end local v30           #fDeltaY:F
    :cond_2a8
    const/4 v5, 0x6

    if-ne v7, v5, :cond_2b7

    .line 7181
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7182
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto/16 :goto_1a1

    .line 7183
    :cond_2b7
    const/4 v5, 0x2

    if-ne v7, v5, :cond_1a1

    .line 7185
    const/4 v5, 0x0

    cmpg-float v5, v10, v5

    if-ltz v5, :cond_2c4

    const/4 v5, 0x0

    cmpg-float v5, v11, v5

    if-gez v5, :cond_1a1

    .line 7186
    :cond_2c4
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7191
    .end local v7           #action:I
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_2c7
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7194
    :cond_2ca
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 7195
    .restart local v7       #action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 7196
    .restart local v10       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #y:F
    goto/16 :goto_1a1

    .line 7250
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    .restart local v24       #deltaX:I
    .restart local v25       #deltaY:I
    .restart local v29       #fDeltaX:F
    .restart local v30       #fDeltaY:F
    :cond_2d8
    packed-switch v7, :pswitch_data_dc2

    .line 7848
    .end local v7           #action:I
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    :cond_2db
    :goto_2db
    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7252
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_2de
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7253
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7255
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosX:F

    .line 7256
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosY:F

    .line 7259
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_2db

    .line 7264
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v6

    if-ne v5, v6, :cond_357

    .line 7266
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-ne v12, v5, :cond_349

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_349

    .line 7268
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent return TRUE , SCH is touched "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 7271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    if-eqz v5, :cond_2db

    .line 7273
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -  SCH_TOUCH_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v6, v0

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    goto :goto_2db

    .line 7281
    :cond_349
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent return FALSE "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7282
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 7286
    :cond_357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_410

    .line 7290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7291
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7292
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7328
    :cond_37f
    :goto_37f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_38f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_590

    .line 7330
    :cond_38f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7334
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_3b2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_509

    .line 7335
    :cond_3b2
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7358
    :cond_3b8
    :goto_3b8
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_590

    .line 7359
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7360
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7361
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7362
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_562

    .line 7367
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7368
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7369
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7370
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2db

    .line 7294
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_460

    .line 7295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7296
    mul-int v5, v24, v24

    mul-int v6, v25, v25

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    move v6, v0

    if-ge v5, v6, :cond_439

    .line 7297
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_37f

    .line 7300
    :cond_439
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 7301
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7302
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_45e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_45e

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_457
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_37f

    :cond_45e
    const/4 v5, 0x0

    goto :goto_457

    .line 7307
    :cond_460
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 7308
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7309
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_506

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_506

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_481
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 7312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x62

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7314
    sget-boolean v5, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v5, :cond_4bf

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    const-wide/16 v12, 0x3e8

    cmp-long v5, v5, v12

    if-gez v5, :cond_4bf

    .line 7315
    const v5, 0x111d6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v13, v0

    sub-long v13, v27, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7318
    :cond_4bf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_37f

    .line 7319
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7320
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7321
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_501

    .line 7322
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "select="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7324
    :cond_501
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_37f

    .line 7309
    :cond_506
    const/4 v5, 0x0

    goto/16 :goto_481

    .line 7336
    :cond_509
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_55a

    .line 7339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    move v5, v0

    if-eqz v5, :cond_541

    .line 7340
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7350
    :goto_51d
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_3b8

    .line 7351
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPreventDefault = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b8

    .line 7342
    :cond_541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object v5, v0

    invoke-virtual {v5, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v5

    if-nez v5, :cond_553

    .line 7345
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto :goto_51d

    .line 7347
    :cond_553
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto :goto_51d

    .line 7355
    :cond_55a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_3b8

    .line 7374
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7375
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_590

    .line 7376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .end local v8           #contentX:I
    .end local v9           #contentY:I
    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    move v7, v0

    .end local v7           #action:I
    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7382
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_590
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_2db

    .line 7386
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_59b
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_2db

    .line 7389
    const/16 v31, 0x0

    .line 7392
    .local v31, firstMove:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_65c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_65c

    .line 7394
    const/16 v38, 0x1

    .line 7401
    .local v38, touchSlopSquare:Z
    :goto_5bd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-nez v5, :cond_5ee

    if-eqz v38, :cond_5ee

    .line 7402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7404
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7405
    const/16 v31, 0x1

    .line 7406
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5ee

    .line 7407
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7411
    :cond_5ee
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_6a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_6a1

    if-nez v31, :cond_60e

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    move v12, v0

    int-to-long v12, v12

    cmp-long v5, v5, v12

    if-lez v5, :cond_6a1

    .line 7413
    :cond_60e
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 7414
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7415
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7416
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7417
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7419
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_671

    .line 7421
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7422
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2db

    .line 7398
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .end local v38           #touchSlopSquare:Z
    :cond_65c
    mul-int v5, v24, v24

    mul-int v6, v25, v25

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move v6, v0

    if-lt v5, v6, :cond_66d

    const/4 v5, 0x1

    move/from16 v38, v5

    .restart local v38       #touchSlopSquare:Z
    :goto_66b
    goto/16 :goto_5bd

    .end local v38           #touchSlopSquare:Z
    :cond_66d
    const/4 v5, 0x0

    move/from16 v38, v5

    goto :goto_66b

    .line 7426
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .restart local v38       #touchSlopSquare:Z
    :cond_671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7427
    if-eqz v31, :cond_6a1

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_6a1

    .line 7428
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    move v12, v0

    int-to-long v12, v12

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7435
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_6a1
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v6

    if-ne v5, v6, :cond_761

    .line 7437
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  getEditableSupport() is TRUE ..   contentX="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " contentY = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " x = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " y="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_74d

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_6fe

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_74d

    .line 7441
    :cond_6fe
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x21c

    invoke-virtual {v5, v6, v8, v9}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 7443
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -MOVE the cursor as per tocuh move  "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7444
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 7445
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 7447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    if-eqz v5, :cond_2db

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2db

    .line 7449
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "singleCursorHandlerTouchEvent- SCH_TOUCH_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v6, v0

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 7451
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mMoveIsStarted:Z

    goto/16 :goto_2db

    .line 7457
    :cond_74d
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent return FALSE "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7458
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 7459
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mMoveIsStarted:Z

    .line 7464
    :cond_761
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2db

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2db

    .line 7470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_7bd

    .line 7471
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    .end local v7           #action:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7476
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7479
    :cond_7bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7480
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_809

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    move v5, v0

    if-eqz v5, :cond_809

    .line 7481
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_7fd

    .line 7482
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7484
    :cond_7fd
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 7485
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2db

    .line 7489
    :cond_809
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_882

    .line 7491
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_2db

    .line 7494
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_828

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_830

    .line 7498
    :cond_828
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_2db

    .line 7505
    :cond_830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    if-eqz v5, :cond_867

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-nez v5, :cond_867

    .line 7507
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 7508
    .local v19, ax:I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 7509
    .local v20, ay:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_90d

    .line 7510
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7511
    if-lez v24, :cond_90a

    const/4 v5, 0x1

    :goto_862
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 7518
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_867
    :goto_867
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7519
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7520
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7521
    const/16 v29, 0x0

    .line 7522
    const/16 v30, 0x0

    .line 7523
    const/16 v24, 0x0

    .line 7524
    const/16 v25, 0x0

    .line 7526
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 7529
    :cond_882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    if-eqz v5, :cond_891

    .line 7530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    invoke-virtual {v5, v10, v11}, Landroid/webkit/WebView$DragTrackerHandler;->dragTo(FF)V

    .line 7534
    :cond_891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_92e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_92e

    .line 7550
    :cond_8a4
    :goto_8a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_952

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_952

    .line 7565
    :cond_8b7
    :goto_8b7
    const/16 v26, 0x0

    .line 7566
    .local v26, done:Z
    const/16 v32, 0x0

    .line 7567
    .local v32, keepScrollBarsVisible:Z
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_976

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_976

    .line 7568
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7569
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7570
    const/16 v26, 0x1

    move/from16 v32, v26

    .line 7629
    :goto_8dd
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 7631
    if-eqz v32, :cond_2db

    .line 7632
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8f9

    .line 7633
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7634
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7637
    :cond_8f9
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 7641
    if-nez v26, :cond_a8a

    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 7511
    .end local v26           #done:Z
    .end local v32           #keepScrollBarsVisible:Z
    .restart local v19       #ax:I
    .restart local v20       #ay:I
    :cond_90a
    const/4 v5, 0x0

    goto/16 :goto_862

    .line 7512
    :cond_90d
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_867

    .line 7513
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7514
    if-lez v25, :cond_92c

    const/4 v5, 0x1

    :goto_925
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    goto/16 :goto_867

    :cond_92c
    const/4 v5, 0x0

    goto :goto_925

    .line 7541
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_92e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    add-int v5, v5, v24

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v35

    .line 7543
    .local v35, newScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    sub-int v33, v35, v5

    .line 7544
    .local v33, newDeltaX:I
    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_8a4

    .line 7545
    move/from16 v24, v33

    .line 7546
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v29, v0

    goto/16 :goto_8a4

    .line 7557
    .end local v33           #newDeltaX:I
    .end local v35           #newScrollX:I
    :cond_952
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    add-int v5, v5, v25

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v36

    .line 7559
    .local v36, newScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sub-int v34, v36, v5

    .line 7560
    .local v34, newDeltaY:I
    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_8b7

    .line 7561
    move/from16 v25, v34

    .line 7562
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v30, v0

    goto/16 :goto_8b7

    .line 7572
    .end local v34           #newDeltaY:I
    .end local v36           #newScrollY:I
    .restart local v26       #done:Z
    .restart local v32       #keepScrollBarsVisible:Z
    :cond_976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_986

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9df

    .line 7573
    :cond_986
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 7574
    .restart local v19       #ax:I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 7575
    .restart local v20       #ay:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a23

    .line 7577
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9b2

    const/16 v5, 0x50

    move/from16 v0, v20

    move v1, v5

    if-le v0, v1, :cond_9b2

    .line 7579
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7582
    :cond_9b2
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9df

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_a18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_9df

    .line 7586
    :goto_9d3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7603
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_9df
    :goto_9df
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    if-eqz v5, :cond_9f2

    .line 7604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a79

    .line 7605
    const/16 v25, 0x0

    .line 7610
    :cond_9f2
    :goto_9f2
    or-int v5, v24, v25

    if-eqz v5, :cond_a7d

    .line 7611
    if-eqz v24, :cond_9fd

    .line 7612
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7614
    :cond_9fd
    if-eqz v25, :cond_a04

    .line 7615
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7617
    :cond_a04
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7625
    :goto_a0a
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7626
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_8dd

    .line 7582
    .restart local v19       #ax:I
    .restart local v20       #ay:I
    :cond_a18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-le v0, v1, :cond_9df

    goto :goto_9d3

    .line 7590
    :cond_a23
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a3f

    const/16 v5, 0x50

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_a3f

    .line 7592
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7595
    :cond_a3f
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9df

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_a6e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_9df

    .line 7599
    :goto_a60
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto/16 :goto_9df

    .line 7595
    :cond_a6e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-le v0, v1, :cond_9df

    goto :goto_a60

    .line 7607
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_a79
    const/16 v24, 0x0

    goto/16 :goto_9f2

    .line 7621
    :cond_a7d
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7622
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7623
    const/16 v32, 0x1

    goto :goto_a0a

    .line 7641
    :cond_a8a
    const/4 v5, 0x0

    goto/16 :goto_1c

    .line 7647
    .end local v26           #done:Z
    .end local v31           #firstMove:Z
    .end local v32           #keepScrollBarsVisible:Z
    .end local v38           #touchSlopSquare:Z
    .restart local v7       #action:I
    :pswitch_a8d
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosX:F

    .line 7648
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosY:F

    .line 7650
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_2db

    .line 7655
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v6

    if-ne v5, v6, :cond_b41

    .line 7657
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -  ACTION_UP event - Set the Cursor "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7659
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    .line 7660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    if-eqz v5, :cond_b15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b15

    .line 7662
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -  SCH_START_VISIBLE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v6, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 7671
    :cond_ae2
    :goto_ae2
    const/16 v5, 0xa

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->iTimer:I

    .line 7672
    const/16 v5, 0x66

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->iAlpha:I

    .line 7674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_afe

    .line 7675
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 7679
    :cond_afe
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 7681
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    move v5, v0

    if-eqz v5, :cond_b49

    .line 7684
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -SCH is tocuhed so It will not operate the Touch event on Editor "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2db

    .line 7664
    :cond_b15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    if-eqz v5, :cond_ae2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ae2

    .line 7666
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -  SCH_TOUCH_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object v6, v0

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 7668
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mMoveIsStarted:Z

    goto :goto_ae2

    .line 7690
    :cond_b41
    const-string/jumbo v5, "webview"

    const-string v6, " singleCursorHandlerTouchEvent -getEditableSupport  FASLE "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7697
    :cond_b49
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_b95

    .line 7698
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7699
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7700
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7701
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7702
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7703
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7704
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_b87

    .line 7705
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7706
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7708
    :cond_b87
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7710
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_b95
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 7711
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    packed-switch v5, :pswitch_data_dce

    .line 7834
    .end local v7           #action:I
    :cond_ba3
    :goto_ba3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_2db

    .line 7714
    .restart local v7       #action:I
    :pswitch_ba8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_ba3

    .line 7719
    :pswitch_bb2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7721
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_bd1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_c1a

    .line 7722
    :cond_bd1
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7723
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x200

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7724
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7725
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7726
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7727
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7728
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_c0b

    .line 7729
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7730
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7732
    :cond_c0b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_ba3

    .line 7733
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_c1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_ba3

    .line 7734
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doDoubleTap()V

    .line 7735
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_ba3

    .line 7741
    :pswitch_c2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_cef

    .line 7744
    const-string/jumbo v5, "webview"

    const-string v6, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7746
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_cea

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    if-gtz v5, :cond_c62

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v5

    if-lez v5, :cond_cea

    .line 7750
    :cond_c62
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7754
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7784
    :pswitch_c76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7788
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_d22

    .line 7789
    .end local v7           #action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_cd4

    .line 7790
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7796
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7799
    :cond_cd4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7803
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7804
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_ba3

    .line 7764
    .restart local v7       #action:I
    :cond_cea
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_ba3

    .line 7768
    :cond_cef
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_d08

    .line 7769
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v5

    if-eqz v5, :cond_d03

    .line 7770
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 7772
    :cond_d03
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_ba3

    .line 7775
    :cond_d08
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d1d

    .line 7776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    const-wide/16 v7, 0x190

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_ba3

    .line 7779
    :cond_d1d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_ba3

    .line 7807
    .end local v7           #action:I
    :cond_d22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_d5b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d5b

    .line 7808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/webkit/OnPinchZoomListener;->doFling(II)Z

    .line 7816
    :cond_d3f
    :goto_d3f
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7817
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7823
    :pswitch_d48
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 7824
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_ba3

    .line 7809
    :cond_d5b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_d3f

    .line 7812
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_d3f

    .line 7829
    .restart local v7       #action:I
    :pswitch_d7f
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_ba3

    .line 7838
    :pswitch_d8c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_db4

    .line 7839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 7841
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7843
    :cond_db4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7844
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_2db

    .line 7250
    :pswitch_data_dc2
    .packed-switch 0x0
        :pswitch_2de
        :pswitch_a8d
        :pswitch_59b
        :pswitch_d8c
    .end packed-switch

    .line 7711
    :pswitch_data_dce
    .packed-switch 0x1
        :pswitch_c2d
        :pswitch_d48
        :pswitch_c76
        :pswitch_c2d
        :pswitch_c2d
        :pswitch_bb2
        :pswitch_ba8
        :pswitch_d7f
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v10, " time="

    const-string/jumbo v7, "webview"

    .line 8096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 8097
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2f

    .line 8098
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 8099
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_2d
    move v2, v5

    .line 8175
    :goto_2e
    return v2

    .line 8102
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_ad

    .line 8103
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_3b

    move v2, v5

    .line 8104
    goto :goto_2e

    .line 8106
    :cond_3b
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 8107
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_43

    move v2, v6

    .line 8108
    goto :goto_2e

    .line 8110
    :cond_43
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_ab

    move v2, v5

    :goto_50
    invoke-direct {p0, v2, v5, v5}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 8111
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_6c

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 8113
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 8115
    :cond_6c
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_a0

    .line 8116
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent down ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastCursorTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8120
    :cond_a0
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_a9
    move v2, v6

    .line 8121
    goto :goto_2e

    :cond_ab
    move v2, v6

    .line 8110
    goto :goto_50

    .line 8123
    :cond_ad
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_103

    .line 8125
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8126
    iput-boolean v6, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 8127
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 8128
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_d8

    .line 8129
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_cf

    .line 8130
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 8131
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_cc
    move v2, v5

    .line 8137
    goto/16 :goto_2e

    .line 8133
    :cond_cf
    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 8134
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 8135
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_cc

    .line 8139
    :cond_d8
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_100

    .line 8140
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent up ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    move v2, v6

    .line 8144
    goto/16 :goto_2e

    .line 8146
    :cond_103
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v2, :cond_11b

    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v2, :cond_11b

    .line 8147
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_118

    const-string/jumbo v2, "webview"

    const-string/jumbo v2, "onTrackballEvent gmail quit"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    move v2, v6

    .line 8148
    goto/16 :goto_2e

    .line 8150
    :cond_11b
    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v2, :cond_12f

    .line 8151
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_12c

    const-string/jumbo v2, "webview"

    const-string/jumbo v2, "onTrackballEvent down quit"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    move v2, v5

    .line 8152
    goto/16 :goto_2e

    .line 8154
    :cond_12f
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gez v2, :cond_147

    .line 8155
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_144

    const-string/jumbo v2, "webview"

    const-string/jumbo v2, "onTrackballEvent up timeout quit"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    move v2, v5

    .line 8156
    goto/16 :goto_2e

    .line 8159
    :cond_147
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8160
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_182

    .line 8161
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_17c

    .line 8162
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8165
    :cond_17c
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 8166
    iput v6, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v6, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 8168
    :cond_182
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 8169
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_1ac

    .line 8170
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8172
    :cond_1ac
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8173
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 8174
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doTrackball(J)V

    move v2, v5

    .line 8175
    goto/16 :goto_2e
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    const/16 v4, 0x8d

    const/4 v3, 0x0

    .line 5758
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5759
    if-eqz p1, :cond_2e

    .line 5760
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 5766
    :goto_b
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v1, :cond_17

    .line 5767
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 5769
    :cond_17
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2a

    .line 5771
    if-nez p1, :cond_32

    .line 5774
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5784
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 5785
    return-void

    .line 5762
    :cond_2e
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    goto :goto_b

    .line 5777
    :cond_32
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a
.end method

.method public overlayHorizontalScrollbar()Z
    .registers 2

    .prologue
    .line 1802
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .registers 2

    .prologue
    .line 1810
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .registers 8
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2516
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_8

    move v2, v4

    .line 2532
    :goto_7
    return v2

    .line 2519
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2520
    if-eqz p1, :cond_18

    .line 2521
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2524
    :cond_18
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2526
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_33

    .line 2527
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 2531
    .local v1, y:I
    :goto_24
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2532
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2529
    .end local v1           #y:I
    :cond_33
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_24

    .line 2532
    :cond_36
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_7
.end method

.method public pageUp(Z)Z
    .registers 7
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2489
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_8

    move v2, v3

    .line 2506
    :goto_7
    return v2

    .line 2492
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2493
    if-eqz p1, :cond_14

    .line 2495
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2498
    :cond_14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2500
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2e

    .line 2501
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 2505
    .local v1, y:I
    :goto_1f
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2506
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2503
    .end local v1           #y:I
    :cond_2e
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_1f

    .line 2506
    :cond_32
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_7
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 9
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 9596
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 9597
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 9598
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 9600
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9601
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9606
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 9607
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 9609
    return-void
.end method

.method public pauseTimers()V
    .registers 3

    .prologue
    .line 3587
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    if-nez v0, :cond_e

    .line 3588
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3589
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    .line 3591
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    .line 3592
    return-void
.end method

.method public performLongClick()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4634
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v5

    .line 4672
    :goto_9
    return v3

    .line 4635
    :cond_a
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_27

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4637
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4638
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4642
    :goto_1a
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 4643
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v3

    goto :goto_9

    .line 4640
    :cond_27
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto :goto_1a

    .line 4648
    :cond_2b
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v3

    if-eqz v3, :cond_33

    move v3, v6

    .line 4649
    goto :goto_9

    .line 4654
    :cond_33
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-eqz v3, :cond_3f

    move v3, v5

    goto :goto_9

    .line 4661
    :cond_3f
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_45

    move v3, v5

    goto :goto_9

    .line 4662
    :cond_45
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 4663
    .local v1, x:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 4664
    .local v2, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4665
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_74

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 4666
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 4667
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4668
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_72

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionStart(Landroid/webkit/WebView;)V

    :cond_72
    move v3, v6

    .line 4669
    goto :goto_9

    .line 4671
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_74
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    move v3, v5

    .line 4672
    goto :goto_9
.end method

.method public postInvalidateDelayed(J)V
    .registers 6
    .parameter "delayMilliseconds"

    .prologue
    .line 11913
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v1

    if-nez v1, :cond_9

    .line 11914
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->postInvalidateDelayed(J)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11921
    :cond_9
    :goto_9
    return-void

    .line 11917
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 11918
    .local v0, e:Ljava/lang/NullPointerException;
    const-string/jumbo v1, "webview"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 8
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 11926
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11927
    invoke-super/range {p0 .. p6}, Landroid/widget/AbsoluteLayout;->postInvalidateDelayed(JIIII)V

    .line 11930
    :cond_9
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 6
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 2301
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2302
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2303
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 2304
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 2305
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 2306
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2307
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2309
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2313
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_1f
    return-void

    .line 2311
    :cond_20
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method rebuildWebTextView()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 5085
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v9, :cond_13

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_14

    .line 5171
    :cond_13
    :goto_13
    return-void

    .line 5088
    :cond_14
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 5091
    .local v0, alreadyThere:Z
    iget v9, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v9, :cond_28

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsReadonlyTextInput()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 5092
    :cond_28
    if-eqz v0, :cond_13

    .line 5093
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_13

    .line 5099
    :cond_30
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v9, :cond_3f

    .line 5100
    new-instance v9, Landroid/webkit/WebTextView;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, p0}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 5102
    iput v14, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 5104
    :cond_3f
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v14, v10}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 5106
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 5107
    .local v8, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 5110
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 5111
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 5112
    .local v7, vBox:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 5113
    invoke-static {v1, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 5114
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 5116
    :cond_79
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v6

    .line 5117
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v4

    .line 5119
    .local v4, nodePointer:I
    iput v4, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 5120
    if-eqz v0, :cond_b5

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 5128
    if-eqz v6, :cond_ac

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ac

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTextGeneration()I

    move-result v9

    iget v10, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne v9, v10, :cond_ac

    .line 5130
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 5167
    :cond_ac
    :goto_ac
    if-eqz v0, :cond_13

    .line 5168
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_13

    .line 5133
    :cond_b5
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v10

    if-eqz v10, :cond_127

    const/4 v10, 0x5

    :goto_be
    invoke-virtual {v9, v10}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 5137
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 5139
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v3

    .line 5140
    .local v3, name:Ljava/lang/String;
    iput-object v3, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 5141
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v3}, Landroid/webkit/WebTextView;->setNodeName(Ljava/lang/String;)V

    .line 5143
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebTextView;->setType(I)V

    .line 5144
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 5145
    .local v5, paddingRect:Landroid/graphics/Rect;
    if-eqz v5, :cond_fd

    .line 5148
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v13}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 5154
    :cond_fd
    if-nez v6, :cond_10e

    .line 5155
    sget-boolean v9, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v9, :cond_10c

    .line 5156
    const-string/jumbo v9, "webview"

    const-string/jumbo v10, "rebuildWebTextView null == text"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    :cond_10c
    const-string v6, ""

    .line 5160
    :cond_10e
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 5161
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 5162
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_ac

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v9}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 5163
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v9}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_ac

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #paddingRect:Landroid/graphics/Rect;
    :cond_127
    move v10, v14

    .line 5133
    goto :goto_be
.end method

.method public reduceWebViewPriority()V
    .registers 2

    .prologue
    .line 4747
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 4748
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4749
    return-void
.end method

.method public refreshPlugins(Z)V
    .registers 2
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4324
    return-void
.end method

.method public registerTiltListener()V
    .registers 4

    .prologue
    .line 6785
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_f

    .line 6787
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/WebView;->motionListener1:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 6788
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->registerTiltListener:Z

    .line 6790
    :cond_f
    return-void
.end method

.method public reload()V
    .registers 3

    .prologue
    .line 2384
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2386
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2387
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2388
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2389
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 4306
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4307
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .registers 9
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 9586
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 9587
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 9588
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 9589
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 9590
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9591
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 9592
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9593
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 24
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 9468
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 9471
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9476
    .local v5, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 9477
    iget v15, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    .line 9478
    .local v11, screenTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 9479
    .local v8, screenBottom:I
    sub-int v6, v8, v11

    .line 9480
    .local v6, height:I
    const/4 v13, 0x0

    .line 9482
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_f7

    .line 9483
    div-int/lit8 v7, v6, 0x3

    .line 9484
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/lit8 v16, v7, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_ed

    .line 9487
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    .line 9497
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_a8
    :goto_a8
    iget v15, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 9498
    .local v9, screenLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 9499
    .local v10, screenRight:I
    sub-int v14, v10, v9

    .line 9500
    .local v14, width:I
    const/4 v12, 0x0

    .line 9502
    .local v12, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_10e

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_10e

    .line 9503
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_106

    .line 9504
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 9512
    :cond_d8
    :goto_d8
    or-int v15, v13, v12

    if-eqz v15, :cond_120

    .line 9513
    if-nez p3, :cond_11e

    const/4 v15, 0x1

    :goto_df
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v15

    .line 9516
    :goto_ec
    return v15

    .line 9491
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_ed
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    add-int v16, v11, v7

    sub-int v13, v15, v16

    goto :goto_a8

    .line 9493
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_f7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_a8

    .line 9494
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    goto :goto_a8

    .line 9506
    .restart local v9       #screenLeft:I
    .restart local v10       #screenRight:I
    .restart local v12       #scrollXDelta:I
    .restart local v14       #width:I
    :cond_106
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_d8

    .line 9508
    :cond_10e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_d8

    .line 9509
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_d8

    .line 9513
    :cond_11e
    const/4 v15, 0x0

    goto :goto_df

    .line 9516
    :cond_120
    const/4 v15, 0x0

    goto :goto_ec
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 9381
    const/4 v6, 0x0

    .line 9382
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9383
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_e
    :goto_e
    move v7, v6

    .line 9413
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_f
    return v7

    .line 9386
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 9387
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9391
    const/4 v1, 0x0

    .line 9392
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_44

    move v7, v6

    .line 9406
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_f

    .line 9394
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_26
    const/16 v1, 0x13

    .line 9408
    :goto_28
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 9409
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_e

    .line 9397
    :sswitch_3a
    const/16 v1, 0x14

    .line 9398
    goto :goto_28

    .line 9400
    :sswitch_3d
    const/16 v1, 0x15

    .line 9401
    goto :goto_28

    .line 9403
    :sswitch_40
    const/16 v1, 0x16

    .line 9404
    goto :goto_28

    .line 9392
    nop

    :sswitch_data_44
    .sparse-switch
        0x11 -> :sswitch_3d
        0x21 -> :sswitch_26
        0x42 -> :sswitch_40
        0x82 -> :sswitch_3a
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .registers 6
    .parameter "hrefMsg"

    .prologue
    .line 2740
    if-eqz p1, :cond_6

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_7

    .line 2748
    :cond_6
    :goto_6
    return-void

    .line 2743
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2744
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x89

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_6
.end method

.method requestFormData(Ljava/lang/String;I)V
    .registers 8
    .parameter "name"
    .parameter "nodePointer"

    .prologue
    .line 5182
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5183
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5184
    .local v1, update:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 5185
    new-instance v2, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 5187
    .local v2, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5188
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5190
    .end local v0           #t:Ljava/lang/Thread;
    .end local v1           #update:Landroid/os/Message;
    .end local v2           #updater:Landroid/webkit/WebView$RequestFormData;
    :cond_26
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 2758
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_5

    .line 2766
    :goto_4
    return-void

    .line 2759
    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2760
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2761
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2762
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2763
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2765
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method requestLabel(II)V
    .registers 5
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 5199
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5201
    return-void
.end method

.method requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V
    .registers 14
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 10921
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 10922
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 10923
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 10925
    .local v5, action:I
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_3e

    .line 10926
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestListBox mFocusedNodePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusedNodeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inputFieldAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10931
    :cond_3e
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10933
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V
    .registers 14
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 10855
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 10856
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 10857
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 10858
    .local v5, action:I
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_44

    .line 10859
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestListBox mFocusedNodePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusedNodeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inputFieldAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Node Bound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10864
    :cond_44
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10866
    return-void
.end method

.method resetTrackballTime()V
    .registers 3

    .prologue
    .line 8091
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 8092
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 8
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 2163
    if-eqz p2, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v3, v4

    .line 2197
    :goto_6
    return v3

    .line 2166
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    .line 2167
    goto :goto_6

    .line 2170
    :cond_f
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2171
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2172
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$9;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_26} :catch_28

    .line 2197
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_26
    const/4 v3, 0x1

    goto :goto_6

    .line 2194
    :catch_28
    move-exception v3

    move-object v1, v3

    .line 2195
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_26
.end method

.method public restoreSelection()V
    .registers 3

    .prologue
    .line 6029
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6033
    :cond_e
    :goto_e
    return-void

    .line 6031
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_e
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 14
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 2215
    const/4 v6, 0x0

    .line 2216
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_a

    move-object v8, v6

    .line 2258
    :goto_9
    return-object v8

    .line 2219
    :cond_a
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 2220
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2223
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2224
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2228
    .local v3, index:I
    monitor-enter v5

    .line 2229
    :try_start_33
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2231
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 2234
    .local v7, size:I
    if-ltz v3, :cond_43

    if-lt v3, v7, :cond_46

    .line 2235
    :cond_43
    monitor-exit v5

    move-object v8, v9

    goto :goto_9

    .line 2237
    :cond_46
    const/4 v2, 0x0

    .local v2, i:I
    :goto_47
    if-ge v2, v7, :cond_60

    .line 2238
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2239
    .local v0, data:[B
    if-nez v0, :cond_55

    .line 2242
    monitor-exit v5

    move-object v8, v9

    goto :goto_9

    .line 2244
    :cond_55
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 2245
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 2237
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2248
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_60
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 2250
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 2251
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_76

    .line 2254
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 2256
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_74
    move-object v8, v6

    .line 2258
    goto :goto_9

    .line 2251
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_76
    move-exception v8

    :try_start_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v8
.end method

.method public resumeTimers()V
    .registers 3

    .prologue
    .line 3599
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    if-nez v0, :cond_e

    .line 3600
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3601
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    .line 3603
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    .line 3604
    return-void
.end method

.method public resumeWebViewPriority()V
    .registers 2

    .prologue
    .line 4753
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4754
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4755
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 6296
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewCore;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 7
    .parameter "b"
    .parameter "dest"

    .prologue
    .line 2073
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 2074
    :cond_4
    const/4 v2, 0x0

    .line 2109
    :goto_5
    return v2

    .line 2076
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 2079
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$8;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2104
    const-string/jumbo v2, "scrollX"

    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2105
    const-string/jumbo v2, "scrollY"

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2106
    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2107
    const-string/jumbo v2, "textwrapScale"

    iget v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2108
    const-string/jumbo v2, "overview"

    iget-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2109
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public saveSelection()V
    .registers 3

    .prologue
    .line 6022
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6026
    :cond_e
    :goto_e
    return-void

    .line 6024
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_e
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 12
    .parameter "outState"

    .prologue
    const/4 v9, 0x0

    .line 2021
    if-nez p1, :cond_5

    move-object v7, v9

    .line 2061
    :goto_4
    return-object v7

    .line 2026
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2027
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 2028
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 2031
    .local v6, size:I
    if-ltz v0, :cond_17

    if-ge v0, v6, :cond_17

    if-nez v6, :cond_19

    :cond_17
    move-object v7, v9

    .line 2032
    goto :goto_4

    .line 2034
    :cond_19
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2038
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2039
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    if-ge v3, v6, :cond_45

    .line 2040
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 2041
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_37

    .line 2044
    const-string/jumbo v7, "webview"

    const-string/jumbo v8, "saveState: Unexpected null history item."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 2045
    goto :goto_4

    .line 2047
    :cond_37
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 2048
    .local v1, data:[B
    if-nez v1, :cond_3f

    move-object v7, v9

    .line 2052
    goto :goto_4

    .line 2054
    :cond_3f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 2056
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_45
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2057
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_59

    .line 2058
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_59
    move-object v7, v5

    .line 2061
    goto :goto_4
.end method

.method public scaleAllPlugins()V
    .registers 2

    .prologue
    .line 6992
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 6993
    return-void
.end method

.method scrollFocusedTextInput(FI)V
    .registers 7
    .parameter "xPercent"
    .parameter "y"

    .prologue
    .line 8661
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_b

    .line 8670
    :cond_a
    :goto_a
    return-void

    .line 8664
    :cond_b
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_a
.end method

.method public scrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11934
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 11940
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_e

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1d

    .line 11941
    :cond_e
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 11942
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 11943
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 11944
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 11945
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 11955
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1d
    :goto_1d
    return-void

    .line 11953
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    goto :goto_1d
.end method

.method public selectAll()V
    .registers 2

    .prologue
    .line 5583
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_5

    .line 5590
    :cond_4
    :goto_4
    return-void

    .line 5584
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5585
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 5586
    :cond_12
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 5587
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5588
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5589
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_4
.end method

.method public selectDialogIsUp()Z
    .registers 2

    .prologue
    .line 5596
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method public selectedType()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 6004
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v3, v4

    .line 6017
    .end local p0
    :goto_10
    return v3

    .line 6006
    .restart local p0
    :cond_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6007
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6008
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 6009
    :try_start_1c
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3e

    .line 6012
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_32

    .line 6016
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3e

    .line 6017
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_10

    .line 6013
    .restart local p0
    :catch_32
    move-exception v0

    .line 6014
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 6016
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3e
    move-exception v3

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public selectionDone()V
    .registers 3

    .prologue
    .line 5611
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_13

    .line 5612
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 5613
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionDone(Landroid/webkit/WebView;)V

    .line 5614
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5615
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 5617
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_13
    return-void
.end method

.method public sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 6774
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6775
    return-void
.end method

.method public sendTextSelectionMoveEvent()V
    .registers 6

    .prologue
    .line 1435
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_23

    .line 1436
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1440
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_23

    .line 1441
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "sendTextSelectionMoveEvent : Sent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_23
    return-void
.end method

.method public sendselectionmessage()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 5837
    iget-boolean v0, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-ne v1, v0, :cond_29

    .line 5839
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "sendselectionmessage to HtmlComposerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5843
    iput-boolean v4, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 5845
    :cond_29
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1385
    iput-boolean p1, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 1386
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 11109
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 11110
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 11111
    return-void
.end method

.method public setCaretForEdit(Z)V
    .registers 6
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5869
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5878
    :cond_12
    :goto_12
    return-void

    .line 5871
    :cond_13
    if-eqz p1, :cond_1b

    .line 5872
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_12

    .line 5874
    :cond_1b
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 5875
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5876
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_12
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 5
    .parameter "certificate"

    .prologue
    .line 1871
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_1e

    .line 1872
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCertificate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_1e
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1876
    return-void
.end method

.method public setComposingRegion(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const-string/jumbo v2, "webview"

    .line 6239
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_12

    .line 6252
    :goto_11
    return-void

    .line 6240
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 6241
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 6243
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 6244
    :try_start_1b
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    .line 6246
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2a

    .line 6251
    :goto_25
    :try_start_25
    monitor-exit v1

    goto :goto_11

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v2

    .line 6247
    :catch_2a
    move-exception v0

    .line 6248
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2b
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6249
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_27

    goto :goto_25
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 4150
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4151
    return-void
.end method

.method public setDragTracker(Landroid/webkit/WebView$DragTracker;)V
    .registers 2
    .parameter "tracker"

    .prologue
    .line 6760
    iput-object p1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    .line 6761
    return-void
.end method

.method protected setEditable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 6185
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6191
    :cond_10
    :goto_10
    return-void

    .line 6187
    :cond_11
    if-eqz p1, :cond_1a

    .line 6188
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_10

    .line 6190
    :cond_1a
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_10
.end method

.method public setEditableSelection(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const-string/jumbo v2, "webview"

    .line 6220
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_12

    .line 6235
    :goto_11
    return-void

    .line 6221
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 6222
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 6224
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 6225
    :try_start_1b
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    .line 6227
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2a

    .line 6232
    :goto_25
    :try_start_25
    monitor-exit v1

    goto :goto_11

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v2

    .line 6228
    :catch_2a
    move-exception v0

    .line 6229
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2b
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6230
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_27

    goto :goto_25
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2821
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_7

    .line 2839
    :goto_6
    return-void

    .line 2822
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 2823
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2825
    :cond_10
    if-eqz p1, :cond_3b

    .line 2827
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_1f

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_1f

    .line 2828
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2830
    :cond_1f
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2833
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3b

    .line 2834
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10803ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    .line 2838
    :cond_3b
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_6
.end method

.method public setFindDialogHeight(I)V
    .registers 5
    .parameter "height"

    .prologue
    .line 3842
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_1e

    .line 3843
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFindDialogHeight height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    :cond_1e
    iput p1, p0, Landroid/webkit/WebView;->mFindHeight:I

    .line 3846
    return-void
.end method

.method public setFindIsUp(Z)V
    .registers 5
    .parameter "isUp"

    .prologue
    .line 3734
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 3735
    if-eqz p1, :cond_f

    .line 3736
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3739
    :cond_f
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_14

    .line 3741
    :goto_13
    return-void

    .line 3740
    :cond_14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_13
.end method

.method setFocusControllerInactive()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5796
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    .line 5798
    :goto_5
    return-void

    .line 5797
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_5
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 6349
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 6350
    .local v0, changed:Z
    if-nez v0, :cond_d

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_d

    .line 6357
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 6359
    :cond_d
    return v0
.end method

.method public setHandleTouchRevision(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 11328
    iput p1, p0, Landroid/webkit/WebView;->mHandleTouchRevision:I

    .line 11329
    return-void
.end method

.method public setHasRotateSupport(Z)V
    .registers 2
    .parameter "has"

    .prologue
    .line 456
    iput-boolean p1, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    .line 457
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .registers 2
    .parameter "overlay"

    .prologue
    .line 1786
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1787
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1904
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    return-void
.end method

.method public setIgnoreDoubleTap(Z)V
    .registers 2
    .parameter "ignore"

    .prologue
    .line 444
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    .line 445
    return-void
.end method

.method public setIgnoreFling(Z)V
    .registers 4
    .parameter "ignore"

    .prologue
    .line 462
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreFling:Z

    .line 463
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIgnoreFling:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_10

    .line 464
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 466
    :cond_10
    return-void
.end method

.method public setIgnoreViewSizeChanged(Z)V
    .registers 2
    .parameter "ignore"

    .prologue
    .line 438
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    .line 439
    return-void
.end method

.method public setInitialScale(I)V
    .registers 2
    .parameter "scaleInPercent"

    .prologue
    .line 2616
    iput p1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 2617
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1983
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1984
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 4623
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    .line 4624
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 4626
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4627
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .registers 2
    .parameter "setMap"

    .prologue
    .line 8087
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 8088
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .registers 6
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 1993
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1995
    return-void

    :cond_c
    move v2, v3

    .line 1993
    goto :goto_8
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 2002
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2003
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2006
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1680
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1681
    const/4 v3, 0x2

    if-eq p1, v3, :cond_3e

    .line 1682
    iget-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_3d

    .line 1683
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1684
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1685
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x108025a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1686
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1687
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1688
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1689
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1697
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_3d
    :goto_3d
    return-void

    .line 1692
    :cond_3e
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1693
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1694
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1695
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    goto :goto_3d
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 4210
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4211
    return-void
.end method

.method public setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 6769
    iput-object p1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 6770
    return-void
.end method

.method public setPluginRefreshDelay(I)V
    .registers 2
    .parameter "ms"

    .prologue
    .line 8802
    invoke-static {p1}, Landroid/webkit/WebViewCore;->setPluginRefreshDelay(I)V

    .line 8803
    return-void
.end method

.method public setPreserveZoom(Z)V
    .registers 2
    .parameter "preserveZoom"

    .prologue
    .line 1389
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1390
    return-void
.end method

.method public setPreventDefaultTimeout(I)V
    .registers 2
    .parameter "timeout"

    .prologue
    .line 11145
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    .line 11146
    return-void
.end method

.method public setScrollAndZoom(FIIFFZ)V
    .registers 15
    .parameter "newScale"
    .parameter "newScrollX"
    .parameter "newScrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "updatePlugins"

    .prologue
    .line 7008
    iput p4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 7009
    iput p5, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 7011
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_c

    .line 7012
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7014
    :cond_c
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_14

    .line 7015
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 7018
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_a1

    const/4 v2, 0x1

    move v1, v2

    .line 7019
    .local v1, sameScale:Z
    :goto_1c
    if-nez v1, :cond_21

    .line 7020
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7022
    :cond_21
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 7024
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 7025
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 7026
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 7028
    if-nez v1, :cond_64

    .line 7031
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_5b

    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget v6, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_a5

    :cond_5b
    const/4 v2, 0x1

    move v0, v2

    .line 7035
    .local v0, reflowNow:Z
    :goto_5d
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v3, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 7040
    .end local v0           #reflowNow:Z
    :cond_64
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 7041
    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 7043
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_83

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 7047
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 7053
    :cond_83
    const/16 v2, 0x8

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7054
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7055
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-direct {p0, p4, p5, v2, v3}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7071
    if-eqz p6, :cond_96

    .line 7072
    iget-object v2, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 7075
    :cond_96
    iput p2, p0, Landroid/view/View;->mScrollX:I

    .line 7076
    iput p3, p0, Landroid/view/View;->mScrollY:I

    .line 7078
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 7079
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 7080
    return-void

    .line 7018
    .end local v1           #sameScale:Z
    :cond_a1
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_1c

    .line 7031
    .restart local v1       #sameScale:Z
    :cond_a5
    const/4 v2, 0x0

    move v0, v2

    goto :goto_5d
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    .line 1772
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_11

    .line 1774
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1778
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1779
    return-void

    .line 1776
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_d
.end method

.method setSelection(II)V
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5018
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 5019
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5020
    return-void
.end method

.method public setSizeChangedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 450
    iput-object p1, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    .line 451
    return-void
.end method

.method public setTextSelecitonAt(II)Z
    .registers 7
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v3, 0x1

    .line 1340
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-ne v2, v3, :cond_22

    iget-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v2, :cond_22

    .line 1341
    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 1342
    .local v0, contentX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 1343
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->selectClosestWord(II)V

    move v2, v3

    .line 1346
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setTextSelecitonManualAtContentPoint(II)Z
    .registers 11
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1360
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_58

    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v0, :cond_58

    .line 1361
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1362
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1364
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1366
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1367
    iput-boolean v7, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 1368
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1369
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1370
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_56

    .line 1371
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTextSelecitonManualAtContentPoint x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "y :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move v0, v7

    .line 1375
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :goto_57
    return v0

    :cond_58
    move v0, v4

    goto :goto_57
.end method

.method public setTouchInterval(I)V
    .registers 2
    .parameter "interval"

    .prologue
    .line 11136
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 11137
    return-void
.end method

.method public setUpSelect()V
    .registers 4

    .prologue
    .line 5540
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_5

    .line 5560
    :cond_4
    :goto_4
    return-void

    .line 5541
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5542
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_4

    .line 5543
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5544
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5546
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5547
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 5548
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 5549
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5550
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5551
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5559
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_39
    invoke-direct {p0}, Landroid/webkit/WebView;->hideCursor()V

    goto :goto_4

    .line 5552
    :cond_3d
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_59

    .line 5553
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5554
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_39

    .line 5556
    :cond_59
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5557
    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_39
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .registers 2
    .parameter "overlay"

    .prologue
    .line 1794
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1795
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 4193
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4194
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 4160
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4161
    return-void
.end method

.method public setWebTextSelectionListener(Landroid/webkit/WebView$WebTextSelectionListener;)V
    .registers 2
    .parameter "Listener"

    .prologue
    .line 1398
    iput-object p1, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 1399
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 4130
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4131
    return-void
.end method

.method public shouldForwardTouchEvent()Z
    .registers 3

    .prologue
    .line 7098
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_13

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public stopLoading()V
    .registers 3

    .prologue
    .line 2376
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2377
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2378
    return-void
.end method

.method switchOutDrawHistory()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4966
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_6

    .line 4984
    :cond_5
    :goto_5
    return-void

    .line 4967
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4968
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 4969
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4970
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4971
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 4972
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 4973
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollX:I

    .line 4974
    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 4975
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v0, v2, :cond_36

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v1, v2, :cond_47

    .line 4976
    :cond_36
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 4977
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4979
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_5

    .line 4981
    :cond_47
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_5
.end method

.method public textChangedForWatcher()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6200
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_c

    .line 6201
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6202
    :cond_c
    return-void
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 8696
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v4

    .line 8704
    :goto_8
    return v1

    .line 8699
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 8700
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getTop()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 8702
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8703
    .local v0, result:Z
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    move v1, v0

    .line 8704
    goto :goto_8
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 8713
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8719
    :goto_6
    return-void

    .line 8716
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8717
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8718
    .local v1, y:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_6
.end method

.method public transformPlugins(Landroid/graphics/Matrix;Z)V
    .registers 4
    .parameter "matrix"
    .parameter "zoomInProgress"

    .prologue
    .line 9050
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    if-nez v0, :cond_5

    .line 9054
    :goto_4
    return-void

    .line 9053
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/ViewManager;->transformAll(Landroid/graphics/Matrix;Z)V

    goto :goto_4
.end method

.method public undoRedoStateReset()V
    .registers 3

    .prologue
    .line 6159
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6163
    :cond_e
    :goto_e
    return-void

    .line 6161
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_e
.end method

.method public unregisterTiltListener()V
    .registers 3

    .prologue
    .line 6794
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_e

    .line 6796
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/WebView;->motionListener1:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 6797
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->registerTiltListener:Z

    .line 6799
    :cond_e
    return-void
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .registers 3
    .parameter "updatedText"

    .prologue
    .line 11155
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 11156
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .registers 9
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 1700
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1702
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_54

    .line 1703
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 1705
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1706
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1707
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1708
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1709
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1710
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1711
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1712
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 1714
    .end local v1           #scaleFactor:F
    :cond_54
    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .registers 5
    .parameter "curSelStart"
    .parameter "curSelEnd"

    .prologue
    .line 5832
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5834
    :goto_e
    return-void

    .line 5833
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_e
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1598
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1603
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1608
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_15
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSupportZoomWithoutControls()Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_1b
    const/4 v2, 0x1

    :goto_1c
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    .line 1610
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    .line 1612
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-nez v2, :cond_4c

    .line 1613
    new-instance v2, Landroid/webkit/WebviewScaleGestureDetector;

    new-instance v3, Landroid/webkit/WebView$ScaleDetectorListener;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/webkit/WebviewScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    .line 1616
    sget-object v2, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v2, :cond_49

    .line 1617
    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object p0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1623
    :cond_49
    :goto_49
    return-void

    .line 1608
    .restart local p0
    :cond_4a
    const/4 v2, 0x0

    goto :goto_1c

    .line 1620
    :cond_4c
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-nez v2, :cond_49

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-eqz v2, :cond_49

    .line 1621
    iput-object v4, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    goto :goto_49
.end method

.method public updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIFFFI)V
    .registers 18
    .parameter "parentView"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 8792
    iget-object v0, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 8793
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v1, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/ViewManager;->updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIIIFFFI)V

    .line 8796
    return-void
.end method

.method public userScalable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 426
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-eqz v0, :cond_7

    move v0, v2

    .line 432
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    move v0, v2

    goto :goto_6
.end method

.method public viewToContentDimension(I)I
    .registers 4
    .parameter "d"

    .prologue
    .line 2848
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 2857
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .registers 4
    .parameter "x"

    .prologue
    .line 2874
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .registers 3
    .parameter "y"

    .prologue
    .line 2866
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .registers 4
    .parameter "y"

    .prologue
    .line 2883
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .registers 4

    .prologue
    const/high16 v1, 0x3f00

    .line 8618
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8619
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8621
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8622
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8623
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8624
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8625
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .registers 4

    .prologue
    const/high16 v1, 0x3f00

    .line 8634
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8636
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8637
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8638
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8639
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8640
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    move-result v0

    return v0
.end method
