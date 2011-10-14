.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;
.super Ljava/lang/Thread;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .prologue
    .line 220
    const/4 v9, 0x0

    .line 222
    .local v9, cmd:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :cond_1
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "De-queing command"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v4, v0

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 224
    :goto_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v5, v0

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_38

    move-result v5

    if-eqz v5, :cond_3b

    .line 226
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v5, v0

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_38
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_12

    .line 227
    :catch_2e
    move-exception v5

    move-object v10, v5

    .line 228
    .local v10, e:Ljava/lang/InterruptedException;
    :try_start_30
    const-string v5, "AtCkpdCmdHandler"

    const-string v6, "Inject thread interrupted"

    invoke-static {v5, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 233
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catchall_38
    move-exception v5

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v5

    .line 232
    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v5, v0

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    move-object v9, v0

    .line 233
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_38

    .line 234
    if-eqz v9, :cond_1

    .line 235
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command de-queued: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/atfwd/AtCmdBaseHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 239
    .local v14, pm:Landroid/os/PowerManager;
    const v4, 0x3000001a

    const-string v5, "+CKPD Handler"

    invoke-virtual {v14, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 242
    .local v15, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v9}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->getEvents()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_88
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 243
    .local v12, evt:Ljava/lang/Object;
    instance-of v4, v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    if-eqz v4, :cond_aa

    .line 245
    :try_start_96
    check-cast v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    .end local v12           #evt:Ljava/lang/Object;
    invoke-virtual {v12}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9f
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_88

    .line 246
    :catch_a0
    move-exception v4

    move-object v10, v4

    .line 247
    .restart local v10       #e:Ljava/lang/InterruptedException;
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "Interrupted pause"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 251
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v12       #evt:Ljava/lang/Object;
    :cond_aa
    instance-of v4, v12, Landroid/view/KeyEvent;

    if-nez v4, :cond_cf

    .line 252
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type of event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 257
    :cond_cf
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 258
    .local v2, dntime:J
    move-object v0, v12

    check-cast v0, Landroid/view/KeyEvent;

    move-object v11, v0

    .line 259
    .local v11, ev:Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 265
    .end local v11           #ev:Landroid/view/KeyEvent;
    .local v1, ev:Landroid/view/KeyEvent;
    :try_start_e6
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v4, v0

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mWm:Landroid/view/IWindowManager;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$200(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 267
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_f9} :catch_fa

    goto :goto_88

    .line 268
    :catch_fa
    move-exception v4

    move-object v10, v4

    .line 269
    .local v10, e:Landroid/os/RemoteException;
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception while inserting press code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    return-void
.end method
