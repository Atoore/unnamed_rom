.class public Lcom/android/mms/ui/ComposeMessage;
.super Landroid/widget/FrameLayout;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;,
        Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;,
        Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;,
        Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessage$SendThreadListener;,
        Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;,
        Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupCancelListener;,
        Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;,
        Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static isComposerClosed:Z

.field public static isSipVisible:Z

.field private static mDelAnimProgressDialog:Landroid/app/ProgressDialog;

.field public static mEncodingType:I

.field private static mSendCompleteRun:Ljava/lang/Runnable;

.field private static sCachedView:Lcom/android/mms/ui/ComposeMessage;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;


# instance fields
.field private animView:Landroid/view/View;

.field private displayDensity:F

.field private isAlreadyShown:Z

.field isEnter:Z

.field private isHideCompose:Z

.field private isResizingImage:Z

.field private lastView:Landroid/view/View;

.field private locale:Ljava/util/Locale;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

.field private mAttachButton:Landroid/widget/ImageButton;

.field private mAttachDialog:Landroid/app/AlertDialog;

.field private mAttachListAdapter:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

.field private mAttachListPanel:Landroid/widget/LinearLayout;

.field private mAttachmentProgressDialog:Landroid/app/ProgressDialog;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private mBubbleFontSize:F

.field private mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private final mClipboardHandler:Landroid/os/Handler;

.field private mComposerPanel:Landroid/widget/ScrollView;

.field private mComposerPanelBg:I

.field private mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mDeleteUri:Landroid/net/Uri;

.field private mDraftSavedOnStop:Z

.field private mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

.field private mEditorBg:I

.field private mExitOnSent:Z

.field private mFlagDeletedAll:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntent:Landroid/content/Intent;

.field private mInvalidRecipientsDialog:Landroid/app/AlertDialog;

.field private mIsAnimationEnable:Z

.field private mIsDeleteAnimation:Z

.field private mIsDeleteMode:Z

.field private mIsDeleteWithAnimation:Z

.field private mIsForwardedMessage:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mIsNeedToAnimation:Z

.field private mIsOnScreen:Z

.field private mIsOpenToButtonMenu:Z

.field private mIsTranslateMenuON:Z

.field private mKeepToButtonVisible:Z

.field private final mListKeyListener:Landroid/view/View$OnKeyListener;

.field private mLocale:Ljava/lang/String;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMessageHandler:Landroid/os/Handler;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private final mMmsConainerHandler:Landroid/os/Handler;

.field private mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

.field private mMsgCount:I

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

.field mPasteEvent:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mPossiblePendingNotification:Z

.field private mRecipientButton:Landroid/widget/ImageButton;

.field private mRecipientId:I

.field private mRecipientList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field public final mRecipientsEditorHandler:Landroid/os/Handler;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mRemainingInCurrentMessage:I

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private mSavedToButtonRecipients:Ljava/lang/String;

.field private mScreenWidth:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedPosition:I

.field private mSendButton:Landroid/widget/Button;

.field private mSendConfirmDialog:Landroid/app/AlertDialog;

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextColor:I

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mTextFieldColor:I

.field private mTextOnTop:Z

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private final mToButtonDeleteHandler:Landroid/os/Handler;

.field private mToButtonDialog:Landroid/app/AlertDialog;

.field private mToButtonId:I

.field private mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

.field private mToButtonList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/ui/ToButton;",
            ">;"
        }
    .end annotation
.end field

.field private mToastForDraftSave:Z

.field private mToastHandler:Landroid/os/Handler;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private reqReceiver:Landroid/content/BroadcastReceiver;

.field private sendAnimSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    .line 406
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isComposerClosed:Z

    .line 2901
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessage;->mSendCompleteRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 201
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 331
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsAnimationEnable:Z

    .line 341
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteAnimation:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isAlreadyShown:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isResizingImage:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mTextOnTop:Z

    .line 401
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    .line 402
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    .line 404
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsForwardedMessage:Z

    .line 405
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteWithAnimation:Z

    .line 409
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mPasteEvent:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    .line 410
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsNeedToAnimation:Z

    .line 420
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsTranslateMenuON:Z

    .line 421
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOpenToButtonMenu:Z

    .line 422
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 423
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 440
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isHideCompose:Z

    .line 481
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$1;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsConainerHandler:Landroid/os/Handler;

    .line 581
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$2;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageListItemHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$3;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mClipboardHandler:Landroid/os/Handler;

    .line 624
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$4;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mListKeyListener:Landroid/view/View$OnKeyListener;

    .line 639
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$5;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 679
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$6;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1126
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$11;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1461
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 1463
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$12;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 1490
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$13;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    .line 2272
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isEnter:Z

    .line 2273
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOnScreen:Z

    .line 2445
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mDraftSavedOnStop:Z

    .line 2876
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$25;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 2903
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 2915
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    .line 2917
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    .line 3025
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$30;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageHandler:Landroid/os/Handler;

    .line 4896
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$47;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$47;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 4955
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$48;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$48;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 5955
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$52;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$52;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 6364
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$56;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$56;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 7120
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$67;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$67;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDeleteHandler:Landroid/os/Handler;

    .line 7225
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$68;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$68;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditorHandler:Landroid/os/Handler;

    .line 7523
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 7529
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 7535
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 7547
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mFlagDeletedAll:Z

    .line 8028
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$71;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$71;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsAnimationEnable:Z

    .line 341
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteAnimation:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isAlreadyShown:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isResizingImage:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mTextOnTop:Z

    .line 401
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    .line 402
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    .line 404
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsForwardedMessage:Z

    .line 405
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteWithAnimation:Z

    .line 409
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mPasteEvent:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    .line 410
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsNeedToAnimation:Z

    .line 420
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsTranslateMenuON:Z

    .line 421
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOpenToButtonMenu:Z

    .line 422
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 423
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 440
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isHideCompose:Z

    .line 481
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$1;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsConainerHandler:Landroid/os/Handler;

    .line 581
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$2;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageListItemHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$3;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mClipboardHandler:Landroid/os/Handler;

    .line 624
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$4;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mListKeyListener:Landroid/view/View$OnKeyListener;

    .line 639
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$5;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 679
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$6;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1126
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$11;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1461
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 1463
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$12;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 1490
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$13;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    .line 2272
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->isEnter:Z

    .line 2273
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOnScreen:Z

    .line 2445
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mDraftSavedOnStop:Z

    .line 2876
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$25;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 2903
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 2915
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    .line 2917
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    .line 3025
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$30;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageHandler:Landroid/os/Handler;

    .line 4896
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$47;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$47;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 4955
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$48;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$48;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 5955
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$52;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$52;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 6364
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$56;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$56;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 7120
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$67;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$67;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDeleteHandler:Landroid/os/Handler;

    .line 7225
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$68;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$68;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditorHandler:Landroid/os/Handler;

    .line 7523
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 7529
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 7535
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 7547
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mFlagDeletedAll:Z

    .line 8028
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$71;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$71;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 206
    return-void
.end method

.method private AddText(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "Mms/ComposeMessage"

    .line 8130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 8154
    :goto_0
    return v0

    .line 8133
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 8134
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 8135
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-lez v1, :cond_2

    .line 8138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8147
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8148
    invoke-direct {p0, v0, v1, v3}, Lcom/android/mms/ui/ComposeMessage;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 8152
    :goto_2
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "AddText..."

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8153
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddText text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 8154
    const/4 v0, 0x1

    goto :goto_0

    .line 8150
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method private AddToButtonInPanel()V
    .locals 11

    .prologue
    .line 7165
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 7202
    :cond_0
    return-void

    .line 7168
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v9, :cond_2

    .line 7169
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 7171
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 7172
    iget v9, p0, Lcom/android/mms/ui/ComposeMessage;->mScreenWidth:I

    const/16 v10, 0x36

    sub-int v6, v9, v10

    .line 7174
    .local v6, width:I
    const/4 v7, 0x0

    .line 7175
    .local v7, x:I
    const/16 v8, 0xa

    .line 7178
    .local v8, y:I
    const/16 v1, 0x38

    .line 7184
    .local v1, listHeight:I
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v9}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ToButton;

    .line 7186
    .local v4, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7188
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/android/mms/ui/ToButton;->setText(Ljava/lang/CharSequence;)V

    .line 7189
    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lcom/android/mms/ui/ComposeMessage;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v9

    add-int/lit8 v5, v9, 0x14

    .line 7190
    .local v5, toButtonWidth:I
    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    .line 7192
    .local v3, tempX:I
    if-lez v7, :cond_3

    if-le v3, v6, :cond_3

    .line 7193
    const/4 v7, 0x0

    .line 7194
    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    .line 7195
    add-int/2addr v8, v1

    .line 7198
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9, v4, v7, v8}, Lcom/android/mms/ui/ToButtonLayout;->addButton(Landroid/view/View;II)V

    .line 7200
    move v7, v3

    .line 7201
    goto :goto_0
.end method

.method private CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "recipient"
    .parameter "recipients"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 8282
    :goto_0
    return v3

    .line 8253
    :cond_0
    const/4 v0, 0x0

    .line 8256
    .local v0, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 8257
    const/4 v0, 0x1

    .line 8260
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8261
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8262
    .local v2, r:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 8263
    goto :goto_0

    .line 8266
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8267
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8268
    .restart local v2       #r:Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    .line 8269
    goto :goto_0

    .line 8273
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    .line 8276
    :cond_6
    if-ne v0, v4, :cond_7

    move v3, v6

    .line 8277
    goto :goto_0

    .line 8279
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientList:Ljava/util/SortedMap;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8280
    iget v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientId:I

    .line 8282
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 2
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 7212
    const/4 v0, 0x0

    .line 7213
    .local v0, ret:I
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 7214
    return v0
.end method

.method private MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0901a9

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 6895
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 6938
    :cond_0
    :goto_0
    return-void

    .line 6898
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6900
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 6901
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v4

    .line 6903
    if-eqz p2, :cond_2

    if-ne v4, v7, :cond_2

    move v4, v6

    .line 6906
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 6907
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showMaxRecipientToast()V

    .line 6921
    :cond_3
    if-lez v3, :cond_4

    .line 6922
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->UpdateToButtonPanel(Z)V

    .line 6924
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6925
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6931
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$62;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$62;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6909
    :cond_5
    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 6910
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showDupplicatedRecipientToast()V

    move v0, v3

    :goto_2
    move v3, v0

    .line 6919
    goto/16 :goto_1

    .line 6911
    :cond_6
    if-ne v4, v7, :cond_8

    .line 6912
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 6913
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6915
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_2

    .line 6916
    :cond_8
    if-nez v4, :cond_9

    .line 6917
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_2
.end method

