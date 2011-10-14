.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_UNBIND:I = 0x3

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static mInstance:Landroid/view/inputmethod/InputMethodManager;

.field static final mInstanceSync:Ljava/lang/Object;

.field static mIsSoftInputMethodShowing:Z


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedNeedsStart:Z

.field mNextServedView:Landroid/view/View;

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;

.field sServiceEx:Landroid/sec/clipboard/IClipboardService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .registers 6
    .parameter "service"
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 278
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 289
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 411
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 448
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 451
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 452
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 453
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v1, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 454
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v1, p0, p2, v2}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 457
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_45

    .line 458
    sput-object p0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 463
    :cond_45
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 464
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 466
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 5
    .parameter "mainLooper"

    .prologue
    .line 483
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 484
    :try_start_3
    sget-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_c

    .line 485
    sget-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v2

    move-object v2, v3

    .line 491
    :goto_b
    return-object v2

    .line 487
    :cond_c
    const-string v3, "input_method"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 488
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 489
    .local v1, service:Lcom/android/internal/view/IInputMethodManager;
    new-instance v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v3, v1, p0}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 490
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_21

    .line 491
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    goto :goto_b

    .line 490
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/android/internal/view/IInputMethodManager;
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .prologue
    .line 500
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public checkFocus()V
    .registers 5

    .prologue
    .line 1138
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v1, v2, :cond_b

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    if-nez v1, :cond_b

    .line 1174
    :goto_a
    return-void

    .line 1142
    :cond_b
    const/4 v0, 0x0

    .line 1143
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1144
    :try_start_f
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v2, v3, :cond_1e

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    if-nez v2, :cond_1e

    .line 1145
    monitor-exit v1

    goto :goto_a

    .line 1167
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v2

    .line 1151
    :cond_1e
    const/4 v2, 0x0

    :try_start_1f
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    .line 1152
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v2, :cond_2d

    .line 1153
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1157
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1158
    monitor-exit v1

    goto :goto_a

    .line 1161
    :cond_2d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1163
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1164
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1165
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1166
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1167
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_1b

    .line 1169
    if-eqz v0, :cond_42

    .line 1170
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1173
    :cond_42
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto :goto_a
.end method

.method clearBindingLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 597
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 598
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 599
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 600
    return-void
.end method

.method clearConnectionLocked()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 608
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 609
    return-void
.end method

.method closeCurrentInput()V
    .registers 5

    .prologue
    .line 1178
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1181
    :goto_9
    return-void

    .line 1179
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .registers 10
    .parameter "context"
    .parameter "seq"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 1381
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1384
    :try_start_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v2, :cond_d

    .line 1386
    const/4 v2, 0x0

    :try_start_8
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_5b

    .line 1389
    :goto_b
    :try_start_b
    monitor-exit v1

    .line 1412
    :goto_c
    return-void

    .line 1392
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_27

    .line 1394
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_24

    .line 1396
    const/4 v2, 0x1

    :try_start_1f
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_5d

    .line 1399
    :goto_22
    :try_start_22
    monitor-exit v1

    goto :goto_c

    .line 1411
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v2

    .line 1403
    :cond_27
    :try_start_27
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2e

    .line 1411
    :goto_2c
    :try_start_2c
    monitor-exit v1

    goto :goto_c

    .line 1404
    :catch_2e
    move-exception v2

    move-object v0, v2

    .line 1405
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_24

    .line 1407
    const/4 v2, 0x0

    :try_start_55
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_2c

    .line 1408
    :catch_59
    move-exception v2

    goto :goto_2c

    .line 1387
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_5b
    move-exception v2

    goto :goto_b

    .line 1397
    :catch_5d
    move-exception v2

    goto :goto_22
.end method

