.class final Landroid/view/ViewRoot$RunQueue;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRoot$RunQueue$HandlerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 3560
    return-void
.end method


# virtual methods
.method executeActions(Landroid/os/Handler;)V
    .registers 10
    .parameter "handler"

    .prologue
    .line 3547
    iget-object v4, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3548
    :try_start_3
    iget-object v0, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 3549
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3551
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v1, :cond_1c

    .line 3552
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    .line 3553
    .local v2, handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iget-object v5, v2, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v2, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3551
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3556
    .end local v2           #handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3557
    monitor-exit v4

    .line 3558
    return-void

    .line 3557
    .end local v0           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :catchall_21
    move-exception v5

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v5
.end method

.method post(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 3520
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 3521
    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .registers 7
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 3524
    new-instance v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRoot$1;)V

    .line 3525
    .local v0, handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iput-object p1, v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 3526
    iput-wide p2, v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    .line 3528
    iget-object v1, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3529
    :try_start_d
    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3530
    monitor-exit v1

    .line 3531
    return-void

    .line 3530
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v2
.end method

.method removeCallbacks(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "action"

    .prologue
    .line 3534
    new-instance v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewRoot$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRoot$1;)V

    .line 3535
    .local v1, handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iput-object p1, v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 3537
    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3538
    :try_start_b
    iget-object v0, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 3540
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    :cond_d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3543
    monitor-exit v2

    .line 3544
    return-void

    .line 3543
    .end local v0           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v3
.end method