.method private MakeToButtons(Ljava/lang/String;Z)I
    .locals 9
    .parameter "recipient"
    .parameter "addInvalidRecipient"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 7018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 7117
    :goto_0
    return v5

    .line 7021
    :cond_0
    const/4 v1, 0x0

    .line 7024
    .local v1, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 7025
    const/4 v1, 0x1

    .line 7028
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7029
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 7030
    .local v0, btn:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 7031
    goto :goto_0

    .line 7034
    .end local v0           #btn:Lcom/android/mms/ui/ToButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7035
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 7036
    .restart local v0       #btn:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    .line 7037
    goto :goto_0

    .line 7041
    .end local v0           #btn:Lcom/android/mms/ui/ToButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v1, 0x1

    .line 7044
    :cond_6
    if-ne v1, v7, :cond_7

    if-nez p2, :cond_7

    move v5, v8

    .line 7045
    goto :goto_0

    .line 7048
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 7049
    .local v3, recipientLimit:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lt v5, v3, :cond_8

    .line 7050
    const/4 v5, 0x2

    goto :goto_0

    .line 7052
    :cond_8
    new-instance v4, Lcom/android/mms/ui/ToButton;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonId:I

    invoke-direct {v4, v5, v6, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 7053
    .local v4, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 7054
    new-instance v5, Lcom/android/mms/ui/ComposeMessage$63;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessage$63;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7060
    new-instance v5, Lcom/android/mms/ui/ComposeMessage$64;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessage$64;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7067
    new-instance v5, Lcom/android/mms/ui/ComposeMessage$65;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessage$65;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7088
    new-instance v5, Lcom/android/mms/ui/ComposeMessage$66;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessage$66;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 7111
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7112
    iget v5, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonId:I

    .line 7114
    if-eqz v1, :cond_9

    move v5, v8

    .line 7115
    goto/16 :goto_0

    .line 7117
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private MakeToButtonsByRecipientEditor(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 6941
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_1

    .line 6977
    :cond_0
    :goto_0
    return-void

    .line 6944
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6945
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6948
    const-string v1, "[,;]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6949
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 6953
    array-length v1, v0

    move v2, v3

    move v4, v3

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 6955
    invoke-static {v5}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6957
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v5

    .line 6959
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 6960
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showMaxRecipientToast()V

    .line 6972
    :cond_2
    if-lez v4, :cond_3

    .line 6973
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->UpdateToButtonPanel(Z)V

    .line 6975
    :cond_3
    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    .line 6976
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto :goto_0

    .line 6962
    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 6963
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showDupplicatedRecipientToast()V

    .line 6953
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6964
    :cond_6
    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 6965
    add-int/lit8 v3, v3, 0x1

    .line 6966
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6967
    :cond_7
    if-nez v5, :cond_5

    .line 6968
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private MakeToButtonsByString(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 6980
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7004
    :goto_0
    return-void

    .line 6983
    :cond_0
    const-string v0, "[,;]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6985
    array-length v1, v0

    move v2, v6

    move v3, v6

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 6987
    invoke-static {v4}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6989
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v4

    .line 6990
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 7000
    :cond_1
    if-lez v3, :cond_2

    .line 7001
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessage;->UpdateToButtonPanel(Z)V

    .line 7003
    :cond_2
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MakeToButtonsByString count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6993
    :cond_3
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 6994
    add-int/lit8 v3, v3, 0x1

    .line 6985
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6995
    :cond_5
    if-nez v4, :cond_4

    .line 6996
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private RemoveToButton(I)V
    .locals 2
    .parameter "toButtonId"

    .prologue
    .line 7127
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->clearFocusAllToButtons()V

    .line 7129
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7131
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7132
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->AddToButtonInPanel()V

    .line 7138
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 7139
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setRecipientsOnRecipientsEditor()V

    .line 7140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->UpdateWorkingRecipients(Z)V

    .line 7141
    return-void

    .line 7134
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 7135
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private UpdateToButtonPanel(Z)V
    .locals 2
    .parameter "updateToButtonLayout"

    .prologue
    const/4 v1, 0x0

    .line 6870
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setRecipientsOnRecipientsEditor()V

    .line 6871
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->UpdateWorkingRecipients(Z)V

    .line 6873
    if-eqz p1, :cond_0

    .line 6874
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6875
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 6876
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->AddToButtonInPanel()V

    .line 6880
    :cond_0
    :goto_0
    return-void

    .line 6878
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method

.method private UpdateWorkingRecipients(Z)V
    .locals 3
    .parameter "correctAttachmentState"

    .prologue
    const/4 v2, 0x1

    .line 6883
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    .line 6884
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 6885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 6886
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6887
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 6889
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    .line 6892
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestFocusOnConverationList()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/ComposeMessage;Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessage;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/ComposeMessage;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessage;->isUnderLength(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->updatePresence(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageContactHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isHideCompose:Z

    return v0
.end method

.method static synthetic access$10500(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize(Z)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showAttachListPanel()V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ToButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/mms/ui/ComposeMessage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDeleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessage;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setFocusOnPreToButton()V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setFocusOnNextToButton()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Lcom/android/mms/ui/ComposeMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->RemoveToButton(I)V

    return-void
.end method

.method static synthetic access$11302(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOpenToButtonMenu:Z

    return p1
.end method

.method static synthetic access$11402(Lcom/android/mms/ui/ComposeMessage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$11500(Lcom/android/mms/ui/ComposeMessage;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/mms/ui/ComposeMessage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mClipboardHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->deleteMessage()V

    return-void
.end method

.method static synthetic access$1700()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/android/mms/ui/ComposeMessage;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessage;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->startDeleteAnimation([I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteWithAnimation:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteWithAnimation:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsForwardedMessage:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestClose()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isAlreadyShown:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->isAlreadyShown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->UpdateToButtonPanel(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkInputModeAndSendMessage()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/ComposeMessage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->drawComposerPanel()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize()V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ComposeMessage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessage;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonsByRecipientEditor(ZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessage;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->AddToButtonInPanel()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setFocusOnLastToButton()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->setSendButtonText(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->resetMessage()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/android/mms/ui/ComposeMessage;->mSendCompleteRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessage;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->showAddAttachmentDialog(ZI)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->startSendAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ComposeMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->startSendAnimationPrepare(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->goToConversationList()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessage;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->setSlideDuration(II)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessage;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->startActivityforAddMedia(IZ)V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/mms/ui/ComposeMessage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->addtext(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->chooseContact(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessage;ILandroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessage;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->getImportMediaCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessage;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessage;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessage;->addImage(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessage;->addVideo(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessage;->addAudio(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessage;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsConainerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessage;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessage;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showToast()V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessage;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View$OnKeyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mListKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkPendingNotification()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ComposeMessage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDraftSavedOnStop:Z

    return v0
.end method

.method static synthetic access$9102(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mDraftSavedOnStop:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOnScreen:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->hideMessageList(Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/android/mms/ui/ComposeMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mFlagDeletedAll:Z

    return p1
.end method

.method private addAudio(Landroid/net/Uri;IZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6650
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 6652
    const v2, 0x7f0900db

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 6654
    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :cond_0
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1244
    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1245
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v5, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1248
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1249
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1251
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1252
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1255
    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1256
    const/4 v3, 0x0

    .line 1257
    if-ltz v2, :cond_8

    .line 1258
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1259
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 1262
    :goto_2
    const-string v3, "mailto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1263
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->haveEmailContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    .line 1267
    :goto_3
    if-eqz v0, :cond_1

    .line 1268
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1269
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    const/16 v3, 0x7f

    invoke-interface {p1, v5, v3, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v5

    .line 1263
    goto :goto_3

    .line 1264
    :cond_4
    const-string v3, "tel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1265
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_3

    .line 1275
    :cond_6
    return-void

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    move-object v2, v0

    move-object v0, v3

    goto :goto_2
.end method

.method private addDeleteSoftKey()V
    .locals 3

    .prologue
    .line 8076
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_0

    .line 8117
    :goto_0
    return-void

    .line 8079
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 8081
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090098

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 8082
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 8083
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$72;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$72;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8089
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8091
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09006a

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 8092
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 8093
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8094
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$73;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$73;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8100
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$74;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$74;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8116
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addImage(Landroid/net/Uri;IZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6554
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6555
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6557
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 6560
    const/4 v0, -0x4

    if-eq v1, v0, :cond_1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6564
    :cond_1
    if-nez p4, :cond_2

    .line 6565
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$58;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$58;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6573
    :cond_2
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6574
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 6577
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessage;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    .line 6595
    :goto_0
    return-void

    .line 6581
    :cond_3
    const/4 v0, -0x8

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6585
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6586
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 6587
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessage;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    goto :goto_0

    .line 6591
    :cond_4
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method private addMedia(ILandroid/net/Uri;ZZZ)V
    .locals 9
    .parameter "type"
    .parameter "fileUri"
    .parameter "append"
    .parameter "sendMultiple"
    .parameter "saveMms"

    .prologue
    .line 6690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 6692
    .local v2, location:I
    packed-switch p1, :pswitch_data_0

    .line 6717
    :goto_0
    :pswitch_0
    if-nez p5, :cond_0

    if-nez p4, :cond_1

    .line 6718
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 6720
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 6721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 6725
    :cond_1
    return-void

    .line 6694
    :pswitch_1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addImage(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 6697
    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addVideo(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 6700
    :pswitch_3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addAudio(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 6703
    :pswitch_4
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 6706
    :pswitch_5
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 6709
    :pswitch_6
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 6712
    :pswitch_7
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 6692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 6728
    if-eqz p2, :cond_0

    .line 6729
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 6731
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$60;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$60;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6765
    :cond_0
    :goto_0
    return-void

    .line 6740
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6741
    const/4 v0, 0x1

    move v1, v0

    .line 6760
    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 6761
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 6742
    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6743
    const/4 v0, 0x2

    move v1, v0

    goto :goto_1

    .line 6744
    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6745
    const/4 v0, 0x3

    move v1, v0

    goto :goto_1

    .line 6746
    :cond_4
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6747
    const/4 v0, 0x6

    move v1, v0

    goto :goto_1

    .line 6748
    :cond_5
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6749
    const/4 v0, 0x7

    move v1, v0

    goto :goto_1

    .line 6750
    :cond_6
    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6751
    const/16 v0, 0x8

    move v1, v0

    goto :goto_1

    .line 6752
    :cond_7
    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6753
    const/16 v0, 0x9

    move v1, v0

    goto :goto_1

    .line 6756
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6757
    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6758
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/ComposeMessage;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    move v1, v5

    goto :goto_1
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    .line 1163
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessage;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 1164
    return-void
.end method

.method private addRawMedia(Landroid/net/Uri;ZZZI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09015d

    const/4 v8, 0x0

    .line 6657
    const-string v0, "Mms:app"

    invoke-static {v0, v8}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6658
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRawMedia: append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6660
    :cond_0
    const/4 v0, -0x1

    .line 6662
    if-eqz p3, :cond_1

    .line 6663
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkCRForRawAttachment()V

    .line 6665
    :cond_1
    const/16 v1, 0x1c

    if-eq v1, p5, :cond_2

    const/16 v1, 0x14

    if-eq v1, p5, :cond_2

    const/16 v1, 0x1a

    if-eq v1, p5, :cond_2

    const/16 v1, 0x1b

    if-eq v1, p5, :cond_2

    const/16 v1, 0x21

    if-ne v1, p5, :cond_4

    .line 6669
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 6670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v0

    move v1, v0

    .line 6673
    :goto_0
    const v2, 0x7f09015d

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 6674
    if-nez v1, :cond_3

    .line 6675
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$59;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$59;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6686
    :cond_3
    :goto_1
    return-void

    .line 6682
    :catch_0
    move-exception v0

    .line 6683
    const/4 v1, -0x5

    move-object v0, p0

    move v2, v9

    move-object v3, p1

    move v4, p5

    move v5, v8

    move v6, p2

    .line 6684
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 6338
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6339
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1222
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMessage;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1226
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1230
    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;IZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6640
    if-eqz p1, :cond_0

    .line 6641
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 6643
    const v2, 0x7f0900dd

    const/16 v4, 0xc

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 6646
    :cond_0
    return-void
.end method

.method private addtext(I)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "intent.action.INTERACTION_LIST"

    const-string v2, "android.intent.action.PICK"

    .line 3743
    packed-switch p1, :pswitch_data_0

    .line 3790
    :goto_0
    return-void

    .line 3745
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3746
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3747
    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3751
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3753
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3755
    const/16 v1, 0x1f

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3756
    :catch_0
    move-exception v0

    .line 3757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3758
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3759
    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3760
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3761
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3762
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3767
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3768
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3771
    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3772
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3776
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3777
    const-string v1, "text/tasks_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3778
    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3782
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3783
    const-string v1, "image_location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3784
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3785
    const/16 v1, 0x23

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5272
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;I)Z

    .line 5274
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendButtonState()V

    .line 5276
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 5277
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 5278
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5279
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkSubjectMargin()V

    .line 5287
    :goto_0
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "  attachmentListRemoveClick  call  findAvailableViewToFocus "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5288
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->findAvailableViewToFocus()V

    .line 5293
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    .line 5294
    return-void

    .line 5281
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0
.end method

.method private bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V
    .locals 3
    .parameter "list"

    .prologue
    .line 1538
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToContactHeaderWidget(),list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 1547
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    goto :goto_0
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f090067

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3250
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3252
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    .line 3253
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3257
    :cond_1
    if-ne v2, v5, :cond_4

    .line 3258
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    .line 3259
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3260
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3261
    const/16 v1, 0x7f

    invoke-interface {p1, v4, v1, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020062

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3272
    :cond_3
    :goto_1
    return-void

    .line 3268
    :cond_4
    if-le v2, v5, :cond_3

    .line 3269
    const/16 v0, 0x82

    invoke-interface {p1, v4, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private calcAttachListHeight(Landroid/widget/ListView;)I
    .locals 6
    .parameter "attachList"

    .prologue
    .line 5257
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 5258
    .local v0, dividerHeight:I
    const/16 v2, 0x44

    .line 5262
    .local v2, itemHeight:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 5265
    .local v1, itemCount:I
    add-int v4, v2, v0

    mul-int/2addr v4, v1

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 5266
    .local v3, result:I
    return v3
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 1767
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1771
    const/4 v0, 0x1

    .line 1773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 1757
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1761
    const/4 v0, 0x1

    .line 1763
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCRForRawAttachment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4399
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 4401
    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4403
    :cond_1
    return-void
.end method

.method private checkInputModeAndSendMessage()V
    .locals 3

    .prologue
    .line 998
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "checkInputModeAndSendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 1002
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$SendThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessage$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1011
    :goto_0
    return-void

    .line 1010
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->sendMessage(Z)V

    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5976
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mPossiblePendingNotification:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 5977
    .local v0, flag:Z
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPendingNotification(),flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5979
    if-eqz v0, :cond_0

    .line 5980
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 5981
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mPossiblePendingNotification:Z

    .line 5983
    :cond_0
    return-void

    .end local v0           #flag:Z
    :cond_1
    move v0, v4

    .line 5976
    goto :goto_0
.end method

.method private checkSubjectMargin()V
    .locals 2

    .prologue
    .line 5297
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 5309
    :goto_0
    return-void

    .line 5300
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5303
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 5304
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 5308
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5306
    :cond_1
    const/4 v1, -0x8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method private chooseContact(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 3795
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 3796
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3797
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3798
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->startActivity(Landroid/content/Intent;)V

    .line 3800
    return-void
.end method

.method private clearFocusAllToButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7242
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 7244
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7245
    .local v1, id:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ToButton;

    .line 7247
    .local v2, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7248
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 7249
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 7252
    .end local v1           #id:I
    .end local v2           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_1
    return-void
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5436
    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5437
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5438
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5439
    if-eqz p2, :cond_0

    const v1, 0x7f090092

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5441
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5442
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 5439
    :cond_0
    const v1, 0x7f090091

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5406
    const v0, 0x7f03000c

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5407
    const v0, 0x7f080042

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5408
    const v1, 0x7f080041

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5409
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 5411
    if-nez p2, :cond_0

    .line 5412
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 5422
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5423
    if-eqz p1, :cond_1

    const v1, 0x7f090090

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 5414
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 5415
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 5416
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$51;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessage$51;-><init>(Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5423
    :cond_1
    const v1, 0x7f09008f

    goto :goto_1
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x1080027

    .line 1014
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "confirmSendMessageIfNeeded()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkInputModeAndSendMessage()V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1037
    const/4 v1, 0x0

    .line 1039
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v2, :cond_2

    .line 1040
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    .line 1043
    :cond_2
    if-eqz v1, :cond_4

    .line 1044
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09004e

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1055
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006f

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$7;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessage$7;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1066
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$8;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1072
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1077
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090069

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1083
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1084
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$9;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1089
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1092
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkInputModeAndSendMessage()V

    goto/16 :goto_0
.end method

.method public static containsOwnBundle(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 8158
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5225
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "createAttachmentList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5227
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 5228
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5230
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5231
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 5234
    new-instance v2, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v4, 0x7f030005

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    .line 5239
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 5240
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 5241
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClickable(Z)V

    .line 5243
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5244
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->updateAttachListHeight(Landroid/widget/ListView;)V

    .line 5245
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5246
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 6346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6347
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 6348
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6350
    :cond_0
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"
    .parameter "isConversationDeleteMode"

    .prologue
    .line 6355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6356
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 6357
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6358
    const-string v1, "conversationDeleteMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6360
    :cond_0
    return-object v0
.end method

.method private deleteMessage()V
    .locals 14

    .prologue
    .line 7837
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage() mDeleteUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7839
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 7840
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7889
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteWithAnimation:Z

    .line 7890
    return-void

    .line 7840
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0

    .line 7843
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 7848
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 7850
    .local v7, deleteCount:I
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7852
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 7853
    .local v11, msgId:J
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 7854
    .local v13, type:Ljava/lang/String;
    const/16 v0, 0x15

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 7856
    .local v8, groupId:J
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 7882
    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7885
    .end local v8           #groupId:J
    .end local v11           #msgId:J
    .end local v13           #type:Ljava/lang/String;
    :cond_5
    if-nez v7, :cond_0

    .line 7886
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    goto :goto_1

    .line 7859
    .restart local v8       #groupId:J
    .restart local v11       #msgId:J
    .restart local v13       #type:Ljava/lang/String;
    :cond_6
    const/16 v0, 0x14

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v10, v0

    .line 7861
    .local v10, locked:Z
    :goto_3
    if-eqz v10, :cond_7

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    if-eqz v0, :cond_4

    .line 7864
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 7865
    const-string v0, "mms"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7866
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 7880
    .local v3, deleteUri:Landroid/net/Uri;
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 7859
    .end local v3           #deleteUri:Landroid/net/Uri;
    .end local v10           #locked:Z
    :cond_8
    const/4 v0, 0x0

    move v10, v0

    goto :goto_3

    .line 7867
    .restart local v10       #locked:Z
    :cond_9
    const-string v0, "wpm"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7868
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 7872
    .end local v3           #deleteUri:Landroid/net/Uri;
    :cond_a
    cmp-long v0, v11, v8

    if-nez v0, :cond_b

    .line 7873
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 7876
    .end local v3           #deleteUri:Landroid/net/Uri;
    :cond_b
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 7880
    :cond_c
    const-string v4, "locked=0"

    goto :goto_5
.end method

.method private deleteSelectedMessages()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7710
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "deleteSelectedMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7712
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 7751
    :goto_0
    return-void

    .line 7715
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7717
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 7718
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x70b

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    goto :goto_0

    .line 7721
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    move v2, v6

    .line 7728
    :goto_1
    if-ge v2, v1, :cond_6

    .line 7729
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 7730
    if-nez v0, :cond_3

    .line 7728
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 7733
    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 7734
    const/16 v5, 0x14

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    .line 7735
    :goto_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7737
    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v3, v4, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 7743
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7744
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v3

    if-ne v3, v7, :cond_5

    const v3, 0x7f090091

    :goto_4
    invoke-static {v1, v6, v0, v2, v3}, Lcom/android/mms/ui/ComposeMessage;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 7748
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7749
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    :cond_4
    move v5, v6

    .line 7734
    goto :goto_2

    .line 7744
    :cond_5
    const v3, 0x7f0901bb

    goto :goto_4

    :cond_6
    move v0, v6

    goto :goto_3
.end method

.method private dialRecipient()V
    .locals 3

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 3069
    return-void
.end method

.method private disableDeleteModeLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 7689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    .line 7690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7691
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_0

    .line 7692
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 7694
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    .line 7695
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 8194
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSmileyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 8195
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8196
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 8197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8198
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 8199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8200
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 8201
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8202
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 8203
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8204
    :cond_4
    return-void
.end method

.method private drawComposerPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4760
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "drawComposerPanel()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 4763
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4806
    :goto_0
    return-void

    .line 4771
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 4777
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 4779
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4780
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4781
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4784
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4789
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4790
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4792
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4796
    if-eqz v1, :cond_4

    .line 4797
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4798
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 4804
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4799
    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ltz v1, :cond_4

    .line 4800
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private drawTopPanel(Z)V
    .locals 3
    .parameter "showEmptySubject"

    .prologue
    .line 4809
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTopPanel(),showEmptySubject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4811
    if-eqz p1, :cond_0

    .line 4812
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isSubjectEditorVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V

    .line 4815
    :goto_0
    return-void

    .line 4814
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V

    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 1311
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editMessageItem(),type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1318
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1320
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initRecipientsEditor()V

    .line 1322
    :cond_0
    return-void

    .line 1316
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    .line 1345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1348
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1349
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1351
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1353
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 1354
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessage;->drawTopPanel(Z)V

    .line 1356
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 1359
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showAttachListPanel()V

    .line 1362
    :cond_0
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1332
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v1

    .line 1333
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 1334
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1336
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1339
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1340
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 1341
    return-void

    .line 1336
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "exit"

    .prologue
    const/4 v2, 0x1

    .line 2721
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->dismissAllDialog()V

    .line 2724
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2726
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isResizingImage:Z

    if-nez v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 2730
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 2748
    :goto_0
    return-void

    .line 2735
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2736
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonsByRecipientEditor(ZZ)V

    .line 2739
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2741
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessage$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 2745
    :cond_3
    sput-boolean v2, Lcom/android/mms/ui/ComposeMessage;->isComposerClosed:Z

    .line 2746
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mToastForDraftSave:Z

    .line 2747
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized fillCache()V
    .locals 4

    .prologue
    .line 448
    const-class v1, Lcom/android/mms/ui/ComposeMessage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/ui/ComposeMessage;->sCachedView:Lcom/android/mms/ui/ComposeMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 454
    :goto_0
    monitor-exit v1

    return-void

    .line 451
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 453
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessage;

    sput-object v0, Lcom/android/mms/ui/ComposeMessage;->sCachedView:Lcom/android/mms/ui/ComposeMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "%3A"

    .line 4476
    .line 4477
    const-string v0, "content://com.android.contacts/contacts/as_multi_vcard/"

    .line 4478
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4479
    const-string v2, "%3A"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4480
    array-length v2, v1

    .line 4481
    sget v3, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_RAWATTACH_COUNT:I

    .line 4482
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090118

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4485
    if-le v2, v3, :cond_1

    .line 4486
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$43;

    invoke-direct {v5, p0, v4}, Lcom/android/mms/ui/ComposeMessage$43;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4496
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v4, v8

    .line 4498
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4500
    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4501
    sub-int v5, v3, v9

    if-ge v4, v5, :cond_0

    .line 4502
    const-string v5, "%3A"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4498
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 4507
    :goto_1
    return-object v0

    .line 4506
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method private getImportMediaCount(I)I
    .locals 6
    .parameter "mediaCount"

    .prologue
    .line 4455
    move v1, p1

    .line 4456
    .local v1, importCount:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 4457
    .local v3, slideShow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v4

    move v0, v4

    .line 4458
    .local v0, currentSlideCount:I
    :goto_0
    add-int v4, v1, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_0

    .line 4459
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4460
    move v2, v1

    .line 4461
    .local v2, numberToImport:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$42;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMessage$42;-><init>(Lcom/android/mms/ui/ComposeMessage;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4472
    .end local v2           #numberToImport:I
    :cond_0
    return v1

    .line 4457
    .end local v0           #currentSlideCount:I
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 7520
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v11, "Mms/ComposeMessage"

    .line 5778
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageDate(),uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5779
    const-wide/16 v8, -0x1

    .line 5781
    .local v8, result:J
    if-eqz p1, :cond_1

    .line 5782
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v10, [Ljava/lang/String;

    const-string v2, "date"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5785
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 5787
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5788
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    .line 5791
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5796
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageDate(),return="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5797
    return-wide v8

    .line 5791
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 734
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "getMessageItem : Bad cursor."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 739
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public static declared-synchronized getOrCreateView(Landroid/view/ViewGroup;)Lcom/android/mms/ui/ComposeMessage;
    .locals 3
    .parameter "parent"

    .prologue
    .line 463
    const-class v0, Lcom/android/mms/ui/ComposeMessage;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->fillCache()V

    .line 465
    if-eqz p0, :cond_0

    .line 466
    sget-object v1, Lcom/android/mms/ui/ComposeMessage;->sCachedView:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ComposeMessage;->sCachedView:Lcom/android/mms/ui/ComposeMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/android/mms/ui/ComposeMessage;->sCachedView:Lcom/android/mms/ui/ComposeMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/android/mms/ui/ComposeMessage;->sCachedView:Lcom/android/mms/ui/ComposeMessage;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 2

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1513
    sget-object v1, Lcom/android/mms/ui/ComposeMessage;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    .line 1514
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v1, Lcom/android/mms/ui/ComposeMessage;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1516
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ComposeMessage;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1528
    :goto_0
    return-object v1

    .line 1519
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1521
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->isTemp(Lcom/android/mms/data/ContactList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1522
    sget-object v1, Lcom/android/mms/ui/ComposeMessage;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_2

    .line 1523
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v1, Lcom/android/mms/ui/ComposeMessage;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1525
    :cond_2
    sget-object v1, Lcom/android/mms/ui/ComposeMessage;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 1528
    goto :goto_0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4753
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1169
    .line 1170
    if-nez p1, :cond_0

    move-object v0, v4

    .line 1216
    :goto_0
    return-object v0

    .line 1185
    :cond_0
    const v0, 0x7f080050

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1186
    if-eqz p0, :cond_3

    .line 1187
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1188
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1189
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    move v5, v2

    move-object v2, v0

    move v0, v5

    .line 1192
    :goto_1
    if-ne v1, v3, :cond_2

    .line 1194
    const v3, 0x7f08000a

    invoke-virtual {p1, v3}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1195
    if-eqz p0, :cond_2

    .line 1196
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1197
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1198
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    move-object p0, v0

    move v0, v2

    .line 1204
    :goto_2
    if-eq v1, v0, :cond_1

    .line 1205
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1206
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1208
    check-cast p0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 1210
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1211
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 1216
    goto :goto_0

    :cond_2
    move-object p0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    move v1, v3

    move-object v2, v4

    goto :goto_1
.end method

.method private getSizeStringView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 6783
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private getToastHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 5114
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToastHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 5116
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 5117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ToastHandler thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5119
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5122
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ToastHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ToastHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToastHandler:Landroid/os/Handler;

    .line 5125
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 2751
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "goToConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestClose()V

    .line 2753
    return-void
.end method

.method private handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4232
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4233
    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 4237
    const-string v1, "Mms/ComposeMessage"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    if-nez p1, :cond_0

    .line 4314
    :goto_0
    return-void

    .line 4242
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/mms/ui/ComposeMessage$41;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessage$41;-><init>(Lcom/android/mms/ui/ComposeMessage;IILandroid/net/Uri;IZZ)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4352
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4354
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCreationModeDialog(),creationMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    packed-switch v0, :pswitch_data_0

    .line 4381
    :cond_0
    :goto_0
    return-void

    .line 4358
    :pswitch_0
    const v0, 0x7f0900dc

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4359
    const v6, 0x7f090137

    new-instance v0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessage;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4361
    :cond_1
    const v0, 0x7f0900dd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4362
    const v6, 0x7f090138

    new-instance v0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessage;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4364
    :cond_2
    const v0, 0x7f0900db

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4365
    const v6, 0x7f090139

    new-instance v0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessage;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4367
    :cond_3
    const v0, 0x7f09015d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    const v6, 0x7f090160

    new-instance v0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessage;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4374
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090184

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090185

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleForwardedMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4428
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 4451
    :goto_0
    return v1

    .line 4432
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    const-string v2, "msg_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4434
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleForwardedMessage(),uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4436
    if-eqz v0, :cond_2

    .line 4438
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    const-string v3, "checkCRMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4440
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_1

    .line 4441
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    const-string v3, "subject"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4449
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v1, v5

    .line 4451
    goto :goto_0

    .line 4444
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    const-string v4, "sms_body"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 11
    .parameter

    .prologue
    const v9, 0x7f0901bd

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v10, ""

    const-string v2, "android.intent.extra.STREAM"

    .line 4512
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 4513
    if-nez v6, :cond_0

    move v0, v7

    .line 4657
    :goto_0
    return v0

    .line 4516
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4518
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4519
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 4520
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4521
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v10, v1, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 4523
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 4524
    const-string v0, "vcard"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4525
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessage$44;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage$44;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    const-string v1, "addAttachment"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 4546
    :cond_1
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4547
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    :cond_2
    move v0, v8

    .line 4550
    goto :goto_0

    .line 4551
    :cond_3
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4554
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 4555
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4556
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 4559
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4560
    add-int v3, v2, v0

    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v3, v4, :cond_6

    .line 4561
    sget v3, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int v0, v3, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4563
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090058

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4578
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v10, v3, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    .line 4581
    new-instance v2, Lcom/android/mms/ui/ComposeMessage$45;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$45;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    .line 4588
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsConainerHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4591
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessage$46;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage$46;-><init>(Lcom/android/mms/ui/ComposeMessage;ILjava/util/ArrayList;Ljava/lang/Runnable;)V

    const-string v0, "addAttachment"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v0, v8

    .line 4655
    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 4556
    goto :goto_1

    :cond_5
    move v0, v7

    .line 4657
    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private hasRecipientData(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 5911
    const/4 v1, 0x0

    .line 5914
    .local v1, result:Z
    if-nez p1, :cond_1

    .line 5915
    const/4 v1, 0x0

    .line 5924
    :cond_0
    :goto_0
    return v1

    .line 5916
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 5917
    const/4 v1, 0x0

    goto :goto_0

    .line 5918
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 5919
    const/4 v1, 0x1

    goto :goto_0

    .line 5920
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 5921
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private haveEmailContact(Ljava/lang/String;)Z
    .locals 11
    .parameter "emailAddress"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1278
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v3, v9

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1284
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1286
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1288
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1296
    .end local v8           #name:Ljava/lang/String;
    :goto_0
    return v0

    .line 1293
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 1296
    goto :goto_0

    .line 1293
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hideMessageList(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 6847
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/ComposeMessage;->setParentTop(Landroid/view/View;Z)V

    .line 6848
    return-void
.end method

.method private hideOrShowTopPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2001
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 2002
    .local v0, anySubViewsVisible:Z
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideOrShowTopPanel(),anySubViewsVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2005
    return-void

    .end local v0           #anySubViewsVisible:Z
    :cond_1
    move v0, v4

    .line 2001
    goto :goto_0

    .line 2004
    .restart local v0       #anySubViewsVisible:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private hideRecipientEditor(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 2756
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideRecipientEditor(),toFieldHide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    if-eqz p1, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 2764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    .line 2765
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 2766
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 2770
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideOrShowTopPanel()V

    .line 2771
    return-void
.end method

.method private hideSip()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6531
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 6532
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    if-eqz v0, :cond_0

    .line 6533
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 6536
    :cond_0
    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 8071
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->fillCache()V

    .line 8072
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "Mms/ComposeMessage"

    .line 5801
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "initActivityState()"

    invoke-static {v9, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 5806
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessage;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v0

    .line 5810
    if-eqz p1, :cond_0

    .line 5811
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5812
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v7, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v1, v0, v7, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5814
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mExitOnSent:Z

    .line 5815
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 5816
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->loadToButtonState(Landroid/os/Bundle;)V

    .line 5818
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "initActivityState(),has bundle"

    invoke-static {v9, v0}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 5899
    :goto_0
    return-void

    .line 5824
    :cond_0
    const-string v1, "thread_id"

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5825
    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 5826
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5888
    :cond_1
    :goto_1
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mExitOnSent:Z

    .line 5889
    const-string v0, "sms_body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5890
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, v10

    .line 5894
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 5896
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 5898
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "initActivityState()"

    invoke-static {v9, v0}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5828
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 5833
    if-eqz v1, :cond_d

    .line 5834
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 5837
    :goto_2
    if-eqz v2, :cond_c

    const-string v3, "smsto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5839
    const-string v3, "sendto"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5843
    :goto_3
    const-string v4, "mailto"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5844
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5845
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5846
    if-eqz v3, :cond_7

    move v5, v7

    .line 5847
    :goto_4
    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 5848
    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5847
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    move-object v3, v4

    .line 5852
    :goto_5
    if-eqz v3, :cond_6

    .line 5853
    const-string v4, "Mms/ComposeMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recipientsList is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5857
    :cond_6
    if-eqz v3, :cond_8

    .line 5858
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3, v7, v0}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5859
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessage;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 5851
    :cond_7
    const-string v3, "sendto"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_5

    .line 5860
    :cond_8
    if-eqz v1, :cond_a

    .line 5862
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v7, v0}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5865
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5867
    if-eqz v2, :cond_9

    .line 5869
    const-string v0, "mailto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5870
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5873
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5878
    :cond_a
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5879
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 5880
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v7, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v1, v0, v7, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_1

    .line 5883
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_1

    :cond_c
    move-object v3, v10

    goto/16 :goto_3

    :cond_d
    move-object v2, v10

    goto/16 :goto_2
.end method

.method private initFocus()V
    .locals 2

    .prologue
    .line 5928
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "initFocus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5930
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsKeyboardOpen:Z

    if-nez v0, :cond_1

    .line 5953
    :cond_0
    :goto_0
    return-void

    .line 5937
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5943
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_0

    .line 5944
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5952
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5488
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "initMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5490
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 5514
    :goto_0
    return-void

    .line 5494
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5495
    if-nez v0, :cond_1

    move-object v5, v2

    .line 5500
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 5501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 5502
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 5503
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5504
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 5505
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 5507
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    if-eqz v0, :cond_2

    .line 5508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 5495
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 5510
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 5512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1556
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "initRecipientsEditor()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    :goto_0
    return-void

    .line 1564
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1565
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 1567
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1568
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsField:Landroid/widget/LinearLayout;

    .line 1571
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_2

    .line 1572
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 1574
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setBackgroundResource(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setTextColor(I)V

    .line 1576
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setComposer(Lcom/android/mms/ui/ComposeMessage;)V

    .line 1577
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1581
    :cond_2
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1582
    if-eqz v0, :cond_3

    .line 1583
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButtonLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    .line 1584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const v2, 0x7f0800a9

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1585
    const-string v2, "uk"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1586
    const/high16 v2, 0x4160

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1591
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1594
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1595
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1604
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_5

    .line 1607
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 1611
    :cond_5
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 1612
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1613
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1615
    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    .line 1616
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonsByString(Ljava/lang/String;)V

    .line 1619
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSavedToButtonRecipients:Ljava/lang/String;

    .line 1621
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 1622
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1625
    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1f40

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    .line 1628
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 1631
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, -0x7ffffffb

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 1634
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSoundEffect(I)V

    .line 1636
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$14;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$14;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1662
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$15;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1714
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$16;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1727
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x7f090214

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setHint(I)V

    .line 1729
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientButton:Landroid/widget/ImageButton;

    .line 1730
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1731
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$17;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1588
    :cond_7
    const/high16 v2, 0x4180

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 1599
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    if-nez v0, :cond_4

    .line 1600
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initResourceLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2064
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 2067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 2070
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessage;->hideRecipientEditor(Z)V

    .line 2071
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initRecipientsEditor()V

    .line 2081
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendButtonState()V

    .line 2083
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessage;->drawTopPanel(Z)V

    .line 2087
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2088
    iget v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v4, :cond_5

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsKeyboardOpen:Z

    .line 2089
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    .line 2090
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->onKeyboardStateChanged(Z)V

    .line 2091
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    .line 2093
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_7

    .line 2094
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    .line 2100
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 2107
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 2109
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mTextOnTop:Z

    .line 2113
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mTextOnTop:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 2115
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsNeedToAnimation:Z

    if-eqz v0, :cond_a

    .line 2116
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2123
    :cond_0
    :goto_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 2126
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2129
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showAttachListPanel()V

    .line 2131
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2132
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 2138
    :goto_7
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsForwardedMessage:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2140
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2143
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize()V

    .line 2145
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    return-void

    .line 2078
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessage;->hideRecipientEditor(Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v5

    .line 2088
    goto/16 :goto_1

    :cond_6
    move v0, v5

    .line 2089
    goto/16 :goto_2

    .line 2097
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    goto/16 :goto_3

    .line 2103
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_4

    .line 2111
    :cond_9
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage;->mTextOnTop:Z

    goto/16 :goto_5

    .line 2118
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto/16 :goto_6

    .line 2135
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_7
.end method

.method private initResourceRefs()V
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    const/4 v3, 0x2

    const-string v4, "Mms/ComposeMessage"

    .line 4976
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "initResourceRefs()"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4978
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4979
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4980
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->displayDensity:F

    .line 4983
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTopLayout:Landroid/widget/LinearLayout;

    .line 4985
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 4986
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 4987
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    .line 4988
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    .line 4991
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    .line 4993
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsRichContainer;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    .line 4994
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setTextColor(I)V

    .line 4999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanelBg:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 5000
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setBackgroundResource(I)V

    .line 5002
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsConainerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHandler(Landroid/os/Handler;)V

    .line 5003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MmsRichContainer;->setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->initContainer()V

    .line 5005
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5006
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 5008
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5009
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setInputFilterComposeForSMS()V

    .line 5010
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "setInputFilterComposeForSMS!!!"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5014
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5017
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 5018
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mLocale:Ljava/lang/String;

    .line 5021
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->locale:Ljava/util/Locale;

    .line 5024
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v0

    .line 5026
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 5027
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4140

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 5041
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 5042
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5043
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTopPanel:Landroid/view/View;

    .line 5044
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 5045
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5046
    if-eqz v0, :cond_1

    .line 5047
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContactHeader;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    .line 5048
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->init()V

    .line 5050
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachButton:Landroid/widget/ImageButton;

    .line 5052
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5053
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5060
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 5061
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    .line 5064
    :cond_2
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAll:Landroid/widget/LinearLayout;

    .line 5065
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$49;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$49;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5093
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5095
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 5096
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllText:Landroid/widget/TextView;

    .line 5099
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5101
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 5102
    int-to-float v0, v6

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 5104
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 5106
    :cond_3
    return-void

    .line 5028
    :cond_4
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10

    if-eq v0, v2, :cond_5

    const/16 v2, 0x12

    if-eq v0, v2, :cond_5

    if-ne v0, v6, :cond_6

    .line 5029
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4150

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_0

    .line 5030
    :cond_6
    const/4 v2, 0x7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7

    const/16 v2, 0xa

    if-eq v0, v2, :cond_7

    const/16 v2, 0xe

    if-eq v0, v2, :cond_7

    const/16 v2, 0xf

    if-eq v0, v2, :cond_7

    const/16 v2, 0x14

    if-eq v0, v2, :cond_7

    const/16 v2, 0x16

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_8

    .line 5032
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4160

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_0

    .line 5035
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4180

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_0

    .line 5055
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5056
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "Remove Attach Button!"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initializeContactInfo()V
    .locals 3

    .prologue
    .line 6300
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6302
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6303
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->updatePresence(Lcom/android/mms/data/Contact;)V

    .line 6307
    :goto_0
    return-void

    .line 6305
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->updatePresence(Lcom/android/mms/data/Contact;)V

    goto :goto_0
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "Mms/ComposeMessage"

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1903
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1904
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1905
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ELMY START PARSING THE ORGINAL VALUE Subject value"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1907
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V

    .line 1910
    :cond_0
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1911
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1912
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ELMY START PARSING THE ORGINAL VALUE body value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, p0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 1915
    :cond_1
    return-void
.end method

.method private insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 27
    .parameter "textEditor"
    .parameter "insertWord"
    .parameter "isSubject"

    .prologue
    .line 6383
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    .line 6384
    .local v11, a:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v12

    .line 6385
    .local v12, b:I
    const/16 v20, 0x0

    .line 6386
    .local v20, length:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 6389
    .local v13, before:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6390
    sub-int v25, v12, v11

    .line 6391
    .local v25, selectLength:I
    if-gez v25, :cond_0

    .line 6392
    const/16 v25, 0x0

    .line 6394
    :cond_0
    const/4 v3, 0x0

    invoke-static {v13, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v23

    .line 6395
    .local v23, params:[I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    aget v4, v23, v4

    add-int v4, v4, v25

    if-le v3, v4, :cond_1

    .line 6396
    const/4 v3, 0x0

    const/4 v4, 0x2

    aget v4, v23, v4

    add-int v4, v4, v25

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 6402
    .end local v23           #params:[I
    .end local v25           #selectLength:I
    :cond_1
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6405
    .local v15, buf:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v15, v13, v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 6406
    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6407
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v15, v13, v12, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6414
    const/4 v4, 0x0

    .line 6415
    .local v4, result:I
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 6416
    .local v10, TotalLength:I
    move/from16 v26, v4

    .line 6417
    .local v26, tempRes:I
    const/16 v3, 0x7d0

    if-le v10, v3, :cond_6

    .line 6418
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    .line 6419
    .local v16, count:I
    const/16 v3, 0x7d0

    sub-int v3, v10, v3

    sub-int v21, v16, v3

    .line 6420
    .local v21, newCount:I
    if-gtz v21, :cond_3

    .line 6421
    const/4 v4, -0x7

    .line 6422
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6423
    .local v14, beforeText:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v14, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    .line 6424
    move-object v15, v14

    .line 6452
    .end local v14           #beforeText:Landroid/text/SpannableStringBuilder;
    .end local v16           #count:I
    .end local v21           #newCount:I
    :cond_2
    :goto_0
    const v5, 0x7f090199

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 6458
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6459
    const/4 v3, 0x0

    invoke-static {v15, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v23

    .line 6460
    .restart local v23       #params:[I
    const/4 v3, 0x0

    aget v3, v23, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_7

    .line 6461
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessage;->showToast()V

    .line 6493
    .end local v4           #result:I
    .end local v10           #TotalLength:I
    .end local v23           #params:[I
    .end local v26           #tempRes:I
    :goto_1
    return-void

    .line 6408
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 6409
    .local v17, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 6426
    .end local v17           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #result:I
    .restart local v10       #TotalLength:I
    .restart local v16       #count:I
    .restart local v21       #newCount:I
    .restart local v26       #tempRes:I
    :cond_3
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6427
    .local v22, newText:Landroid/text/SpannableStringBuilder;
    if-nez v11, :cond_4

    .line 6428
    const/4 v3, 0x0

    move-object v0, v15

    move v1, v3

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6429
    .local v19, inserted:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6430
    .local v18, eStr:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6431
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6440
    :goto_2
    move-object/from16 v15, v22

    .line 6441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object v4, v0

    .end local v4           #result:I
    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    invoke-virtual {v3, v4, v15}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v26

    .line 6442
    if-nez v26, :cond_5

    .line 6443
    const/4 v4, -0x7

    .restart local v4       #result:I
    goto :goto_0

    .line 6433
    .end local v18           #eStr:Ljava/lang/String;
    .end local v19           #inserted:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v15, v3, v11}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 6434
    .local v24, sStr:Ljava/lang/String;
    add-int v3, v11, v21

    invoke-virtual {v15, v11, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6435
    .restart local v19       #inserted:Ljava/lang/String;
    add-int v3, v11, v16

    invoke-virtual {v15, v3, v10}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6436
    .restart local v18       #eStr:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6437
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6438
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 6445
    .end local v4           #result:I
    .end local v24           #sStr:Ljava/lang/String;
    :cond_5
    move/from16 v4, v26

    .restart local v4       #result:I
    goto/16 :goto_0

    .line 6448
    .end local v16           #count:I
    .end local v18           #eStr:Ljava/lang/String;
    .end local v19           #inserted:Ljava/lang/String;
    .end local v21           #newCount:I
    .end local v22           #newText:Landroid/text/SpannableStringBuilder;
    :cond_6
    if-nez p3, :cond_2

    .line 6449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object v4, v0

    .end local v4           #result:I
    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    invoke-virtual {v3, v4, v15}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v4

    .restart local v4       #result:I
    goto/16 :goto_0

    .line 6466
    :cond_7
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6468
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v11

    const/16 v5, 0x7d0

    if-lt v3, v5, :cond_a

    .line 6469
    if-nez v11, :cond_9

    .line 6470
    const/16 v20, 0x7d0

    .line 6480
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-nez v3, :cond_8

    .line 6481
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 6485
    :cond_8
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6492
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize()V

    goto/16 :goto_1

    .line 6472
    :cond_9
    move/from16 v20, v11

    goto :goto_3

    .line 6474
    :cond_a
    if-eqz v4, :cond_b

    .line 6475
    move/from16 v20, v11

    goto :goto_3

    .line 6477
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v20, v11, v3

    goto :goto_3

    .line 6486
    :catch_1
    move-exception v17

    .line 6487
    .restart local v17       #e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 6488
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4
.end method

.method private isAttachSupportedType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 4737
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4738
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4743
    :cond_0
    const/4 v0, 0x1

    .line 4746
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBottomPanelVisible()Z
    .locals 4

    .prologue
    .line 2791
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2793
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBottomPanelVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    return v0

    .line 2791
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private isComposerPanelVisible()Z
    .locals 4

    .prologue
    .line 2798
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2800
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComposerPanelVisible(), return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    return v0

    .line 2798
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private isNeedCreateThread(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 5901
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5902
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5903
    const/4 v0, 0x0

    .line 5906
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNewCompose()Z
    .locals 1

    .prologue
    .line 7354
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1302
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1303
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 1307
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    return v1
.end method

.method private isPreparedForSending()Z
    .locals 5

    .prologue
    .line 5576
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v0

    .line 5577
    .local v0, recipientCount:I
    const/4 v1, 0x0

    .line 5582
    .local v1, result:Z
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 5585
    :goto_0
    const-string v2, "Mms/ComposeMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSending(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5586
    return v1

    .line 5582
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method private isPreparedForSendingButton()Z
    .locals 5

    .prologue
    .line 5591
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v0

    .line 5592
    .local v0, recipientCount:I
    const/4 v1, 0x0

    .line 5597
    .local v1, result:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 5600
    :goto_0
    const-string v2, "Mms/ComposeMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSendingButton(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    return v1

    .line 5597
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method private isRecipientCallable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3063
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3064
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 4

    .prologue
    .line 2782
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2785
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubjectEditorVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    return v0

    .line 2782
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private isTemp(Lcom/android/mms/data/ContactList;)Z
    .locals 3
    .parameter "contactList"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1534
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isUnderLength(III)Z
    .locals 1
    .parameter "currentLength"
    .parameter "addingLength"
    .parameter "MaxLength"

    .prologue
    .line 6497
    add-int v0, p1, p2

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDraft()V
    .locals 3

    .prologue
    const-string v2, "Mms/ComposeMessage"

    .line 5517
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5518
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "loadDraft() called with non-empty working message"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5528
    :goto_0
    return-void

    .line 5522
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5523
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5526
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private loadMessageContent()V
    .locals 2

    .prologue
    .line 2316
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "loadMessageContent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->startMsgListQuery()V

    .line 2318
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initializeContactInfo()V

    .line 2319
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendFailedNotification()V

    .line 2320
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->drawComposerPanel()V

    .line 2321
    return-void
.end method

.method private loadToButtonState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2340
    const-string v0, "toButtonRecipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSavedToButtonRecipients:Ljava/lang/String;

    .line 2341
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadToButtonState toButtonRecipients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    return-void
.end method

.method private onKeyboardStateChanged(Z)V
    .locals 3
    .parameter "isKeyboardOpen"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2591
    if-eqz p1, :cond_2

    .line 2592
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 2595
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 2596
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2606
    :cond_1
    :goto_0
    return-void

    .line 2599
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    .line 2600
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 2602
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 2603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_0
.end method

.method private parseMultiPicker(Ljava/util/ArrayList;I)V
    .locals 9
    .parameter
    .parameter "reqCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 4407
    if-nez p1, :cond_1

    .line 4421
    :cond_0
    return-void

    .line 4409
    :cond_1
    const/4 v7, 0x0

    .line 4410
    .local v7, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4411
    .local v6, count:I
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessage;->getImportMediaCount(I)I

    move-result v8

    .line 4412
    .local v8, importCount:I
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    .line 4413
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4415
    .local v1, attachUri:Landroid/net/Uri;
    const/16 v0, 0x1b

    if-eq p2, v0, :cond_2

    const/16 v0, 0x21

    if-ne p2, v0, :cond_3

    .line 4416
    :cond_2
    const/4 v3, 0x1

    move-object v0, p0

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    .line 4412
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p2

    .line 4418
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_1
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v3, " "

    .line 7788
    .line 7790
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 7826
    :cond_0
    :goto_0
    return-void

    .line 7792
    :pswitch_0
    new-instance v0, Ljava/io/File;

    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7793
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move v3, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 7796
    :pswitch_1
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7798
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7799
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_1

    .line 7802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7804
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessage;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7805
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7806
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_3

    .line 7809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7811
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessage;->isUnderLength(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7813
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessage;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 7816
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7820
    :pswitch_2
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 7821
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessage;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 7790
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private previewSlideshow()V
    .locals 4

    .prologue
    .line 6768
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 6769
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 6771
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$61;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessage$61;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/app/ProgressDialog;)V

    const-string v0, "previewSlideshow"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6779
    return-void
.end method

.method private recipientCount()I
    .locals 4

    .prologue
    .line 5605
    const/4 v0, 0x0

    .line 5611
    .local v0, recipientCount:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5612
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v0

    .line 5617
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientCount(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5618
    return v0

    .line 5614
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private refreshCheckedList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8040
    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v5, :cond_1

    .line 8068
    :cond_0
    :goto_0
    return-void

    .line 8043
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->backupCheckedList()V

    .line 8045
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 8048
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8050
    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 8051
    .local v2, msgId:J
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8052
    .local v4, msgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->refreshChecked(JLjava/lang/String;)V

    .line 8053
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 8056
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->cleanDummyCheckedList()V

    .line 8058
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    .line 8059
    .local v1, checkedCount:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 8060
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8064
    :goto_1
    if-lez v1, :cond_5

    .line 8065
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    .line 8062
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 8067
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 6342
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6343
    return-void
.end method

.method private requestClose()V
    .locals 2

    .prologue
    .line 7583
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "requestClose()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7586
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    .line 7587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 7588
    :cond_0
    return-void
.end method

.method private requestDrawPointerOnConverationList()V
    .locals 5

    .prologue
    .line 8183
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 8184
    .local v0, threadId:J
    const-string v2, "Mms/ComposeMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDrawPointerOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8186
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 8190
    .end local p0
    :goto_0
    return-void

    .line 8189
    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requestDrawPointerOnConverationList(J)Z

    goto :goto_0
.end method

.method private requestFocusOnConverationList()V
    .locals 5

    .prologue
    .line 8172
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 8173
    .local v0, threadId:J
    const-string v2, "Mms/ComposeMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocusOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8175
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    if-nez v2, :cond_1

    .line 8179
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 8178
    .restart local p0
    :cond_1
    iget-object p0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requsetFocusOnConversationList(J)Z

    goto :goto_0
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5705
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "resetMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5708
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V

    .line 5711
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 5717
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 5721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    .line 5724
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->hideRecipientEditor(Z)V

    .line 5726
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 5727
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 5728
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->drawComposerPanel()V

    .line 5731
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5732
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 5733
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 5735
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 5741
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendButtonState()V

    .line 5744
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5747
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 5749
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5754
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5755
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->createSlideshow()Lcom/android/mms/model/SlideshowModel;

    .line 5756
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage;->mSendingMessage:Z

    .line 5757
    return-void

    .line 5737
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private saveDraft(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const-string v4, "Mms/ComposeMessage"

    .line 5531
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "saveDraft()"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5537
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5538
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "mWorkingMessage.isDiscarded()=true"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 5572
    :cond_0
    :goto_0
    return v0

    .line 5544
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWaitingForSubActivity:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5547
    :cond_3
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "saveDraft: not worth saving"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5550
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isResizingImage:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isComposerClosed:Z

    if-eqz v0, :cond_4

    .line 5551
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "saveDraft: discard WorkingMessage and bail"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5552
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    :cond_4
    move v0, v1

    .line 5554
    goto :goto_0

    .line 5557
    :cond_5
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5559
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)Z

    move-result v0

    .line 5561
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mToastForDraftSave:Z

    if-eqz v1, :cond_0

    .line 5564
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090056

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5566
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mToastForDraftSave:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5567
    :catch_0
    move-exception v1

    .line 5568
    const-string v2, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot make Toast. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveToButtonState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2347
    .local v0, buffer:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2349
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    .line 2350
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2352
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2353
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2355
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2356
    .local v2, recipients:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2357
    const-string v3, "toButtonRecipients"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    const-string v3, "Mms/ComposeMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToButtonState toButtonRecipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #contactList:Lcom/android/mms/data/ContactList;
    .end local v2           #recipients:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private sendMessage(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "Mms/ComposeMessage"

    .line 5622
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage(),bCheckEcmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 5625
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 5626
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 5628
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5629
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 5636
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5638
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5640
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "message sending is disabled"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5641
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09018c

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5642
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestClose()V

    .line 5702
    :goto_0
    return-void

    .line 5647
    :cond_1
    if-eqz p1, :cond_2

    .line 5649
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5650
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5652
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5656
    :catch_0
    move-exception v0

    .line 5658
    const-string v1, "Mms/ComposeMessage"

    const-string v1, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v3, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5663
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendingMessage:Z

    if-nez v0, :cond_3

    .line 5666
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->removeRecipientsListener()V

    .line 5669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_7

    .line 5670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 5676
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 5677
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mSentMessage:Z

    .line 5678
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mSendingMessage:Z

    .line 5679
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->addRecipientsListener()V

    .line 5682
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 5683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5688
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mExitOnSent:Z

    if-eqz v0, :cond_6

    .line 5689
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage(),mExitOnSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mExitOnSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5691
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsForwardedMessage:Z

    if-nez v0, :cond_5

    .line 5692
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 5696
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5697
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 5701
    :cond_6
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "sendMessage()"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5672
    :cond_7
    sput v4, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto :goto_1
.end method

.method private setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 1
    .parameter "conv"

    .prologue
    .line 7612
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 7613
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->hideMessageList(Z)V

    .line 7614
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 7615
    return-void

    .line 7613
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEditingMode(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 7360
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEditingMode(),isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7362
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7363
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7364
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v2

    .line 7367
    const/high16 v3, 0x42c2

    .line 7369
    const/high16 v4, 0x4180

    .line 7373
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7374
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7376
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7377
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7405
    :goto_0
    return-void

    .line 7380
    :cond_0
    if-eqz p1, :cond_1

    .line 7381
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7382
    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 7384
    iget v4, p0, Lcom/android/mms/ui/ComposeMessage;->displayDensity:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7386
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7388
    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7390
    iget v2, p0, Lcom/android/mms/ui/ComposeMessage;->displayDensity:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7392
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFocusOnLastToButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7255
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 7267
    :cond_0
    :goto_0
    return-void

    .line 7258
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7259
    .local v1, lastKey:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 7260
    .local v0, btn:Lcom/android/mms/ui/ToButton;
    if-eqz v0, :cond_0

    .line 7263
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    .line 7264
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 7265
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 7266
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    goto :goto_0
.end method

.method private setFocusOnNextToButton()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7291
    const/4 v2, 0x0

    .line 7293
    .local v2, preToButton:Lcom/android/mms/ui/ToButton;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7294
    .local v1, id:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 7296
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7297
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    .line 7298
    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 7299
    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 7300
    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    .line 7302
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 7303
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    move v4, v6

    .line 7310
    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :goto_1
    return v4

    .line 7307
    .restart local v1       #id:I
    .restart local v3       #toButton:Lcom/android/mms/ui/ToButton;
    :cond_0
    move-object v2, v3

    goto :goto_0

    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_1
    move v4, v7

    .line 7310
    goto :goto_1
.end method

.method private setFocusOnPreToButton()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7270
    const/4 v2, 0x0

    .line 7272
    .local v2, preToButton:Lcom/android/mms/ui/ToButton;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7273
    .local v1, id:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 7275
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7276
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessage;->mKeepToButtonVisible:Z

    .line 7277
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 7278
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 7279
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    .line 7281
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 7282
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 7288
    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_0
    return-void

    .line 7286
    .restart local v1       #id:I
    .restart local v3       #toButton:Lcom/android/mms/ui/ToButton;
    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private setInputFilterComposeForSMS()V
    .locals 3

    .prologue
    .line 5148
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$50;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$50;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    .line 5217
    .local v0, filter:Landroid/text/InputFilter;
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 5218
    .local v1, filterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 5220
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5221
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 7515
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7516
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7517
    monitor-exit p0

    return-void

    .line 7515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setMessageListBackground()V
    .locals 2

    .prologue
    .line 7831
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setBackgroundColor(I)V

    .line 7834
    return-void
.end method

.method private setParentTop(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0xa

    .line 6851
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6855
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    aget v2, v2, v3

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 6856
    .local v0, isParentTop:Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 6865
    :goto_1
    return-void

    .end local v0           #isParentTop:Z
    :cond_0
    move v0, v5

    .line 6855
    goto :goto_0

    .line 6859
    .restart local v0       #isParentTop:Z
    :cond_1
    if-eqz p2, :cond_2

    .line 6860
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6864
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 6862
    :cond_2
    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method private setRecipientsOnRecipientsEditor()V
    .locals 6

    .prologue
    .line 7314
    const/4 v2, 0x0

    .line 7316
    .local v2, recipients:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 7317
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 7319
    const/4 v0, 0x0

    .line 7320
    .local v0, i:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 7321
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 7322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7326
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    .line 7327
    return-void
.end method

.method private setSendButtonText(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2869
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSendButtonText(),isMms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    .line 2872
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2874
    return-void
.end method

.method private setSlideDuration(II)V
    .locals 4
    .parameter "slideIndex"
    .parameter "duration"

    .prologue
    .line 3470
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 3471
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 3472
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    .line 3473
    .local v2, slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1

    .line 3482
    .end local v2           #slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 3476
    .restart local v2       #slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 3477
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_0

    .line 3478
    invoke-virtual {v1, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    goto :goto_0
.end method

.method private setTextFieldColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 8286
    iput p1, p0, Lcom/android/mms/ui/ComposeMessage;->mTextFieldColor:I

    .line 8288
    iget v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextFieldColor:I

    if-nez v0, :cond_0

    .line 8289
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mEditorBg:I

    .line 8290
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanelBg:I

    .line 8291
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x206001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextColor:I

    .line 8297
    :goto_0
    return-void

    .line 8293
    :cond_0
    const v0, 0x7f020114

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mEditorBg:I

    .line 8294
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanelBg:I

    .line 8295
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTextColor:I

    goto :goto_0
.end method

.method private showAddAttachmentDialog(ZI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3703
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3704
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3705
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3736
    :cond_0
    :goto_0
    return-void

    .line 3709
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 3712
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v4, p1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;IZI)V

    .line 3715
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3717
    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3718
    new-instance v2, Lcom/android/mms/ui/ComposeMessage$34;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/ComposeMessage$34;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3727
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    .line 3728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$35;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$35;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3734
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showAddtextDialog()V
    .locals 3

    .prologue
    .line 3804
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3805
    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3807
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 3808
    new-instance v1, Lcom/android/mms/ui/AddTextSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    .line 3810
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$36;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$36;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3816
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3817
    return-void
.end method

.method private showAttachListPanel()V
    .locals 2

    .prologue
    .line 4215
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "showAttachListPanel()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4217
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 4218
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 4220
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4224
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkSubjectMargin()V

    .line 4226
    :cond_0
    return-void

    .line 4222
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showChooseContactDialog()V
    .locals 4

    .prologue
    .line 3821
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3822
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3824
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    if-nez v1, :cond_0

    .line 3825
    new-instance v1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    .line 3828
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$37;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$37;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3835
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3836
    return-void
.end method

.method private showDupplicatedRecipientToast()V
    .locals 3

    .prologue
    .line 7013
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7014
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7015
    return-void
.end method

.method private showInvalidRecipientsPopup(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v8, 0x7f0901a9

    const/4 v3, 0x0

    .line 8208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 8247
    :cond_0
    :goto_0
    return-void

    .line 8211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8213
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 8214
    const-string v2, "[,;]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8216
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 8218
    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v5, v1, v3

    .line 8219
    invoke-direct {p0, v5, v1}, Lcom/android/mms/ui/ComposeMessage;->CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 8221
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 8222
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showDupplicatedRecipientToast()V

    .line 8218
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8223
    :cond_3
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 8224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 8225
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8227
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8228
    :cond_5
    if-nez v6, :cond_2

    .line 8229
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8233
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8240
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$75;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$75;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private showLayoutSelectorDialog()V
    .locals 3

    .prologue
    .line 7483
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7484
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7485
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7487
    new-instance v1, Lcom/android/mms/ui/LayoutSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 7488
    new-instance v2, Lcom/android/mms/ui/ComposeMessage$70;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$70;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 7512
    return-void
.end method

.method private showMaxRecipientToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7007
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    .line 7008
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090192

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7009
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7010
    return-void
.end method

.method private showSmileyDialog()V
    .locals 14

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "name"

    const-string v12, "icon"

    .line 6212
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 6213
    sget-object v0, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 6214
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 6215
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 6217
    array-length v4, v1

    .line 6219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v9

    .line 6220
    :goto_0
    if-ge v5, v4, :cond_2

    move v6, v9

    .line 6224
    :goto_1
    if-ge v6, v5, :cond_4

    .line 6225
    aget v7, v0, v5

    aget v8, v0, v6

    if-ne v7, v8, :cond_1

    move v6, v10

    .line 6230
    :goto_2
    if-nez v6, :cond_0

    .line 6231
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 6233
    const-string v7, "icon"

    aget v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6234
    const-string v7, "name"

    aget-object v7, v1, v5

    invoke-virtual {v6, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6235
    const-string v7, "text"

    aget-object v8, v3, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6237
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6220
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6224
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6241
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v3, 0x7f03002d

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "icon"

    aput-object v12, v4, v9

    const-string v5, "name"

    aput-object v13, v4, v10

    const/4 v5, 0x2

    const-string v6, "text"

    aput-object v6, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 6247
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$53;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$53;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6257
    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 6259
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6261
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900ee

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6263
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6264
    new-instance v2, Lcom/android/mms/ui/ComposeMessage$54;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessage$54;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6288
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 6291
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6292
    return-void

    :cond_4
    move v6, v9

    goto :goto_2

    .line 6241
    :array_0
    .array-data 0x4
        0xa1t 0x0t 0x8t 0x7ft
        0xa2t 0x0t 0x8t 0x7ft
        0xa3t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1918
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSubjectEditor(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 1923
    if-nez p1, :cond_0

    .line 1998
    :goto_0
    return-void

    .line 1927
    :cond_0
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1929
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessage;->mEditorBg:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessage;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1932
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1934
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1935
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1940
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$19;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1949
    if-eqz p1, :cond_8

    .line 1950
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1956
    :goto_2
    if-nez p1, :cond_2

    .line 1957
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1958
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 1969
    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    .line 1970
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1971
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkSubjectMargin()V

    .line 1975
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1977
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1979
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    move v0, v3

    .line 1983
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1985
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1988
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1989
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1990
    if-nez p1, :cond_c

    .line 1991
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    iput-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1997
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideOrShowTopPanel()V

    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    .line 1938
    goto/16 :goto_1

    .line 1952
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    .line 1959
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1960
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_3

    .line 1962
    :cond_a
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 1963
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_3

    .line 1989
    :cond_b
    const/16 v2, 0x8

    goto :goto_4

    .line 1994
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1995
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize()V

    goto :goto_5
.end method

.method private showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 7449
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOpenToButtonMenu:Z

    if-ne v0, v4, :cond_0

    .line 7479
    :goto_0
    return-void

    .line 7452
    :cond_0
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOpenToButtonMenu:Z

    .line 7453
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->clearFocusAllToButtons()V

    .line 7455
    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 7456
    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7460
    const-string v2, "%s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 7464
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7465
    new-instance v3, Lcom/android/mms/ui/ToButtonMenuAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/ToButtonMenuAdapter;-><init>(Landroid/content/Context;Z)V

    .line 7466
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessage;I)V

    .line 7468
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7469
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7471
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 7472
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$69;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$69;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7478
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    move-object v1, v0

    move v0, v5

    goto :goto_1
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4949
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09017d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 4951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4953
    :cond_1
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 7592
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7593
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7594
    return-void
.end method

.method private startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 7598
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResult(),resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7601
    if-ltz p2, :cond_0

    .line 7602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWaitingForSubActivity:Z

    .line 7605
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7606
    return-void
.end method

.method private startActivityforAddMedia(IZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x33

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v11, "android.provider.MediaStore.extra.MAX_BYTES"

    const-string v2, "android.intent.action.PICK"

    .line 3489
    if-eqz p2, :cond_0

    .line 3497
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 3498
    packed-switch p1, :pswitch_data_0

    .line 3699
    :cond_1
    :goto_0
    return-void

    .line 3500
    :pswitch_0
    const-string v0, "image/*"

    .line 3501
    if-eqz p2, :cond_2

    .line 3502
    const/16 v1, 0x29

    .line 3510
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3511
    if-eqz v2, :cond_1

    .line 3512
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3513
    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3504
    :cond_2
    const/16 v1, 0xa

    goto :goto_1

    .line 3518
    :pswitch_1
    if-eqz p2, :cond_3

    .line 3519
    const/16 v0, 0x2a

    .line 3523
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3524
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3526
    const-string v2, "return-uri"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3527
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3521
    :cond_3
    const/16 v0, 0xb

    goto :goto_2

    .line 3532
    :pswitch_2
    const-string v0, "video/*"

    .line 3533
    if-eqz p2, :cond_4

    .line 3534
    const/16 v1, 0x2b

    .line 3542
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3543
    if-eqz v2, :cond_1

    .line 3544
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3545
    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3536
    :cond_4
    const/16 v1, 0xc

    goto :goto_3

    .line 3550
    :pswitch_3
    if-eqz p2, :cond_6

    .line 3551
    const/16 v0, 0x2c

    .line 3555
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 3556
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3558
    if-nez p2, :cond_5

    .line 3559
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 3562
    :cond_5
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_7

    .line 3565
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3566
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3567
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3568
    const-string v1, "mms"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3569
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3553
    :cond_6
    const/16 v0, 0xd

    goto :goto_4

    .line 3571
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3580
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3581
    const-string v1, "audio/*"

    .line 3582
    if-eqz p2, :cond_8

    .line 3583
    const/16 v2, 0x2d

    .line 3588
    :goto_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3589
    if-eqz v3, :cond_1

    .line 3590
    const-string v4, "com.sec.android.app.myfiles"

    const-string v5, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3592
    const-string v4, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3593
    const-string v4, "FOLDERPATH"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3594
    const-string v0, "CONTENT_TYPE"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3595
    invoke-direct {p0, v3, v2}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3585
    :cond_8
    const/16 v2, 0xe

    goto :goto_5

    .line 3601
    :pswitch_5
    if-eqz p2, :cond_9

    .line 3602
    const/16 v0, 0x2e

    .line 3607
    :goto_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3609
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 3612
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v3, v3

    .line 3613
    if-eqz v2, :cond_d

    .line 3615
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v5, v5

    .line 3616
    invoke-virtual {v2, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    int-to-long v7, v2

    .line 3617
    if-eqz p2, :cond_c

    .line 3618
    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_b

    .line 3619
    add-long v9, v5, v7

    cmp-long v2, v9, v3

    if-gez v2, :cond_a

    .line 3620
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    add-long v2, v5, v7

    invoke-virtual {v1, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3636
    :goto_7
    const-string v2, "mime_type"

    const-string v3, "audio/amr"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3638
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3604
    :cond_9
    const/16 v0, 0xf

    goto :goto_6

    .line 3623
    :cond_a
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3627
    :cond_b
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3631
    :cond_c
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3634
    :cond_d
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3644
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3645
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3646
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3650
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3651
    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3653
    const/16 v1, 0x1a

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3654
    :catch_0
    move-exception v0

    .line 3655
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3656
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3657
    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3658
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3659
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3665
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3666
    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3667
    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3671
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3672
    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3673
    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3678
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3679
    const-string v1, "image_location"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3680
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3681
    const/16 v1, 0x24

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3685
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3686
    const-string v1, "app_name"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3687
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3691
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3692
    const-string v1, "application/vnd.penmemo.drawingpad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3693
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private startDeleteAnimation([I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "Mms/ComposeMessage"

    .line 7621
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDeleteAnimation(), delCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7623
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7624
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const v2, 0x7f0901d1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessage;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    .line 7625
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "DeleteAnimation Progress shown with startDeleteAnimation()"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7628
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 7629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7633
    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteAnimation:Z

    .line 7634
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView;->startDeleteMsgAnimation([I)V

    .line 7635
    return-void

    .line 7631
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v4, 0x2537

    .line 5468
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 5469
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery(),conversationUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5471
    if-nez v3, :cond_0

    .line 5472
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->hideMessageList(Z)V

    .line 5485
    :goto_0
    return-void

    .line 5477
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->cancelOperation(I)V

    .line 5480
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5482
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 5483
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startSendAnimation(Ljava/lang/Runnable;)V
    .locals 13
    .parameter

    .prologue
    .line 2964
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 2966
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    .line 2969
    const/4 v0, 0x0

    .line 2970
    const/4 v1, 0x0

    .line 2971
    const/4 v2, 0x0

    .line 2972
    const/4 v3, 0x0

    .line 2973
    const/4 v4, 0x0

    .line 2974
    const/4 v5, 0x0

    .line 2976
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v7, Lcom/android/mms/ui/ComposeMessage$29;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ComposeMessage$29;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2993
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2995
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 2996
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2997
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->lastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x28

    int-to-float v1, v1

    .line 2998
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 3000
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3002
    const/high16 v4, 0x3f80

    .line 3003
    const v5, 0x3e99999a

    move v10, v5

    move v11, v4

    move v9, v1

    move v12, v0

    move v4, v3

    .line 3006
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3009
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v12

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3012
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3014
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3015
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3016
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3018
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 3019
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3022
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3023
    return-void

    :cond_0
    move v10, v5

    move v11, v4

    move v9, v1

    move v12, v0

    move v4, v3

    goto :goto_0
.end method

.method private startSendAnimationPrepare(I)V
    .locals 6
    .parameter

    .prologue
    .line 2920
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2921
    const/4 v1, 0x0

    .line 2922
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 2924
    const/high16 v3, 0x42c2

    .line 2925
    const/high16 v4, 0x4180

    .line 2927
    add-float/2addr v4, v3

    iget v5, p0, Lcom/android/mms/ui/ComposeMessage;->displayDensity:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2931
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2932
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2938
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 2940
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2941
    const/16 v0, 0x1f4

    .line 2943
    :goto_1
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$26;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$26;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    add-int/lit16 v3, v0, 0xc8

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2949
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$27;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$27;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2961
    :goto_2
    return-void

    .line 2955
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$28;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private threadSafeToast(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "resId"
    .parameter "length"

    .prologue
    .line 5129
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5130
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/ui/ComposeMessage;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 5131
    return-void
.end method

.method private threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter "activity"
    .parameter "message"
    .parameter "length"

    .prologue
    .line 5134
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getToastHandler()Landroid/os/Handler;

    move-result-object v1

    .line 5136
    .local v1, toastHandler:Landroid/os/Handler;
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5137
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5138
    invoke-static {p2, p3}, Lcom/android/mms/ui/ToastHandler;->createToastInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5140
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5141
    return-void
.end method

.method private toastConvertInfo(Z)V
    .locals 3
    .parameter "toMms"

    .prologue
    .line 819
    if-eqz p1, :cond_0

    const v1, 0x7f090052

    move v0, v1

    .line 821
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 822
    return-void

    .line 819
    .end local v0           #resId:I
    :cond_0
    const v1, 0x7f090053

    move v0, v1

    goto :goto_0
.end method

.method private updateAttachListHeight(Landroid/widget/ListView;)V
    .locals 2
    .parameter "attachList"

    .prologue
    .line 5250
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5251
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->calcAttachListHeight(Landroid/widget/ListView;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5252
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5253
    return-void
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .locals 19
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 744
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessage;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v16

    .line 745
    .local v16, params:[I
    const/4 v4, 0x0

    .line 747
    .local v4, result:I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 755
    .local v13, length:I
    const/4 v3, 0x0

    aget v3, v16, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ComposeMessage;->mMsgCount:I

    .line 756
    const/4 v3, 0x2

    aget v3, v16, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ComposeMessage;->mRemainingInCurrentMessage:I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMsgCount:I

    move v4, v0

    .end local v4           #result:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    .line 762
    const/16 v3, 0x7d0

    if-le v13, v3, :cond_8

    .line 763
    const/16 v3, 0x7d0

    sub-int v3, v13, v3

    sub-int v14, p4, v3

    .line 767
    .local v14, newCount:I
    if-gtz v14, :cond_5

    .line 768
    const/4 v4, -0x7

    .line 797
    .end local v14           #newCount:I
    .restart local v4       #result:I
    :goto_1
    const v5, 0x7f090199

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 799
    const/4 v3, -0x7

    if-ne v4, v3, :cond_9

    .line 800
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x7d0

    sub-int/2addr v3, v4

    sub-int v14, p4, v3

    .line 803
    .end local v4           #result:I
    .restart local v14       #newCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    add-int v4, p2, v14

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v14           #newCount:I
    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ComposeMessage;->mRemainingInCurrentMessage:I

    move v3, v0

    if-gtz v3, :cond_1

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessage;->showToast()V

    .line 814
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez p3, :cond_3

    .line 815
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    .line 816
    :cond_3
    return-void

    .line 759
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 770
    .restart local v14       #newCount:I
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .local v15, newText:Ljava/lang/StringBuilder;
    if-nez p2, :cond_6

    .line 772
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v14

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 773
    .local v12, inserted:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    move v2, v13

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 774
    .local v11, eStr:Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_3
    move-object/from16 p1, v15

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v18

    .line 786
    .local v18, tempRes:I
    if-nez v18, :cond_7

    .line 787
    const/4 v4, -0x7

    .restart local v4       #result:I
    goto/16 :goto_1

    .line 777
    .end local v4           #result:I
    .end local v11           #eStr:Ljava/lang/String;
    .end local v12           #inserted:Ljava/lang/String;
    .end local v18           #tempRes:I
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 778
    .local v17, sStr:Ljava/lang/String;
    add-int v3, p2, v14

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v3

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 779
    .restart local v12       #inserted:Ljava/lang/String;
    add-int v3, p2, p4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v13

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 780
    .restart local v11       #eStr:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 789
    .end local v17           #sStr:Ljava/lang/String;
    .restart local v18       #tempRes:I
    :cond_7
    move/from16 v4, v18

    .restart local v4       #result:I
    goto/16 :goto_1

    .line 793
    .end local v4           #result:I
    .end local v11           #eStr:Ljava/lang/String;
    .end local v12           #inserted:Ljava/lang/String;
    .end local v14           #newCount:I
    .end local v15           #newText:Ljava/lang/StringBuilder;
    .end local v18           #tempRes:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v4

    .restart local v4       #result:I
    goto/16 :goto_1

    .line 804
    .end local v4           #result:I
    .restart local v14       #newCount:I
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 805
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 807
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v14           #newCount:I
    .restart local v4       #result:I
    :cond_9
    const/4 v3, -0x2

    if-ne v4, v3, :cond_0

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_2
.end method

.method private updateEditorSize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7341
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v0, :cond_0

    .line 7349
    :goto_0
    return-void

    .line 7344
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isNewCompose()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setEditingMode(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEditorSize(Z)V
    .locals 1
    .parameter "extend"

    .prologue
    .line 7333
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v0, :cond_0

    .line 7337
    :goto_0
    return-void

    .line 7336
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->setEditingMode(Z)V

    goto :goto_0
.end method

.method private updatePresence(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 6296
    return-void
.end method

.method private updateSendButtonState()V
    .locals 4

    .prologue
    .line 5760
    const/4 v0, 0x0

    .line 5762
    .local v0, enable:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isPreparedForSendingButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5763
    const/4 v0, 0x1

    .line 5764
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5765
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize(Z)V

    .line 5768
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->setSendButtonText(Z)V

    .line 5769
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 5771
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5773
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 5774
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSendButtonState(),enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5775
    return-void
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 2324
    const-string v2, "Mms/ComposeMessage"

    const-string v3, "updateSendFailedNotification()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2327
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2337
    :goto_0
    return-void

    .line 2332
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$20;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage$20;-><init>(Lcom/android/mms/ui/ComposeMessage;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public alertInvalidRecipientsPopup(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1110
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1111
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1112
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1113
    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessage$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$10;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1124
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 2711
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$21;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 2717
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2532
    const-string v2, "Mms/ComposeMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v2, v5, :cond_4

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsKeyboardOpen:Z

    .line 2535
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_5

    move v1, v5

    .line 2536
    .local v1, isLandscape:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    if-eq v2, v1, :cond_0

    .line 2537
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsLandscape:Z

    .line 2539
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2540
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/RecipientsEditor;->ensureImeVisible(Z)V

    .line 2545
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v7, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_2

    .line 2547
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagePickerDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2548
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagePickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2549
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2555
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2556
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->locale:Ljava/util/Locale;

    .line 2557
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->resetString()V

    .line 2562
    :cond_3
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsKeyboardOpen:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessage;->onKeyboardStateChanged(Z)V

    .line 2564
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2566
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ComposeMessage;->mScreenWidth:I

    .line 2568
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->AddToButtonInPanel()V

    .line 2571
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestDrawPointerOnConverationList()V

    .line 2572
    return-void

    .end local v0           #display:Landroid/view/Display;
    .end local v1           #isLandscape:Z
    :cond_4
    move v2, v6

    .line 2534
    goto/16 :goto_0

    :cond_5
    move v1, v6

    .line 2535
    goto :goto_1
.end method

.method public findAvailableViewToFocus()V
    .locals 1

    .prologue
    .line 8121
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 8122
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 8127
    :cond_0
    :goto_0
    return-void

    .line 8123
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 8124
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 8125
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8126
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0
.end method

.method public getConversationThreadId()J
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 711
    const-wide/16 v0, -0x1

    .line 713
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMessageCalculateParam(Ljava/lang/CharSequence;)[I
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 6815
    const/4 v2, 0x0

    .line 6816
    .local v2, params:[I
    const/4 v0, 0x0

    .line 6818
    .local v0, encodingTypeEnable:Z
    const/4 v0, 0x1

    .line 6822
    if-eqz v0, :cond_3

    .line 6823
    sget v3, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    if-nez v3, :cond_0

    .line 6824
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 6825
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 6826
    const/4 v3, 0x2

    sput v3, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    .line 6830
    .end local v1           #isKoreanChar:Z
    :cond_0
    sget v3, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 6831
    sget v3, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    invoke-static {p1, v5, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    .line 6841
    :goto_0
    return-object v2

    .line 6832
    :cond_1
    sget v3, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    if-nez v3, :cond_2

    .line 6833
    sget v3, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    invoke-static {p1, v5, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    .line 6835
    :cond_2
    invoke-static {p1, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    .line 6838
    :cond_3
    invoke-static {p1, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0
.end method

.method public getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/ComposeMessage"

    const-string v4, "_data"

    .line 4663
    const-string v6, ""

    .line 4665
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4666
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4668
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v4, v2, v5

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4673
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 4674
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4675
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4677
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    move-object v0, v7

    .line 4710
    :goto_0
    if-eqz v0, :cond_0

    .line 4711
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 4718
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    .line 4719
    invoke-static {v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4720
    const-string v3, ""

    .line 4722
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4725
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 4726
    if-ltz v3, :cond_8

    .line 4727
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4730
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4731
    if-nez v0, :cond_1

    .line 4733
    :cond_1
    return-object v0

    .line 4679
    :cond_2
    if-eqz v7, :cond_3

    .line 4680
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4683
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4687
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 4688
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4689
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4691
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 4693
    :cond_4
    if-eqz v7, :cond_5

    .line 4694
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4697
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 4701
    if-eqz v0, :cond_a

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_a

    .line 4702
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4703
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4705
    const-string v2, "Mms/ComposeMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The actual path is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4710
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v1, :cond_6

    .line 4711
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 4714
    :cond_7
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4715
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4710
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_3

    :cond_8
    move-object v0, v2

    goto/16 :goto_2

    :cond_9
    move-object v0, v6

    goto/16 :goto_1

    :cond_a
    move-object v1, v6

    goto/16 :goto_0
.end method

.method public declared-synchronized getState()I
    .locals 5

    .prologue
    const-string v1, "Mms/ComposeMessage"

    .line 7550
    monitor-enter p0

    const/4 v0, -0x1

    .line 7551
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_0

    .line 7552
    const/4 v0, 0x0

    .line 7564
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 7575
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7578
    :goto_1
    monitor-exit p0

    return v0

    .line 7554
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mFlagDeletedAll:Z

    if-eqz v1, :cond_1

    .line 7555
    const/4 v0, 0x0

    goto :goto_0

    .line 7556
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 7557
    const/4 v0, 0x0

    goto :goto_0

    .line 7558
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 7559
    const/4 v0, 0x0

    goto :goto_0

    .line 7561
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 7566
    :pswitch_0
    const-string v1, "Mms/ComposeMessage"

    const-string v2, "getState(),STATE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7550
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 7569
    :pswitch_1
    :try_start_2
    const-string v1, "Mms/ComposeMessage"

    const-string v2, "getState(),STATE_NOCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7572
    :pswitch_2
    const-string v1, "Mms/ComposeMessage"

    const-string v2, "getState(),STATE_HASCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 7564
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter "msgListItem"
    .parameter "msgItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8006
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    if-eqz v2, :cond_2

    .line 8007
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v0

    .line 8008
    .local v0, checked:Z
    invoke-virtual {p1, v6, v0}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    .line 8010
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    .line 8011
    .local v1, checkedCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 8012
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8016
    :goto_0
    if-lez v1, :cond_1

    .line 8017
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 8025
    .end local v0           #checked:Z
    .end local v1           #checkedCount:I
    :goto_1
    return-void

    .line 8014
    .restart local v0       #checked:Z
    .restart local v1       #checkedCount:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 8019
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_1

    .line 8023
    .end local v0           #checked:Z
    .end local v1           #checkedCount:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_1
.end method

.method public hideSipExplicit()V
    .locals 4

    .prologue
    .line 6541
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_1

    .line 6550
    :cond_0
    :goto_0
    return-void

    .line 6544
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 6545
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6548
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSipExplicit() view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6549
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "Mms/ComposeMessage"

    .line 2008
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "initialize()"

    invoke-static {v5, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2013
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage;->mFlagDeletedAll:Z

    .line 2015
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2017
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mScreenWidth:I

    .line 2020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2021
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    .line 2024
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ComposeMessage;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2026
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2027
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recipients = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2034
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->undeliveredMessageDialog(J)V

    .line 2036
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 2039
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initMessageList()V

    .line 2048
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2049
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->handleForwardedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2050
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mIsForwardedMessage:Z

    .line 2054
    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage;->mIsNeedToAnimation:Z

    .line 2058
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initResourceLayout()V

    .line 2060
    return-void

    .line 2052
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->loadDraft()V

    goto :goto_0

    .line 2056
    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessage;->mIsNeedToAnimation:Z

    goto :goto_1
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 7706
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    return v0
.end method

.method public isRecipientsEditorVisible()Z
    .locals 4

    .prologue
    .line 2774
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2777
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecipientsEditorVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    return v0

    .line 2774
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0901bd

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v11, "Mms/ComposeMessage"

    const-string v7, ""

    .line 3839
    const-string v1, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3842
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage;->mWaitingForSubActivity:Z

    .line 3846
    const/16 v1, 0x2a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x29

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_e

    :cond_0
    move v4, v5

    .line 3857
    :goto_0
    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    .line 3858
    if-nez p3, :cond_3

    .line 3859
    const-string v1, "Mms/ComposeMessage"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v11, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    :cond_1
    :goto_1
    return-void

    .line 3862
    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 3863
    const-string v1, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3867
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 4208
    :cond_4
    :goto_2
    :pswitch_0
    const-string v1, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3869
    :pswitch_1
    if-eqz p3, :cond_4

    .line 3871
    const/4 v1, 0x0

    .line 3872
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v2, :cond_5

    .line 3873
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3875
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    .line 3877
    if-eqz v2, :cond_4

    .line 3878
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 3879
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 3880
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 3882
    if-eqz v1, :cond_6

    .line 3883
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3886
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessage;->drawTopPanel(Z)V

    .line 3887
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendButtonState()V

    goto :goto_2

    .line 3898
    :pswitch_2
    const-string v1, "uri-data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3899
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3901
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v7, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 3904
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$38;

    invoke-direct {v5, p0, v1, v4, v2}, Lcom/android/mms/ui/ComposeMessage$38;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v1, "addAttachment"

    invoke-direct {v3, v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 3918
    :pswitch_3
    if-eqz p3, :cond_1

    .line 3922
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3924
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v7, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 3926
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$39;

    invoke-direct {v5, p0, v1, v4, v2}, Lcom/android/mms/ui/ComposeMessage$39;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v1, "addAttachment"

    invoke-direct {v3, v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 3941
    :pswitch_4
    if-eqz p3, :cond_1

    .line 3944
    const/4 v2, 0x2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 3951
    :pswitch_5
    if-eqz p3, :cond_1

    .line 3954
    const-string v1, "FILE_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3955
    const/4 v2, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 3962
    :pswitch_6
    if-eqz p3, :cond_1

    .line 3966
    const/4 v2, 0x3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 3970
    :pswitch_7
    const-string v1, "exit_ecm_result"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3971
    if-eqz v1, :cond_4

    .line 3972
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessage;->sendMessage(Z)V

    goto/16 :goto_2

    .line 3978
    :pswitch_8
    if-eqz p3, :cond_1

    .line 3981
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3982
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3985
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3986
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v7, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 3988
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3989
    const-string v3, "vcard"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3990
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$40;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/mms/ui/ComposeMessage$40;-><init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    const-string v1, "addAttachment"

    invoke-direct {v4, v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 4008
    :cond_7
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4009
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4010
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4011
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->getImportMediaCount(I)I

    move-result v9

    move v10, v5

    .line 4012
    :goto_3
    if-ge v10, v9, :cond_8

    .line 4013
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 4014
    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    move-object v3, v0

    const/16 v7, 0x14

    move-object v2, p0

    move v4, v5

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V

    .line 4012
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_3

    .line 4016
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4017
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4018
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v1, :cond_4

    .line 4019
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4028
    :pswitch_9
    const-string v1, "uristrings"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4030
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4031
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4032
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v1, :cond_4

    .line 4033
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4039
    :pswitch_a
    const-string v1, "uristrings"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4042
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4043
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4044
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v1, :cond_4

    .line 4045
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4051
    :pswitch_b
    const-string v1, "uristrings"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x21

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4054
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4055
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4056
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v1, :cond_4

    .line 4057
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4065
    :pswitch_c
    const-string v1, "contact_number"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4066
    if-eqz v1, :cond_4

    .line 4067
    invoke-static {v1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4068
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4069
    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_2

    .line 4075
    :pswitch_d
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4076
    const-string v2, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_PHONE_MULTI selectedNumbers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    if-eqz v1, :cond_4

    .line 4079
    const-string v2, "mode"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "mode"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlineSearch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4081
    invoke-static {v1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4085
    :goto_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4086
    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_2

    .line 4083
    :cond_9
    invoke-static {v1, v6}, Lcom/android/mms/data/Contact;->getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    goto :goto_4

    .line 4092
    :pswitch_e
    const-string v1, "namecard_result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4093
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4096
    :pswitch_f
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4097
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4101
    :pswitch_10
    const-string v1, "memotext"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4102
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4106
    :pswitch_11
    const-string v1, "taskstext"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4107
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4111
    :pswitch_12
    if-eqz p3, :cond_4

    const-string v1, "empty_thread"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4112
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 4114
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestClose()V

    goto/16 :goto_2

    .line 4124
    :pswitch_13
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 4125
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4127
    if-nez v1, :cond_a

    .line 4128
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4131
    :cond_a
    if-eqz v1, :cond_4

    .line 4132
    invoke-static {v1, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 4133
    if-eqz v1, :cond_4

    .line 4134
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_2

    .line 4141
    :pswitch_14
    const-string v1, "location"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4143
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->AddText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4144
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4152
    :pswitch_15
    const/16 v2, 0x50

    .line 4153
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "map_image"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 4155
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4156
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v6, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4158
    new-instance v1, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 4159
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 4160
    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 4161
    const-string v2, "image/jpg"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 4164
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v2

    .line 4165
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 4167
    :try_start_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v3, v1, v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v3

    .line 4168
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessage;->addMedia(ILandroid/net/Uri;ZZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 4169
    :catch_0
    move-exception v1

    .line 4171
    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_2

    .line 4176
    :pswitch_16
    const-string v1, "isSubject"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 4177
    const-string v2, "transString"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4178
    const-string v3, "isSend"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 4179
    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_d

    .line 4180
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4181
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4187
    :goto_5
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4189
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4190
    invoke-direct {p0, v5, v5}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonsByRecipientEditor(ZZ)V

    .line 4193
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_c

    .line 4194
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 4197
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4198
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->confirmSendMessageIfNeeded()V

    goto/16 :goto_2

    .line 4183
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4184
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_e
    move v4, v6

    goto/16 :goto_0

    .line 3867
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_b
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onAttachmentChanged(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2825
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onAttachmentChanged(final int type)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$23;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessage$23;-><init>(Lcom/android/mms/ui/ComposeMessage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2842
    return-void
.end method

.method public onAttachmentChanged(Z)V
    .locals 3
    .parameter "sendMultiple"

    .prologue
    .line 2805
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachmentChanged() sendMultiple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$22;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessage$22;-><init>(Lcom/android/mms/ui/ComposeMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2822
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "additional"

    .line 4822
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(),v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4825
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4826
    invoke-direct {p0, v3, v3}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonsByRecipientEditor(ZZ)V

    .line 4829
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    .line 4830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 4833
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4834
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->confirmSendMessageIfNeeded()V

    .line 4854
    :cond_2
    :goto_0
    return-void

    .line 4836
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4837
    const/16 v0, 0x8

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessage;->showAddAttachmentDialog(ZI)V

    goto :goto_0

    .line 4838
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4839
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4840
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4841
    const-string v1, "additional"

    const-string v1, "email-phone-multi"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4846
    :goto_1
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4848
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4852
    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4844
    :cond_5
    const-string v1, "additional"

    const-string v1, "phone-multi"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "Mms/ComposeMessage"

    .line 1782
    const-string v0, "Mms/ComposeMessage"

    const-string v0, " onCreate()"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessage;->setIntent(Landroid/content/Intent;)V

    .line 1787
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    .line 1789
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEncodingType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 1794
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 1796
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setTextFieldColor(I)V

    .line 1797
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBubbleFontSize:F

    .line 1800
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initResourceRefs()V

    .line 1802
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 1803
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    .line 1805
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonList:Ljava/util/SortedMap;

    .line 1806
    iput v3, p0, Lcom/android/mms/ui/ComposeMessage;->mToButtonId:I

    .line 1808
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientList:Ljava/util/SortedMap;

    .line 1809
    iput v3, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientId:I

    .line 1811
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 1813
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->initialize(Landroid/os/Bundle;J)V

    .line 1817
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1819
    if-eqz v1, :cond_0

    .line 1820
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1822
    const-string v1, "mailto"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1823
    const-string v1, "Mms/ComposeMessage"

    const-string v1, "Sending EMAIL start"

    invoke-static {v4, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string v1, ""

    .line 1825
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->initializeFromMailTo(Ljava/lang/String;)V

    .line 1827
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "Sending EMAIL Ends"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1845
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1847
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->animView:Landroid/view/View;

    .line 1850
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessage$18;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V

    .line 1873
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1875
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "onCreate()"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5387
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 5400
    :goto_0
    return-object v0

    .line 5390
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 5387
    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method public onDeleteStarting()V
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSentMessage:Z

    .line 929
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "Mms/ComposeMessage"

    .line 2489
    const-string v0, "Mms/ComposeMessage"

    const-string v0, " onDestroy()"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 2497
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2499
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 2500
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2507
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2510
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mToastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 2512
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2513
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mToastHandler:Landroid/os/Handler;

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_2

    .line 2517
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2520
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->fillCache()V

    .line 2524
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2525
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "mAttachmentProgressDialog Progress Dismissed with onPause()"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2529
    :cond_3
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 4858
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction(),actionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4859
    if-eqz p3, :cond_0

    move v0, v3

    .line 4893
    :goto_0
    return v0

    .line 4874
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4875
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    move v0, v3

    .line 4876
    goto :goto_0

    .line 4878
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 4893
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4880
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4881
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    .line 4884
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 4885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_5

    .line 4886
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 4889
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4890
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->confirmSendMessageIfNeeded()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const-string v4, "Mms/ComposeMessage"

    .line 2620
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v1, v5

    .line 2684
    :goto_0
    return v1

    .line 2622
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2625
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    if-eqz v2, :cond_0

    .line 2632
    const/16 v1, 0x14

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v9

    .line 2633
    :goto_1
    const/16 v1, 0x15

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2635
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2636
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessage;JLjava/lang/String;ZJ)V

    .line 2639
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, v6}, Lcom/android/mms/ui/ComposeMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v1

    .line 2640
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2641
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move v1, v9

    .line 2643
    goto :goto_0

    .line 2626
    :catch_0
    move-exception v1

    .line 2627
    const-string v2, "Mms/ComposeMessage"

    const-string v2, "Unexpected ClassCastException."

    invoke-static {v4, v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v5

    .line 2628
    goto :goto_0

    :cond_1
    move v6, v5

    .line 2632
    goto :goto_1

    .line 2649
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2650
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->confirmSendMessageIfNeeded()V

    move v1, v9

    .line 2651
    goto :goto_0

    .line 2656
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->close()V

    move v1, v9

    .line 2657
    goto :goto_0

    .line 2665
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "web_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2668
    const-string v2, "Mms/ComposeMessage"

    const-string v2, " ComposeMessage  set voiceSearchIntent  "

    invoke-static {v4, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v1, v9

    .line 2675
    goto :goto_0

    .line 2672
    :catch_1
    move-exception v1

    .line 2673
    const-string v2, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ComposeMessage    Exception ex= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2620
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x74 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2689
    packed-switch p1, :pswitch_data_0

    .line 2706
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2692
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 2693
    goto :goto_0

    .line 2695
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 2696
    .local v0, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2697
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestClose()V

    :goto_1
    move v1, v3

    .line 2701
    goto :goto_0

    .line 2699
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->close()V

    goto :goto_1

    .line 2689
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 3

    .prologue
    .line 3047
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->saveDraft(Z)Z

    .line 3049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090106

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->threadSafeToast(Landroid/app/Activity;II)V

    .line 3050
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2890
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->startMsgListQuery()V

    .line 2892
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter

    .prologue
    .line 2150
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tonNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isEnter:Z

    .line 2154
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->setIntent(Landroid/content/Intent;)V

    .line 2156
    const/4 v0, 0x0

    .line 2157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSentMessage:Z

    .line 2158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDraftSavedOnStop:Z

    .line 2162
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 2163
    const-string v3, "thread_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2164
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2165
    const-string v6, "conversationDeleteMode"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2167
    const/4 v7, 0x0

    .line 2169
    if-eqz v5, :cond_0

    .line 2170
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 2173
    :cond_0
    const/4 v8, 0x0

    .line 2174
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_4

    .line 2175
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v0, v3, v4, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    move-object v7, v0

    move v0, v8

    .line 2208
    :goto_0
    const-string v8, "Mms/ComposeMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewIntent: data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", thread_id extra is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v3, "Mms/ComposeMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     new conversation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mConversation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    if-eqz v7, :cond_1

    .line 2214
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2222
    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7, v0}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 2227
    :cond_1
    :goto_1
    if-eqz v0, :cond_a

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2228
    if-eqz v7, :cond_2

    .line 2229
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2231
    :cond_2
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onNewIntent: same conversation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 2248
    :goto_2
    if-eqz v6, :cond_3

    .line 2249
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->setConversationDeleteModeLayout()V

    .line 2251
    :cond_3
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    return-void

    .line 2177
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 2181
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 2182
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8, v5}, Lcom/android/mms/data/Conversation;->sameRecipient(Landroid/net/Uri;)Z

    move-result v8

    .line 2184
    :cond_5
    if-nez v8, :cond_c

    .line 2187
    const/4 v0, 0x0

    .line 2189
    if-eqz v7, :cond_6

    const-string v9, "smsto"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2191
    const-string v0, "sendto"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2194
    :cond_6
    if-eqz v0, :cond_7

    .line 2195
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v0, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 2196
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    move v0, v8

    goto/16 :goto_0

    .line 2198
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v9

    invoke-static {v0, v5, v7, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 2201
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessage;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 2202
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessage;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    :cond_8
    move-object v7, v0

    move v0, v8

    goto/16 :goto_0

    .line 2222
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2236
    :cond_a
    const-string v0, "Mms/ComposeMessage"

    const-string v3, "onNewIntent: different conversation, initialize..."

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_b

    .line 2238
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2242
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->dismissAllDialog()V

    .line 2243
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->disableDeleteModeLayout()V

    .line 2244
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->initialize(Landroid/os/Bundle;J)V

    .line 2245
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->loadMessageContent()V

    goto/16 :goto_2

    .line 2240
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->saveDraft(Z)Z

    goto :goto_3

    :cond_c
    move-object v7, v0

    move v0, v8

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v3, "fromString"

    .line 3275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    .line 3466
    :goto_0
    return v0

    .line 3277
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->previewSlideshow()V

    move v0, v9

    .line 3278
    goto :goto_0

    .line 3281
    :sswitch_1
    invoke-direct {p0, v9}, Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V

    .line 3282
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3283
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3285
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 3286
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 3287
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 3288
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 3293
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    if-nez v0, :cond_1

    .line 3294
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 3297
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_1

    .line 3298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 3300
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    move v0, v9

    .line 3301
    goto :goto_0

    .line 3304
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V

    .line 3305
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3306
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 3307
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    move v0, v9

    .line 3308
    goto :goto_0

    .line 3310
    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3311
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 3313
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestClose()V

    move v0, v9

    .line 3314
    goto :goto_0

    .line 3316
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3317
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->confirmSendMessageIfNeeded()V

    :cond_2
    move v0, v9

    .line 3319
    goto/16 :goto_0

    .line 3321
    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v9

    .line 3322
    goto/16 :goto_0

    .line 3324
    :sswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 3326
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    .line 3327
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_3

    move v0, v9

    .line 3328
    goto/16 :goto_0

    .line 3329
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3330
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x70b

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    :goto_1
    move v0, v9

    .line 3335
    goto/16 :goto_0

    .line 3333
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    goto :goto_1

    .line 3337
    :sswitch_7
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessage$32;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    move v0, v9

    .line 3342
    goto/16 :goto_0

    .line 3345
    :sswitch_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 3347
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->dialRecipient()V

    move v0, v9

    .line 3348
    goto/16 :goto_0

    .line 3350
    :sswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showSmileyDialog()V

    move v0, v9

    .line 3351
    goto/16 :goto_0

    .line 3354
    :sswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 3355
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3356
    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 3357
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3358
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3359
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivity(Landroid/content/Intent;)V

    :cond_5
    move v0, v9

    .line 3361
    goto/16 :goto_0

    .line 3366
    :sswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showAddtextDialog()V

    move v0, v9

    .line 3367
    goto/16 :goto_0

    .line 3369
    :sswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    .line 3370
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v9

    .line 3371
    goto/16 :goto_0

    .line 3375
    :sswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showChooseContactDialog()V

    move v0, v9

    .line 3376
    goto/16 :goto_0

    .line 3380
    :sswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 3382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3386
    new-instance v2, Lcom/android/mms/ui/ComposeMessage$33;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessage$33;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    .line 3394
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3400
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3402
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 3403
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    move v3, v0

    .line 3405
    :goto_2
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, -0x1

    const v8, 0x7f020044

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 3407
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    move v0, v9

    .line 3408
    goto/16 :goto_0

    .line 3396
    :catch_0
    move-exception v0

    .line 3397
    const-string v1, "Mms/ComposeMessage"

    const-string v2, "NullPointerException !!!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v9

    .line 3398
    goto/16 :goto_0

    .line 3412
    :sswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showLayoutSelectorDialog()V

    move v0, v9

    .line 3413
    goto/16 :goto_0

    .line 3416
    :sswitch_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3417
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3418
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 3420
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 3423
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3424
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 3425
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_7

    .line 3426
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_7
    move v0, v9

    .line 3429
    goto/16 :goto_0

    .line 3434
    :sswitch_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3435
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    .line 3436
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3437
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 3438
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    .line 3439
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 3441
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->updateSendButtonState()V

    :cond_8
    move v0, v9

    .line 3444
    goto/16 :goto_0

    .line 3448
    :sswitch_12
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3449
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3450
    const-string v1, "fromString"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3455
    :cond_9
    :goto_3
    const-string v1, "editable"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3456
    const-string v1, "isMms"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3457
    const-string v1, "isSubject"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3459
    const-string v1, "hasRecipient"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->recipientCount()I

    move-result v2

    if-lez v2, :cond_c

    move v2, v9

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3460
    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3461
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    move v0, v9

    .line 3462
    goto/16 :goto_0

    .line 3451
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3453
    const-string v1, "fromString"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_b
    move v2, v4

    .line 3457
    goto :goto_4

    :cond_c
    move v2, v4

    .line 3459
    goto :goto_5

    :cond_d
    move v3, v0

    goto/16 :goto_2

    .line 3275
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_6
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_8
        0x6b -> :sswitch_7
        0x6d -> :sswitch_b
        0x6e -> :sswitch_2
        0x70 -> :sswitch_a
        0x77 -> :sswitch_5
        0x7e -> :sswitch_9
        0x7f -> :sswitch_c
        0x82 -> :sswitch_d
        0x85 -> :sswitch_0
        0x8c -> :sswitch_e
        0x98 -> :sswitch_f
        0x99 -> :sswitch_10
        0x9a -> :sswitch_11
        0x9b -> :sswitch_12
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const-string v2, "Mms/ComposeMessage"

    .line 2427
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "\t\t onPause()"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->resetChildView()V

    .line 2434
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2435
    sget-object v0, Lcom/android/mms/ui/ComposeMessage;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ComposeMessage;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2436
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "DeleteAnimation Progress Dismissed with onPause()"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    sget-object v0, Lcom/android/mms/ui/ComposeMessage;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2439
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isHideCompose:Z

    .line 2441
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_1

    .line 2442
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 2443
    :cond_1
    return-void
.end method

.method public onPreMessageSent()V
    .locals 2

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2884
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v2, 0x6a

    const v7, 0x2020014

    const/16 v6, 0x66

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3072
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3076
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3078
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3079
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3080
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 3081
    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    move v0, v5

    .line 3243
    :goto_1
    return v0

    .line 3084
    :cond_2
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 3093
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3094
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3096
    :cond_4
    const/16 v0, 0x7e

    const v1, 0x7f0900ee

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3102
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3105
    :cond_6
    const/16 v0, 0x85

    const v1, 0x7f09005b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202002b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3109
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3110
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3111
    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3117
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3118
    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3139
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3140
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3141
    const/16 v0, 0x70

    const v1, 0x7f090066

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020069

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3145
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 3148
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3150
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-ge v0, v1, :cond_b

    .line 3151
    :cond_a
    const/16 v0, 0x99

    const v1, 0x7f09002d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3154
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3155
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 3156
    if-le v0, v5, :cond_c

    .line 3158
    const/16 v0, 0x9a

    const v1, 0x7f09002c

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3181
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3182
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3183
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 3185
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    .line 3188
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3190
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 3191
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    .line 3194
    :cond_d
    if-ne v0, v5, :cond_16

    .line 3195
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09005d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3201
    :goto_3
    const/16 v1, 0x8c

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3207
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3210
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-ne v0, v5, :cond_17

    .line 3211
    const v0, 0x7f090060

    .line 3215
    :goto_4
    const/16 v1, 0x98

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3219
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3220
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3221
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_10

    .line 3222
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_18

    .line 3223
    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3237
    :cond_10
    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3240
    :cond_12
    const/16 v0, 0x9b

    const v1, 0x7f0901c5

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020083

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_13
    move v0, v5

    .line 3243
    goto/16 :goto_1

    .line 3123
    :cond_14
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3124
    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3128
    :cond_15
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3129
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3130
    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3198
    :cond_16
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09016b

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 3213
    :cond_17
    const v0, 0x7f090061

    goto/16 :goto_4

    .line 3226
    :cond_18
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public onProtocolChanged(Z)V
    .locals 3
    .parameter "mms"

    .prologue
    .line 2845
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProtocolChanged(),mms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$24;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessage$24;-><init>(Lcom/android/mms/ui/ComposeMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2866
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "Mms/ComposeMessage"

    .line 2377
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "\t\t onResume()"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->isHideCompose:Z

    .line 2398
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mSentMessage:Z

    .line 2402
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    .line 2404
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume(),mEncodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/mms/ui/ComposeMessage;->mEncodingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->showAttachListPanel()V

    .line 2410
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2413
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsAnimationEnable:Z

    if-nez v0, :cond_0

    .line 2414
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->showSip()V

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->updateEditorSize(Z)V

    .line 2424
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 2364
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 2367
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->saveToButtonState(Landroid/os/Bundle;)V

    .line 2369
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mExitOnSent:Z

    if-eqz v0, :cond_0

    .line 2370
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2373
    :cond_0
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t onSaveInstanceState(),outState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2276
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessage;->isComposerClosed:Z

    .line 2279
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2280
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage;->isEnter:Z

    .line 2282
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->initFocus()V

    .line 2285
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2286
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->addRecipientsListener()V

    .line 2288
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->loadMessageContent()V

    .line 2290
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2294
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2295
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2298
    :cond_0
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 2299
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2300
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessage;->drawTopPanel(Z)V

    .line 2304
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->requestDrawPointerOnConverationList()V

    .line 2306
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->setMessageListBackground()V

    .line 2308
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOnScreen:Z

    .line 2309
    return-void
.end method

.method public onStop(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "Mms/ComposeMessage"

    .line 2448
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "\t onStop()"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessage;->MakeToButtonsByRecipientEditor(ZZ)V

    .line 2455
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    .line 2456
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 2466
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2469
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2471
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWaitingForSubActivity:Z

    if-nez v0, :cond_2

    .line 2472
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->saveDraft(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDraftSavedOnStop:Z

    .line 2474
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->removeRecipientsListener()V

    .line 2477
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 2485
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsOnScreen:Z

    .line 2486
    return-void

    .line 2478
    :catch_0
    move-exception v0

    .line 2479
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "onStop() was called twice!!"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 6311
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessage$55;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessage$55;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6334
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2609
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkPendingNotification()V

    .line 2610
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 2614
    if-eqz p1, :cond_0

    .line 2615
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->checkPendingNotification()V

    .line 2617
    :cond_0
    return-void
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    .prologue
    .line 8162
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->isComposerPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8163
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 8168
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 8165
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestFocus()Z

    goto :goto_0
.end method

.method protected resetChildView()V
    .locals 7

    .prologue
    .line 5986
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    .line 5987
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5988
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5989
    .local v3, thisView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 5990
    .local v1, p:Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 5991
    .restart local v1       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5987
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5993
    .end local v1           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #thisView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resetString()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2576
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090114

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2580
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    if-ne v0, v3, :cond_1

    .line 2581
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 2583
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    .line 2585
    :cond_1
    return-void
.end method

.method public resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6598
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onResizeResult()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6599
    if-nez p1, :cond_1

    .line 6600
    const/4 v1, -0x1

    const v2, 0x7f0900dc

    const/4 v3, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 6636
    :cond_0
    :goto_0
    return-void

    .line 6605
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    .line 6606
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 6608
    const/4 v1, 0x0

    .line 6609
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    .line 6610
    if-nez v2, :cond_2

    .line 6611
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v2

    .line 6614
    :cond_2
    :try_start_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 6616
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 6617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v0

    .line 6619
    const-string v1, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6620
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v3, v4

    move v1, v0

    .line 6625
    :goto_1
    if-nez v1, :cond_4

    .line 6626
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/ComposeMessage;->onAttachmentChanged(Z)V

    .line 6629
    :cond_4
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 6631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage;->isResizingImage:Z

    .line 6632
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 6633
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto :goto_0

    .line 6622
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 6623
    :goto_2
    const/4 v1, -0x1

    move-object v3, v0

    goto :goto_1

    .line 6622
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_2
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    .line 212
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 2312
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsAnimationEnable:Z

    .line 2313
    return-void
.end method

.method public setConversationDeleteModeLayout()V
    .locals 2

    .prologue
    .line 7698
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "setConversationDeleteModeLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7700
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_0

    .line 7701
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 7702
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 7703
    return-void
.end method

.method public setDeleteModeLayout(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7640
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7641
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    .line 7644
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->addDeleteSoftKey()V

    .line 7646
    if-eqz p1, :cond_0

    .line 7647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7648
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7649
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 7650
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 7651
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 7652
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 7653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 7654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 7656
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 7658
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 7659
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7660
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->hideSip()V

    .line 7662
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllText:Landroid/widget/TextView;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7684
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    .line 7685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestLayout()V

    .line 7686
    return-void

    .line 7664
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7665
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 7666
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 7667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 7669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 7670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 7672
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 7674
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 7679
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 7680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 7681
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 7676
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 7526
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 7527
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 7532
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 7533
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 7538
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 7539
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 7754
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7755
    return-void
.end method

.method public setSizeString(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 6809
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6810
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x7c

    const/16 v7, 0x79

    const/16 v3, 0x76

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7896
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mSelectedPosition:I

    .line 7898
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/ui/ComposeMessage;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 7901
    if-nez p3, :cond_1

    .line 8002
    :cond_0
    :goto_0
    return-void

    .line 7906
    :cond_1
    const v0, 0x7f090028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 7908
    new-instance v0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 7910
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v1

    if-ne v1, v6, :cond_3

    .line 7911
    :cond_2
    const v1, 0x7f0900af

    invoke-interface {p1, v5, v3, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7913
    const v1, 0x7f09001c

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7915
    const v1, 0x7f090022

    invoke-interface {p1, v5, v4, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 7921
    :cond_3
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7922
    const/16 v1, 0x7d

    const v2, 0x7f0900ad

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7925
    :cond_4
    const v1, 0x7f0900af

    invoke-interface {p1, v5, v3, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7929
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/ui/ComposeMessage;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 7931
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7932
    :cond_5
    const v1, 0x7f090022

    invoke-interface {p1, v5, v4, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7936
    :cond_6
    iget-boolean v1, p3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v1, :cond_c

    .line 7937
    const/16 v1, 0x81

    const v2, 0x7f0900b2

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7945
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessage;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v6, :cond_7

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7946
    const/16 v1, 0x72

    const v2, 0x7f0900ac

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7949
    :cond_7
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7951
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_d

    .line 7955
    const/16 v1, 0x87

    const v2, 0x7f090154

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7977
    :cond_8
    :goto_2
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7978
    const v1, 0x7f09001c

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7984
    :cond_9
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7986
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    if-eq v1, v6, :cond_a

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 7989
    :cond_a
    const/16 v1, 0x83

    const v2, 0x7f090023

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7995
    :cond_b
    const/16 v1, 0x75

    const v2, 0x7f090014

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7999
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage;->mIsTranslateMenuON:Z

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 8000
    const/16 v1, 0x9b

    const v2, 0x7f0901c5

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 7939
    :cond_c
    const/16 v1, 0x80

    const v2, 0x7f0900b1

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 7958
    :cond_d
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7960
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 7964
    if-eqz v1, :cond_8

    .line 7965
    const/4 v1, 0x0

    const/16 v2, 0x87

    const/4 v3, 0x0

    const v4, 0x7f090154

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 7969
    :catch_0
    move-exception v1

    .line 7970
    const-string v2, "Mms/ComposeMessage"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public showSip()V
    .locals 6

    .prologue
    .line 6502
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6527
    :cond_0
    :goto_0
    return-void

    .line 6505
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 6507
    .local v1, view:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage;->mIsAnimationEnable:Z

    if-nez v2, :cond_2

    .line 6508
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6510
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6511
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 6512
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 6517
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$57;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/ComposeMessage$57;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/view/View;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showSizeString(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 6787
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 6788
    if-eqz v0, :cond_0

    .line 6789
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->expectedMessageSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setSizeString(Ljava/lang/CharSequence;)V

    .line 6802
    :goto_0
    return-void

    .line 6791
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessage;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 6792
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgCount:I

    .line 6793
    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRemainingInCurrentMessage:I

    .line 6796
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6797
    iget v0, p0, Lcom/android/mms/ui/ComposeMessage;->mRemainingInCurrentMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6799
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ComposeMessage;->mRemainingInCurrentMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessage;->mMsgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessage;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4386
    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4387
    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4388
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4389
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4390
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4392
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5448
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5451
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 5452
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090019

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 5459
    :goto_0
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5461
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 5462
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 5463
    invoke-virtual {v1, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 5464
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5465
    return-void

    .line 5456
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method