.method dispatchTrackballEvent(Landroid/content/Context;ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .registers 10
    .parameter "context"
    .parameter "seq"
    .parameter "motion"
    .parameter "callback"

    .prologue
    .line 1419
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1422
    :try_start_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    if-nez v2, :cond_11

    .line 1424
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_48

    .line 1427
    :goto_f
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_18

    .line 1441
    :goto_10
    return-void

    .line 1432
    :cond_11
    :try_start_11
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1b

    .line 1440
    :goto_16
    :try_start_16
    monitor-exit v1

    goto :goto_10

    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v2

    .line 1433
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 1434
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1d
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping trackball: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_18

    .line 1436
    const/4 v2, 0x0

    :try_start_42
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_16

    .line 1437
    :catch_46
    move-exception v2

    goto :goto_16

    .line 1425
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_48
    move-exception v2

    goto :goto_f
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6
    .parameter "view"
    .parameter "completions"

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 659
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 660
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 662
    :cond_16
    monitor-exit v0

    .line 673
    :goto_17
    return-void

    .line 665
    :cond_18
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 666
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_27

    if-eqz v1, :cond_25

    .line 668
    :try_start_1e
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_2a

    .line 672
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v0

    goto :goto_17

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1

    .line 669
    :catch_2a
    move-exception v1

    goto :goto_25
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1454
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1455
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedNeedsStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1be

    .line 1471
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1472
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1476
    :goto_139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1483
    return-void

    .line 1474
    :cond_1be
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_139
.end method

.method finishInputLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 615
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 616
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_33

    .line 619
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    .line 621
    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_34

    .line 626
    :cond_12
    :goto_12
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_29

    .line 631
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 632
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_29

    .line 635
    const/16 v1, 0x3f4

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    .end local v0           #vh:Landroid/os/Handler;
    :cond_29
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 641
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 642
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 643
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 645
    :cond_33
    return-void

    .line 622
    :catch_34
    move-exception v1

    goto :goto_12
.end method

.method public focusIn(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1084
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method focusInLocked(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 1100
    :goto_8
    return-void

    .line 1098
    :cond_9
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 1099
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_8
.end method

.method public focusOut(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1111
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_7

    .line 1122
    :cond_7
    monitor-exit v0

    .line 1123
    return-void

    .line 1122
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethod()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1510
    const/4 v0, 0x0

    .line 1513
    .local v0, result:Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethod()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 1518
    :goto_7
    return-object v0

    .line 1514
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 524
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 516
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIsSoftInputMethodShowing()Z
    .registers 2

    .prologue
    .line 1495
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->mIsSoftInputMethodShowing:Z

    return v0
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1349
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1353
    return-void

    .line 1350
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1351
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .parameter "windowToken"
    .parameter "flags"

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 8
    .parameter "windowToken"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 849
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 850
    :try_start_7
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_16

    .line 851
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_25

    move v0, v3

    .line 858
    :goto_15
    return v0

    .line 855
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_21

    move-result v1

    :try_start_1e
    monitor-exit v0

    move v0, v1

    goto :goto_15

    .line 856
    :catch_21
    move-exception v1

    .line 858
    monitor-exit v0

    move v0, v3

    goto :goto_15

    .line 859
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v1
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .registers 6
    .parameter "imeToken"

    .prologue
    .line 539
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 543
    return-void

    .line 540
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 541
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAcceptingText()Z
    .registers 2

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 589
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 577
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 578
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 579
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    .line 580
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public isActive(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 565
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 566
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_16

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_1b
    monitor-exit v0

    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b

    .line 570
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isFullscreenMode()Z
    .registers 2

    .prologue
    .line 556
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return v0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 1261
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .registers 15
    .parameter "rootView"
    .parameter "focusedView"
    .parameter "softInputMode"
    .parameter "first"
    .parameter "windowFlags"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1189
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1194
    :try_start_5
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    if-eqz v1, :cond_f

    .line 1196
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1197
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    .line 1199
    :cond_f
    if-eqz p2, :cond_38

    move-object v1, p2

    :goto_12
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1200
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_3a

    .line 1202
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1204
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1206
    if-eqz p2, :cond_3d

    :try_start_1e
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_3d

    move v4, v5

    .line 1208
    .local v4, isTextEditor:Z
    :goto_25
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz p2, :cond_30

    move v3, v5

    :cond_30
    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ZZIZI)V
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_3f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_42

    .line 1213
    .end local v4           #isTextEditor:Z
    :goto_36
    :try_start_36
    monitor-exit v8
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_3f

    .line 1214
    return-void

    :cond_38
    move-object v1, p1

    .line 1199
    goto :goto_12

    .line 1200
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    move v4, v3

    .line 1206
    goto :goto_25

    .line 1213
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v8
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 1211
    :catch_42
    move-exception v0

    goto :goto_36
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 3
    .parameter "ic"

    .prologue
    .line 652
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_7

    .line 653
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 655
    :cond_7
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 921
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 922
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 924
    :cond_16
    monitor-exit v0

    .line 931
    :goto_17
    return-void

    .line 927
    :cond_18
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 928
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 930
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto :goto_17

    .line 928
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method scheduleCheckFocusLocked(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x3f5

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1127
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_15

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1129
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1131
    :cond_15
    return-void
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .parameter "view"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1303
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1304
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1305
    :try_start_6
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_16

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_16
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_20

    .line 1308
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    .line 1317
    :goto_1f
    return-void

    .line 1312
    :cond_20
    :try_start_20
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_2a

    .line 1316
    :goto_25
    :try_start_25
    monitor-exit v1

    goto :goto_1f

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v2

    .line 1313
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 1314
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2c
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_27

    goto :goto_25
.end method

.method public setFullscreenMode(Z)V
    .registers 2
    .parameter "fullScreen"

    .prologue
    .line 547
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 548
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "id"

    .prologue
    .line 1329
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1333
    return-void

    .line 1330
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1331
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIsSoftInputMethodShowing(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 1490
    sput-boolean p1, Landroid/view/inputmethod/InputMethodManager;->mIsSoftInputMethodShowing:Z

    .line 1491
    return-void
.end method

.method public showCursorControllerSearchDialog(Ljava/lang/String;)V
    .registers 3
    .parameter "searchText"

    .prologue
    .line 1502
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1505
    :goto_5
    return-void

    .line 1503
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public showInputMethodPicker()V
    .registers 6

    .prologue
    .line 1444
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1446
    :try_start_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 1450
    :goto_a
    :try_start_a
    monitor-exit v1

    .line 1451
    return-void

    .line 1447
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1448
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1450
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .registers 4
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 8
    .parameter "view"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v3, 0x0

    .line 770
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 771
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 772
    :try_start_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 774
    :cond_17
    monitor-exit v1

    move v0, v3

    .line 790
    :goto_19
    return v0

    .line 777
    :cond_1a
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_39

    .line 781
    const-string v0, "InputMethodManager"

    const-string v2, "Don\'t show soft input while screen turned off!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_43

    move v0, v3

    goto :goto_19

    .line 786
    :cond_39
    :try_start_39
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v2, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_46

    move-result v0

    :try_start_41
    monitor-exit v1

    goto :goto_19

    .line 791
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v0

    .line 787
    :catch_46
    move-exception v0

    .line 790
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_43

    move v0, v3

    goto :goto_19
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1370
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1374
    return-void

    .line 1371
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1372
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 5
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 797
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 800
    :goto_7
    return-void

    .line 798
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6
    .parameter "imeToken"
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 535
    return-void

    .line 532
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startGettingWindowFocus(Landroid/view/View;)V
    .registers 4
    .parameter "rootView"

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1219
    :try_start_3
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 1220
    monitor-exit v0

    .line 1221
    return-void

    .line 1220
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method startInputInner()V
    .registers 20

    .prologue
    const/16 v18, 0x1

    const/16 v17, 0x0

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object v4, v0

    monitor-enter v4

    .line 936
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    move-object v15, v0

    .line 940
    .local v15, view:Landroid/view/View;
    if-nez v15, :cond_13

    .line 942
    monitor-exit v4

    .line 1061
    :cond_12
    :goto_12
    return-void

    .line 944
    :cond_13
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_30

    .line 950
    invoke-virtual {v15}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 951
    .local v14, vh:Landroid/os/Handler;
    if-eqz v14, :cond_12

    .line 957
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_33

    .line 961
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v14, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    .line 944
    .end local v14           #vh:Landroid/os/Handler;
    .end local v15           #view:Landroid/view/View;
    :catchall_30
    move-exception v5

    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v5

    .line 972
    .restart local v14       #vh:Landroid/os/Handler;
    .restart local v15       #view:Landroid/view/View;
    :cond_33
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 973
    .local v7, tba:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 974
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v4

    iput v4, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 975
    invoke-virtual {v15, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 978
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_67

    .line 980
    instance-of v4, v15, Landroid/widget/EditText;

    if-eqz v4, :cond_67

    .line 982
    move-object v0, v15

    check-cast v0, Landroid/widget/EditText;

    move-object v12, v0

    .line 983
    .local v12, medit:Landroid/widget/EditText;
    invoke-virtual {v12}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v4, :cond_67

    .line 985
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 990
    .end local v12           #medit:Landroid/widget/EditText;
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 993
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    move-object v4, v0

    if-ne v4, v15, :cond_7c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    move v4, v0

    if-nez v4, :cond_b8

    .line 1000
    :cond_7c
    const-string v4, "CLIPBOARD"

    const-string v5, "Hide Clipboard dialog at Starting input: finished by someone else... !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    move-object v4, v0
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_95

    if-eqz v4, :cond_92

    .line 1004
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    move-object v4, v0

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_95
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_92} :catch_98

    .line 1012
    :cond_92
    :goto_92
    :try_start_92
    monitor-exit v16

    goto/16 :goto_12

    .line 1060
    :catchall_95
    move-exception v4

    monitor-exit v16
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_95

    throw v4

    .line 1005
    :catch_98
    move-exception v4

    move-object v10, v4

    .line 1006
    .local v10, e:Landroid/os/RemoteException;
    :try_start_9a
    const-string v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sServiceEx().dismissUIDataDialog() : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1017
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    move-object v4, v0

    if-nez v4, :cond_14c

    move/from16 v8, v18

    .line 1020
    .local v8, initial:Z
    :goto_c1
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1021
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1022
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1024
    if-eqz v11, :cond_150

    .line 1025
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1026
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1027
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1028
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1030
    new-instance v6, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    :try_end_103
    .catchall {:try_start_9a .. :try_end_103} :catchall_95

    .line 1038
    .local v6, servedContext:Lcom/android/internal/view/IInputContext;
    :goto_103
    :try_start_103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object v9, v0

    if-nez v9, :cond_152

    move/from16 v9, v18

    :goto_116
    invoke-interface/range {v4 .. v9}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v13

    .line 1041
    .local v13, res:Lcom/android/internal/view/InputBindResult;
    if-eqz v13, :cond_12e

    .line 1042
    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v4, :cond_155

    .line 1043
    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1044
    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1051
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object v4, v0

    if-eqz v4, :cond_149

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    move-object v4, v0
    :try_end_13a
    .catchall {:try_start_103 .. :try_end_13a} :catchall_95
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_13a} :catch_158

    if-eqz v4, :cond_149

    .line 1053
    :try_start_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_149
    .catchall {:try_start_13c .. :try_end_149} :catchall_95
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_149} :catch_178

    .line 1060
    .end local v13           #res:Lcom/android/internal/view/InputBindResult;
    :cond_149
    :goto_149
    :try_start_149
    monitor-exit v16

    goto/16 :goto_12

    .end local v6           #servedContext:Lcom/android/internal/view/IInputContext;
    .end local v8           #initial:Z
    :cond_14c
    move/from16 v8, v17

    .line 1017
    goto/16 :goto_c1

    .line 1032
    .restart local v8       #initial:Z
    :cond_150
    const/4 v6, 0x0

    .restart local v6       #servedContext:Lcom/android/internal/view/IInputContext;
    goto :goto_103

    :cond_152
    move/from16 v9, v17

    .line 1038
    goto :goto_116

    .line 1048
    .restart local v13       #res:Lcom/android/internal/view/InputBindResult;
    :cond_155
    monitor-exit v16

    goto/16 :goto_12

    .line 1057
    .end local v13           #res:Lcom/android/internal/view/InputBindResult;
    :catch_158
    move-exception v4

    move-object v10, v4

    .line 1058
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v4, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IME died: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_177
    .catchall {:try_start_149 .. :try_end_177} :catchall_95

    goto :goto_149

    .line 1054
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v13       #res:Lcom/android/internal/view/InputBindResult;
    :catch_178
    move-exception v4

    goto :goto_149
.end method

.method public toggleSoftInput(II)V
    .registers 4
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 903
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_9

    .line 905
    :try_start_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 909
    :cond_9
    :goto_9
    return-void

    .line 906
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 6
    .parameter "windowToken"
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 877
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_11

    .line 879
    :cond_f
    monitor-exit v0

    .line 888
    :goto_10
    return-void

    .line 881
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1c

    if-eqz v1, :cond_1a

    .line 883
    :try_start_15
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1f

    .line 887
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v0

    goto :goto_10

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v1

    .line 884
    :catch_1f
    move-exception v1

    goto :goto_1a
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .registers 11
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1268
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1269
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1270
    :try_start_6
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_16

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_16
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_20

    .line 1273
    :cond_1e
    monitor-exit v1

    .line 1289
    :goto_1f
    return-void

    .line 1276
    :cond_20
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1277
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_3f

    move-result v2

    if-nez v2, :cond_3d

    .line 1282
    :try_start_2f
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 1283
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3d} :catch_42

    .line 1288
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v1

    goto :goto_1f

    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v2

    .line 1284
    :catch_42
    move-exception v2

    move-object v0, v2

    .line 1285
    .local v0, e:Landroid/os/RemoteException;
    :try_start_44
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_3f

    goto :goto_3d
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6
    .parameter "view"
    .parameter "token"
    .parameter "text"

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 677
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 678
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 680
    :cond_16
    monitor-exit v0

    .line 690
    :goto_17
    return-void

    .line 683
    :cond_18
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    if-eqz v1, :cond_21

    .line 685
    :try_start_1c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_26

    .line 689
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v0

    goto :goto_17

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v1

    .line 686
    :catch_26
    move-exception v1

    goto :goto_21
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .registers 15
    .parameter "view"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1228
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1229
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1230
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_20

    .line 1233
    :cond_1e
    monitor-exit v8

    .line 1254
    :goto_1f
    return-void

    .line 1236
    :cond_20
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_30

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, p3, :cond_30

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_30

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_47

    if-eq v0, p5, :cond_45

    .line 1243
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V

    .line 1245
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1246
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1247
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1248
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_45} :catch_4a

    .line 1253
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v8

    goto :goto_1f

    :catchall_47
    move-exception v0

    monitor-exit v8
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v0

    .line 1249
    :catch_4a
    move-exception v0

    move-object v7, v0

    .line 1250
    .local v7, e:Landroid/os/RemoteException;
    :try_start_4c
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_47

    goto :goto_45
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .registers 4
    .parameter "appWindowToken"

    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1070
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1071
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_15

    .line 1073
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1075
    :cond_15
    monitor-exit v0

    .line 1076
    return-void

    .line 1075
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method
