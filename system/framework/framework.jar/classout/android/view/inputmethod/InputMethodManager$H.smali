.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 311
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 312
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 313
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 317
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_110

    .line 398
    .end local p0
    :goto_7
    return-void

    .line 319
    .restart local p0
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 321
    .local v1, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :try_start_c
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/FileDescriptor;

    iget-object v5, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    iget-object v6, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, p0, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1f} :catch_2e

    .line 326
    :goto_1f
    iget-object v5, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v5

    .line 327
    :try_start_22
    iget-object p0, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 328
    monitor-exit v5

    goto :goto_7

    :catchall_2b
    move-exception v6

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v6

    .line 323
    :catch_2e
    move-exception v5

    move-object v2, v5

    .line 324
    .local v2, e:Ljava/lang/RuntimeException;
    iget-object p0, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 332
    .end local v1           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v2           #e:Ljava/lang/RuntimeException;
    .restart local p0
    :pswitch_4b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 333
    .local v3, res:Lcom/android/internal/view/InputBindResult;
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 334
    :try_start_54
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v6, :cond_62

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v7, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v6, v7, :cond_90

    .line 335
    :cond_62
    const-string v6, "InputMethodManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring onBind: cur seq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", given seq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v5

    goto/16 :goto_7

    .line 343
    :catchall_8d
    move-exception v6

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_54 .. :try_end_8f} :catchall_8d

    throw v6

    .line 340
    :cond_90
    :try_start_90
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v3, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v7, v6, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 341
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v3, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v7, v6, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 342
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v7, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 343
    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_8d

    .line 344
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto/16 :goto_7

    .line 348
    .end local v3           #res:Lcom/android/internal/view/InputBindResult;
    :pswitch_aa
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 349
    .local v4, sequence:I
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 350
    :try_start_b1
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v6, v4, :cond_d9

    .line 361
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 365
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v6, :cond_d9

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 367
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_d9

    .line 368
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 373
    :cond_d9
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    .line 374
    monitor-exit v5

    goto/16 :goto_7

    :catchall_e1
    move-exception v6

    monitor-exit v5
    :try_end_e3
    .catchall {:try_start_b1 .. :try_end_e3} :catchall_e1

    throw v6

    .line 378
    .end local v4           #sequence:I
    :pswitch_e4
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_10b

    move v0, v6

    .line 379
    .local v0, active:Z
    :goto_e9
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 380
    :try_start_ee
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v6, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 381
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 382
    if-nez v0, :cond_105

    .line 386
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_fe
    .catchall {:try_start_ee .. :try_end_fe} :catchall_108

    .line 390
    :try_start_fe
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v6}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_105
    .catchall {:try_start_fe .. :try_end_105} :catchall_108
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_105} :catch_10d

    .line 394
    :cond_105
    :goto_105
    :try_start_105
    monitor-exit v5

    goto/16 :goto_7

    :catchall_108
    move-exception v6

    monitor-exit v5
    :try_end_10a
    .catchall {:try_start_105 .. :try_end_10a} :catchall_108

    throw v6

    .end local v0           #active:Z
    :cond_10b
    move v0, v7

    .line 378
    goto :goto_e9

    .line 391
    .restart local v0       #active:Z
    :catch_10d
    move-exception v6

    goto :goto_105

    .line 317
    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4b
        :pswitch_aa
        :pswitch_e4
    .end packed-switch
.end method
